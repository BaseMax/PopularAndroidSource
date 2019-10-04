.class public final Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AppDetailFragment.kt"

# interfaces
.implements Lh/f/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->jb()Lc/c/a/n/b/w;
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
.field public final synthetic $this_createViewModel:Lc/c/a/n/b/w;

.field public final synthetic this$0:Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;


# direct methods
.method public constructor <init>(Lc/c/a/n/b/w;Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1;->$this_createViewModel:Lc/c/a/n/b/w;

    iput-object p2, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1;->this$0:Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/core/model/Resource;

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1;->a(Lcom/farsitel/bazaar/core/model/Resource;)V

    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1
.end method

.method public final a(Lcom/farsitel/bazaar/core/model/Resource;)V
    .locals 9
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

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    .line 4
    iget-object v3, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1;->this$0:Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;

    new-instance v4, Lcom/farsitel/bazaar/analytics/model/what/LoadAppDetails;

    invoke-static {v3}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->a(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;)Lc/c/a/n/b/s;

    move-result-object p1

    invoke-virtual {p1}, Lc/c/a/n/b/s;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Lcom/farsitel/bazaar/analytics/model/what/LoadAppDetails;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1;->this$0:Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;

    invoke-static {p1}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->h(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;)Lc/c/a/n/b/w;

    move-result-object p1

    invoke-static {p1, v0, v2, v0}, Lc/c/a/n/b/w;->a(Lc/c/a/n/b/w;Ljava/util/List;ILjava/lang/Object;)Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 6
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1;->this$0:Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;

    invoke-static {v0}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->g(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;)Lc/c/a/n/c/d/a/f;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/c/a/n/c/d/a/f;->a(Ljava/lang/String;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1;->this$0:Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;

    invoke-static {v0}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->d(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;)Lc/c/a/n/b/B;

    move-result-object v0

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->getAppState()Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/c/a/n/c/d/a/g;->a(Lcom/farsitel/bazaar/common/model/ui/EntityState;)V

    .line 8
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1;->this$0:Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;

    invoke-static {v0}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->d(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;)Lc/c/a/n/b/B;

    move-result-object v0

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->isInlineOnly()Z

    move-result v1

    invoke-virtual {v0, v1}, Lc/c/a/n/b/B;->b(Z)V

    .line 9
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1;->this$0:Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;

    invoke-static {v0}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->b(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;)Lcom/google/android/material/button/MaterialButton;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->getCanBeInstalled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1;->this$0:Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->S()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000fe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 11
    :cond_2
    iget-object v1, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1;->this$0:Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->S()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100049

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 12
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1;->this$0:Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;

    invoke-static {v0}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->a(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;)Lc/c/a/n/b/s;

    move-result-object v0

    invoke-virtual {v0}, Lc/c/a/n/b/s;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1;->$this_createViewModel:Lc/c/a/n/b/w;

    invoke-virtual {v0, p1}, Lc/c/a/n/b/w;->b(Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;)V

    .line 15
    :cond_4
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1;->this$0:Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;

    invoke-static {p1}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->i(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;)V

    goto :goto_2

    .line 16
    :cond_5
    sget-object v1, Lcom/farsitel/bazaar/core/model/AppDetailState$PostComment;->a:Lcom/farsitel/bazaar/core/model/AppDetailState$PostComment;

    invoke-static {p1, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object p1, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1;->this$0:Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;

    const/4 v1, 0x0

    invoke-static {p1, v1, v2, v0}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->b(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;IILjava/lang/Object;)V

    goto :goto_2

    .line 17
    :cond_6
    sget-object v0, Lcom/farsitel/bazaar/core/model/AppDetailState$Report;->a:Lcom/farsitel/bazaar/core/model/AppDetailState$Report;

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p1, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1;->this$0:Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;

    invoke-static {p1}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->m(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;)V

    goto :goto_2

    .line 18
    :cond_7
    sget-object v0, Lcom/farsitel/bazaar/core/model/AppDetailState$Payment;->a:Lcom/farsitel/bazaar/core/model/AppDetailState$Payment;

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1;->this$0:Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;

    invoke-static {p1}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->l(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;)V

    :cond_8
    :goto_2
    return-void
.end method
