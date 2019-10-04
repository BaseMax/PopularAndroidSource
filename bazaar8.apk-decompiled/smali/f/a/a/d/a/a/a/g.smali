.class public Lf/a/a/d/a/a/a/g;
.super Lf/a/a/d/a/a/a/c;
.source "TextChangerFactory.java"


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
    new-instance p2, Lf/a/a/e/a/m;

    invoke-direct {p2}, Lf/a/a/e/a/m;-><init>()V

    .line 2
    invoke-virtual {p0, p2, p1}, Lf/a/a/d/a/a/a/g;->a(Lf/a/a/e/a/m;Lorg/w3c/dom/Element;)V

    return-object p2
.end method

.method public a(Lf/a/a/e/a/m;Lorg/w3c/dom/Element;)V
    .locals 1

    .line 3
    invoke-static {p2}, Lf/a/a/d/a/a/b/x;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 5
    invoke-virtual {p1, p2}, Lf/a/a/e/a/m;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
