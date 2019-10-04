.class public final Lcom/farsitel/bazaar/analytics/model/where/VideoDetailsScreen;
.super Lcom/farsitel/bazaar/analytics/model/where/DetailsScreen;
.source "DetailsScreen.kt"


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1

    const-string v0, "videoId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "video"

    const/4 v0, 0x0

    invoke-direct {p0, p3, p1, p2, v0}, Lcom/farsitel/bazaar/analytics/model/where/DetailsScreen;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lh/f/b/f;)V

    return-void
.end method
