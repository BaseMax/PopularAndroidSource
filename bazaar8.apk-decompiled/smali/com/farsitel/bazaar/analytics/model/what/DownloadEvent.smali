.class public final Lcom/farsitel/bazaar/analytics/model/what/DownloadEvent;
.super Lcom/farsitel/bazaar/analytics/model/what/WhatType;
.source "OtherEvent.kt"


# instance fields
.field public final entityId:Ljava/lang/String;

.field public final isFree:Z

.field public final isUpdating:Ljava/lang/Boolean;

.field public final name:Ljava/lang/String;

.field public final networkOperator:Ljava/lang/String;

.field public final networkType:Ljava/lang/String;

.field public final referrer:Ljava/lang/String;

.field public final status:Ljava/lang/String;

.field public final versionCode:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;)V
    .locals 1

    const-string v0, "status"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entityId"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referrer"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkOperator"

    invoke-static {p5, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    invoke-static {p6, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/farsitel/bazaar/analytics/model/what/WhatType;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/analytics/model/what/DownloadEvent;->status:Ljava/lang/String;

    iput-object p2, p0, Lcom/farsitel/bazaar/analytics/model/what/DownloadEvent;->entityId:Ljava/lang/String;

    iput-object p3, p0, Lcom/farsitel/bazaar/analytics/model/what/DownloadEvent;->referrer:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/farsitel/bazaar/analytics/model/what/DownloadEvent;->isFree:Z

    iput-object p5, p0, Lcom/farsitel/bazaar/analytics/model/what/DownloadEvent;->networkOperator:Ljava/lang/String;

    iput-object p6, p0, Lcom/farsitel/bazaar/analytics/model/what/DownloadEvent;->networkType:Ljava/lang/String;

    iput-object p7, p0, Lcom/farsitel/bazaar/analytics/model/what/DownloadEvent;->isUpdating:Ljava/lang/Boolean;

    iput-object p8, p0, Lcom/farsitel/bazaar/analytics/model/what/DownloadEvent;->versionCode:Ljava/lang/Long;

    const-string p1, "download"

    .line 2
    iput-object p1, p0, Lcom/farsitel/bazaar/analytics/model/what/DownloadEvent;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/analytics/model/what/DownloadEvent;->name:Ljava/lang/String;

    return-object v0
.end method

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

    const/4 v0, 0x6

    .line 1
    new-array v0, v0, [Lkotlin/Pair;

    .line 2
    iget-object v1, p0, Lcom/farsitel/bazaar/analytics/model/what/DownloadEvent;->status:Ljava/lang/String;

    const-string v2, "status"

    invoke-static {v2, v1}, Lh/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 3
    iget-object v1, p0, Lcom/farsitel/bazaar/analytics/model/what/DownloadEvent;->entityId:Ljava/lang/String;

    const-string v2, "entity_id"

    invoke-static {v2, v1}, Lh/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 4
    iget-object v1, p0, Lcom/farsitel/bazaar/analytics/model/what/DownloadEvent;->referrer:Ljava/lang/String;

    const-string v2, "referrer"

    invoke-static {v2, v1}, Lh/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 5
    iget-boolean v1, p0, Lcom/farsitel/bazaar/analytics/model/what/DownloadEvent;->isFree:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "is_free"

    invoke-static {v2, v1}, Lh/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 6
    iget-object v1, p0, Lcom/farsitel/bazaar/analytics/model/what/DownloadEvent;->networkOperator:Ljava/lang/String;

    const-string v2, "network_operator"

    invoke-static {v2, v1}, Lh/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 7
    iget-object v1, p0, Lcom/farsitel/bazaar/analytics/model/what/DownloadEvent;->networkType:Ljava/lang/String;

    const-string v2, "network_type"

    invoke-static {v2, v1}, Lh/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 8
    invoke-static {v0}, Lh/a/A;->c([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/farsitel/bazaar/analytics/model/what/DownloadEvent;->isUpdating:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    iget-object v1, p0, Lcom/farsitel/bazaar/analytics/model/what/DownloadEvent;->isUpdating:Ljava/lang/Boolean;

    const-string v2, "updating"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/farsitel/bazaar/analytics/model/what/DownloadEvent;->versionCode:Ljava/lang/Long;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 12
    iget-object v1, p0, Lcom/farsitel/bazaar/analytics/model/what/DownloadEvent;->versionCode:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "version_code"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method
