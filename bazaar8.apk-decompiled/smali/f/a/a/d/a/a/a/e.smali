.class public Lf/a/a/d/a/a/a/e;
.super Lf/a/a/d/a/a/a/c;
.source "ImageChangerFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/a/a/d/a/a/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/w3c/dom/Element;Lf/a/a/d/f;)Lf/a/a/e/a/d;
    .locals 0

    .line 1
    new-instance p2, Lf/a/a/e/a/k;

    invoke-direct {p2}, Lf/a/a/e/a/k;-><init>()V

    .line 2
    invoke-virtual {p0, p2, p1}, Lf/a/a/d/a/a/a/e;->a(Lf/a/a/e/a/k;Lorg/w3c/dom/Element;)V

    return-object p2
.end method

.method public a(Lf/a/a/e/a/k;Lorg/w3c/dom/Element;)V
    .locals 2

    const-string v0, "src"

    .line 3
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lf/a/a/e/a/k;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
