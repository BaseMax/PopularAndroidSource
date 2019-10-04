.class public abstract Lcom/farsitel/bazaar/analytics/model/what/ReferrerNeededEvent;
.super Lcom/farsitel/bazaar/analytics/model/what/WhatType;
.source "WhatType.kt"


# instance fields
.field public final referrer:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "referrer"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/farsitel/bazaar/analytics/model/what/WhatType;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/analytics/model/what/ReferrerNeededEvent;->referrer:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public c()Ljava/util/Map;
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

    const/4 v0, 0x1

    .line 1
    new-array v0, v0, [Lkotlin/Pair;

    iget-object v1, p0, Lcom/farsitel/bazaar/analytics/model/what/ReferrerNeededEvent;->referrer:Ljava/lang/String;

    invoke-static {v1}, Lc/c/a/c/b/i;->g(Ljava/lang/String;)Lc/e/d/m;

    move-result-object v1

    const-string v2, "referrer"

    invoke-static {v2, v1}, Lh/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lh/a/A;->c([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
