.class public Lf/a/a/d/a/a/b/y;
.super Ljava/lang/Object;
.source "ValidationFactory.java"

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
    new-instance p2, Lf/a/a/d/g;

    invoke-direct {p2}, Lf/a/a/d/g;-><init>()V

    .line 2
    check-cast p1, Lorg/w3c/dom/Element;

    .line 3
    invoke-virtual {p0, p2, p1}, Lf/a/a/d/a/a/b/y;->b(Lf/a/a/d/g;Lorg/w3c/dom/Element;)V

    .line 4
    invoke-virtual {p0, p2, p1}, Lf/a/a/d/a/a/b/y;->a(Lf/a/a/d/g;Lorg/w3c/dom/Element;)V

    return-object p2
.end method

.method public a(Lf/a/a/d/g;Lorg/w3c/dom/Element;)V
    .locals 2

    const-string v0, "error"

    .line 5
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lf/a/a/d/g;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(Lf/a/a/d/g;Lorg/w3c/dom/Element;)V
    .locals 2

    const-string v0, "regex"

    .line 1
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lf/a/a/d/g;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
