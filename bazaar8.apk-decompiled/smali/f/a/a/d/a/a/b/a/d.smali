.class public abstract Lf/a/a/d/a/a/b/a/d;
.super Lf/a/a/d/a/a/b/a/g;
.source "ControllableInputFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/a/a/d/a/a/b/a/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/w3c/dom/Element;Lf/a/a/d/f;)Lf/a/a/e/b/b/B;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lf/a/a/d/a/a/b/a/d;->b(Lorg/w3c/dom/Element;Lf/a/a/d/f;)Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater;

    move-result-object p2

    .line 2
    invoke-virtual {p0, p2, p1}, Lf/a/a/d/a/a/b/a/d;->b(Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater;Lorg/w3c/dom/Element;)V

    .line 3
    invoke-virtual {p0, p2, p1}, Lf/a/a/d/a/a/b/a/d;->a(Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater;Lorg/w3c/dom/Element;)V

    return-object p2
.end method

.method public a(Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater;Lorg/w3c/dom/Element;)V
    .locals 1

    const-string v0, "optional"

    .line 4
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 5
    invoke-virtual {p1, p2}, Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater;->a(Z)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 6
    invoke-virtual {p1, p2}, Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater;->a(Z)V

    :goto_0
    return-void
.end method

.method public abstract b(Lorg/w3c/dom/Element;Lf/a/a/d/f;)Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater;
.end method

.method public b(Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater;Lorg/w3c/dom/Element;)V
    .locals 2

    const-string v0, "placeholder"

    .line 1
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lf/a/a/e/b/b/B;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
