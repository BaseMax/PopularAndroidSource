.class public Lf/a/a/g/d/a/a;
.super Lf/a/a/g/d/a/l;
.source "APIRemoteAction.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lf/a/a/g/d/a/l;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public a(Lf/a/a/e/g;Landroid/view/View;)V
    .locals 5

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
    new-instance p2, Lf/a/a/c/b/g;

    invoke-interface {p1}, Lf/a/a/e/g;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object v0

    invoke-virtual {p0}, Lf/a/a/g/d/a/t;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lf/a/a/g/d/a/l;->a(Lf/a/a/e/g;)Ljava/util/Map;

    move-result-object v2

    .line 5
    invoke-interface {p1}, Lf/a/a/e/g;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object v3

    invoke-virtual {v3}, Lir/cafebazaar/inline/platform/InlineApplication;->g()Lf/a/a/d/f;

    move-result-object v3

    invoke-interface {v3}, Lf/a/a/d/f;->a()Lf/a/a/a/b/c;

    move-result-object v3

    invoke-virtual {p0}, Lf/a/a/g/d/a/t;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lf/a/a/a/b/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v0, v1, v2, v3}, Lf/a/a/c/b/g;-><init>(Lir/cafebazaar/inline/platform/InlineApplication;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    new-instance v0, Lf/a/a/g/d/g;

    .line 6
    invoke-virtual {p0}, Lf/a/a/g/d/a/t;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lf/a/a/g/d/g;-><init>(Lf/a/a/e/g;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lf/a/a/c/b/g;->a(Lf/a/a/c/b/o$a;)V

    return-void
.end method
