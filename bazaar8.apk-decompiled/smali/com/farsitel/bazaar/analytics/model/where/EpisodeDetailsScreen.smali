.class public final Lcom/farsitel/bazaar/analytics/model/where/EpisodeDetailsScreen;
.super Lcom/farsitel/bazaar/analytics/model/where/DetailsScreen;
.source "DetailsScreen.kt"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 2

    const-string v0, "episodeId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "episode"

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, p1, p2, v1}, Lcom/farsitel/bazaar/analytics/model/where/DetailsScreen;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lh/f/b/f;)V

    return-void
.end method
