.class public final Lcom/farsitel/bazaar/analytics/model/what/TabChangeEvent;
.super Lcom/farsitel/bazaar/analytics/model/what/WhatType;
.source "OtherEvent.kt"


# instance fields
.field public final from:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final target:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "from"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "target"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/farsitel/bazaar/analytics/model/what/WhatType;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/analytics/model/what/TabChangeEvent;->from:Ljava/lang/String;

    iput-object p2, p0, Lcom/farsitel/bazaar/analytics/model/what/TabChangeEvent;->target:Ljava/lang/String;

    const-string p1, "tab_change"

    .line 2
    iput-object p1, p0, Lcom/farsitel/bazaar/analytics/model/what/TabChangeEvent;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/analytics/model/what/TabChangeEvent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    new-array v0, v0, [Lkotlin/Pair;

    iget-object v1, p0, Lcom/farsitel/bazaar/analytics/model/what/TabChangeEvent;->from:Ljava/lang/String;

    const-string v2, "from"

    invoke-static {v2, v1}, Lh/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/farsitel/bazaar/analytics/model/what/TabChangeEvent;->target:Ljava/lang/String;

    const-string v2, "target"

    invoke-static {v2, v1}, Lh/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lh/a/A;->b([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
