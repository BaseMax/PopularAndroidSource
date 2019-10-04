.class public Lf/a/a/d/a/a/b/c;
.super Lf/a/a/d/a/a/b/i;
.source "ButtonFactory.java"


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
    new-instance v0, Lir/cafebazaar/inline/ui/inflaters/ButtonInflater;

    invoke-direct {v0}, Lir/cafebazaar/inline/ui/inflaters/ButtonInflater;-><init>()V

    .line 2
    invoke-virtual {p0, v0, p1}, Lf/a/a/d/a/a/b/c;->b(Lir/cafebazaar/inline/ui/inflaters/ButtonInflater;Lorg/w3c/dom/Element;)V

    .line 3
    invoke-virtual {p0, v0, p1}, Lf/a/a/d/a/a/b/c;->a(Lir/cafebazaar/inline/ui/inflaters/ButtonInflater;Lorg/w3c/dom/Element;)V

    .line 4
    invoke-virtual {p0, v0, p1, p2}, Lf/a/a/d/a/a/b/c;->a(Lir/cafebazaar/inline/ui/inflaters/ButtonInflater;Lorg/w3c/dom/Element;Lf/a/a/d/f;)V

    return-object v0
.end method

.method public a(Lir/cafebazaar/inline/ui/inflaters/ButtonInflater;Lorg/w3c/dom/Element;)V
    .locals 2

    const-string v0, "style"

    .line 5
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;->valueOf(Ljava/lang/String;)Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;

    move-result-object p2

    invoke-virtual {p1, p2}, Lir/cafebazaar/inline/ui/inflaters/ButtonInflater;->a(Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;)V

    :cond_0
    return-void
.end method

.method public a(Lir/cafebazaar/inline/ui/inflaters/ButtonInflater;Lorg/w3c/dom/Element;Lf/a/a/d/f;)V
    .locals 2

    const-string v0, "action"

    .line 7
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    new-instance v0, Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory;-><init>(Z)V

    invoke-virtual {v0, p2, p3}, Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory;->a(Ljava/lang/Object;Lf/a/a/d/f;)Lf/a/a/d/a;

    move-result-object p2

    check-cast p2, Lf/a/a/g/d/a/b;

    invoke-virtual {p1, p2}, Lir/cafebazaar/inline/ui/inflaters/ButtonInflater;->a(Lf/a/a/g/d/a/b;)V

    :cond_0
    return-void
.end method

.method public b(Lir/cafebazaar/inline/ui/inflaters/ButtonInflater;Lorg/w3c/dom/Element;)V
    .locals 0

    .line 1
    invoke-interface {p2}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lir/cafebazaar/inline/ui/inflaters/ButtonInflater;->c(Ljava/lang/String;)V

    return-void
.end method
