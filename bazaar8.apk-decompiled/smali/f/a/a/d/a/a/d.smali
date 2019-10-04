.class public Lf/a/a/d/a/a/d;
.super Ljava/lang/Object;
.source "PullResponseFactory.java"

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
    .locals 2

    .line 1
    new-instance v0, Lf/a/a/g/d/b/a;

    invoke-direct {v0}, Lf/a/a/g/d/b/a;-><init>()V

    .line 2
    check-cast p1, Lorg/w3c/dom/Document;

    const-string v1, "pullResponse"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    .line 3
    invoke-virtual {p0, v0, p1, p2}, Lf/a/a/d/a/a/d;->a(Lf/a/a/g/d/b/a;Lorg/w3c/dom/Element;Lf/a/a/d/f;)V

    .line 4
    invoke-virtual {p0, v0, p1}, Lf/a/a/d/a/a/d;->a(Lf/a/a/g/d/b/a;Lorg/w3c/dom/Element;)V

    .line 5
    invoke-virtual {p0, v0, p1}, Lf/a/a/d/a/a/d;->b(Lf/a/a/g/d/b/a;Lorg/w3c/dom/Element;)V

    return-object v0
.end method

.method public a(Lf/a/a/g/d/b/a;Lorg/w3c/dom/Element;)V
    .locals 2

    const-string v0, "keepOn"

    .line 8
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const-string v0, "true"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lf/a/a/g/d/b/a;->a(Z)V

    :cond_0
    return-void
.end method

.method public a(Lf/a/a/g/d/b/a;Lorg/w3c/dom/Element;Lf/a/a/d/f;)V
    .locals 2

    const-string v0, "action"

    .line 6
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory;-><init>(Z)V

    invoke-virtual {v0, p2, p3}, Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory;->a(Ljava/lang/Object;Lf/a/a/d/f;)Lf/a/a/d/a;

    move-result-object p2

    check-cast p2, Lf/a/a/g/d/a/b;

    invoke-virtual {p1, p2}, Lf/a/a/g/d/b/a;->a(Lf/a/a/g/d/a/b;)V

    :cond_0
    return-void
.end method

.method public final b(Lf/a/a/g/d/b/a;Lorg/w3c/dom/Element;)V
    .locals 2

    const-string v0, "token"

    .line 1
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lf/a/a/g/d/b/a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
