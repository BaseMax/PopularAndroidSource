.class public Lf/a/a/d/a/a/a/b;
.super Ljava/lang/Object;
.source "ChangeSetFactory.java"

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
    new-instance v0, Lf/a/a/e/a/o;

    invoke-direct {v0}, Lf/a/a/e/a/o;-><init>()V

    .line 2
    check-cast p1, Lorg/w3c/dom/Element;

    invoke-virtual {p0, v0, p1, p2}, Lf/a/a/d/a/a/a/b;->a(Lf/a/a/e/a/o;Lorg/w3c/dom/Element;Lf/a/a/d/f;)V

    return-object v0
.end method

.method public a(Lf/a/a/e/a/o;Lorg/w3c/dom/Element;Lf/a/a/d/f;)V
    .locals 5

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p2}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p2

    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-interface {p2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 6
    invoke-interface {p2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "change:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v3, v2}, Lf/a/a/d/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lf/a/a/d/a;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 8
    instance-of v3, v2, Lf/a/a/e/a/p;

    if-eqz v3, :cond_0

    .line 9
    check-cast v2, Lf/a/a/e/a/p;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 10
    :cond_0
    instance-of v3, v2, Lf/a/a/e/a/o;

    if-eqz v3, :cond_1

    .line 11
    check-cast v2, Lf/a/a/e/a/o;

    invoke-virtual {v2}, Lf/a/a/e/a/o;->a()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p1, v0}, Lf/a/a/e/a/o;->a(Ljava/util/Collection;)V

    return-void
.end method
