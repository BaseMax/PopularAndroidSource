.class public Lf/a/a/d/a/a/b/z;
.super Lf/a/a/d/a/a/b/i;
.source "VideoCommentFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/a/a/d/a/a/b/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/w3c/dom/Element;Lf/a/a/d/f;)Lf/a/a/e/b/n;
    .locals 1

    .line 1
    new-instance p2, Lf/a/a/e/b/U;

    invoke-direct {p2}, Lf/a/a/e/b/U;-><init>()V

    .line 2
    new-instance v0, Lf/a/a/g/c/a;

    invoke-direct {v0, p1}, Lf/a/a/g/c/a;-><init>(Lorg/w3c/dom/Element;)V

    invoke-virtual {p2, v0}, Lf/a/a/e/b/U;->a(Lf/a/a/g/c/a;)V

    return-object p2
.end method
