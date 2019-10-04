.class public final Lc/c/a/i/c;
.super Ljava/lang/Object;
.source "NavControllerExt.kt"


# direct methods
.method public static final a(Lb/w/j;ILandroid/os/Bundle;)V
    .locals 1

    const-string v0, "$this$navigateSafe"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lb/w/j;->c()Lb/w/o;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lb/w/o;->a(I)Lb/w/e;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0, p1, p2}, Lb/w/j;->a(ILandroid/os/Bundle;)V

    goto :goto_1

    .line 4
    :cond_1
    sget-object p0, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    new-instance p1, Ljava/lang/Throwable;

    const-string p2, "trying to navigate to a unknown destination"

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lc/c/a/c/c/a;->a(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public static final a(Lb/w/j;Lb/w/p;)V
    .locals 1

    const-string v0, "$this$navigateSafe"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "directions"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lb/w/p;->b()I

    move-result v0

    invoke-interface {p1}, Lb/w/p;->a()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lc/c/a/i/c;->a(Lb/w/j;ILandroid/os/Bundle;)V

    return-void
.end method
