.class public final Lcom/farsitel/bazaar/analytics/model/what/TrailerClick;
.super Lcom/farsitel/bazaar/analytics/model/what/ItemClick;
.source "ItemClick.kt"


# instance fields
.field public final previewUrl:Ljava/lang/String;

.field public final videoId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "previewUrl"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoId"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referrer"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trailer"

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, p3, v1}, Lcom/farsitel/bazaar/analytics/model/what/ItemClick;-><init>(Ljava/lang/String;Ljava/lang/String;Lh/f/b/f;)V

    iput-object p1, p0, Lcom/farsitel/bazaar/analytics/model/what/TrailerClick;->previewUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/farsitel/bazaar/analytics/model/what/TrailerClick;->videoId:Ljava/lang/String;

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
    invoke-super {p0}, Lcom/farsitel/bazaar/analytics/model/what/ItemClick;->b()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x2

    .line 2
    new-array v1, v1, [Lkotlin/Pair;

    iget-object v2, p0, Lcom/farsitel/bazaar/analytics/model/what/TrailerClick;->previewUrl:Ljava/lang/String;

    const-string v3, "preview_url"

    invoke-static {v3, v2}, Lh/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/farsitel/bazaar/analytics/model/what/TrailerClick;->videoId:Ljava/lang/String;

    const-string v3, "entity_id"

    invoke-static {v3, v2}, Lh/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Lh/a/A;->b([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0
.end method
