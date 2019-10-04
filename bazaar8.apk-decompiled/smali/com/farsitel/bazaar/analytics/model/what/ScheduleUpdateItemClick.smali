.class public final Lcom/farsitel/bazaar/analytics/model/what/ScheduleUpdateItemClick;
.super Lcom/farsitel/bazaar/analytics/model/what/ItemClick;
.source "ItemClick.kt"


# instance fields
.field public final checked:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 2

    const-string v0, "referrer"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedule_update"

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, p2, v1}, Lcom/farsitel/bazaar/analytics/model/what/ItemClick;-><init>(Ljava/lang/String;Ljava/lang/String;Lh/f/b/f;)V

    iput-boolean p1, p0, Lcom/farsitel/bazaar/analytics/model/what/ScheduleUpdateItemClick;->checked:Z

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
    invoke-super {p0}, Lcom/farsitel/bazaar/analytics/model/what/ItemClick;->b()Ljava/util/Map;

    move-result-object v0

    .line 2
    iget-boolean v1, p0, Lcom/farsitel/bazaar/analytics/model/what/ScheduleUpdateItemClick;->checked:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "checked"

    invoke-static {v2, v1}, Lh/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-static {v1}, Lh/a/z;->a(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    .line 3
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0
.end method
