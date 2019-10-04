.class public Lf/a/a/d/a/a/b/g;
.super Lf/a/a/d/a/a/b/i;
.source "DividerFactory.java"


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
    new-instance p2, Lir/cafebazaar/inline/ui/inflaters/DividerInflater;

    invoke-direct {p2}, Lir/cafebazaar/inline/ui/inflaters/DividerInflater;-><init>()V

    .line 2
    invoke-virtual {p0, p2, p1}, Lf/a/a/d/a/a/b/g;->b(Lir/cafebazaar/inline/ui/inflaters/DividerInflater;Lorg/w3c/dom/Element;)V

    .line 3
    invoke-virtual {p0, p2, p1}, Lf/a/a/d/a/a/b/g;->a(Lir/cafebazaar/inline/ui/inflaters/DividerInflater;Lorg/w3c/dom/Element;)V

    return-object p2
.end method

.method public final a(Lir/cafebazaar/inline/ui/inflaters/DividerInflater;Lorg/w3c/dom/Element;)V
    .locals 2

    const-string v0, "margin"

    .line 4
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lir/cafebazaar/inline/ui/inflaters/DividerInflater;->a(I)V

    goto :goto_0

    :cond_0
    const-string v0, "marginLeft"

    .line 6
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lir/cafebazaar/inline/ui/inflaters/DividerInflater;->c(I)V

    :cond_1
    const-string v0, "marginRight"

    .line 8
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lir/cafebazaar/inline/ui/inflaters/DividerInflater;->d(I)V

    :cond_2
    const-string v0, "marginBottom"

    .line 10
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 11
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lir/cafebazaar/inline/ui/inflaters/DividerInflater;->b(I)V

    :cond_3
    const-string v0, "marginTop"

    .line 12
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 13
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lir/cafebazaar/inline/ui/inflaters/DividerInflater;->e(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public b(Lir/cafebazaar/inline/ui/inflaters/DividerInflater;Lorg/w3c/dom/Element;)V
    .locals 2

    const-string v0, "style"

    .line 1
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lir/cafebazaar/inline/ui/inflaters/DividerInflater$Style;->valueOf(Ljava/lang/String;)Lir/cafebazaar/inline/ui/inflaters/DividerInflater$Style;

    move-result-object p2

    invoke-virtual {p1, p2}, Lir/cafebazaar/inline/ui/inflaters/DividerInflater;->a(Lir/cafebazaar/inline/ui/inflaters/DividerInflater$Style;)V

    :cond_0
    return-void
.end method
