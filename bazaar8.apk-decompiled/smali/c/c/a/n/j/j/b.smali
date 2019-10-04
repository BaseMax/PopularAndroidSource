.class public final Lc/c/a/n/j/j/b;
.super Ljava/lang/Object;
.source "SeriesDetailFragment.kt"

# interfaces
.implements Lcom/farsitel/bazaar/common/model/cinema/EpisodeItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;->tb()Lc/c/a/n/j/j/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/c/a/n/j/j/b;->a:Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEpisodeItemClicked(Lcom/farsitel/bazaar/common/model/cinema/EpisodeModel;)V
    .locals 4

    const-string v0, "episodeItem"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lc/c/a/n/j/j/b;->a:Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;

    invoke-static {v0}, Lb/w/b/b;->a(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object v0

    .line 2
    sget-object v1, Lc/c/a/n/j/j/j;->a:Lc/c/a/n/j/j/j$b;

    .line 3
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeModel;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lc/c/a/n/j/j/b;->a:Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;

    invoke-static {v3}, Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;->d(Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;)Lc/c/a/n/j/j/l;

    move-result-object v3

    invoke-virtual {v3}, Lc/c/a/n/j/j/l;->j()I

    move-result v3

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeModel;->getReferrer()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {v1, v2, v3, p1}, Lc/c/a/n/j/j/j$b;->a(Ljava/lang/String;ILjava/lang/String;)Lb/w/p;

    move-result-object p1

    .line 5
    invoke-static {v0, p1}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    return-void
.end method

.method public onPlayOrBuyClicked(Lcom/farsitel/bazaar/common/model/cinema/EpisodeModel;)V
    .locals 1

    const-string v0, "episodeItem"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lc/c/a/n/j/j/b;->a:Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;

    invoke-static {v0, p1}, Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;->a(Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;Lcom/farsitel/bazaar/common/model/cinema/EpisodeModel;)V

    return-void
.end method
