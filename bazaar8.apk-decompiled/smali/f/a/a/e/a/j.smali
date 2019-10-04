.class public Lf/a/a/e/a/j;
.super Ljava/lang/Object;
.source "GradualChangePropagator.java"

# interfaces
.implements Lf/a/a/e/a/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/a/a/e/a/j$a;
    }
.end annotation


# instance fields
.field public a:Lf/a/a/e/a/j$a;


# direct methods
.method public constructor <init>(Lf/a/a/e/a/j$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/a/a/e/a/j;->a:Lf/a/a/e/a/j$a;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Collection;Landroid/view/View;Lf/a/a/e/g;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lf/a/a/e/a/p;",
            ">;",
            "Landroid/view/View;",
            "Lf/a/a/e/g;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/a/a/e/a/p;

    .line 3
    iget-object v2, p0, Lf/a/a/e/a/j;->a:Lf/a/a/e/a/j$a;

    invoke-interface {v2, v1}, Lf/a/a/e/a/j$a;->a(Lf/a/a/e/a/p;)I

    move-result v2

    if-ltz v2, :cond_0

    .line 4
    new-instance v3, Lf/a/a/e/a/i;

    invoke-direct {v3, p0, v1, p2, p3}, Lf/a/a/e/a/i;-><init>(Lf/a/a/e/a/j;Lf/a/a/e/a/p;Landroid/view/View;Lf/a/a/e/g;)V

    int-to-long v1, v2

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    return-void
.end method
