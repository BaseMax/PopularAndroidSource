.class public Lf/a/a/d/a/a/b/a/c;
.super Lf/a/a/d/a/a/b/a/d;
.source "ChoicesFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/a/a/d/a/a/b/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lf/a/a/e/b/b/l;Lorg/w3c/dom/Element;Lf/a/a/d/f;)V
    .locals 6

    const-string v0, "option"

    .line 1
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p2

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {p1, v1}, Lf/a/a/e/b/b/l;->a(Ljava/util/List;)V

    const/4 v2, 0x0

    .line 4
    :goto_0
    invoke-interface {p2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 5
    invoke-interface {p2, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {p3, v0, v3}, Lf/a/a/d/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lf/a/a/d/a;

    move-result-object v3

    check-cast v3, Lf/a/a/d/e;

    .line 6
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-interface {p2, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    const-string v5, "selected"

    invoke-interface {v4, v5}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 8
    invoke-virtual {v3}, Lf/a/a/d/e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lf/a/a/e/b/b/l;->a(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(Lorg/w3c/dom/Element;Lf/a/a/d/f;)Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater;
    .locals 1

    .line 1
    new-instance v0, Lf/a/a/e/b/b/l;

    invoke-direct {v0}, Lf/a/a/e/b/b/l;-><init>()V

    .line 2
    invoke-virtual {p0, v0, p1, p2}, Lf/a/a/d/a/a/b/a/c;->a(Lf/a/a/e/b/b/l;Lorg/w3c/dom/Element;Lf/a/a/d/f;)V

    return-object v0
.end method
