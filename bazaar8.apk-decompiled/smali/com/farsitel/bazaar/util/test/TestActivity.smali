.class public final Lcom/farsitel/bazaar/util/test/TestActivity;
.super Lb/o/a/i;
.source "TestActivity.kt"


# instance fields
.field public q:Z

.field public final r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lh/f/a/a<",
            "Lh/h;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lb/o/a/i;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/farsitel/bazaar/util/test/TestActivity;->r:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lb/o/a/i;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0020

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/farsitel/bazaar/util/test/TestActivity;->q:Z

    .line 4
    iget-object p1, p0, Lcom/farsitel/bazaar/util/test/TestActivity;->r:Ljava/util/List;

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh/f/a/a;

    .line 6
    invoke-interface {v0}, Lh/f/a/a;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method
