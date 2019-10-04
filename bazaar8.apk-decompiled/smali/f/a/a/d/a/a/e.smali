.class public Lf/a/a/d/a/a/e;
.super Ljava/lang/Object;
.source "PullerFactory.java"

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
    new-instance p2, Lir/cafebazaar/inline/ux/flow/pull/Puller;

    invoke-direct {p2}, Lir/cafebazaar/inline/ux/flow/pull/Puller;-><init>()V

    .line 3
    invoke-virtual {p0, p2, p1}, Lf/a/a/d/a/a/e;->c(Lir/cafebazaar/inline/ux/flow/pull/Puller;Lorg/w3c/dom/Element;)V

    .line 4
    invoke-virtual {p0, p2, p1}, Lf/a/a/d/a/a/e;->a(Lir/cafebazaar/inline/ux/flow/pull/Puller;Lorg/w3c/dom/Element;)V

    .line 5
    invoke-virtual {p0, p2, p1}, Lf/a/a/d/a/a/e;->b(Lir/cafebazaar/inline/ux/flow/pull/Puller;Lorg/w3c/dom/Element;)V

    return-object p2
.end method

.method public a(Lir/cafebazaar/inline/ux/flow/pull/Puller;Lorg/w3c/dom/Element;)V
    .locals 2

    const-string v0, "frequency"

    .line 6
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lir/cafebazaar/inline/ux/flow/pull/Puller$Frequency;->valueOf(Ljava/lang/String;)Lir/cafebazaar/inline/ux/flow/pull/Puller$Frequency;

    move-result-object p2

    invoke-virtual {p1, p2}, Lir/cafebazaar/inline/ux/flow/pull/Puller;->a(Lir/cafebazaar/inline/ux/flow/pull/Puller$Frequency;)V

    :cond_0
    return-void
.end method

.method public b(Lir/cafebazaar/inline/ux/flow/pull/Puller;Lorg/w3c/dom/Element;)V
    .locals 2

    const-string v0, "keepOnPolicy"

    .line 1
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lir/cafebazaar/inline/ux/flow/pull/Puller$ContextAgnosticPolicy;->valueOf(Ljava/lang/String;)Lir/cafebazaar/inline/ux/flow/pull/Puller$ContextAgnosticPolicy;

    move-result-object p2

    invoke-virtual {p1, p2}, Lir/cafebazaar/inline/ux/flow/pull/Puller;->a(Lir/cafebazaar/inline/ux/flow/pull/Puller$ContextAgnosticPolicy;)V

    :cond_0
    return-void
.end method

.method public c(Lir/cafebazaar/inline/ux/flow/pull/Puller;Lorg/w3c/dom/Element;)V
    .locals 2

    const-string v0, "target"

    .line 1
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lir/cafebazaar/inline/ux/flow/pull/Puller;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
