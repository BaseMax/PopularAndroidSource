.class public Lf/a/a/d/a/a/b/f;
.super Lf/a/a/d/a/a/b/n;
.source "CommonPageFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/a/a/d/a/a/b/n;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lf/a/a/d/f;)Lf/a/a/d/a;
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Lf/a/a/d/a/a/b/n;->a(Ljava/lang/Object;Lf/a/a/d/f;)Lf/a/a/d/a;

    move-result-object p2

    check-cast p2, Lf/a/a/e/b/l;

    .line 3
    check-cast p1, Lorg/w3c/dom/Element;

    .line 4
    invoke-virtual {p0, p2, p1}, Lf/a/a/d/a/a/b/f;->c(Lir/cafebazaar/inline/ui/inflaters/PageInflater;Lorg/w3c/dom/Element;)V

    return-object p2
.end method

.method public a()Lir/cafebazaar/inline/ui/inflaters/PageInflater;
    .locals 1

    .line 1
    new-instance v0, Lf/a/a/e/b/l;

    invoke-direct {v0}, Lf/a/a/e/b/l;-><init>()V

    return-object v0
.end method

.method public c(Lir/cafebazaar/inline/ui/inflaters/PageInflater;Lorg/w3c/dom/Element;)V
    .locals 2

    const-string v0, "skipBackstack"

    .line 1
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const-string v0, "true"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lir/cafebazaar/inline/ui/inflaters/PageInflater;->a(Z)V

    :cond_0
    return-void
.end method
