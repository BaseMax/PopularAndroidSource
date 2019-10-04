.class public Lf/a/a/d/a/a/b/h;
.super Lf/a/a/d/a/a/b/i;
.source "DualButtonsFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/a/a/d/a/a/b/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/w3c/dom/Element;Lf/a/a/d/f;)Lf/a/a/e/b/n;
    .locals 4

    .line 1
    new-instance v0, Lf/a/a/e/b/m;

    invoke-direct {v0}, Lf/a/a/e/b/m;-><init>()V

    const-string v1, "button"

    .line 2
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    .line 4
    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lf/a/a/d/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lf/a/a/d/a;

    move-result-object v2

    check-cast v2, Lir/cafebazaar/inline/ui/inflaters/ButtonInflater;

    invoke-virtual {v0, v2}, Lf/a/a/e/b/m;->a(Lir/cafebazaar/inline/ui/inflaters/ButtonInflater;)V

    const/4 v2, 0x1

    .line 5
    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-interface {p2, v1, p1}, Lf/a/a/d/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lf/a/a/d/a;

    move-result-object p1

    check-cast p1, Lir/cafebazaar/inline/ui/inflaters/ButtonInflater;

    invoke-virtual {v0, p1}, Lf/a/a/e/b/m;->b(Lir/cafebazaar/inline/ui/inflaters/ButtonInflater;)V

    :cond_0
    return-object v0
.end method
