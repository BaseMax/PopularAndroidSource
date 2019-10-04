.class public Lf/a/a/d/a/a/b/j;
.super Ljava/lang/Object;
.source "FooterFactory.java"

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
    new-instance v0, Lf/a/a/e/b/q;

    invoke-direct {v0}, Lf/a/a/e/b/q;-><init>()V

    .line 2
    check-cast p1, Lorg/w3c/dom/Element;

    .line 3
    invoke-virtual {p0, v0, p1, p2}, Lf/a/a/d/a/a/b/j;->a(Lf/a/a/e/b/q;Lorg/w3c/dom/Element;Lf/a/a/d/f;)V

    .line 4
    invoke-virtual {p0, v0, p1, p2}, Lf/a/a/d/a/a/b/j;->b(Lf/a/a/e/b/q;Lorg/w3c/dom/Element;Lf/a/a/d/f;)V

    return-object v0
.end method

.method public a(Lf/a/a/e/b/q;Lorg/w3c/dom/Element;Lf/a/a/d/f;)V
    .locals 4

    const-string v0, "action"

    .line 5
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Lf/a/a/e/b/q$a;

    .line 7
    invoke-interface {p2}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory;

    invoke-direct {v3, v1}, Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory;-><init>(Z)V

    .line 8
    invoke-virtual {v3, p2, p3}, Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory;->a(Ljava/lang/Object;Lf/a/a/d/f;)Lf/a/a/d/a;

    move-result-object p2

    check-cast p2, Lf/a/a/g/d/a/b;

    invoke-direct {v0, v2, p2}, Lf/a/a/e/b/q$a;-><init>(Ljava/lang/String;Lf/a/a/g/d/a/b;)V

    .line 9
    invoke-virtual {p1, v0}, Lf/a/a/e/b/q;->a(Lf/a/a/e/b/q$a;)V

    goto :goto_0

    :cond_0
    const-string v0, "primaryAction"

    .line 10
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_1

    .line 11
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p2

    check-cast p2, Lorg/w3c/dom/Element;

    .line 12
    new-instance v0, Lf/a/a/e/b/q$a;

    .line 13
    invoke-interface {p2}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory;

    invoke-direct {v3, v1}, Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory;-><init>(Z)V

    .line 14
    invoke-virtual {v3, p2, p3}, Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory;->a(Ljava/lang/Object;Lf/a/a/d/f;)Lf/a/a/d/a;

    move-result-object p2

    check-cast p2, Lf/a/a/g/d/a/b;

    invoke-direct {v0, v2, p2}, Lf/a/a/e/b/q$a;-><init>(Ljava/lang/String;Lf/a/a/g/d/a/b;)V

    .line 15
    invoke-virtual {p1, v0}, Lf/a/a/e/b/q;->a(Lf/a/a/e/b/q$a;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Lf/a/a/e/b/q;Lorg/w3c/dom/Element;Lf/a/a/d/f;)V
    .locals 4

    const-string v0, "action"

    .line 1
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "secondaryAction"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_0

    .line 2
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p2

    check-cast p2, Lorg/w3c/dom/Element;

    .line 3
    new-instance v0, Lf/a/a/e/b/q$a;

    .line 4
    invoke-interface {p2}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory;-><init>(Z)V

    .line 5
    invoke-virtual {v2, p2, p3}, Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory;->a(Ljava/lang/Object;Lf/a/a/d/f;)Lf/a/a/d/a;

    move-result-object p2

    check-cast p2, Lf/a/a/g/d/a/b;

    invoke-direct {v0, v1, p2}, Lf/a/a/e/b/q$a;-><init>(Ljava/lang/String;Lf/a/a/g/d/a/b;)V

    .line 6
    invoke-virtual {p1, v0}, Lf/a/a/e/b/q;->b(Lf/a/a/e/b/q$a;)V

    :cond_0
    return-void
.end method
