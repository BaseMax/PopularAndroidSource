.class public final Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source "EpisodeDetailFragment.kt"

# interfaces
.implements Lh/f/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->jb()Lc/c/a/n/j/d/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lh/f/a/b<",
        "Lcom/farsitel/bazaar/core/model/Resource<",
        "+",
        "Ljava/util/List<",
        "+",
        "Lcom/farsitel/bazaar/common/model/RecyclerData;",
        ">;>;",
        "Lh/h;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $this_createViewModel:Lc/c/a/n/j/d/t;

.field public final synthetic this$0:Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;


# direct methods
.method public constructor <init>(Lc/c/a/n/j/d/t;Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1;->$this_createViewModel:Lc/c/a/n/j/d/t;

    iput-object p2, p0, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1;->this$0:Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/core/model/Resource;

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1;->a(Lcom/farsitel/bazaar/core/model/Resource;)V

    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1
.end method

.method public final a(Lcom/farsitel/bazaar/core/model/Resource;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/farsitel/bazaar/core/model/Resource<",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->d()Lcom/farsitel/bazaar/core/model/ResourceState;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 3
    :goto_0
    sget-object v1, Lcom/farsitel/bazaar/core/model/ResourceState$Success;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Success;

    invoke-static {p1, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    iget-object v2, p0, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1;->this$0:Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;

    new-instance v3, Lcom/farsitel/bazaar/analytics/model/what/LoadEpisodesEvent;

    invoke-static {v2}, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->a(Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;)Lc/c/a/n/j/d/o;

    move-result-object p1

    invoke-virtual {p1}, Lc/c/a/n/j/d/o;->c()I

    move-result p1

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1;->this$0:Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;

    invoke-static {v1}, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->a(Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;)Lc/c/a/n/j/d/o;

    move-result-object v1

    invoke-virtual {v1}, Lc/c/a/n/j/d/o;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, p1, v1}, Lcom/farsitel/bazaar/analytics/model/what/LoadEpisodesEvent;-><init>(ILjava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1;->this$0:Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;

    invoke-static {p1}, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->e(Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;)Lc/c/a/n/j/d/t;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Lc/c/a/n/j/d/t;->b(Lc/c/a/n/j/d/t;Ljava/util/List;ILjava/lang/Object;)Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 6
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1;->$this_createViewModel:Lc/c/a/n/j/d/t;

    invoke-virtual {v0}, Lc/c/a/n/j/d/t;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1;->this$0:Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;

    invoke-static {v0}, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->d(Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;)Lc/c/a/n/c/d/a/f;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc/c/a/n/c/d/a/f;->a(I)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1;->this$0:Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;

    invoke-static {v0}, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->d(Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;)Lc/c/a/n/c/d/a/f;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lc/c/a/n/c/d/a/f;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 9
    :cond_2
    sget-object v0, Lcom/farsitel/bazaar/core/model/ReviewState$PostComment;->a:Lcom/farsitel/bazaar/core/model/ReviewState$PostComment;

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1;->this$0:Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;

    invoke-static {p1}, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->h(Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;)V

    :cond_3
    :goto_1
    return-void
.end method
