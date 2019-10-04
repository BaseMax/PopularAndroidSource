.class public final Lc/c/a/n/j/d/e;
.super Ljava/lang/Object;
.source "EpisodeDetailFragment.kt"

# interfaces
.implements Lb/r/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->a(Lc/c/a/n/j/d/t;)V
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
.field public final synthetic a:Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;

.field public final synthetic b:Lc/c/a/n/j/d/t;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;Lc/c/a/n/j/d/t;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/j/d/e;->a:Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;

    iput-object p2, p0, Lc/c/a/n/j/d/e;->b:Lc/c/a/n/j/d/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/farsitel/bazaar/common/model/ui/EntityState;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lc/c/a/n/j/d/e;->b:Lc/c/a/n/j/d/t;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lc/c/a/n/j/d/t;->a(Lc/c/a/n/j/d/t;Ljava/util/List;ILjava/lang/Object;)Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lc/c/a/n/j/d/e;->b:Lc/c/a/n/j/d/t;

    invoke-virtual {p1}, Lc/c/a/n/j/d/t;->l()Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-result-object p1

    .line 4
    :goto_0
    invoke-virtual {v0, p1}, Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;->setVideoState(Lcom/farsitel/bazaar/common/model/ui/EntityState;)V

    .line 5
    iget-object v0, p0, Lc/c/a/n/j/d/e;->a:Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;

    invoke-static {v0}, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->f(Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;)V

    .line 6
    iget-object v0, p0, Lc/c/a/n/j/d/e;->b:Lc/c/a/n/j/d/t;

    invoke-virtual {v0, p1}, Lc/c/a/n/j/d/t;->b(Lcom/farsitel/bazaar/common/model/ui/EntityState;)V

    .line 7
    iget-object v0, p0, Lc/c/a/n/j/d/e;->a:Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;

    invoke-static {v0, p1}, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->a(Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;Lcom/farsitel/bazaar/common/model/ui/EntityState;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/common/model/ui/EntityState;

    invoke-virtual {p0, p1}, Lc/c/a/n/j/d/e;->a(Lcom/farsitel/bazaar/common/model/ui/EntityState;)V

    return-void
.end method
