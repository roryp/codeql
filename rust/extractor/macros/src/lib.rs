use proc_macro::TokenStream;
use quote::{format_ident, quote};

/// Allow all fields in the extractor config to be also overrideable by extractor CLI flags
#[proc_macro_attribute]
pub fn extractor_cli_config(_attr: TokenStream, item: TokenStream) -> TokenStream {
    let ast = syn::parse_macro_input!(item as syn::ItemStruct);
    let name = &ast.ident;
    let cli_name = format_ident!("Cli{}", name);
    let cli_fields = ast
        .fields
        .iter()
        .map(|f| {
            let id = f.ident.as_ref().unwrap();
            let ty = &f.ty;
            if let syn::Type::Path(p) = ty {
                if p.path.is_ident(&format_ident!("bool")) {
                    return quote! {
                        #[arg(long)]
                        #[serde(skip_serializing_if="<&bool>::not")]
                        #id: bool,
                    };
                }
                if p.path.segments.len() == 1 && p.path.segments[0].ident == "Option" {
                    return quote! {
                        #[arg(long)]
                        #id: #ty,
                    };
                }
            }
            if id == &format_ident!("verbose") {
                quote! {
                    #[arg(long, short, action=clap::ArgAction::Count)]
                    #[serde(skip_serializing_if="u8::is_zero")]
                    #id: u8,
                }
            } else if id == &format_ident!("inputs") {
                quote! {
                    #id: #ty,
                }
            } else {
                quote! {
                    #[arg(long)]
                    #id: Option<#ty>,
                }
            }
        })
        .collect::<Vec<_>>();
    let debug_fields = ast
        .fields
        .iter()
        .map(|f| {
            let id = f.ident.as_ref().unwrap();
            if id == &format_ident!("inputs") {
                quote! {
                    .field("number of inputs", &self.#id.len())
                }
            } else {
                quote! {
                    .field(stringify!(#id), &self.#id)
                }
            }
        })
        .collect::<Vec<_>>();

    let gen = quote! {
        #[serde_with::apply(_ => #[serde(default)])]
        #[derive(Deserialize, Default)]
        #ast

        impl Debug for #name {
            fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                f.debug_struct("configuration:")
                    #(#debug_fields)*
                    .finish()
            }
        }

        #[serde_with::skip_serializing_none]
        #[derive(clap::Parser, Serialize)]
        #[command(about, long_about = None)]
        struct #cli_name {
            #(#cli_fields)*
        }
    };
    gen.into()
}