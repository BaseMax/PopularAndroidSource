.class public final Lc/c/a/n/b/n;
.super Ljava/lang/Object;
.source "AppDetailFragment.kt"

# interfaces
.implements Lc/c/a/n/b/d/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->wb()Lc/c/a/n/b/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/c/a/n/b/n;->a:Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;)V
    .locals 7

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lc/c/a/n/b/n;->a:Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;

    new-instance v2, Lcom/farsitel/bazaar/analytics/model/what/LaunchButtonClick;

    invoke-static {v1}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->a(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;)Lc/c/a/n/b/s;

    move-result-object v0

    invoke-virtual {v0}, Lc/c/a/n/b/s;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/farsitel/bazaar/analytics/model/what/LaunchButtonClick;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lc/c/a/n/b/n;->a:Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;

    invoke-static {v0}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->h(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;)Lc/c/a/n/b/w;

    move-result-object v0

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lc/c/a/n/b/w;->c(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lc/c/a/n/b/n;->a:Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->a(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;)V
    .locals 7

    const-string v0, "reviewAction"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lc/c/a/n/b/n;->a:Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;

    new-instance v2, Lcom/farsitel/bazaar/analytics/model/what/AverageRateStarsClick;

    invoke-static {v1}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->a(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;)Lc/c/a/n/b/s;

    move-result-object v0

    invoke-virtual {v0}, Lc/c/a/n/b/s;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/farsitel/bazaar/analytics/model/what/AverageRateStarsClick;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lc/c/a/n/b/n;->a:Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;

    invoke-static {v0, p1}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->a(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 7

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object v1, p0, Lc/c/a/n/b/n;->a:Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;

    new-instance v2, Lcom/farsitel/bazaar/analytics/model/what/UninstallButtonClick;

    invoke-static {v1}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->a(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;)Lc/c/a/n/b/s;

    move-result-object v0

    invoke-virtual {v0}, Lc/c/a/n/b/s;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/farsitel/bazaar/analytics/model/what/UninstallButtonClick;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 13
    iget-object v0, p0, Lc/c/a/n/b/n;->a:Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;

    invoke-static {v0}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->h(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;)Lc/c/a/n/b/w;

    move-result-object v1

    invoke-virtual {v1, p1}, Lc/c/a/n/b/w;->d(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->a(Landroid/content/Intent;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "authorSlug"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authorName"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lc/c/a/n/b/n;->a:Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;

    new-instance v2, Lcom/farsitel/bazaar/analytics/model/what/AppAuthorItemClick;

    invoke-static {v1}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->a(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;)Lc/c/a/n/b/s;

    move-result-object v0

    invoke-virtual {v0}, Lc/c/a/n/b/s;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p2, v0}, Lcom/farsitel/bazaar/analytics/model/what/AppAuthorItemClick;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lc/c/a/n/b/n;->a:Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;

    invoke-static {v0}, Lb/w/b/b;->a(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object v0

    .line 8
    sget-object v1, Lc/c/a/n/b/t;->a:Lc/c/a/n/b/t$g;

    .line 9
    new-instance v2, Lc/c/a/c/d/c$a;

    invoke-direct {v2}, Lc/c/a/c/d/c$a;-><init>()V

    iget-object v3, p0, Lc/c/a/n/b/n;->a:Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;

    invoke-virtual {v3}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->Za()Lc/c/a/n/b/s;

    move-result-object v3

    invoke-virtual {v3}, Lc/c/a/n/b/s;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc/c/a/c/d/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v2, p1

    move-object v4, p2

    .line 10
    invoke-static/range {v1 .. v7}, Lc/c/a/n/b/t$g;->a(Lc/c/a/n/b/t$g;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lb/w/p;

    move-result-object p1

    .line 11
    invoke-static {v0, p1}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    return-void
.end method

.method public b(Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;)V
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lir/cafebazaar/inline/ui/InlineActivity;->b(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->getReferrer()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ref"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    iget-object p1, p0, Lc/c/a/n/b/n;->a:Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->a(Landroid/content/Intent;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "categorySlug"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "categoryName"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lc/c/a/n/b/n;->a:Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;

    new-instance v2, Lcom/farsitel/bazaar/analytics/model/what/AppCategoryButtonClick;

    invoke-static {v1}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->a(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;)Lc/c/a/n/b/s;

    move-result-object v0

    invoke-virtual {v0}, Lc/c/a/n/b/s;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/farsitel/bazaar/analytics/model/what/AppCategoryButtonClick;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lc/c/a/n/b/n;->a:Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;

    invoke-static {v0}, Lb/w/b/b;->a(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object v0

    .line 6
    sget-object v1, Lc/c/a/n/b/t;->a:Lc/c/a/n/b/t$g;

    .line 7
    new-instance v2, Lc/c/a/c/d/c$b;

    invoke-direct {v2}, Lc/c/a/c/d/c$b;-><init>()V

    iget-object v3, p0, Lc/c/a/n/b/n;->a:Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;

    invoke-virtual {v3}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->Za()Lc/c/a/n/b/s;

    move-result-object v3

    invoke-virtual {v3}, Lc/c/a/n/b/s;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc/c/a/c/d/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v2, p1

    move-object v4, p2

    .line 8
    invoke-static/range {v1 .. v7}, Lc/c/a/n/b/t$g;->a(Lc/c/a/n/b/t$g;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lb/w/p;

    move-result-object p1

    .line 9
    invoke-static {v0, p1}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    return-void
.end method

.method public c(Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;)V
    .locals 13

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lc/c/a/n/b/n;->a:Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;

    invoke-static {v0}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->h(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;)Lc/c/a/n/b/w;

    move-result-object v0

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/c/a/n/b/w;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v1, p0, Lc/c/a/n/b/n;->a:Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;

    new-instance v2, Lcom/farsitel/bazaar/analytics/model/what/RunInlineButtonClick;

    invoke-static {v1}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->a(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;)Lc/c/a/n/b/s;

    move-result-object v0

    invoke-virtual {v0}, Lc/c/a/n/b/s;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/farsitel/bazaar/analytics/model/what/RunInlineButtonClick;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 3
    invoke-virtual {p0, p1}, Lc/c/a/n/b/n;->d(Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v7, p0, Lc/c/a/n/b/n;->a:Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;

    new-instance v8, Lcom/farsitel/bazaar/analytics/model/what/InstallButtonClick;

    invoke-static {v7}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->a(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;)Lc/c/a/n/b/s;

    move-result-object v1

    invoke-virtual {v1}, Lc/c/a/n/b/s;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Lcom/farsitel/bazaar/analytics/model/what/InstallButtonClick;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 5
    iget-object v1, p0, Lc/c/a/n/b/n;->a:Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;

    invoke-static {v1}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->h(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;)Lc/c/a/n/b/w;

    move-result-object v1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lc/c/a/n/b/w;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iget-object v1, p0, Lc/c/a/n/b/n;->a:Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->E()Landroid/content/Context;

    move-result-object v1

    if-eqz p1, :cond_1

    if-eqz v1, :cond_1

    .line 6
    invoke-static {v1, v0, p1}, Lc/c/a/d/b/d;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lc/c/a/n/b/n;->a:Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->a(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public d(Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lc/c/a/n/b/n;->a:Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;

    invoke-static {v0}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->h(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;)Lc/c/a/n/b/w;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/c/a/n/b/w;->b(Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;)V

    return-void
.end method

.method public e(Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;)V
    .locals 7

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lc/c/a/n/b/n;->a:Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;

    new-instance v2, Lcom/farsitel/bazaar/analytics/model/what/PauseDownloadButtonClick;

    invoke-static {v1}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->a(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;)Lc/c/a/n/b/s;

    move-result-object v0

    invoke-virtual {v0}, Lc/c/a/n/b/s;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/farsitel/bazaar/analytics/model/what/PauseDownloadButtonClick;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lc/c/a/n/b/n;->a:Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;

    invoke-static {v0}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->h(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;)Lc/c/a/n/b/w;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/c/a/n/b/w;->c(Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;)V

    return-void
.end method
