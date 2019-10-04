.class public Lf/a/a/d/a/a/b/q;
.super Lf/a/a/d/a/a/b/b;
.source "ScalableImageFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/a/a/d/a/a/b/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/w3c/dom/Element;Lf/a/a/d/f;)Lf/a/a/e/b/n;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lf/a/a/d/a/a/b/b;->a(Lorg/w3c/dom/Element;Lf/a/a/d/f;)Lf/a/a/e/b/n;

    move-result-object p2

    check-cast p2, Lir/cafebazaar/inline/ui/inflaters/ImageInflater;

    .line 2
    invoke-virtual {p0, p2, p1}, Lf/a/a/d/a/a/b/q;->e(Lir/cafebazaar/inline/ui/inflaters/ImageInflater;Lorg/w3c/dom/Element;)V

    return-object p2
.end method

.method public e(Lir/cafebazaar/inline/ui/inflaters/ImageInflater;Lorg/w3c/dom/Element;)V
    .locals 2

    const-string v0, "width"

    .line 1
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "%"

    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lir/cafebazaar/inline/ui/inflaters/ImageInflater;->a(I)V

    :cond_0
    return-void
.end method
