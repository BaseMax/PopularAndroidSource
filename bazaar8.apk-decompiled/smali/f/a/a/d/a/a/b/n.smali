.class public abstract Lf/a/a/d/a/a/b/n;
.super Ljava/lang/Object;
.source "PageFactory.java"

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
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf/a/a/d/a/a/b/n;->a()Lir/cafebazaar/inline/ui/inflaters/PageInflater;

    move-result-object v0

    .line 2
    check-cast p1, Lorg/w3c/dom/Element;

    .line 3
    invoke-virtual {p0, v0, p1, p2}, Lf/a/a/d/a/a/b/n;->a(Lir/cafebazaar/inline/ui/inflaters/PageInflater;Lorg/w3c/dom/Element;Lf/a/a/d/f;)V

    .line 4
    invoke-virtual {p0, v0, p1}, Lf/a/a/d/a/a/b/n;->a(Lir/cafebazaar/inline/ui/inflaters/PageInflater;Lorg/w3c/dom/Element;)V

    .line 5
    invoke-virtual {p0, v0, p1}, Lf/a/a/d/a/a/b/n;->b(Lir/cafebazaar/inline/ui/inflaters/PageInflater;Lorg/w3c/dom/Element;)V

    return-object v0
.end method

.method public abstract a()Lir/cafebazaar/inline/ui/inflaters/PageInflater;
.end method

.method public a(Lir/cafebazaar/inline/ui/inflaters/PageInflater;Lorg/w3c/dom/Element;)V
    .locals 2

    const-string v0, "gravity"

    .line 17
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 18
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lir/cafebazaar/inline/ui/inflaters/PageInflater$PageGravity;->valueOf(Ljava/lang/String;)Lir/cafebazaar/inline/ui/inflaters/PageInflater$PageGravity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lir/cafebazaar/inline/ui/inflaters/PageInflater;->a(Lir/cafebazaar/inline/ui/inflaters/PageInflater$PageGravity;)V

    :cond_0
    return-void
.end method

.method public a(Lir/cafebazaar/inline/ui/inflaters/PageInflater;Lorg/w3c/dom/Element;Lf/a/a/d/f;)V
    .locals 5

    .line 6
    invoke-interface {p2}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p2

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 9
    :goto_0
    invoke-interface {p2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 10
    invoke-interface {p2, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {p3, v3, v4}, Lf/a/a/d/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lf/a/a/d/a;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 11
    instance-of v4, v3, Lf/a/a/e/b/n;

    if-eqz v4, :cond_0

    .line 12
    check-cast v3, Lf/a/a/e/b/n;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 13
    :cond_0
    instance-of v4, v3, Lf/a/a/e/b/Q;

    if-eqz v4, :cond_1

    .line 14
    check-cast v3, Lf/a/a/e/b/Q;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {p1, v0}, Lir/cafebazaar/inline/ui/inflaters/PageInflater;->a(Ljava/util/List;)V

    .line 16
    invoke-virtual {p1, v1}, Lir/cafebazaar/inline/ui/inflaters/PageInflater;->b(Ljava/util/List;)V

    return-void
.end method

.method public b(Lir/cafebazaar/inline/ui/inflaters/PageInflater;Lorg/w3c/dom/Element;)V
    .locals 2

    const-string v0, "path"

    .line 1
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lir/cafebazaar/inline/ui/inflaters/PageInflater;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
