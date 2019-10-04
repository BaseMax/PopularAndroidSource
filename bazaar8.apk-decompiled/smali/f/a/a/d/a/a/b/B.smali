.class public Lf/a/a/d/a/a/b/B;
.super Lf/a/a/d/a/a/b/n;
.source "VideoPageFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/a/a/d/a/a/b/n;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lf/a/a/d/f;)Lf/a/a/d/a;
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Lf/a/a/d/a/a/b/n;->a(Ljava/lang/Object;Lf/a/a/d/f;)Lf/a/a/d/a;

    move-result-object p2

    check-cast p2, Lf/a/a/e/b/X;

    .line 3
    check-cast p1, Lorg/w3c/dom/Element;

    .line 4
    invoke-virtual {p0, p2, p1}, Lf/a/a/d/a/a/b/B;->b(Lf/a/a/e/b/X;Lorg/w3c/dom/Element;)V

    .line 5
    invoke-virtual {p0, p2, p1}, Lf/a/a/d/a/a/b/B;->g(Lf/a/a/e/b/X;Lorg/w3c/dom/Element;)V

    .line 6
    invoke-virtual {p0, p2, p1}, Lf/a/a/d/a/a/b/B;->c(Lf/a/a/e/b/X;Lorg/w3c/dom/Element;)V

    .line 7
    invoke-virtual {p0, p2, p1}, Lf/a/a/d/a/a/b/B;->f(Lf/a/a/e/b/X;Lorg/w3c/dom/Element;)V

    .line 8
    invoke-virtual {p0, p2, p1}, Lf/a/a/d/a/a/b/B;->d(Lf/a/a/e/b/X;Lorg/w3c/dom/Element;)V

    .line 9
    invoke-virtual {p0, p2, p1}, Lf/a/a/d/a/a/b/B;->e(Lf/a/a/e/b/X;Lorg/w3c/dom/Element;)V

    .line 10
    invoke-virtual {p0, p2, p1}, Lf/a/a/d/a/a/b/B;->a(Lf/a/a/e/b/X;Lorg/w3c/dom/Element;)V

    return-object p2
.end method

.method public a()Lir/cafebazaar/inline/ui/inflaters/PageInflater;
    .locals 1

    .line 1
    new-instance v0, Lf/a/a/e/b/X;

    invoke-direct {v0}, Lf/a/a/e/b/X;-><init>()V

    return-object v0
.end method

.method public final a(Lf/a/a/e/b/X;Lorg/w3c/dom/Element;)V
    .locals 2

    const-string v0, "isOnline"

    .line 11
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lf/a/a/e/b/X;->b(Z)V

    :cond_0
    return-void
.end method

.method public b(Lf/a/a/e/b/X;Lorg/w3c/dom/Element;)V
    .locals 2

    const-string v0, "skipBackstack"

    .line 1
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const-string v0, "true"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lir/cafebazaar/inline/ui/inflaters/PageInflater;->a(Z)V

    :cond_0
    return-void
.end method

.method public final c(Lf/a/a/e/b/X;Lorg/w3c/dom/Element;)V
    .locals 2

    const-string v0, "subtitle"

    .line 1
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lf/a/a/e/b/X;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final d(Lf/a/a/e/b/X;Lorg/w3c/dom/Element;)V
    .locals 2

    const-string v0, "logo"

    .line 1
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lf/a/a/e/b/X;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final e(Lf/a/a/e/b/X;Lorg/w3c/dom/Element;)V
    .locals 2

    const-string v0, "name"

    .line 1
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lf/a/a/e/b/X;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final f(Lf/a/a/e/b/X;Lorg/w3c/dom/Element;)V
    .locals 2

    const-string v0, "thumbnail"

    .line 1
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lf/a/a/e/b/X;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public g(Lf/a/a/e/b/X;Lorg/w3c/dom/Element;)V
    .locals 2

    const-string v0, "src"

    .line 1
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lf/a/a/e/b/X;->f(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
