.class public Lh/j/h;
.super Ljava/lang/Object;
.source "SequenceBuilder.kt"


# direct methods
.method public static final a(Lh/f/a/c;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lh/f/a/c<",
            "-",
            "Lh/j/f<",
            "-TT;>;-",
            "Lh/c/b<",
            "-",
            "Lh/h;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lh/j/e;

    invoke-direct {v0}, Lh/j/e;-><init>()V

    .line 2
    invoke-static {p0, v0, v0}, Lh/c/a/a;->a(Lh/f/a/c;Ljava/lang/Object;Lh/c/b;)Lh/c/b;

    move-result-object p0

    invoke-virtual {v0, p0}, Lh/j/e;->a(Lh/c/b;)V

    return-object v0
.end method

.method public static final b(Lh/f/a/c;)Lh/j/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lh/f/a/c<",
            "-",
            "Lh/j/f<",
            "-TT;>;-",
            "Lh/c/b<",
            "-",
            "Lh/h;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lh/j/d<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lh/j/g;

    invoke-direct {v0, p0}, Lh/j/g;-><init>(Lh/f/a/c;)V

    return-object v0
.end method
