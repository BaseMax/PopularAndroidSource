.class public Lf/a/a/d/a/a/f;
.super Ljava/lang/Object;
.source "ThemeFactory.java"

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
    .locals 0

    .line 1
    check-cast p1, Lorg/w3c/dom/Element;

    .line 2
    new-instance p2, Lir/cafebazaar/inline/ui/Theme;

    invoke-direct {p2}, Lir/cafebazaar/inline/ui/Theme;-><init>()V

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0, p2, p1}, Lf/a/a/d/a/a/f;->b(Lir/cafebazaar/inline/ui/Theme;Lorg/w3c/dom/Element;)V

    .line 4
    invoke-virtual {p0, p2, p1}, Lf/a/a/d/a/a/f;->a(Lir/cafebazaar/inline/ui/Theme;Lorg/w3c/dom/Element;)V

    .line 5
    invoke-virtual {p0, p2, p1}, Lf/a/a/d/a/a/f;->c(Lir/cafebazaar/inline/ui/Theme;Lorg/w3c/dom/Element;)V

    :cond_0
    return-object p2
.end method

.method public a(Lir/cafebazaar/inline/ui/Theme;Lorg/w3c/dom/Element;)V
    .locals 2

    const-string v0, "background"

    .line 6
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lir/cafebazaar/inline/ui/Theme;->a(I)V

    :cond_0
    return-void
.end method

.method public b(Lir/cafebazaar/inline/ui/Theme;Lorg/w3c/dom/Element;)V
    .locals 2

    const-string v0, "primary"

    .line 1
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lir/cafebazaar/inline/ui/Theme;->b(I)V

    :cond_0
    return-void
.end method

.method public c(Lir/cafebazaar/inline/ui/Theme;Lorg/w3c/dom/Element;)V
    .locals 2

    const-string v0, "text"

    .line 1
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lir/cafebazaar/inline/ui/Theme;->c(I)V

    :cond_0
    return-void
.end method
