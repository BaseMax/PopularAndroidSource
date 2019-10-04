.class public final Lc/c/a/n/w/g;
.super Ljava/lang/Object;
.source "SearchFragment.kt"

# interfaces
.implements Lc/c/a/n/w/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/search/SearchFragment;->Fb()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/c/a/n/w/a<",
        "Lcom/farsitel/bazaar/ui/search/SearchHistoryItem;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/search/SearchFragment;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/search/SearchFragment;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/w/g;->a:Lcom/farsitel/bazaar/ui/search/SearchFragment;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/farsitel/bazaar/common/model/RecyclerData;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/ui/search/SearchHistoryItem;

    invoke-virtual {p0, p1}, Lc/c/a/n/w/g;->a(Lcom/farsitel/bazaar/ui/search/SearchHistoryItem;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/farsitel/bazaar/common/model/RecyclerData;I)V
    .locals 0

    .line 2
    check-cast p1, Lcom/farsitel/bazaar/ui/search/SearchHistoryItem;

    invoke-virtual {p0, p1, p2}, Lc/c/a/n/w/g;->a(Lcom/farsitel/bazaar/ui/search/SearchHistoryItem;I)V

    return-void
.end method

.method public a(Lcom/farsitel/bazaar/ui/search/SearchHistoryItem;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/farsitel/bazaar/ui/search/SearchHistoryItem;I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    const-string v2, "item"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/ui/search/SearchHistoryItem;->b()Lcom/farsitel/bazaar/ui/search/SearchHistoryType;

    move-result-object v2

    sget-object v4, Lcom/farsitel/bazaar/ui/search/SearchHistoryType;->NONE:Lcom/farsitel/bazaar/ui/search/SearchHistoryType;

    if-ne v2, v4, :cond_1

    .line 4
    iget-object v5, v0, Lc/c/a/n/w/g;->a:Lcom/farsitel/bazaar/ui/search/SearchFragment;

    .line 5
    new-instance v6, Lcom/farsitel/bazaar/analytics/model/what/SearchPredictionItemClick;

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/ui/search/SearchHistoryItem;->a()Ljava/lang/String;

    move-result-object v2

    .line 7
    iget-object v4, v0, Lc/c/a/n/w/g;->a:Lcom/farsitel/bazaar/ui/search/SearchFragment;

    invoke-static {v4}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->d(Lcom/farsitel/bazaar/ui/search/SearchFragment;)Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/ui/search/SearchHistoryItem;->getReferrer()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lc/c/a/c/d/e;->a()Ljava/lang/String;

    move-result-object v7

    .line 9
    :goto_0
    invoke-direct {v6, v2, v4, v1, v7}, Lcom/farsitel/bazaar/analytics/model/what/SearchPredictionItemClick;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    .line 10
    invoke-static/range {v5 .. v10}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_1

    .line 11
    :cond_1
    iget-object v11, v0, Lc/c/a/n/w/g;->a:Lcom/farsitel/bazaar/ui/search/SearchFragment;

    .line 12
    new-instance v12, Lcom/farsitel/bazaar/analytics/model/what/SearchHistoryItemClick;

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/ui/search/SearchHistoryItem;->a()Ljava/lang/String;

    move-result-object v2

    .line 14
    invoke-static {}, Lc/c/a/c/d/e;->a()Ljava/lang/String;

    move-result-object v4

    .line 15
    invoke-direct {v12, v1, v2, v4}, Lcom/farsitel/bazaar/analytics/model/what/SearchHistoryItemClick;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x6

    const/16 v16, 0x0

    .line 16
    invoke-static/range {v11 .. v16}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 17
    :goto_1
    iget-object v1, v0, Lc/c/a/n/w/g;->a:Lcom/farsitel/bazaar/ui/search/SearchFragment;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->a(Lcom/farsitel/bazaar/ui/search/SearchFragment;Z)V

    .line 18
    iget-object v1, v0, Lc/c/a/n/w/g;->a:Lcom/farsitel/bazaar/ui/search/SearchFragment;

    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/ui/search/SearchHistoryItem;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->b(Lcom/farsitel/bazaar/ui/search/SearchFragment;Ljava/lang/String;)V

    .line 19
    iget-object v1, v0, Lc/c/a/n/w/g;->a:Lcom/farsitel/bazaar/ui/search/SearchFragment;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/ui/search/SearchHistoryItem;->getReferrer()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    const/4 v8, 0x0

    move-object v3, v1

    invoke-static/range {v3 .. v8}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->a(Lcom/farsitel/bazaar/ui/search/SearchFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method
