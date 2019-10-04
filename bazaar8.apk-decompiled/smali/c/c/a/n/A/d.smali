.class public final Lc/c/a/n/A/d;
.super Ljava/lang/Object;
.source "UpgradableAppsFragment.kt"

# interfaces
.implements Lc/c/a/n/A/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsFragment;->zb()Lc/c/a/n/A/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsFragment;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/c/a/n/A/d;->a:Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lc/c/a/n/A/d;->a:Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsFragment;

    invoke-static {v1}, Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsFragment;->a(Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsFragment;)Lc/c/a/n/A/g;

    move-result-object v1

    invoke-virtual {v1}, Lc/c/a/n/A/g;->r()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/farsitel/bazaar/common/model/page/ListItem$App;

    .line 4
    iget-object v3, p0, Lc/c/a/n/A/d;->a:Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsFragment;

    invoke-static {v3}, Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsFragment;->a(Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsFragment;)Lc/c/a/n/A/g;

    move-result-object v3

    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/page/ListItem$App;->getApp()Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    move-result-object v2

    invoke-virtual {v3, v2}, Lc/c/a/n/c/c/t;->a(Lcom/farsitel/bazaar/common/model/page/PageAppItem;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 7
    iget-object v2, p0, Lc/c/a/n/A/d;->a:Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsFragment;

    invoke-virtual {v2, v1}, Landroidx/fragment/app/Fragment;->a(Landroid/content/Intent;)V

    goto :goto_1

    .line 8
    :cond_2
    iget-object v0, p0, Lc/c/a/n/A/d;->a:Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsFragment;

    invoke-static {v0}, Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsFragment;->a(Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsFragment;)Lc/c/a/n/A/g;

    move-result-object v0

    invoke-virtual {v0}, Lc/c/a/n/A/g;->q()Ljava/util/List;

    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    .line 10
    iget-object v1, p0, Lc/c/a/n/A/d;->a:Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->Ga()Lb/o/a/i;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lc/c/a/n/A/d;->a:Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsFragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/farsitel/bazaar/app/download/DownloadService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_3

    .line 11
    sget-object p1, Lcom/farsitel/bazaar/app/download/DownloadService;->b:Lcom/farsitel/bazaar/app/download/DownloadService$a;

    invoke-virtual {p1, v0}, Lcom/farsitel/bazaar/app/download/DownloadService$a;->a(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string p1, "BATCH_DOWNLOAD"

    goto :goto_2

    :cond_3
    const-string p1, "STOP_ALL"

    .line 12
    :goto_2
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    invoke-virtual {v1, v2}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_4
    return-void
.end method
