.class public final Lcom/farsitel/bazaar/analytics/model/what/PlayVideoButtonClick;
.super Lcom/farsitel/bazaar/analytics/model/what/ButtonClick;
.source "ButtonClick.kt"


# instance fields
.field public final entityId:Ljava/lang/String;

.field public final playedVideoType:Lcom/farsitel/bazaar/common/model/PlayedVideoType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/farsitel/bazaar/common/model/PlayedVideoType;Ljava/lang/String;)V
    .locals 2

    const-string v0, "entityId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playedVideoType"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referrer"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "play_video"

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, p3, v1}, Lcom/farsitel/bazaar/analytics/model/what/ButtonClick;-><init>(Ljava/lang/String;Ljava/lang/String;Lh/f/b/f;)V

    iput-object p1, p0, Lcom/farsitel/bazaar/analytics/model/what/PlayVideoButtonClick;->entityId:Ljava/lang/String;

    iput-object p2, p0, Lcom/farsitel/bazaar/analytics/model/what/PlayVideoButtonClick;->playedVideoType:Lcom/farsitel/bazaar/common/model/PlayedVideoType;

    return-void
.end method


# virtual methods
.method public b()Ljava/util/Map;
    .locals 4
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
    invoke-super {p0}, Lcom/farsitel/bazaar/analytics/model/what/ButtonClick;->b()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x2

    .line 2
    new-array v1, v1, [Lkotlin/Pair;

    .line 3
    iget-object v2, p0, Lcom/farsitel/bazaar/analytics/model/what/PlayVideoButtonClick;->entityId:Ljava/lang/String;

    const-string v3, "entity_id"

    invoke-static {v3, v2}, Lh/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 4
    iget-object v2, p0, Lcom/farsitel/bazaar/analytics/model/what/PlayVideoButtonClick;->playedVideoType:Lcom/farsitel/bazaar/common/model/PlayedVideoType;

    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/PlayedVideoType;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "video_type"

    invoke-static {v3, v2}, Lh/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 5
    invoke-static {v1}, Lh/a/A;->b([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0
.end method