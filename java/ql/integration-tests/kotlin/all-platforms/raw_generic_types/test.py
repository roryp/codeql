import commands


def test(codeql, java_full, cwd):
    # Compile Java untraced. Note the Java source is hidden under `javasrc` so the Kotlin compiler
    # will certainly reference the jar, not the source or class file for extlib.Lib
    java_srcs = (cwd / "libsrc" / "extlib").glob("*.java")
    commands.run(["javac", *java_srcs, "-d", "build"])
    commands.run("jar cf extlib.jar -C build extlib")
    codeql.database.create(
        command=["javac JavaUser.java -cp extlib.jar", "kotlinc KotlinUser.kt -cp extlib.jar"]
    )