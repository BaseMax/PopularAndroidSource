.class public final Lc/c/a/n/j/d/f;
.super Ljava/lang/Object;
.source "EpisodeDetailFragment.kt"

# interfaces
.implements Lb/r/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->jb()Lc/c/a/n/j/d/t;
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
        "Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/n/j/d/t;

.field public final synthetic b:Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;


# direct methods
.method public constructor <init>(Lc/c/a/n/j/d/t;Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/j/d/f;->a:Lc/c/a/n/j/d/t;

    iput-object p2, p0, Lc/c/a/n/j/d/f;->b:Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lc/c/a/n/j/d/f;->a:Lc/c/a/n/j/d/t;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lc/c/a/n/j/d/t;->a(Lc/c/a/n/j/d/t;Ljava/util/List;ILjava/lang/Object;)Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;->setProgressInfo(Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lc/c/a/n/j/d/f;->b:Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;

    invoke-static {p1}, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->f(Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;

    invoke-virtual {p0, p1}, Lc/c/a/n/j/d/f;->a(Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;)V

    return-void
.end method
