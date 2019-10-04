.class public Lf/a/a/d/a/a/b/o;
.super Lf/a/a/d/a/a/b/i;
.source "PhotoSliderFactory.java"


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
    new-instance v0, Lf/a/a/e/b/A;

    invoke-direct {v0}, Lf/a/a/e/b/A;-><init>()V

    .line 2
    invoke-virtual {p0, v0, p1, p2}, Lf/a/a/d/a/a/b/o;->a(Lf/a/a/e/b/A;Lorg/w3c/dom/Element;Lf/a/a/d/f;)V

    .line 3
    invoke-virtual {p0, v0, p1}, Lf/a/a/d/a/a/b/o;->a(Lf/a/a/e/b/A;Lorg/w3c/dom/Element;)V

    return-object v0
.end method

.method public final a(Lf/a/a/e/b/A;Lorg/w3c/dom/Element;)V
    .locals 2

    const-string v0, "aspectRatio"

    .line 10
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 12
    aget-object v0, p2, v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/4 v1, 0x1

    aget-object p2, p2, v1

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    div-float/2addr v0, p2

    invoke-virtual {p1, v0}, Lf/a/a/e/b/A;->a(F)V

    :cond_0
    return-void
.end method

.method public final a(Lf/a/a/e/b/A;Lorg/w3c/dom/Element;Lf/a/a/d/f;)V
    .locals 4

    const-string v0, "image"

    .line 4
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p2

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 6
    :goto_0
    invoke-interface {p2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 7
    invoke-interface {p2, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {p3, v0, v3}, Lf/a/a/d/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lf/a/a/d/a;

    move-result-object v3

    check-cast v3, Lir/cafebazaar/inline/ui/inflaters/ImageInflater;

    .line 8
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1, v1}, Lf/a/a/e/b/A;->a(Ljava/util/List;)V

    return-void
.end method
