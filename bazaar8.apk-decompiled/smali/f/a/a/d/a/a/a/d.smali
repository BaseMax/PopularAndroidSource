.class public Lf/a/a/d/a/a/a/d;
.super Ljava/lang/Object;
.source "FooterChangerFactory.java"

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

    .line 3
    invoke-virtual {p0, v0, p1, p2}, Lf/a/a/d/a/a/a/d;->a(Lf/a/a/e/a/o;Lorg/w3c/dom/Element;Lf/a/a/d/f;)V

    .line 4
    invoke-virtual {p0, v0, p1, p2}, Lf/a/a/d/a/a/a/d;->b(Lf/a/a/e/a/o;Lorg/w3c/dom/Element;Lf/a/a/d/f;)V

    return-object v0
.end method

.method public a(Lf/a/a/e/a/h;Lorg/w3c/dom/Element;)V
    .locals 1

    .line 13
    invoke-interface {p2}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    const-string v0, ""

    .line 14
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 15
    invoke-virtual {p1, p2}, Lf/a/a/e/a/h;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lf/a/a/e/a/h;Lorg/w3c/dom/Element;Lf/a/a/d/f;)V
    .locals 2

    const-string v0, "action"

    .line 16
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 17
    invoke-interface {p3, v0, p2}, Lf/a/a/d/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lf/a/a/d/a;

    move-result-object p2

    check-cast p2, Lf/a/a/g/d/a/b;

    invoke-virtual {p1, p2}, Lf/a/a/e/a/h;->a(Lf/a/a/g/d/a/b;)V

    :cond_0
    return-void
.end method

.method public a(Lf/a/a/e/a/o;Lorg/w3c/dom/Element;Lf/a/a/d/f;)V
    .locals 3

    .line 5
    new-instance v0, Lf/a/a/e/a/h;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lf/a/a/e/a/h;-><init>(Z)V

    const-string v1, "primaryAction"

    .line 6
    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_0

    .line 7
    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p2

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p2

    check-cast p2, Lorg/w3c/dom/Element;

    .line 8
    invoke-virtual {p0, v0, p2}, Lf/a/a/d/a/a/a/d;->a(Lf/a/a/e/a/h;Lorg/w3c/dom/Element;)V

    .line 9
    invoke-virtual {p0, v0, p2, p3}, Lf/a/a/d/a/a/a/d;->a(Lf/a/a/e/a/h;Lorg/w3c/dom/Element;Lf/a/a/d/f;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0, v0, p2}, Lf/a/a/d/a/a/a/d;->a(Lf/a/a/e/a/h;Lorg/w3c/dom/Element;)V

    .line 11
    invoke-virtual {p0, v0, p2, p3}, Lf/a/a/d/a/a/a/d;->a(Lf/a/a/e/a/h;Lorg/w3c/dom/Element;Lf/a/a/d/f;)V

    .line 12
    :goto_0
    invoke-virtual {p1, v0}, Lf/a/a/e/a/o;->a(Lf/a/a/e/a/p;)V

    return-void
.end method

.method public b(Lf/a/a/e/a/o;Lorg/w3c/dom/Element;Lf/a/a/d/f;)V
    .locals 2

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
    new-instance v1, Lf/a/a/e/a/h;

    invoke-direct {v1, v0}, Lf/a/a/e/a/h;-><init>(Z)V

    .line 4
    invoke-virtual {p0, v1, p2}, Lf/a/a/d/a/a/a/d;->a(Lf/a/a/e/a/h;Lorg/w3c/dom/Element;)V

    .line 5
    invoke-virtual {p0, v1, p2, p3}, Lf/a/a/d/a/a/a/d;->a(Lf/a/a/e/a/h;Lorg/w3c/dom/Element;Lf/a/a/d/f;)V

    .line 6
    invoke-virtual {p1, v1}, Lf/a/a/e/a/o;->a(Lf/a/a/e/a/p;)V

    :cond_0
    return-void
.end method
