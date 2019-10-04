.class public final Lcom/farsitel/bazaar/analytics/model/where/SeriesDetailsScreen;
.super Lcom/farsitel/bazaar/analytics/model/where/DetailsScreen;
.source "DetailsScreen.kt"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    const-string v0, "seriesId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "series"

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    .line 1
    invoke-direct/range {v1 .. v6}, Lcom/farsitel/bazaar/analytics/model/where/DetailsScreen;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ILh/f/b/f;)V

    return-void
.end method
