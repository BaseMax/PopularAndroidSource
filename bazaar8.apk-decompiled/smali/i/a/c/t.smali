.class public final Li/a/c/t;
.super Ljava/lang/Object;
.source "Scopes.kt"


# direct methods
.method public static final a(Li/a/a;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/a/a<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    const-string v0, "$this$tryRecover"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exception"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p0, Li/a/c/s;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    check-cast p0, Li/a/c/s;

    if-eqz p0, :cond_1

    iget-object p0, p0, Li/a/c/s;->d:Lh/c/b;

    if-eqz p0, :cond_1

    .line 2
    invoke-static {p1, p0}, Li/a/c/u;->a(Ljava/lang/Throwable;Lh/c/b;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method
