.class public Lf/a/a/d/a/a/a/a;
.super Lf/a/a/d/a/a/a/c;
.source "ButtonChangerFactory.java"


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
    new-instance v0, Lf/a/a/e/a/b;

    invoke-direct {v0}, Lf/a/a/e/a/b;-><init>()V

    .line 2
    invoke-virtual {p0, v0, p1}, Lf/a/a/d/a/a/a/a;->b(Lf/a/a/e/a/b;Lorg/w3c/dom/Element;)V

    .line 3
    invoke-virtual {p0, v0, p1, p2}, Lf/a/a/d/a/a/a/a;->a(Lf/a/a/e/a/b;Lorg/w3c/dom/Element;Lf/a/a/d/f;)V

    .line 4
    invoke-virtual {p0, v0, p1}, Lf/a/a/d/a/a/a/a;->a(Lf/a/a/e/a/b;Lorg/w3c/dom/Element;)V

    return-object v0
.end method

.method public a(Lf/a/a/e/a/b;Lorg/w3c/dom/Element;)V
    .locals 2

    const-string v0, "style"

    .line 7
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;->valueOf(Ljava/lang/String;)Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;

    move-result-object p2

    invoke-virtual {p1, p2}, Lf/a/a/e/a/b;->a(Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;)V

    :cond_0
    return-void
.end method

.method public a(Lf/a/a/e/a/b;Lorg/w3c/dom/Element;Lf/a/a/d/f;)V
    .locals 2

    const-string v0, "action"

    .line 5
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-interface {p3, v0, p2}, Lf/a/a/d/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lf/a/a/d/a;

    move-result-object p2

    check-cast p2, Lf/a/a/g/d/a/b;

    invoke-virtual {p1, p2}, Lf/a/a/e/a/b;->a(Lf/a/a/g/d/a/b;)V

    :cond_0
    return-void
.end method

.method public b(Lf/a/a/e/a/b;Lorg/w3c/dom/Element;)V
    .locals 1

    .line 1
    invoke-interface {p2}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    invoke-virtual {p1, p2}, Lf/a/a/e/a/b;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
