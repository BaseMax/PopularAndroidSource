.class public final Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent;
.super Lcom/farsitel/bazaar/analytics/model/what/WhatType;
.source "OtherEvent.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;
    }
.end annotation


# instance fields
.field public final action:Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;

.field public final adUrl:Ljava/lang/String;

.field public final entity_id:Ljava/lang/String;

.field public final isOffline:Z

.field public final name:Ljava/lang/String;

.field public final otherInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final playerMillisecond:J

.field public final referrer:Ljava/lang/String;

.field public final url:Ljava/lang/String;

.field public final videoLength:J


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;Ljava/lang/String;Ljava/lang/String;ZJJLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZJJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entity_id"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referrer"

    invoke-static {p9, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/farsitel/bazaar/analytics/model/what/WhatType;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent;->action:Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;

    iput-object p2, p0, Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent;->entity_id:Ljava/lang/String;

    iput-object p3, p0, Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent;->url:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent;->isOffline:Z

    iput-wide p5, p0, Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent;->videoLength:J

    iput-wide p7, p0, Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent;->playerMillisecond:J

    iput-object p9, p0, Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent;->referrer:Ljava/lang/String;

    iput-object p10, p0, Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent;->adUrl:Ljava/lang/String;

    iput-object p11, p0, Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent;->otherInfo:Ljava/util/Map;

    const-string p1, "player"

    .line 3
    iput-object p1, p0, Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent;->name:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;Ljava/lang/String;Ljava/lang/String;ZJJLjava/lang/String;Ljava/lang/String;Ljava/util/Map;ILh/f/b/f;)V
    .locals 15

    move/from16 v0, p12

    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v13, v2

    goto :goto_0

    :cond_0
    move-object/from16 v13, p10

    :goto_0
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_1

    move-object v14, v2

    goto :goto_1

    :cond_1
    move-object/from16 v14, p11

    :goto_1
    move-object v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move-object/from16 v12, p9

    .line 1
    invoke-direct/range {v3 .. v14}, Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent;-><init>(Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;Ljava/lang/String;Ljava/lang/String;ZJJLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent;->name:Ljava/lang/String;

    return-object v0
.end method

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

    const/16 v0, 0x8

    .line 1
    new-array v0, v0, [Lkotlin/Pair;

    .line 2
    iget-object v1, p0, Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent;->action:Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;

    invoke-virtual {v1}, Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "action"

    invoke-static {v2, v1}, Lh/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    .line 3
    iget-object v1, p0, Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent;->referrer:Ljava/lang/String;

    const-string v3, "referrer"

    invoke-static {v3, v1}, Lh/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 4
    iget-object v1, p0, Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent;->entity_id:Ljava/lang/String;

    const-string v3, "entity_id"

    invoke-static {v3, v1}, Lh/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 5
    iget-object v1, p0, Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent;->action:Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;

    invoke-static {v2, v1}, Lh/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 6
    iget-object v1, p0, Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent;->url:Ljava/lang/String;

    const-string v2, "url"

    invoke-static {v2, v1}, Lh/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 7
    iget-boolean v1, p0, Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent;->isOffline:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "downloaded_video"

    invoke-static {v2, v1}, Lh/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 8
    iget-wide v1, p0, Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent;->playerMillisecond:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "player_millisec"

    invoke-static {v2, v1}, Lh/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 9
    iget-wide v1, p0, Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent;->videoLength:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "video_length"

    invoke-static {v2, v1}, Lh/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 10
    invoke-static {v0}, Lh/a/A;->c([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent;->adUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "adUrl"

    .line 12
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_0
    iget-object v1, p0, Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent;->otherInfo:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 14
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 15
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method
