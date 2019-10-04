.class public final Lc/c/a/n/j/k/f;
.super Ljava/lang/Object;
.source "VideoDetailFragment.kt"

# interfaces
.implements Lb/r/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->tb()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lb/r/u<",
        "Lcom/farsitel/bazaar/common/model/ui/EntityState;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/j/k/f;->a:Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/farsitel/bazaar/common/model/ui/EntityState;)V
    .locals 6

    .line 2
    iget-object v0, p0, Lc/c/a/n/j/k/f;->a:Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;

    invoke-static {v0}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->e(Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;)Lc/c/a/n/j/k/s;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lc/c/a/n/j/k/s;->a(Lc/c/a/n/j/k/s;Ljava/util/List;ILjava/lang/Object;)Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3
    iget-object v3, p0, Lc/c/a/n/j/k/f;->a:Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;->getPrice()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v2

    :goto_0
    invoke-static {v3, v4}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->a(Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;Ljava/lang/Long;)V

    if-eqz p1, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget-object p1, p0, Lc/c/a/n/j/k/f;->a:Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;

    invoke-static {p1}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->e(Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;)Lc/c/a/n/j/k/s;

    move-result-object p1

    invoke-virtual {p1}, Lc/c/a/n/j/k/s;->j()Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-result-object p1

    .line 5
    :goto_1
    iget-object v3, p0, Lc/c/a/n/j/k/f;->a:Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;

    invoke-static {v3}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->a(Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;)Lc/c/a/n/j/k/a;

    move-result-object v3

    invoke-virtual {v3, p1}, Lc/c/a/n/c/d/a/g;->a(Lcom/farsitel/bazaar/common/model/ui/EntityState;)V

    .line 6
    iget-object v3, p0, Lc/c/a/n/j/k/f;->a:Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;

    invoke-static {v3}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->e(Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;)Lc/c/a/n/j/k/s;

    move-result-object v3

    invoke-static {v3, v2, v1, v2}, Lc/c/a/n/j/k/s;->a(Lc/c/a/n/j/k/s;Ljava/util/List;ILjava/lang/Object;)Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 7
    iget-object v2, p0, Lc/c/a/n/j/k/f;->a:Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;

    invoke-static {v2}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->a(Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;)Lc/c/a/n/j/k/a;

    move-result-object v2

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;->isFree()Z

    move-result v1

    invoke-virtual {v2, v1}, Lc/c/a/n/j/k/a;->b(Z)V

    .line 8
    :cond_2
    invoke-virtual {v0, p1}, Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;->setVideoState(Lcom/farsitel/bazaar/common/model/ui/EntityState;)V

    .line 9
    iget-object v0, p0, Lc/c/a/n/j/k/f;->a:Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;

    invoke-static {v0}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->g(Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;)V

    .line 10
    iget-object v0, p0, Lc/c/a/n/j/k/f;->a:Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;

    invoke-static {v0}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->e(Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;)Lc/c/a/n/j/k/s;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/c/a/n/j/k/s;->b(Lcom/farsitel/bazaar/common/model/ui/EntityState;)V

    .line 11
    iget-object v0, p0, Lc/c/a/n/j/k/f;->a:Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;

    invoke-static {v0, p1}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->a(Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;Lcom/farsitel/bazaar/common/model/ui/EntityState;)V

    :cond_3
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/common/model/ui/EntityState;

    invoke-virtual {p0, p1}, Lc/c/a/n/j/k/f;->a(Lcom/farsitel/bazaar/common/model/ui/EntityState;)V

    return-void
.end method
