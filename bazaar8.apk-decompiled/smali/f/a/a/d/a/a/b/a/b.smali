.class public Lf/a/a/d/a/a/b/a/b;
.super Lf/a/a/d/a/a/b/a/g;
.source "CheckBoxFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/a/a/d/a/a/b/a/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/w3c/dom/Element;Lf/a/a/d/f;)Lf/a/a/e/b/b/B;
    .locals 0

    .line 1
    new-instance p2, Lf/a/a/e/b/b/g;

    invoke-direct {p2}, Lf/a/a/e/b/b/g;-><init>()V

    .line 2
    invoke-virtual {p0, p2, p1}, Lf/a/a/d/a/a/b/a/b;->b(Lf/a/a/e/b/b/g;Lorg/w3c/dom/Element;)V

    .line 3
    invoke-virtual {p0, p2, p1}, Lf/a/a/d/a/a/b/a/b;->c(Lf/a/a/e/b/b/g;Lorg/w3c/dom/Element;)V

    .line 4
    invoke-virtual {p0, p2, p1}, Lf/a/a/d/a/a/b/a/b;->a(Lf/a/a/e/b/b/g;Lorg/w3c/dom/Element;)V

    return-object p2
.end method

.method public a(Lf/a/a/e/b/b/g;Lorg/w3c/dom/Element;)V
    .locals 2

    const-string v0, "mandatory"

    .line 5
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const-string v0, "true"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lf/a/a/e/b/b/g;->a(Z)V

    :cond_0
    return-void
.end method

.method public b(Lf/a/a/e/b/b/g;Lorg/w3c/dom/Element;)V
    .locals 0

    .line 1
    invoke-interface {p2}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lf/a/a/e/b/b/B;->d(Ljava/lang/String;)V

    return-void
.end method

.method public c(Lf/a/a/e/b/b/g;Lorg/w3c/dom/Element;)V
    .locals 2

    const-string v0, "value"

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

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lf/a/a/e/b/b/g;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
