.class public final Lc/c/a/n/c/c/b;
.super Ljava/lang/Object;
.source "PageFragment.kt"

# interfaces
.implements Lc/c/a/n/c/c/a/a/a/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/n/c/c/n;->tb()Lc/c/a/n/c/c/a/a/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/n/c/c/n;


# direct methods
.method public constructor <init>(Lc/c/a/n/c/c/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/c/a/n/c/c/b;->a:Lc/c/a/n/c/c/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/farsitel/bazaar/common/model/page/ListItem$Episode;)V
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "videoItem"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/common/model/page/ListItem$Episode;->getEpisode()Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;->getCanBePlayed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, v0, Lc/c/a/n/c/c/b;->a:Lc/c/a/n/c/c/n;

    invoke-static {v1}, Lc/c/a/n/c/c/n;->a(Lc/c/a/n/c/c/n;)Lc/c/a/n/j/b/c/b;

    move-result-object v1

    .line 3
    new-instance v15, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/common/model/page/ListItem$Episode;->getEpisode()Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;->getEntityId()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/common/model/page/ListItem$Episode;->getEpisode()Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;->getName()Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/common/model/page/ListItem$Episode;->getEpisode()Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;->getCoverUrl()Ljava/lang/String;

    move-result-object v6

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/common/model/page/ListItem$Episode;->getEpisode()Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;->getEntityId()Ljava/lang/String;

    move-result-object v7

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/common/model/page/ListItem$Episode;->getEpisode()Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;->getEpisodeIdx()Ljava/lang/Integer;

    move-result-object v8

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/common/model/page/ListItem$Episode;->getEpisode()Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;->getSeasonIdx()Ljava/lang/Integer;

    move-result-object v9

    .line 10
    sget-object v10, Lcom/farsitel/bazaar/common/model/PlayedVideoType;->EPISODE:Lcom/farsitel/bazaar/common/model/PlayedVideoType;

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/16 v14, 0x100

    const/16 v16, 0x0

    move-object v3, v15

    move-object v2, v15

    move-object/from16 v15, v16

    .line 11
    invoke-direct/range {v3 .. v15}, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/farsitel/bazaar/common/model/PlayedVideoType;ZJILh/f/b/f;)V

    .line 12
    sget-object v3, Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoType;->EPISODE:Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoType;

    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/common/model/page/ListItem$Episode;->getEpisode()Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;->getReferrer()Ljava/lang/String;

    move-result-object v4

    .line 13
    invoke-virtual {v1, v2, v3, v4}, Lc/c/a/n/j/b/c/b;->a(Lcom/farsitel/bazaar/common/model/PlayedVideoModel;Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoType;Ljava/lang/String;)V

    .line 14
    iget-object v1, v0, Lc/c/a/n/c/c/b;->a:Lc/c/a/n/c/c/n;

    invoke-static {v1}, Lc/c/a/n/c/c/n;->c(Lc/c/a/n/c/c/n;)Lc/c/a/n/c/c/t;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/common/model/page/ListItem$Episode;->getEpisode()Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;->getEntityId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc/c/a/n/c/c/t;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_0
    sget-object v1, Lcom/farsitel/bazaar/ui/payment/PaymentActivity;->w:Lcom/farsitel/bazaar/ui/payment/PaymentActivity$a;

    iget-object v2, v0, Lc/c/a/n/c/c/b;->a:Lc/c/a/n/c/c/n;

    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/common/model/page/ListItem$Episode;->getEpisode()Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;->getEpisodeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/common/model/page/ListItem$Episode;->getEpisode()Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/farsitel/bazaar/ui/payment/PaymentActivity$a;->b(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public b(Lcom/farsitel/bazaar/common/model/page/ListItem$Episode;)V
    .locals 3

    const-string v0, "episodeItem"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lc/c/a/n/c/c/b;->a:Lc/c/a/n/c/c/n;

    .line 2
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/ListItem$Episode;->getEpisode()Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;->getEpisodeId()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/ListItem$Episode;->getEpisode()Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;->getSeasonIdx()Ljava/lang/Integer;

    move-result-object v2

    .line 4
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/ListItem$Episode;->getEpisode()Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;->getReferrer()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {v0, v1, v2, p1}, Lc/c/a/n/c/c/n;->a(Lc/c/a/n/c/c/n;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method
