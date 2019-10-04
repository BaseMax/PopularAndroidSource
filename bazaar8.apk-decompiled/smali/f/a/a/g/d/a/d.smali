.class public Lf/a/a/g/d/a/d;
.super Lf/a/a/g/d/a/l;
.source "BackAction.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const-string v1, ""

    .line 1
    invoke-direct {p0, v1, v0, v0}, Lf/a/a/g/d/a/l;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public a(Lf/a/a/e/g;Landroid/view/View;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lf/a/a/g/d/a/l;->b:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lf/a/a/e/g;->k()Lf/a/a/e/l;

    move-result-object v0

    instance-of v0, v0, Lf/a/a/e/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lf/a/a/e/g;->k()Lf/a/a/e/l;

    move-result-object v0

    check-cast v0, Lf/a/a/e/c;

    invoke-virtual {v0}, Lf/a/a/e/c;->Oa()Lf/a/a/g/d;

    move-result-object v0

    invoke-virtual {v0}, Lf/a/a/g/d;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Lf/a/a/g/d/a/l;->a(Lf/a/a/e/g;Landroid/view/View;)V

    .line 4
    new-instance p2, Lf/a/a/c/b/b;

    invoke-interface {p1}, Lf/a/a/e/g;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object v0

    invoke-interface {p1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v1

    invoke-virtual {v1}, Lir/cafebazaar/inline/ui/InlineActivity;->w()Lf/a/a/g/d/d;

    move-result-object v1

    invoke-virtual {v1}, Lf/a/a/g/d/d;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lf/a/a/g/d/a/l;->a(Lf/a/a/e/g;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {p2, v0, v1, v2}, Lf/a/a/c/b/b;-><init>(Lir/cafebazaar/inline/platform/InlineApplication;Ljava/lang/String;Ljava/util/Map;)V

    new-instance v0, Lf/a/a/g/d/c;

    invoke-direct {v0, p1}, Lf/a/a/g/d/c;-><init>(Lf/a/a/e/g;)V

    .line 5
    invoke-virtual {p2, v0}, Lf/a/a/c/b/b;->a(Lf/a/a/c/b/o$a;)V

    return-void
.end method
