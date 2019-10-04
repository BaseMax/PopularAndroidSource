.class public final Lcom/farsitel/bazaar/analytics/model/what/IsVoiceSearchFeasible;
.super Lcom/farsitel/bazaar/analytics/model/what/WhatType;
.source "OtherEvent.kt"


# instance fields
.field public final isFeasible:Z

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/farsitel/bazaar/analytics/model/what/WhatType;-><init>()V

    iput-boolean p1, p0, Lcom/farsitel/bazaar/analytics/model/what/IsVoiceSearchFeasible;->isFeasible:Z

    const-string p1, "feasible_voice_search"

    .line 2
    iput-object p1, p0, Lcom/farsitel/bazaar/analytics/model/what/IsVoiceSearchFeasible;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/analytics/model/what/IsVoiceSearchFeasible;->name:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/analytics/model/what/IsVoiceSearchFeasible;->isFeasible:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "is_voice_search_feasible"

    invoke-static {v1, v0}, Lh/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lh/a/z;->a(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
