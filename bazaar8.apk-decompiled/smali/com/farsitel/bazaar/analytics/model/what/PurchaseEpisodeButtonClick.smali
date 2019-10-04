.class public final Lcom/farsitel/bazaar/analytics/model/what/PurchaseEpisodeButtonClick;
.super Lcom/farsitel/bazaar/analytics/model/what/ButtonClick;
.source "ButtonClick.kt"


# instance fields
.field public final entityId:Ljava/lang/String;

.field public final episodeId:I

.field public final fullName:Ljava/lang/String;

.field public final price:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)V
    .locals 2

    const-string v0, "entityId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fullName"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referrer"

    invoke-static {p6, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "purchase_episode"

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, p6, v1}, Lcom/farsitel/bazaar/analytics/model/what/ButtonClick;-><init>(Ljava/lang/String;Ljava/lang/String;Lh/f/b/f;)V

    iput-object p1, p0, Lcom/farsitel/bazaar/analytics/model/what/PurchaseEpisodeButtonClick;->entityId:Ljava/lang/String;

    iput-object p2, p0, Lcom/farsitel/bazaar/analytics/model/what/PurchaseEpisodeButtonClick;->fullName:Ljava/lang/String;

    iput p3, p0, Lcom/farsitel/bazaar/analytics/model/what/PurchaseEpisodeButtonClick;->episodeId:I

    iput-wide p4, p0, Lcom/farsitel/bazaar/analytics/model/what/PurchaseEpisodeButtonClick;->price:J

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

    const/4 v1, 0x4

    .line 2
    new-array v1, v1, [Lkotlin/Pair;

    .line 3
    iget-object v2, p0, Lcom/farsitel/bazaar/analytics/model/what/PurchaseEpisodeButtonClick;->entityId:Ljava/lang/String;

    const-string v3, "entity_id"

    invoke-static {v3, v2}, Lh/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 4
    iget-object v2, p0, Lcom/farsitel/bazaar/analytics/model/what/PurchaseEpisodeButtonClick;->fullName:Ljava/lang/String;

    const-string v3, "full_name"

    invoke-static {v3, v2}, Lh/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 5
    iget v2, p0, Lcom/farsitel/bazaar/analytics/model/what/PurchaseEpisodeButtonClick;->episodeId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "episode_id"

    invoke-static {v3, v2}, Lh/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 6
    iget-wide v2, p0, Lcom/farsitel/bazaar/analytics/model/what/PurchaseEpisodeButtonClick;->price:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "price"

    invoke-static {v3, v2}, Lh/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 7
    invoke-static {v1}, Lh/a/A;->b([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0
.end method
