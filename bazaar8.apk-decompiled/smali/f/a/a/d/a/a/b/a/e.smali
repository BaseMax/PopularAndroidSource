.class public Lf/a/a/d/a/a/b/a/e;
.super Lf/a/a/d/a/a/b/a/d;
.source "EditTextFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/a/a/d/a/a/b/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;Lorg/w3c/dom/Element;)V
    .locals 1

    .line 1
    invoke-interface {p2}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public a(Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;Lorg/w3c/dom/Element;Lf/a/a/d/f;)V
    .locals 4

    const-string v0, "validation"

    .line 3
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p2

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 5
    :goto_0
    invoke-interface {p2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 6
    invoke-interface {p2, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {p3, v0, v3}, Lf/a/a/d/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lf/a/a/d/a;

    move-result-object v3

    check-cast v3, Lf/a/a/d/g;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1, v1}, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;->a(Ljava/util/List;)V

    return-void
.end method

.method public b(Lorg/w3c/dom/Element;Lf/a/a/d/f;)Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater;
    .locals 1

    .line 1
    new-instance v0, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;

    invoke-direct {v0}, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;-><init>()V

    .line 2
    invoke-virtual {p0, v0, p1, p2}, Lf/a/a/d/a/a/b/a/e;->a(Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;Lorg/w3c/dom/Element;Lf/a/a/d/f;)V

    .line 3
    invoke-virtual {p0, v0, p1}, Lf/a/a/d/a/a/b/a/e;->a(Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;Lorg/w3c/dom/Element;)V

    .line 4
    invoke-virtual {p0, v0, p1}, Lf/a/a/d/a/a/b/a/e;->b(Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;Lorg/w3c/dom/Element;)V

    .line 5
    invoke-virtual {p0, v0, p1}, Lf/a/a/d/a/a/b/a/e;->c(Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;Lorg/w3c/dom/Element;)V

    .line 6
    invoke-virtual {p0, v0, p1}, Lf/a/a/d/a/a/b/a/e;->d(Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;Lorg/w3c/dom/Element;)V

    return-object v0
.end method

.method public b(Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;Lorg/w3c/dom/Element;)V
    .locals 2

    const-string v0, "keyboard"

    .line 7
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;->valueOf(Ljava/lang/String;)Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;

    move-result-object p2

    invoke-virtual {p1, p2}, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;->a(Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;)V

    :cond_0
    return-void
.end method

.method public c(Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;Lorg/w3c/dom/Element;)V
    .locals 2

    const-string v0, "splitDigits"

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

    invoke-virtual {p1, p2}, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;->b(Z)V

    :cond_0
    return-void
.end method

.method public d(Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;Lorg/w3c/dom/Element;)V
    .locals 2

    const-string v0, "unit"

    .line 1
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
