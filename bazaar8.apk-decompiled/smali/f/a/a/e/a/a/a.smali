.class public abstract Lf/a/a/e/a/a/a;
.super Ljava/lang/Object;
.source "ChangeAnimation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lf/a/a/e/a/p;Landroid/view/View;Lf/a/a/e/g;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf/a/a/e/a/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lf/a/a/e/a/a/a;->b(Lf/a/a/e/a/p;Landroid/view/View;Lf/a/a/e/g;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1, p2, p3}, Lf/a/a/e/a/p;->b(Landroid/view/View;Lf/a/a/e/g;)V

    :goto_0
    return-void
.end method

.method public abstract a()Z
.end method

.method public abstract b(Lf/a/a/e/a/p;Landroid/view/View;Lf/a/a/e/g;)V
.end method
