.class public abstract Lf/a/a/d/a/a/b/a/g;
.super Ljava/lang/Object;
.source "InputFactory.java"

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
    invoke-virtual {p0, p1, p2}, Lf/a/a/d/a/a/b/a/g;->a(Lorg/w3c/dom/Element;Lf/a/a/d/f;)Lf/a/a/e/b/b/B;

    move-result-object p2

    .line 3
    invoke-virtual {p0, p2, p1}, Lf/a/a/d/a/a/b/a/g;->a(Lf/a/a/e/b/b/B;Lorg/w3c/dom/Element;)V

    .line 4
    invoke-virtual {p0, p2, p1}, Lf/a/a/d/a/a/b/a/g;->b(Lf/a/a/e/b/b/B;Lorg/w3c/dom/Element;)V

    return-object p2
.end method

.method public abstract a(Lorg/w3c/dom/Element;Lf/a/a/d/f;)Lf/a/a/e/b/b/B;
.end method

.method public a(Lf/a/a/e/b/b/B;Lorg/w3c/dom/Element;)V
    .locals 2

    const-string v0, "field"

    .line 5
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lf/a/a/e/b/b/B;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(Lf/a/a/e/b/b/B;Lorg/w3c/dom/Element;)V
    .locals 2

    const-string v0, "prefill"

    .line 1
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lir/cafebazaar/inline/ux/prefill/PrefillDomain;->valueOf(Ljava/lang/String;)Lir/cafebazaar/inline/ux/prefill/PrefillDomain;

    move-result-object p2

    invoke-virtual {p1, p2}, Lf/a/a/e/b/b/B;->a(Lir/cafebazaar/inline/ux/prefill/PrefillDomain;)V

    :cond_0
    return-void
.end method
