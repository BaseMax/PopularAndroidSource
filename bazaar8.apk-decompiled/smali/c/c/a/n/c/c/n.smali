.class public abstract Lc/c/a/n/c/c/n;
.super Lc/c/a/n/c/d/k;
.source "PageFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "VM:",
        "Lc/c/a/n/c/c/t<",
        "TParams;>;>",
        "Lc/c/a/n/c/d/k<",
        "Lcom/farsitel/bazaar/common/model/RecyclerData;",
        "TParams;TVM;>;"
    }
.end annotation


# instance fields
.field public ya:Lc/c/a/n/j/b/c/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/c/a/n/c/d/k;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/c/c/n;)Lc/c/a/n/j/b/c/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/c/c/n;->ya:Lc/c/a/n/j/b/c/b;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "playInfoViewModel"

    invoke-static {p0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic a(Lc/c/a/n/c/c/n;Lcom/farsitel/bazaar/core/model/Resource;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lc/c/a/n/c/c/n;->b(Lcom/farsitel/bazaar/core/model/Resource;)V

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/c/c/n;Ljava/lang/Object;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lc/c/a/n/c/c/n;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/c/c/n;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lc/c/a/n/c/c/n;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/c/c/n;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lc/c/a/n/c/c/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic b(Lc/c/a/n/c/c/n;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->_a()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lc/c/a/n/c/c/n;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lc/c/a/n/c/c/n;->b(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic b(Lc/c/a/n/c/c/n;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lc/c/a/n/c/c/n;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic c(Lc/c/a/n/c/c/n;)Lc/c/a/n/c/c/t;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object p0

    check-cast p0, Lc/c/a/n/c/c/t;

    return-object p0
.end method


# virtual methods
.method public Ua()Lc/c/a/n/c/c/a/b;
    .locals 10

    .line 2
    new-instance v9, Lc/c/a/n/c/c/a/b;

    .line 3
    invoke-virtual {p0}, Lc/c/a/n/c/c/n;->yb()Lc/c/a/n/c/d/o$a;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lc/c/a/n/c/c/n;->yb()Lc/c/a/n/c/d/o$a;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Lc/c/a/n/c/c/n;->yb()Lc/c/a/n/c/d/o$a;

    move-result-object v3

    .line 6
    invoke-virtual {p0}, Lc/c/a/n/c/c/n;->vb()Lc/c/a/n/c/c/a/a;

    move-result-object v4

    .line 7
    invoke-virtual {p0}, Lc/c/a/n/c/c/n;->ub()Lc/c/a/n/c/c/a/a;

    move-result-object v5

    .line 8
    invoke-virtual {p0}, Lc/c/a/n/c/c/n;->wb()Lc/c/a/n/c/c/a/a/a/k;

    move-result-object v6

    .line 9
    invoke-virtual {p0}, Lc/c/a/n/c/c/n;->xb()Lc/c/a/n/c/c/a/a/a/j;

    move-result-object v7

    .line 10
    invoke-virtual {p0}, Lc/c/a/n/c/c/n;->tb()Lc/c/a/n/c/c/a/a/a/i;

    move-result-object v8

    move-object v0, v9

    .line 11
    invoke-direct/range {v0 .. v8}, Lc/c/a/n/c/c/a/b;-><init>(Lc/c/a/n/c/d/o$a;Lc/c/a/n/c/d/o$a;Lc/c/a/n/c/d/o$a;Lc/c/a/n/c/c/a/a;Lc/c/a/n/c/c/a/a;Lc/c/a/n/c/c/a/a/a/k;Lc/c/a/n/c/c/a/a/a/j;Lc/c/a/n/c/c/a/a/a/i;)V

    return-object v9
.end method

.method public bridge synthetic Ua()Lc/c/a/n/c/d/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/c/c/n;->Ua()Lc/c/a/n/c/c/a/b;

    move-result-object v0

    return-object v0
.end method

.method public Xa()Landroidx/recyclerview/widget/RecyclerView$h;
    .locals 8

    .line 1
    new-instance v7, Lc/c/a/o/a/d;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->E()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lc/c/a/o/a/d;-><init>(Landroid/content/Context;IIIILh/f/b/f;)V

    return-object v7
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v0, Lc/c/a/n/c/c/h;

    invoke-direct {v0, p0}, Lc/c/a/n/c/c/h;-><init>(Lc/c/a/n/c/c/n;)V

    invoke-virtual {p0, v0}, Lc/c/a/n/c/d/f;->a(Lc/c/a/n/c/d/m;)V

    .line 17
    invoke-super {p0, p1, p2}, Lc/c/a/n/c/d/k;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 18
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object p1

    check-cast p1, Lc/c/a/n/c/c/t;

    invoke-virtual {p1}, Lc/c/a/n/c/c/t;->n()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ba()Lb/r/k;

    move-result-object p2

    new-instance v0, Lc/c/a/n/c/c/i;

    invoke-direct {v0, p0}, Lc/c/a/n/c/c/i;-><init>(Lc/c/a/n/c/c/n;)V

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->a(Lb/r/k;Lb/r/u;)V

    .line 19
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object p1

    check-cast p1, Lc/c/a/n/c/c/t;

    invoke-virtual {p1}, Lc/c/a/n/c/c/t;->m()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ba()Lb/r/k;

    move-result-object p2

    new-instance v0, Lc/c/a/n/c/c/j;

    invoke-direct {v0, p0}, Lc/c/a/n/c/c/j;-><init>(Lc/c/a/n/c/c/n;)V

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->a(Lb/r/k;Lb/r/u;)V

    .line 20
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object p1

    check-cast p1, Lc/c/a/n/c/c/t;

    invoke-virtual {p1}, Lc/c/a/n/c/c/t;->k()Lb/r/t;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ba()Lb/r/k;

    move-result-object p2

    new-instance v0, Lc/c/a/n/c/c/k;

    invoke-direct {v0, p0}, Lc/c/a/n/c/c/k;-><init>(Lc/c/a/n/c/c/n;)V

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->a(Lb/r/k;Lb/r/u;)V

    .line 21
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object p1

    check-cast p1, Lc/c/a/n/c/c/t;

    invoke-virtual {p1}, Lc/c/a/n/c/d/g;->g()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ba()Lb/r/k;

    move-result-object p2

    new-instance v0, Lc/c/a/n/c/c/m;

    invoke-direct {v0, p0}, Lc/c/a/n/c/c/m;-><init>(Lc/c/a/n/c/c/n;)V

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->a(Lb/r/k;Lb/r/u;)V

    .line 22
    invoke-virtual {p0}, Lc/c/a/d/f/i;->Ra()Lb/r/F$b;

    move-result-object p1

    .line 23
    invoke-static {p0, p1}, Lb/r/G;->a(Landroidx/fragment/app/Fragment;Lb/r/F$b;)Lb/r/F;

    move-result-object p1

    const-class p2, Lc/c/a/n/j/b/c/b;

    invoke-virtual {p1, p2}, Lb/r/F;->a(Ljava/lang/Class;)Lb/r/E;

    move-result-object p1

    const-string p2, "ViewModelProviders.of(th\u2026, factory)[T::class.java]"

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    check-cast p1, Lc/c/a/n/j/b/c/b;

    .line 25
    invoke-virtual {p1}, Lc/c/a/n/j/b/c/b;->e()Landroidx/lifecycle/LiveData;

    move-result-object p2

    new-instance v0, Lcom/farsitel/bazaar/ui/base/page/PageFragment$onViewCreated$$inlined$createViewModel$lambda$1;

    invoke-direct {v0, p0}, Lcom/farsitel/bazaar/ui/base/page/PageFragment$onViewCreated$$inlined$createViewModel$lambda$1;-><init>(Lc/c/a/n/c/c/n;)V

    invoke-static {p0, p2, v0}, Lc/c/a/d/b/h;->a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/LiveData;Lh/f/a/b;)V

    .line 26
    iput-object p1, p0, Lc/c/a/n/c/c/n;->ya:Lc/c/a/n/j/b/c/b;

    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/common/model/page/PageAppItem;)V
    .locals 2

    .line 43
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object v0

    check-cast v0, Lc/c/a/n/c/c/t;

    invoke-virtual {v0, p1}, Lc/c/a/n/c/c/t;->a(Lcom/farsitel/bazaar/common/model/page/PageAppItem;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 44
    invoke-virtual {p0, p1}, Lc/c/a/n/c/c/n;->b(Lcom/farsitel/bazaar/common/model/page/PageAppItem;)V

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object v1

    check-cast v1, Lc/c/a/n/c/c/t;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lc/c/a/n/c/c/t;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->E()Landroid/content/Context;

    move-result-object v1

    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    .line 46
    invoke-static {v1, v0, p1}, Lc/c/a/d/b/d;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 47
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 48
    :cond_1
    sget-object p1, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "there is no activity to handle install"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lc/c/a/c/c/a;->b(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;)V
    .locals 3

    const-string v0, "pageViewConfigItem"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sget v0, Lc/c/a/e;->titleTextView:I

    invoke-virtual {p0, v0}, Lc/c/a/n/c/d/f;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;->getPageTitleItem()Lcom/farsitel/bazaar/common/model/page/PageTitleItem;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/page/PageTitleItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    :cond_1
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->_a()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v0

    instance-of v2, v0, Lc/c/a/n/c/c/a/b;

    if-nez v2, :cond_2

    move-object v0, v1

    :cond_2
    check-cast v0, Lc/c/a/n/c/c/a/b;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lc/c/a/n/c/c/a/b;->a(Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;)V

    :cond_3
    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/common/model/ui/EntityState;Lcom/farsitel/bazaar/common/model/page/PageAppItem;)V
    .locals 6

    const-string v0, "appState"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageAppItem"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    sget-object v0, Lc/c/a/n/c/c/a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 30
    :pswitch_0
    new-instance v1, Lcom/farsitel/bazaar/analytics/model/what/MaliciousAppsUninstallButtonClick;

    .line 31
    invoke-virtual {p2}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 32
    new-instance v0, Lc/c/a/c/d/c$j;

    invoke-direct {v0}, Lc/c/a/c/d/c$j;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3}, Lc/c/a/c/d/d;->a(Lc/c/a/c/d/d;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-direct {v1, p1, v0}, Lcom/farsitel/bazaar/analytics/model/what/MaliciousAppsUninstallButtonClick;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    new-instance v2, Lcom/farsitel/bazaar/analytics/model/where/MaliciousAppsScreen;

    invoke-direct {v2}, Lcom/farsitel/bazaar/analytics/model/where/MaliciousAppsScreen;-><init>()V

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    .line 35
    invoke-static/range {v0 .. v5}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 36
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object p1

    check-cast p1, Lc/c/a/n/c/c/t;

    invoke-virtual {p2}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lc/c/a/n/c/c/t;->c(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 37
    :pswitch_1
    invoke-virtual {p0, p2}, Lc/c/a/n/c/c/n;->d(Lcom/farsitel/bazaar/common/model/page/PageAppItem;)V

    goto :goto_0

    .line 38
    :pswitch_2
    invoke-virtual {p0, p2}, Lc/c/a/n/c/c/n;->a(Lcom/farsitel/bazaar/common/model/page/PageAppItem;)V

    goto :goto_0

    .line 39
    :pswitch_3
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object p1

    check-cast p1, Lc/c/a/n/c/c/t;

    invoke-virtual {p1, p2}, Lc/c/a/n/c/c/t;->c(Lcom/farsitel/bazaar/common/model/DownloadableEntity;)V

    goto :goto_0

    .line 40
    :pswitch_4
    invoke-virtual {p2}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->isInlineOnly()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lc/c/a/n/c/c/n;->c(Lcom/farsitel/bazaar/common/model/page/PageAppItem;)V

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p2}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getCanBeInstalled()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p2}, Lc/c/a/n/c/c/n;->b(Lcom/farsitel/bazaar/common/model/page/PageAppItem;)V

    goto :goto_0

    .line 42
    :cond_1
    sget-object p1, Lcom/farsitel/bazaar/ui/payment/PaymentActivity;->w:Lcom/farsitel/bazaar/ui/payment/PaymentActivity$a;

    invoke-virtual {p2}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getAppName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, v0, p2}, Lcom/farsitel/bazaar/ui/payment/PaymentActivity$a;->a(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Section:",
            "Ljava/lang/Object;",
            ">(TSection;)V"
        }
    .end annotation

    .line 12
    instance-of v0, p1, Lcom/farsitel/bazaar/common/model/recycler/AbstractSectionRowData;

    if-eqz v0, :cond_1

    .line 13
    check-cast p1, Lcom/farsitel/bazaar/common/model/recycler/AbstractSectionRowData;

    invoke-interface {p1}, Lcom/farsitel/bazaar/common/model/recycler/AbstractSectionRowData;->getSlug()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 14
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 15
    invoke-interface {p1}, Lcom/farsitel/bazaar/common/model/recycler/AbstractSectionRowData;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/farsitel/bazaar/common/model/recycler/AbstractSectionRowData;->getReferrer()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lc/c/a/n/c/d/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 2

    .line 6
    invoke-static {p0}, Lb/w/b/b;->a(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object v0

    .line 7
    sget-object v1, Lc/c/a/n/j/d/p;->a:Lc/c/a/n/j/d/p$c;

    if-eqz p2, :cond_0

    .line 8
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 9
    invoke-virtual {v1, p1, p2, p3}, Lc/c/a/n/j/d/p$c;->b(Ljava/lang/String;ILjava/lang/String;)Lb/w/p;

    move-result-object p1

    .line 10
    invoke-static {v0, p1}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    return-void

    .line 11
    :cond_0
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 49
    invoke-static {p0}, Lb/w/b/b;->a(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object v0

    .line 50
    sget-object v1, Lc/c/a/d;->a:Lc/c/a/d$l;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lc/c/a/d$l;->a(Lc/c/a/d$l;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lb/w/p;

    move-result-object p1

    .line 51
    invoke-static {v0, p1}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    return-void
.end method

.method public final b(Lcom/farsitel/bazaar/common/model/page/PageAppItem;)V
    .locals 4

    .line 44
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object v0

    check-cast v0, Lc/c/a/n/c/c/t;

    .line 45
    sget-object v1, Lc/c/a/c/h/e;->a:Lc/c/a/c/h/e;

    .line 46
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ga()Lb/o/a/i;

    move-result-object v2

    const-string v3, "requireActivity()"

    invoke-static {v2, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 47
    invoke-virtual {v1, v2, v3}, Lc/c/a/c/h/e;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lc/c/a/c/b/h;->b(Landroid/content/pm/PackageInfo;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 48
    :goto_0
    invoke-virtual {v0, p1, v1}, Lc/c/a/n/c/c/t;->a(Lcom/farsitel/bazaar/common/model/page/PageAppItem;Ljava/lang/Long;)V

    return-void
.end method

.method public final b(Lcom/farsitel/bazaar/core/model/Resource;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/farsitel/bazaar/core/model/Resource<",
            "Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 25
    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->d()Lcom/farsitel/bazaar/core/model/ResourceState;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 26
    :goto_0
    sget-object v2, Lcom/farsitel/bazaar/core/model/ResourceState$Success;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Success;

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 27
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object v1

    check-cast v1, Lc/c/a/n/c/c/t;

    invoke-virtual {v1}, Lc/c/a/n/c/c/t;->p()V

    .line 28
    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;

    if-eqz p1, :cond_6

    .line 29
    sget-object v1, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->u:Lcom/farsitel/bazaar/player/VideoPlayerActivity$a;

    .line 30
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->getEntityId()Ljava/lang/String;

    move-result-object v3

    .line 31
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->getVideoUrl()Ljava/lang/String;

    move-result-object v2

    .line 32
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v2, "Uri.parse(this)"

    invoke-static {v4, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->getWaterMarkUrl()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 34
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    move-object v5, v0

    .line 35
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->getSubtitles()Ljava/util/List;

    move-result-object v6

    .line 36
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->getRefreshData()Lcom/farsitel/bazaar/common/model/cinema/RefreshData;

    move-result-object v7

    .line 37
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->getReferrer()Ljava/lang/String;

    move-result-object v8

    .line 38
    new-instance p1, Lc/c/a/l/f;

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lc/c/a/l/f;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Ljava/util/List;Lcom/farsitel/bazaar/common/model/cinema/RefreshData;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v1, p0, p1}, Lcom/farsitel/bazaar/player/VideoPlayerActivity$a;->a(Landroidx/fragment/app/Fragment;Lc/c/a/l/f;)V

    goto :goto_1

    .line 40
    :cond_2
    sget-object v2, Lcom/farsitel/bazaar/core/model/ResourceState$Error;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Error;

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 41
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object v1

    check-cast v1, Lc/c/a/n/c/c/t;

    invoke-virtual {v1}, Lc/c/a/n/c/c/t;->p()V

    .line 42
    invoke-virtual {p0}, Lc/c/a/d/f/i;->Qa()Lc/c/a/d/d/c;

    move-result-object v1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->c()Lcom/farsitel/bazaar/data/entity/ErrorModel;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/entity/ErrorModel;->getMessage()Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-virtual {v1, v0}, Lc/c/a/d/d/c;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 43
    :cond_4
    sget-object v1, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    new-instance v2, Ljava/lang/Throwable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->d()Lcom/farsitel/bazaar/core/model/ResourceState;

    move-result-object v0

    :cond_5
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " in played video"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lc/c/a/c/c/a;->a(Ljava/lang/Throwable;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<SectionItem:",
            "Ljava/lang/Object;",
            ">(TSectionItem;)V"
        }
    .end annotation

    .line 4
    instance-of v0, p1, Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getReferrer()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lc/c/a/n/c/c/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5
    :cond_0
    instance-of v0, p1, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;

    if-eqz v0, :cond_1

    .line 6
    check-cast p1, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;->getVideoId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;->getReferrer()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lc/c/a/n/c/c/n;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7
    :cond_1
    instance-of v0, p1, Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;

    if-eqz v0, :cond_2

    .line 8
    check-cast p1, Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;->getEpisodeId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;->getSeasonIdx()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;->getReferrer()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lc/c/a/n/c/c/n;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9
    :cond_2
    instance-of v0, p1, Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;

    if-eqz v0, :cond_3

    .line 10
    check-cast p1, Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;->getSerialId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;->getSeasonIdx()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;->getReferrer()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lc/c/a/n/c/c/n;->b(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 11
    :cond_3
    instance-of v0, p1, Lcom/farsitel/bazaar/common/model/page/PromoItem;

    const-string v1, "Uri.parse(this)"

    if-eqz v0, :cond_4

    .line 12
    check-cast p1, Lcom/farsitel/bazaar/common/model/page/PromoItem;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/PromoItem;->getLink()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 13
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_7

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->E()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/PromoItem;->getReferrer()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lc/c/a/b/f;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_4
    instance-of v0, p1, Lcom/farsitel/bazaar/common/model/page/HamiItem;

    if-eqz v0, :cond_5

    .line 16
    check-cast p1, Lcom/farsitel/bazaar/common/model/page/HamiItem;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/HamiItem;->getLink()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 17
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_7

    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->E()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/HamiItem;->getReferrer()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lc/c/a/b/f;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :cond_5
    instance-of v0, p1, Lcom/farsitel/bazaar/common/model/page/ListItem$CategoryItem;

    if-eqz v0, :cond_6

    .line 20
    check-cast p1, Lcom/farsitel/bazaar/common/model/page/ListItem$CategoryItem;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/ListItem$CategoryItem;->getSlug()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 21
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/ListItem$CategoryItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/ListItem$CategoryItem;->getReferrer()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lc/c/a/n/c/d/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 22
    :cond_6
    instance-of v0, p1, Lcom/farsitel/bazaar/common/model/page/ListItem$CategoryHeaderItem;

    if-eqz v0, :cond_7

    .line 23
    check-cast p1, Lcom/farsitel/bazaar/common/model/page/ListItem$CategoryHeaderItem;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/ListItem$CategoryHeaderItem;->getSlug()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 24
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/ListItem$CategoryHeaderItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/ListItem$CategoryHeaderItem;->getReferrer()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lc/c/a/n/c/d/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 2

    .line 52
    invoke-static {p0}, Lb/w/b/b;->a(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object v0

    .line 53
    sget-object v1, Lc/c/a/d;->a:Lc/c/a/d$l;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    :goto_0
    invoke-virtual {v1, p1, p2, p3}, Lc/c/a/d$l;->c(Ljava/lang/String;ILjava/lang/String;)Lb/w/p;

    move-result-object p1

    .line 54
    invoke-static {v0, p1}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 49
    invoke-static {p0}, Lb/w/b/b;->a(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object v0

    .line 50
    sget-object v1, Lc/c/a/d;->a:Lc/c/a/d$l;

    invoke-virtual {v1, p1, p2}, Lc/c/a/d$l;->c(Ljava/lang/String;Ljava/lang/String;)Lb/w/p;

    move-result-object p1

    .line 51
    invoke-static {v0, p1}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    return-void
.end method

.method public final c(Lcom/farsitel/bazaar/common/model/page/PageAppItem;)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lir/cafebazaar/inline/ui/InlineActivity;->b(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getReferrer()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ref"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->a(Landroid/content/Intent;)V

    return-void
.end method

.method public final d(Lcom/farsitel/bazaar/common/model/page/PageAppItem;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object v0

    check-cast v0, Lc/c/a/n/c/c/t;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lc/c/a/n/c/c/t;->b(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->a(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public synthetic qa()V
    .locals 0

    invoke-super {p0}, Lc/c/a/n/c/d/k;->qa()V

    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->La()V

    return-void
.end method

.method public final tb()Lc/c/a/n/c/c/a/a/a/i;
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/n/c/c/b;

    invoke-direct {v0, p0}, Lc/c/a/n/c/c/b;-><init>(Lc/c/a/n/c/c/n;)V

    return-object v0
.end method

.method public ub()Lc/c/a/n/c/c/a/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/c/a/n/c/c/a/a<",
            "Lcom/farsitel/bazaar/common/model/page/ListItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/c/a/n/c/c/c;

    invoke-direct {v0, p0}, Lc/c/a/n/c/c/c;-><init>(Lc/c/a/n/c/c/n;)V

    return-object v0
.end method

.method public final vb()Lc/c/a/n/c/c/a/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/c/a/n/c/c/a/a<",
            "Lcom/farsitel/bazaar/common/model/page/HamiItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/c/a/n/c/c/d;

    invoke-direct {v0, p0}, Lc/c/a/n/c/c/d;-><init>(Lc/c/a/n/c/c/n;)V

    return-object v0
.end method

.method public final wb()Lc/c/a/n/c/c/a/a/a/k;
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/n/c/c/e;

    invoke-direct {v0, p0}, Lc/c/a/n/c/c/e;-><init>(Lc/c/a/n/c/c/n;)V

    return-object v0
.end method

.method public final xb()Lc/c/a/n/c/c/a/a/a/j;
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/n/c/c/f;

    invoke-direct {v0, p0}, Lc/c/a/n/c/c/f;-><init>(Lc/c/a/n/c/c/n;)V

    return-object v0
.end method

.method public final yb()Lc/c/a/n/c/d/o$a;
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/n/c/c/g;

    invoke-direct {v0, p0}, Lc/c/a/n/c/c/g;-><init>(Lc/c/a/n/c/c/n;)V

    return-object v0
.end method
