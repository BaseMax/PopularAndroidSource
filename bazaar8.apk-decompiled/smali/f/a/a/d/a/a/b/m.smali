.class public Lf/a/a/d/a/a/b/m;
.super Ljava/lang/Object;
.source "OptionFactory.java"

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
    new-instance p2, Lf/a/a/d/e;

    invoke-direct {p2}, Lf/a/a/d/e;-><init>()V

    .line 2
    check-cast p1, Lorg/w3c/dom/Element;

    .line 3
    invoke-virtual {p0, p2, p1}, Lf/a/a/d/a/a/b/m;->a(Lf/a/a/d/e;Lorg/w3c/dom/Element;)V

    .line 4
    invoke-virtual {p0, p2, p1}, Lf/a/a/d/a/a/b/m;->b(Lf/a/a/d/e;Lorg/w3c/dom/Element;)V

    return-object p2
.end method

.method public a(Lf/a/a/d/e;Lorg/w3c/dom/Element;)V
    .locals 0

    .line 5
    invoke-interface {p2}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lf/a/a/d/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(Lf/a/a/d/e;Lorg/w3c/dom/Element;)V
    .locals 2

    const-string v0, "value"

    .line 1
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lf/a/a/d/e;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lf/a/a/d/e;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lf/a/a/d/e;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
