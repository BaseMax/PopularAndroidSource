.class public abstract Lf/a/a/d/a/a/b/r;
.super Ljava/lang/Object;
.source "SearchFactory.java"

# interfaces
.implements Lf/a/a/d/a$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lf/a/a/d/f;)Lf/a/a/d/a;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf/a/a/d/a/a/b/r;->a()Lf/a/a/e/b/L;

    move-result-object p2

    .line 2
    check-cast p1, Lorg/w3c/dom/Element;

    .line 3
    invoke-virtual {p0, p2, p1}, Lf/a/a/d/a/a/b/r;->d(Lf/a/a/e/b/L;Lorg/w3c/dom/Element;)V

    .line 4
    invoke-virtual {p0, p2, p1}, Lf/a/a/d/a/a/b/r;->e(Lf/a/a/e/b/L;Lorg/w3c/dom/Element;)V

    .line 5
    invoke-virtual {p0, p2, p1}, Lf/a/a/d/a/a/b/r;->b(Lf/a/a/e/b/L;Lorg/w3c/dom/Element;)V

    .line 6
    invoke-virtual {p0, p2, p1}, Lf/a/a/d/a/a/b/r;->c(Lf/a/a/e/b/L;Lorg/w3c/dom/Element;)V

    .line 7
    invoke-virtual {p0, p2, p1}, Lf/a/a/d/a/a/b/r;->a(Lf/a/a/e/b/L;Lorg/w3c/dom/Element;)V

    return-object p2
.end method

.method public abstract a()Lf/a/a/e/b/L;
.end method

.method public a(Lf/a/a/e/b/L;Lorg/w3c/dom/Element;)V
    .locals 2

    const-string v0, "action"

    .line 8
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    new-instance v1, Lf/a/a/g/d/a/o;

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Lf/a/a/g/d/a/o;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lf/a/a/e/b/L;->a(Lf/a/a/g/d/a/o;)V

    :cond_0
    return-void
.end method

.method public b(Lf/a/a/e/b/L;Lorg/w3c/dom/Element;)V
    .locals 2

    const-string v0, "autofocus"

    .line 1
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    const-string v0, "true"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lf/a/a/e/b/L;->a(Z)V

    :cond_0
    return-void
.end method

.method public c(Lf/a/a/e/b/L;Lorg/w3c/dom/Element;)V
    .locals 0

    .line 1
    invoke-interface {p2}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lf/a/a/e/b/L;->a(Ljava/lang/String;)V

    return-void
.end method

.method public d(Lf/a/a/e/b/L;Lorg/w3c/dom/Element;)V
    .locals 2

    const-string v0, "placeholder"

    .line 1
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lf/a/a/e/b/L;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public e(Lf/a/a/e/b/L;Lorg/w3c/dom/Element;)V
    .locals 2

    const-string v0, "update"

    .line 1
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    new-instance v1, Lf/a/a/g/d/a/p;

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Lf/a/a/g/d/a/p;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lf/a/a/e/b/L;->a(Lf/a/a/g/d/a/p;)V

    :cond_0
    return-void
.end method
