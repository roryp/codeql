// generated by codegen, do not edit

// A `become` expression. For example:
fn fact_a(n: i32, a: i32) -> i32 {
     if n == 0 {
         a
     } else {
         become fact_a(n - 1, n * a)
     }
}