.class public Lf/a/a/d/a/a/b/b;
.super Lf/a/a/d/a/a/b/i;
.source "BaseImageFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/a/a/d/a/a/b/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/w3c/dom/Element;Lf/a/a/d/f;)Lf/a/a/e/b/n;
    .locals 0

    .line 1
    new-instance p2, Lir/cafebazaar/inline/ui/inflaters/ImageInflater;

    invoke-direct {p2}, Lir/cafebazaar/inline/ui/inflaters/ImageInflater;-><init>()V

    .line 2
    invoke-virtual {p0, p2, p1}, Lf/a/a/d/a/a/b/b;->c(Lir/cafebazaar/inline/ui/inflaters/ImageInflater;Lorg/w3c/dom/Element;)V

    .line 3
    invoke-virtual {p0, p2, p1}, Lf/a/a/d/a/a/b/b;->d(Lir/cafebazaar/inline/ui/inflaters/ImageInflater;Lorg/w3c/dom/Element;)V

    .line 4
    invoke-virtual {p0, p2, p1}, Lf/a/a/d/a/a/b/b;->a(Lir/cafebazaar/inline/ui/inflaters/ImageInflater;Lorg/w3c/dom/Element;)V

    .line 5
    invoke-virtual {p0, p2, p1}, Lf/a/a/d/a/a/b/b;->b(Lir/cafebazaar/inline/ui/inflaters/ImageInflater;Lorg/w3c/dom/Element;)V

    return-object p2
.end method

.method public a(Lir/cafebazaar/inline/ui/inflaters/ImageInflater;Lorg/w3c/dom/Element;)V
    .locals 2

    const-string v0, "aspectRatio"

    .line 6
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 8
    aget-object v0, p2, v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/4 v1, 0x1

    aget-object p2, p2, v1

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    div-float/2addr v0, p2

    invoke-virtual {p1, v0}, Lir/cafebazaar/inline/ui/inflaters/ImageInflater;->a(F)V

    :cond_0
    return-void
.end method

.method public b(Lir/cafebazaar/inline/ui/inflaters/ImageInflater;Lorg/w3c/dom/Element;)V
    .locals 2

    const-string v0, "fullScreenOnClick"

    .line 1
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "true"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lir/cafebazaar/inline/ui/inflaters/ImageInflater;->a(Z)V

    :cond_0
    return-void
.end method

.method public c(Lir/cafebazaar/inline/ui/inflaters/ImageInflater;Lorg/w3c/dom/Element;)V
    .locals 2

    const-string v0, "src"

    .line 1
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lir/cafebazaar/inline/ui/inflaters/ImageInflater;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public d(Lir/cafebazaar/inline/ui/inflaters/ImageInflater;Lorg/w3c/dom/Element;)V
    .locals 2

    const-string v0, "style"

    .line 1
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lir/cafebazaar/inline/ui/inflaters/ImageInflater$Style;->valueOf(Ljava/lang/String;)Lir/cafebazaar/inline/ui/inflaters/ImageInflater$Style;

    move-result-object p2

    invoke-virtual {p1, p2}, Lir/cafebazaar/inline/ui/inflaters/ImageInflater;->a(Lir/cafebazaar/inline/ui/inflaters/ImageInflater$Style;)V

    :cond_0
    return-void
.end method
