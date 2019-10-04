.class public Lf/a/a/d/a/a/b/d;
.super Lf/a/a/d/a/a/b/i;
.source "CardFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/a/a/d/a/a/b/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/w3c/dom/Element;Lf/a/a/d/f;)Lf/a/a/e/b/n;
    .locals 1

    .line 1
    new-instance v0, Lir/cafebazaar/inline/ui/inflaters/CardInflater;

    invoke-direct {v0}, Lir/cafebazaar/inline/ui/inflaters/CardInflater;-><init>()V

    .line 2
    invoke-virtual {p0, v0, p1, p2}, Lf/a/a/d/a/a/b/d;->b(Lir/cafebazaar/inline/ui/inflaters/CardInflater;Lorg/w3c/dom/Element;Lf/a/a/d/f;)V

    .line 3
    invoke-virtual {p0, v0, p1, p2}, Lf/a/a/d/a/a/b/d;->c(Lir/cafebazaar/inline/ui/inflaters/CardInflater;Lorg/w3c/dom/Element;Lf/a/a/d/f;)V

    .line 4
    invoke-virtual {p0, v0, p1}, Lf/a/a/d/a/a/b/d;->b(Lir/cafebazaar/inline/ui/inflaters/CardInflater;Lorg/w3c/dom/Element;)V

    .line 5
    invoke-virtual {p0, v0, p1}, Lf/a/a/d/a/a/b/d;->c(Lir/cafebazaar/inline/ui/inflaters/CardInflater;Lorg/w3c/dom/Element;)V

    .line 6
    invoke-virtual {p0, v0, p1}, Lf/a/a/d/a/a/b/d;->a(Lir/cafebazaar/inline/ui/inflaters/CardInflater;Lorg/w3c/dom/Element;)V

    .line 7
    invoke-virtual {p0, v0, p1, p2}, Lf/a/a/d/a/a/b/d;->a(Lir/cafebazaar/inline/ui/inflaters/CardInflater;Lorg/w3c/dom/Element;Lf/a/a/d/f;)V

    return-object v0
.end method

.method public a(Lir/cafebazaar/inline/ui/inflaters/CardInflater;Lorg/w3c/dom/Element;)V
    .locals 2

    const-string v0, "direction"

    .line 8
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lir/cafebazaar/inline/ui/inflaters/CardInflater$Direction;->valueOf(Ljava/lang/String;)Lir/cafebazaar/inline/ui/inflaters/CardInflater$Direction;

    move-result-object p2

    invoke-virtual {p1, p2}, Lir/cafebazaar/inline/ui/inflaters/CardInflater;->a(Lir/cafebazaar/inline/ui/inflaters/CardInflater$Direction;)V

    :cond_0
    return-void
.end method

.method public a(Lir/cafebazaar/inline/ui/inflaters/CardInflater;Lorg/w3c/dom/Element;Lf/a/a/d/f;)V
    .locals 2

    const-string v0, "action"

    .line 10
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    new-instance v0, Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory;-><init>(Z)V

    invoke-virtual {v0, p2, p3}, Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory;->a(Ljava/lang/Object;Lf/a/a/d/f;)Lf/a/a/d/a;

    move-result-object p2

    check-cast p2, Lf/a/a/g/d/a/b;

    invoke-virtual {p1, p2}, Lir/cafebazaar/inline/ui/inflaters/CardInflater;->a(Lf/a/a/g/d/a/b;)V

    :cond_0
    return-void
.end method

.method public b(Lir/cafebazaar/inline/ui/inflaters/CardInflater;Lorg/w3c/dom/Element;)V
    .locals 2

    const-string v0, "elevated"

    .line 3
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const-string v0, "true"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lir/cafebazaar/inline/ui/inflaters/CardInflater;->a(Z)V

    :cond_0
    return-void
.end method

.method public b(Lir/cafebazaar/inline/ui/inflaters/CardInflater;Lorg/w3c/dom/Element;Lf/a/a/d/f;)V
    .locals 1

    const-string v0, "image"

    .line 1
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p2

    const-string v0, "card:image"

    .line 2
    invoke-interface {p3, v0, p2}, Lf/a/a/d/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lf/a/a/d/a;

    move-result-object p2

    check-cast p2, Lir/cafebazaar/inline/ui/inflaters/ImageInflater;

    invoke-virtual {p1, p2}, Lir/cafebazaar/inline/ui/inflaters/CardInflater;->a(Lir/cafebazaar/inline/ui/inflaters/ImageInflater;)V

    return-void
.end method

.method public c(Lir/cafebazaar/inline/ui/inflaters/CardInflater;Lorg/w3c/dom/Element;)V
    .locals 2

    const-string v0, "style"

    .line 4
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lir/cafebazaar/inline/ui/inflaters/CardInflater$Style;->valueOf(Ljava/lang/String;)Lir/cafebazaar/inline/ui/inflaters/CardInflater$Style;

    move-result-object p2

    invoke-virtual {p1, p2}, Lir/cafebazaar/inline/ui/inflaters/CardInflater;->a(Lir/cafebazaar/inline/ui/inflaters/CardInflater$Style;)V

    :cond_0
    return-void
.end method

.method public c(Lir/cafebazaar/inline/ui/inflaters/CardInflater;Lorg/w3c/dom/Element;Lf/a/a/d/f;)V
    .locals 3

    const-string v0, "text"

    .line 1
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p2

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {p2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    invoke-interface {p2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {p3, v0, v2}, Lf/a/a/d/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lf/a/a/d/a;

    move-result-object v2

    check-cast v2, Lir/cafebazaar/inline/ui/inflaters/TextInflater;

    invoke-virtual {p1, v2}, Lir/cafebazaar/inline/ui/inflaters/CardInflater;->a(Lir/cafebazaar/inline/ui/inflaters/TextInflater;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
