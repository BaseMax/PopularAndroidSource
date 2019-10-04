.class public Lf/a/a/g/d/a/e;
.super Lf/a/a/g/d/a/l;
.source "ChangeRemoteAction.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lf/a/a/g/d/a/l;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public a(Lf/a/a/e/g;Landroid/view/View;)V
    .locals 4

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
    invoke-interface {p1}, Lf/a/a/e/g;->k()Lf/a/a/e/l;

    move-result-object v0

    instance-of v0, v0, Lf/a/a/e/c;

    if-eqz v0, :cond_1

    .line 4
    invoke-super {p0, p1, p2}, Lf/a/a/g/d/a/l;->a(Lf/a/a/e/g;Landroid/view/View;)V

    .line 5
    :cond_1
    new-instance v0, Lf/a/a/c/b/b;

    invoke-interface {p1}, Lf/a/a/e/g;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object v1

    invoke-virtual {p0}, Lf/a/a/g/d/a/t;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1}, Lf/a/a/g/d/a/l;->a(Lf/a/a/e/g;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lf/a/a/c/b/b;-><init>(Lir/cafebazaar/inline/platform/InlineApplication;Ljava/lang/String;Ljava/util/Map;)V

    new-instance v1, Lf/a/a/g/d/e;

    .line 6
    invoke-interface {p1}, Lf/a/a/e/g;->k()Lf/a/a/e/l;

    move-result-object v2

    instance-of v2, v2, Lf/a/a/e/c;

    invoke-direct {v1, p1, p2, v2}, Lf/a/a/g/d/e;-><init>(Lf/a/a/e/g;Landroid/view/View;Z)V

    invoke-virtual {v0, v1}, Lf/a/a/c/b/b;->a(Lf/a/a/c/b/o$a;)V

    return-void
.end method
