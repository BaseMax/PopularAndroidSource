.class public final Lcom/farsitel/bazaar/analytics/model/what/VideoReviewVisit;
.super Lcom/farsitel/bazaar/analytics/model/what/VisitEvent;
.source "VisitEvent.kt"


# instance fields
.field public final videoId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "videoId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referrer"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "video_comments"

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, p2, v1}, Lcom/farsitel/bazaar/analytics/model/what/VisitEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lh/f/b/f;)V

    iput-object p1, p0, Lcom/farsitel/bazaar/analytics/model/what/VideoReviewVisit;->videoId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/farsitel/bazaar/analytics/model/what/VisitEvent;->b()Ljava/util/Map;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/farsitel/bazaar/analytics/model/what/VideoReviewVisit;->videoId:Ljava/lang/String;

    const-string v2, "video_id"

    invoke-static {v2, v1}, Lh/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-static {v1}, Lh/a/z;->a(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0
.end method
