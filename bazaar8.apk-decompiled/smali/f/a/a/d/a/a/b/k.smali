.class public Lf/a/a/d/a/a/b/k;
.super Ljava/lang/Object;
.source "HeaderFactory.java"

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
    new-instance p2, Lf/a/a/e/b/s;

    invoke-direct {p2}, Lf/a/a/e/b/s;-><init>()V

    .line 2
    check-cast p1, Lorg/w3c/dom/Element;

    .line 3
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lf/a/a/e/b/s;->a(Ljava/lang/String;)V

    return-object p2
.end method
