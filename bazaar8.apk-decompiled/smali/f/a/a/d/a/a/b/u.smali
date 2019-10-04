.class public Lf/a/a/d/a/a/b/u;
.super Lf/a/a/d/a/a/b/n;
.source "SplashPageFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/a/a/d/a/a/b/n;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lf/a/a/d/f;)Lf/a/a/d/a;
    .locals 1

    .line 2
    invoke-super {p0, p1, p2}, Lf/a/a/d/a/a/b/n;->a(Ljava/lang/Object;Lf/a/a/d/f;)Lf/a/a/d/a;

    move-result-object v0

    check-cast v0, Lf/a/a/e/b/M;

    .line 3
    check-cast p1, Lorg/w3c/dom/Element;

    .line 4
    invoke-virtual {p0, v0, p1, p2}, Lf/a/a/d/a/a/b/u;->a(Lf/a/a/e/b/M;Lorg/w3c/dom/Element;Lf/a/a/d/f;)V

    return-object v0
.end method

.method public a()Lir/cafebazaar/inline/ui/inflaters/PageInflater;
    .locals 1

    .line 1
    new-instance v0, Lf/a/a/e/b/M;

    invoke-direct {v0}, Lf/a/a/e/b/M;-><init>()V

    return-object v0
.end method

.method public final a(Lf/a/a/e/b/M;Lorg/w3c/dom/Element;Lf/a/a/d/f;)V
    .locals 2

    const-string v0, "action"

    .line 5
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory;-><init>(Z)V

    invoke-virtual {v0, p2, p3}, Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory;->a(Ljava/lang/Object;Lf/a/a/d/f;)Lf/a/a/d/a;

    move-result-object p2

    check-cast p2, Lf/a/a/g/d/a/b;

    invoke-virtual {p1, p2}, Lf/a/a/e/b/M;->a(Lf/a/a/g/d/a/b;)V

    :cond_0
    return-void
.end method
