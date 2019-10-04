.class public Lh/j/k;
.super Lh/j/i;
.source "Sequences.kt"


# direct methods
.method public static final a(Lh/j/d;)Lh/j/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lh/j/d<",
            "+TT;>;)",
            "Lh/j/d<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "$this$constrainOnce"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    instance-of v0, p0, Lh/j/a;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lh/j/a;

    invoke-direct {v0, p0}, Lh/j/a;-><init>(Lh/j/d;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static final a(Ljava/util/Iterator;)Lh/j/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TT;>;)",
            "Lh/j/d<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "$this$asSequence"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lh/j/j;

    invoke-direct {v0, p0}, Lh/j/j;-><init>(Ljava/util/Iterator;)V

    invoke-static {v0}, Lh/j/k;->a(Lh/j/d;)Lh/j/d;

    move-result-object p0

    return-object p0
.end method
