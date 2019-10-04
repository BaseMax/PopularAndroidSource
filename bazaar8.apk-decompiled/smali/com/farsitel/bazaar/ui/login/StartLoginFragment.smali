.class public final Lcom/farsitel/bazaar/ui/login/StartLoginFragment;
.super Lc/c/a/n/c/a/b;
.source "StartLoginFragment.kt"


# instance fields
.field public final ia:Z

.field public ja:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/c/a/n/c/a/b;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/farsitel/bazaar/ui/login/StartLoginFragment;->ia:Z

    return-void
.end method


# virtual methods
.method public La()V
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/login/StartLoginFragment;->ja:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public Sa()Lcom/farsitel/bazaar/analytics/model/where/LoginFlow;
    .locals 3

    .line 2
    new-instance v0, Lcom/farsitel/bazaar/analytics/model/where/LoginFlow;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/login/StartLoginFragment;->Ua()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/login/StartLoginFragment;->Va()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/farsitel/bazaar/analytics/model/where/LoginFlow;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public bridge synthetic Sa()Lcom/farsitel/bazaar/analytics/model/where/WhereType;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/login/StartLoginFragment;->Sa()Lcom/farsitel/bazaar/analytics/model/where/LoginFlow;

    move-result-object v0

    return-object v0
.end method

.method public Ta()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/ui/login/StartLoginFragment;->ia:Z

    return v0
.end method

.method public final Ua()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ga()Lb/o/a/i;

    move-result-object v0

    const-string v1, "requireActivity()"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "dealerPackageName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public final Va()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ga()Lb/o/a/i;

    move-result-object v0

    const-string v1, "requireActivity()"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/farsitel/bazaar/common/model/login/LoginType;->DEFAULT:Lcom/farsitel/bazaar/common/model/login/LoginType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "loginType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/farsitel/bazaar/common/model/login/LoginType;->DEFAULT:Lcom/farsitel/bazaar/common/model/login/LoginType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    :goto_0
    return v0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->b(Landroid/os/Bundle;)V

    .line 2
    new-instance v1, Lcom/farsitel/bazaar/analytics/model/what/StartFlowEvent;

    invoke-direct {v1}, Lcom/farsitel/bazaar/analytics/model/what/StartFlowEvent;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 3
    invoke-static {}, Lcom/farsitel/bazaar/common/model/login/LoginType;->values()[Lcom/farsitel/bazaar/common/model/login/LoginType;

    move-result-object p1

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/login/StartLoginFragment;->Va()I

    move-result v0

    aget-object p1, p1, v0

    .line 4
    invoke-static {p0}, Lb/w/b/b;->a(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object v0

    .line 5
    sget-object v1, Lc/c/a/n/p/o;->a:Lc/c/a/n/p/o$a;

    .line 6
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/login/StartLoginFragment;->Ua()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    .line 8
    invoke-virtual {v1, v2, p1}, Lc/c/a/n/p/o$a;->a(Ljava/lang/String;I)Lb/w/p;

    move-result-object p1

    .line 9
    invoke-static {v0, p1}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    return-void
.end method

.method public e(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/login/StartLoginFragment;->ja:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/login/StartLoginFragment;->ja:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/login/StartLoginFragment;->ja:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/login/StartLoginFragment;->ja:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public synthetic qa()V
    .locals 0

    invoke-super {p0}, Lc/c/a/n/c/a/b;->qa()V

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/login/StartLoginFragment;->La()V

    return-void
.end method
