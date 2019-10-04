.class public Lf/a/a/d/a/a/b/e;
.super Lf/a/a/d/a/a/b/l;
.source "CommentListFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/a/a/d/a/a/b/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/w3c/dom/Element;Lf/a/a/d/f;)Lf/a/a/e/b/n;
    .locals 2

    .line 1
    new-instance v0, Lf/a/a/e/b/y;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lf/a/a/e/b/y;-><init>(Z)V

    .line 2
    invoke-virtual {p0, v0, p1, p2}, Lf/a/a/d/a/a/b/l;->a(Lf/a/a/e/b/y;Lorg/w3c/dom/Element;Lf/a/a/d/f;)V

    .line 3
    invoke-virtual {p0, v0, p1}, Lf/a/a/d/a/a/b/l;->a(Lf/a/a/e/b/y;Lorg/w3c/dom/Element;)V

    return-object v0
.end method
