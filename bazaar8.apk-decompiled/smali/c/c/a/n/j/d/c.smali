.class public final Lc/c/a/n/j/d/c;
.super Ljava/lang/Object;
.source "EpisodeDetailFragment.kt"

# interfaces
.implements Lc/c/a/n/c/c/a/a/a/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->tb()Lc/c/a/n/j/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/c/a/n/j/d/c;->a:Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/farsitel/bazaar/common/model/page/ListItem$Episode;)V
    .locals 1

    const-string v0, "episodeItem"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lc/c/a/n/j/d/c;->a:Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/ListItem$Episode;->getEpisode()Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->a(Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;)V

    return-void
.end method

.method public b(Lcom/farsitel/bazaar/common/model/page/ListItem$Episode;)V
    .locals 4

    const-string v0, "episodeItem"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lc/c/a/n/j/d/c;->a:Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;

    invoke-static {v0}, Lb/w/b/b;->a(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object v0

    .line 2
    sget-object v1, Lc/c/a/n/j/d/p;->a:Lc/c/a/n/j/d/p$c;

    .line 3
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/ListItem$Episode;->getEpisode()Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;->getEpisodeId()Ljava/lang/String;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lc/c/a/n/j/d/c;->a:Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;

    invoke-static {v3}, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->e(Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;)Lc/c/a/n/j/d/t;

    move-result-object v3

    invoke-virtual {v3}, Lc/c/a/n/j/d/t;->j()I

    move-result v3

    .line 5
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/ListItem$Episode;->getEpisode()Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;->getReferrer()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {v1, v2, v3, p1}, Lc/c/a/n/j/d/p$c;->a(Ljava/lang/String;ILjava/lang/String;)Lb/w/p;

    move-result-object p1

    .line 7
    invoke-static {v0, p1}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    return-void
.end method
