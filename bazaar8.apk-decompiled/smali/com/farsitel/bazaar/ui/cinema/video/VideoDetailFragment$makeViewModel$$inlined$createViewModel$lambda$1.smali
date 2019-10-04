.class public final Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source "VideoDetailFragment.kt"

# interfaces
.implements Lh/f/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->jb()Lc/c/a/n/j/k/s;
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
.field public final synthetic $this_createViewModel:Lc/c/a/n/j/k/s;

.field public final synthetic this$0:Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;


# direct methods
.method public constructor <init>(Lc/c/a/n/j/k/s;Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1;->$this_createViewModel:Lc/c/a/n/j/k/s;

    iput-object p2, p0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1;->this$0:Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/core/model/Resource;

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1;->a(Lcom/farsitel/bazaar/core/model/Resource;)V

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

    if-eqz v1, :cond_4

    .line 4
    iget-object v2, p0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1;->this$0:Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;

    new-instance v3, Lcom/farsitel/bazaar/analytics/model/what/LoadVideoDetails;

    invoke-static {v2}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->d(Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;)Lc/c/a/n/j/k/o;

    move-result-object p1

    invoke-virtual {p1}, Lc/c/a/n/j/k/o;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Lcom/farsitel/bazaar/analytics/model/what/LoadVideoDetails;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1;->this$0:Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;

    invoke-static {p1}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->e(Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;)Lc/c/a/n/j/k/s;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Lc/c/a/n/j/k/s;->b(Lc/c/a/n/j/k/s;Ljava/util/List;ILjava/lang/Object;)Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 6
    iget-object v2, p0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1;->this$0:Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;

    invoke-static {v2}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->c(Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;)Lc/c/a/n/c/d/a/f;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lc/c/a/n/c/d/a/f;->a(Ljava/lang/String;)V

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1;->this$0:Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;

    invoke-static {p1}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->e(Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;)Lc/c/a/n/j/k/s;

    move-result-object p1

    invoke-static {p1, v0, v1, v0}, Lc/c/a/n/j/k/s;->a(Lc/c/a/n/j/k/s;Ljava/util/List;ILjava/lang/Object;)Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 8
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1;->this$0:Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;

    invoke-static {v0}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->a(Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;)Lc/c/a/n/j/k/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;->getVideoState()Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/c/a/n/c/d/a/g;->a(Lcom/farsitel/bazaar/common/model/ui/EntityState;)V

    .line 9
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1;->this$0:Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;

    invoke-static {v0}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->a(Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;)Lc/c/a/n/j/k/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;->isFree()Z

    move-result p1

    invoke-virtual {v0, p1}, Lc/c/a/n/j/k/a;->b(Z)V

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1;->this$0:Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;

    invoke-static {p1}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->f(Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;)V

    .line 11
    :cond_3
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1;->$this_createViewModel:Lc/c/a/n/j/k/s;

    invoke-virtual {p1}, Lc/c/a/n/j/k/s;->o()Landroidx/lifecycle/LiveData;

    move-result-object p1

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1;->this$0:Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->ba()Lb/r/k;

    move-result-object v0

    new-instance v1, Lc/c/a/n/j/k/g;

    invoke-direct {v1, p0}, Lc/c/a/n/j/k/g;-><init>(Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1;)V

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->a(Lb/r/k;Lb/r/u;)V

    .line 12
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1;->this$0:Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1;->$this_createViewModel:Lc/c/a/n/j/k/s;

    invoke-virtual {v0}, Lc/c/a/n/j/k/s;->j()Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->a(Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;Lcom/farsitel/bazaar/common/model/ui/EntityState;)V

    goto :goto_1

    .line 13
    :cond_4
    sget-object v0, Lcom/farsitel/bazaar/core/model/ReviewState$PostComment;->a:Lcom/farsitel/bazaar/core/model/ReviewState$PostComment;

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1;->this$0:Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;

    invoke-static {p1}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->j(Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;)V

    :cond_5
    :goto_1
    return-void
.end method
