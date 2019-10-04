.class public final Lcom/farsitel/bazaar/ui/appdetail/MoreDescriptionFragment;
.super Lc/c/a/n/c/a/c;
.source "MoreDescriptionFragment.kt"

# interfaces
.implements Lc/c/a/n/b/G;


# instance fields
.field public fa:Lc/c/a/f/k;

.field public ga:Lc/c/a/n/b/E;

.field public ha:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/c/a/n/c/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public La()V
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/appdetail/MoreDescriptionFragment;->ha:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public Qa()Lcom/farsitel/bazaar/analytics/model/where/AppMoreDescriptionScreen;
    .locals 2

    .line 2
    new-instance v0, Lcom/farsitel/bazaar/analytics/model/where/AppMoreDescriptionScreen;

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/appdetail/MoreDescriptionFragment;->ga:Lc/c/a/n/b/E;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lc/c/a/n/b/E;->a()Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/farsitel/bazaar/analytics/model/where/AppMoreDescriptionScreen;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const-string v0, "moreDescriptionArgs"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public bridge synthetic Qa()Lcom/farsitel/bazaar/analytics/model/where/WhereType;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/appdetail/MoreDescriptionFragment;->Qa()Lcom/farsitel/bazaar/analytics/model/where/AppMoreDescriptionScreen;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 1
    invoke-static {p1, p2, p3}, Lc/c/a/f/k;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/k;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/farsitel/bazaar/ui/appdetail/MoreDescriptionFragment;->ga:Lc/c/a/n/b/E;

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lc/c/a/n/b/E;->a()Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;

    move-result-object p2

    const/4 v0, 0x4

    invoke-virtual {p1, v0, p2}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;)Z

    const/16 p2, 0x25

    .line 3
    invoke-virtual {p1, p2, p0}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;)Z

    const-string p2, "FragmentMoreDescriptionB\u2026iptionFragment)\n        }"

    .line 4
    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/appdetail/MoreDescriptionFragment;->fa:Lc/c/a/f/k;

    .line 5
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/appdetail/MoreDescriptionFragment;->fa:Lc/c/a/f/k;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->h()Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "bindingView"

    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw p3

    :cond_1
    const-string p1, "moreDescriptionArgs"

    .line 6
    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw p3
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 11

    const-string v0, "view"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-super {p0, p1, p2}, Lc/c/a/d/f/o;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 8
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/appdetail/MoreDescriptionFragment;->ga:Lc/c/a/n/b/E;

    const/4 p2, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lc/c/a/n/b/E;->a()Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;

    move-result-object p1

    .line 9
    sget-object v0, Lc/c/a/c/h/e;->a:Lc/c/a/c/h/e;

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext()"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->getAppVersionCode()Ljava/lang/Long;

    move-result-object v4

    .line 13
    invoke-virtual {v0, v1, v3, v4}, Lc/c/a/c/h/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)Z

    move-result v0

    const-string v1, "bindingView.informationUpdateToGroup"

    const-string v3, "bindingView.informationVersionValue"

    const-string v4, "bindingView"

    if-eqz v0, :cond_5

    .line 14
    sget-object v0, Lc/c/a/c/h/e;->a:Lc/c/a/c/h/e;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lc/c/a/c/h/e;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 15
    iget-object v5, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->getAppVersion()Ljava/lang/String;

    move-result-object v6

    .line 17
    invoke-static {v5, v6}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    .line 18
    invoke-static {v0}, Lc/c/a/c/b/h;->b(Landroid/content/pm/PackageInfo;)J

    move-result-wide v9

    .line 19
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->getAppVersionCode()Ljava/lang/Long;

    move-result-object p1

    const/4 v0, 0x2

    .line 20
    new-array v7, v0, [Ljava/lang/Object;

    aput-object v5, v7, v8

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v9, 0x1

    aput-object v5, v7, v9

    const v5, 0x7f10002d

    invoke-virtual {p0, v5, v7}, Landroidx/fragment/app/Fragment;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 21
    new-array v0, v0, [Ljava/lang/Object;

    aput-object v6, v0, v8

    aput-object p1, v0, v9

    invoke-virtual {p0, v5, v0}, Landroidx/fragment/app/Fragment;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v7

    .line 22
    :cond_0
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/appdetail/MoreDescriptionFragment;->fa:Lc/c/a/f/k;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lc/c/a/f/k;->Q:Landroid/widget/TextView;

    invoke-static {p1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "installedVersionName"

    invoke-static {v5, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lc/c/a/d/a/a;->b:Lc/c/a/d/a/a$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lc/c/a/d/a/a$a;->a(Landroid/content/Context;)Lc/c/a/e/d/u/a;

    move-result-object v0

    invoke-virtual {v0}, Lc/c/a/e/d/u/a;->n()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v5, v0}, Lc/c/a/c/b/i;->a(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/appdetail/MoreDescriptionFragment;->fa:Lc/c/a/f/k;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lc/c/a/f/k;->P:Landroid/widget/TextView;

    const-string v0, "bindingView.informationUpdateToValue"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/appdetail/MoreDescriptionFragment;->fa:Lc/c/a/f/k;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lc/c/a/f/k;->O:Landroidx/constraintlayout/widget/Group;

    invoke-static {p1, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-static {v4}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw p2

    .line 25
    :cond_2
    invoke-static {v4}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw p2

    .line 26
    :cond_3
    invoke-static {v4}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw p2

    .line 27
    :cond_4
    invoke-static {}, Lh/f/b/j;->a()V

    throw p2

    .line 28
    :cond_5
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/appdetail/MoreDescriptionFragment;->fa:Lc/c/a/f/k;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lc/c/a/f/k;->Q:Landroid/widget/TextView;

    invoke-static {v0, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->getAppVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/appdetail/MoreDescriptionFragment;->fa:Lc/c/a/f/k;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lc/c/a/f/k;->O:Landroidx/constraintlayout/widget/Group;

    invoke-static {p1, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_6
    invoke-static {v4}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw p2

    .line 30
    :cond_7
    invoke-static {v4}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw p2

    :cond_8
    const-string p1, "moreDescriptionArgs"

    .line 31
    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw p2
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lc/c/a/d/f/o;->c(Landroid/os/Bundle;)V

    .line 2
    sget-object p1, Lc/c/a/n/b/E;->a:Lc/c/a/n/b/E$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "arguments!!"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lc/c/a/n/b/E$a;->a(Landroid/os/Bundle;)Lc/c/a/n/b/E;

    move-result-object p1

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/appdetail/MoreDescriptionFragment;->ga:Lc/c/a/n/b/E;

    return-void

    :cond_0
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public e(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/appdetail/MoreDescriptionFragment;->ha:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/appdetail/MoreDescriptionFragment;->ha:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/appdetail/MoreDescriptionFragment;->ha:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->aa()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/appdetail/MoreDescriptionFragment;->ha:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final f(I)Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;
    .locals 5

    .line 1
    new-instance v0, Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;

    .line 2
    iget-object v1, p0, Lcom/farsitel/bazaar/ui/appdetail/MoreDescriptionFragment;->ga:Lc/c/a/n/b/E;

    const/4 v2, 0x0

    const-string v3, "moreDescriptionArgs"

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lc/c/a/n/b/E;->a()Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v4, p0, Lcom/farsitel/bazaar/ui/appdetail/MoreDescriptionFragment;->ga:Lc/c/a/n/b/E;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lc/c/a/n/b/E;->a()Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->getAppName()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object p1

    const-string v3, "getString(pageDesc)"

    invoke-static {p1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {v0, v1, v2, p1}, Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 6
    :cond_0
    invoke-static {v3}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    .line 7
    :cond_1
    invoke-static {v3}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2
.end method

.method public o()V
    .locals 8

    .line 1
    new-instance v1, Lcom/farsitel/bazaar/analytics/model/what/UrlItemClick;

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/appdetail/MoreDescriptionFragment;->ga:Lc/c/a/n/b/E;

    const-string v6, "moreDescriptionArgs"

    const/4 v7, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lc/c/a/n/b/E;->a()Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->getShamedURL()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/farsitel/bazaar/ui/appdetail/MoreDescriptionFragment;->ga:Lc/c/a/n/b/E;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lc/c/a/n/b/E;->a()Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->getReferrer()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lc/c/a/c/d/e;->a()Ljava/lang/String;

    move-result-object v2

    .line 4
    :goto_1
    invoke-direct {v1, v0, v2}, Lcom/farsitel/bazaar/analytics/model/what/UrlItemClick;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    .line 5
    invoke-static/range {v0 .. v5}, Lc/c/a/n/c/a/c;->a(Lc/c/a/n/c/a/c;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/appdetail/MoreDescriptionFragment;->ga:Lc/c/a/n/b/E;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lc/c/a/n/b/E;->a()Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->getShamedURL()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext()"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v1, v0, v2, v3, v7}, Lc/c/a/i/b;->a(Landroid/content/Context;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_2
    return-void

    .line 8
    :cond_3
    invoke-static {v6}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v7

    .line 9
    :cond_4
    invoke-static {v6}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v7

    .line 10
    :cond_5
    invoke-static {v6}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v7
.end method

.method public synthetic qa()V
    .locals 0

    invoke-super {p0}, Lc/c/a/n/c/a/c;->qa()V

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/appdetail/MoreDescriptionFragment;->La()V

    return-void
.end method

.method public r()V
    .locals 1

    .line 1
    invoke-static {p0}, Lb/w/b/b;->a(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object v0

    invoke-virtual {v0}, Lb/w/j;->i()Z

    return-void
.end method

.method public s()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/appdetail/MoreDescriptionFragment;->ga:Lc/c/a/n/b/E;

    const-string v1, "moreDescriptionArgs"

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lc/c/a/n/b/E;->a()Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v4, Lcom/farsitel/bazaar/analytics/model/what/AppPermissionItemClick;

    iget-object v3, p0, Lcom/farsitel/bazaar/ui/appdetail/MoreDescriptionFragment;->ga:Lc/c/a/n/b/E;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lc/c/a/n/b/E;->a()Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->getReferrer()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lc/c/a/c/d/e;->a()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-direct {v4, v3}, Lcom/farsitel/bazaar/analytics/model/what/AppPermissionItemClick;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v3, p0

    .line 3
    invoke-static/range {v3 .. v8}, Lc/c/a/n/c/a/c;->a(Lc/c/a/n/c/a/c;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 4
    iget-object v3, p0, Lcom/farsitel/bazaar/ui/appdetail/MoreDescriptionFragment;->ga:Lc/c/a/n/b/E;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lc/c/a/n/b/E;->a()Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->getPermissions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 7
    invoke-static {v5, v0, v7, v6, v2}, Lh/k/n;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v7, 0x1

    :cond_2
    if-eqz v7, :cond_1

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 8
    :cond_3
    invoke-static {p0}, Lb/w/b/b;->a(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object v0

    .line 9
    sget-object v1, Lc/c/a/n/b/F;->a:Lc/c/a/n/b/F$b;

    const v2, 0x7f100177

    .line 10
    invoke-virtual {p0, v2}, Lcom/farsitel/bazaar/ui/appdetail/MoreDescriptionFragment;->f(I)Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x3e

    const/4 v11, 0x0

    const-string v4, "<br/>"

    .line 11
    invoke-static/range {v3 .. v11}, Lh/a/u;->a(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lh/f/a/b;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-virtual {v1, v2, v3}, Lc/c/a/n/b/F$b;->a(Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;Ljava/lang/String;)Lb/w/p;

    move-result-object v1

    .line 13
    invoke-static {v0, v1}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    :cond_4
    return-void

    .line 14
    :cond_5
    invoke-static {v1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    .line 15
    :cond_6
    invoke-static {v1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    .line 16
    :cond_7
    invoke-static {v1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v2

    :goto_3
    goto :goto_2
.end method

.method public t()V
    .locals 10

    .line 1
    invoke-static {p0}, Lb/w/b/b;->a(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object v0

    .line 2
    sget-object v1, Lc/c/a/d;->a:Lc/c/a/d$l;

    .line 3
    iget-object v2, p0, Lcom/farsitel/bazaar/ui/appdetail/MoreDescriptionFragment;->ga:Lc/c/a/n/b/E;

    const/4 v3, 0x0

    const-string v4, "moreDescriptionArgs"

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lc/c/a/n/b/E;->a()Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->getCategorySlug()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    .line 4
    iget-object v6, p0, Lcom/farsitel/bazaar/ui/appdetail/MoreDescriptionFragment;->ga:Lc/c/a/n/b/E;

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lc/c/a/n/b/E;->a()Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;

    move-result-object v6

    invoke-virtual {v6}, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->getCategoryName()Ljava/lang/String;

    move-result-object v6

    .line 5
    new-instance v7, Lc/c/a/c/d/c$k;

    invoke-direct {v7}, Lc/c/a/c/d/c$k;-><init>()V

    iget-object v8, p0, Lcom/farsitel/bazaar/ui/appdetail/MoreDescriptionFragment;->ga:Lc/c/a/n/b/E;

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lc/c/a/n/b/E;->a()Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->getReferrer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lc/c/a/c/d/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    const/4 v9, 0x0

    move v3, v5

    move-object v4, v6

    move-object v5, v7

    move v6, v8

    move-object v7, v9

    .line 6
    invoke-static/range {v1 .. v7}, Lc/c/a/d$l;->a(Lc/c/a/d$l;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lb/w/p;

    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    return-void

    .line 8
    :cond_0
    invoke-static {v4}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v3

    .line 9
    :cond_1
    invoke-static {v4}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v3

    .line 10
    :cond_2
    invoke-static {v4}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v3
.end method

.method public u()V
    .locals 8

    .line 1
    new-instance v1, Lcom/farsitel/bazaar/analytics/model/what/AppUpgradeChangeLogItemClick;

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/appdetail/MoreDescriptionFragment;->ga:Lc/c/a/n/b/E;

    const/4 v6, 0x0

    const-string v7, "moreDescriptionArgs"

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lc/c/a/n/b/E;->a()Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->getReferrer()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lc/c/a/c/d/e;->a()Ljava/lang/String;

    move-result-object v0

    .line 3
    :goto_0
    invoke-direct {v1, v0}, Lcom/farsitel/bazaar/analytics/model/what/AppUpgradeChangeLogItemClick;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    .line 4
    invoke-static/range {v0 .. v5}, Lc/c/a/n/c/a/c;->a(Lc/c/a/n/c/a/c;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/appdetail/MoreDescriptionFragment;->ga:Lc/c/a/n/b/E;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lc/c/a/n/b/E;->a()Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->getChangeLog()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {p0}, Lb/w/b/b;->a(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object v1

    .line 7
    sget-object v2, Lc/c/a/n/b/F;->a:Lc/c/a/n/b/F$b;

    const v3, 0x7f10004f

    .line 8
    invoke-virtual {p0, v3}, Lcom/farsitel/bazaar/ui/appdetail/MoreDescriptionFragment;->f(I)Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;

    move-result-object v3

    .line 9
    invoke-virtual {v2, v3, v0}, Lc/c/a/n/b/F$b;->a(Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;Ljava/lang/String;)Lb/w/p;

    move-result-object v0

    .line 10
    invoke-static {v1, v0}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    :cond_1
    return-void

    .line 11
    :cond_2
    invoke-static {v7}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v6

    .line 12
    :cond_3
    invoke-static {v7}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v6
.end method
