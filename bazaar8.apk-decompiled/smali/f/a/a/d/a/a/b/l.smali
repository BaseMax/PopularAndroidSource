.class public Lf/a/a/d/a/a/b/l;
.super Lf/a/a/d/a/a/b/i;
.source "ListFactory.java"


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
    new-instance v0, Lf/a/a/e/b/y;

    invoke-direct {v0}, Lf/a/a/e/b/y;-><init>()V

    .line 2
    invoke-virtual {p0, v0, p1, p2}, Lf/a/a/d/a/a/b/l;->a(Lf/a/a/e/b/y;Lorg/w3c/dom/Element;Lf/a/a/d/f;)V

    .line 3
    invoke-virtual {p0, v0, p1}, Lf/a/a/d/a/a/b/l;->b(Lf/a/a/e/b/y;Lorg/w3c/dom/Element;)V

    .line 4
    invoke-virtual {p0, v0, p1}, Lf/a/a/d/a/a/b/l;->c(Lf/a/a/e/b/y;Lorg/w3c/dom/Element;)V

    .line 5
    invoke-virtual {p0, v0, p1}, Lf/a/a/d/a/a/b/l;->a(Lf/a/a/e/b/y;Lorg/w3c/dom/Element;)V

    return-object v0
.end method

.method public a(Lf/a/a/e/b/y;Lorg/w3c/dom/Element;)V
    .locals 2

    const-string v0, "maxCount"

    .line 13
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 15
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lf/a/a/e/b/y;->a(I)V

    :cond_0
    return-void
.end method

.method public a(Lf/a/a/e/b/y;Lorg/w3c/dom/Element;Lf/a/a/d/f;)V
    .locals 4

    .line 6
    invoke-interface {p2}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p2

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-interface {p2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 9
    invoke-interface {p2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {p3, v2, v3}, Lf/a/a/d/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lf/a/a/d/a;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10
    instance-of v3, v2, Lf/a/a/e/b/n;

    if-eqz v3, :cond_0

    .line 11
    check-cast v2, Lf/a/a/e/b/n;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p1, v0}, Lf/a/a/e/b/y;->a(Ljava/util/List;)V

    return-void
.end method

.method public final b(Lf/a/a/e/b/y;Lorg/w3c/dom/Element;)V
    .locals 2

    const-string v0, "path"

    .line 1
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lf/a/a/e/b/y;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final c(Lf/a/a/e/b/y;Lorg/w3c/dom/Element;)V
    .locals 2

    const-string v0, "token"

    .line 1
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lf/a/a/e/b/y;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
