.class public abstract Lcom/farsitel/bazaar/analytics/model/what/ItemClick;
.super Lcom/farsitel/bazaar/analytics/model/what/ClickEvent;
.source "ItemClick.kt"


# instance fields
.field public final type:Ljava/lang/String;

.field public final which:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/farsitel/bazaar/analytics/model/what/ClickEvent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/farsitel/bazaar/analytics/model/what/ItemClick;->which:Ljava/lang/String;

    const-string p1, "item"

    .line 2
    iput-object p1, p0, Lcom/farsitel/bazaar/analytics/model/what/ItemClick;->type:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lh/f/b/f;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/farsitel/bazaar/analytics/model/what/ItemClick;-><init>(Ljava/lang/String;Ljava/lang/String;)V

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
    invoke-super {p0}, Lcom/farsitel/bazaar/analytics/model/what/ClickEvent;->b()Ljava/util/Map;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/farsitel/bazaar/analytics/model/what/ItemClick;->which:Ljava/lang/String;

    const-string v2, "which"

    invoke-static {v2, v1}, Lh/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-static {v1}, Lh/a/z;->a(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/analytics/model/what/ItemClick;->type:Ljava/lang/String;

    return-object v0
.end method
