.class public Lf/a/a/d/a/a/a/f;
.super Lf/a/a/d/a/a/a/c;
.source "ListChangeFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/a/a/d/a/a/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/w3c/dom/Element;Lf/a/a/d/f;)Lf/a/a/e/a/d;
    .locals 1

    .line 1
    new-instance v0, Lf/a/a/e/a/l;

    invoke-direct {v0}, Lf/a/a/e/a/l;-><init>()V

    .line 2
    invoke-virtual {p0, p1, p2}, Lf/a/a/d/a/a/a/f;->b(Lorg/w3c/dom/Element;Lf/a/a/d/f;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lf/a/a/e/a/l;->a(Ljava/util/List;)V

    return-object v0
.end method

.method public final b(Lorg/w3c/dom/Element;Lf/a/a/d/f;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            "Lf/a/a/d/f;",
            ")",
            "Ljava/util/List<",
            "Lf/a/a/e/b/n;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4
    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Lf/a/a/d/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lf/a/a/d/a;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    instance-of v3, v2, Lf/a/a/e/b/n;

    if-eqz v3, :cond_0

    .line 6
    check-cast v2, Lf/a/a/e/b/n;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
