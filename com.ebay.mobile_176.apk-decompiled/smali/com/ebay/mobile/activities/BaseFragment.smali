.class public abstract Lcom/ebay/mobile/activities/BaseFragment;
.super Lcom/ebay/nautilus/shell/app/BaseFragment;
.source "BaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/mobile/activities/BaseFragment$LoaderCallback;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private activityResult:Lcom/ebay/mobile/activities/ActivityResult;

.field private loaderManager:Lcom/ebay/nautilus/shell/app/FwLoaderManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/ebay/nautilus/shell/app/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/ebay/mobile/activities/BaseFragment;->loaderManager:Lcom/ebay/nautilus/shell/app/FwLoaderManager;

    return-void
.end method


# virtual methods
.method public final getBaseActivity()Lcom/ebay/nautilus/shell/app/BaseActivity;
    .locals 1

    .line 120
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/shell/app/BaseActivity;

    return-object v0
.end method

.method protected final getFwLoaderManager()Lcom/ebay/nautilus/shell/app/FwLoaderManager;
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/ebay/mobile/activities/BaseFragment;->loaderManager:Lcom/ebay/nautilus/shell/app/FwLoaderManager;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/ebay/nautilus/shell/app/FwLoaderManager;

    new-instance v1, Lcom/ebay/mobile/activities/BaseFragment$LoaderCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/ebay/mobile/activities/BaseFragment$LoaderCallback;-><init>(Lcom/ebay/mobile/activities/BaseFragment;Lcom/ebay/mobile/activities/BaseFragment$1;)V

    invoke-direct {v0, v1}, Lcom/ebay/nautilus/shell/app/FwLoaderManager;-><init>(Lcom/ebay/nautilus/shell/app/FwLoaderManager$Callback;)V

    iput-object v0, p0, Lcom/ebay/mobile/activities/BaseFragment;->loaderManager:Lcom/ebay/nautilus/shell/app/FwLoaderManager;

    .line 81
    iget-object v0, p0, Lcom/ebay/mobile/activities/BaseFragment;->loaderManager:Lcom/ebay/nautilus/shell/app/FwLoaderManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/shell/app/FwLoaderManager;->setDefaultPriority(I)V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/activities/BaseFragment;->loaderManager:Lcom/ebay/nautilus/shell/app/FwLoaderManager;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 58
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/BaseFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0, p1, p2, p3}, Lcom/ebay/mobile/activities/BaseFragment;->onActivityResultSafe(IILandroid/content/Intent;)V

    goto :goto_0

    .line 61
    :cond_0
    new-instance v0, Lcom/ebay/mobile/activities/ActivityResult;

    invoke-direct {v0, p1, p2, p3}, Lcom/ebay/mobile/activities/ActivityResult;-><init>(IILandroid/content/Intent;)V

    iput-object v0, p0, Lcom/ebay/mobile/activities/BaseFragment;->activityResult:Lcom/ebay/mobile/activities/ActivityResult;

    .line 63
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/ebay/nautilus/shell/app/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onActivityResultSafe(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method protected onCanceled(ILcom/ebay/nautilus/shell/content/FwLoader;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/ebay/mobile/activities/BaseFragment;->loaderManager:Lcom/ebay/nautilus/shell/app/FwLoaderManager;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/ebay/mobile/activities/BaseFragment;->loaderManager:Lcom/ebay/nautilus/shell/app/FwLoaderManager;

    invoke-virtual {v0}, Lcom/ebay/nautilus/shell/app/FwLoaderManager;->cancelAll()V

    .line 42
    iget-object v0, p0, Lcom/ebay/mobile/activities/BaseFragment;->loaderManager:Lcom/ebay/nautilus/shell/app/FwLoaderManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/shell/app/FwLoaderManager;->setHandler(Lcom/ebay/nautilus/shell/app/FwLoaderManager$Callback;)V

    .line 45
    :cond_0
    invoke-super {p0}, Lcom/ebay/nautilus/shell/app/BaseFragment;->onDestroy()V

    return-void
.end method

.method protected onRefresh()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 24
    invoke-super {p0}, Lcom/ebay/nautilus/shell/app/BaseFragment;->onResume()V

    .line 26
    iget-object v0, p0, Lcom/ebay/mobile/activities/BaseFragment;->loaderManager:Lcom/ebay/nautilus/shell/app/FwLoaderManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/ebay/mobile/activities/BaseFragment;->loaderManager:Lcom/ebay/nautilus/shell/app/FwLoaderManager;

    new-instance v2, Lcom/ebay/mobile/activities/BaseFragment$LoaderCallback;

    invoke-direct {v2, p0, v1}, Lcom/ebay/mobile/activities/BaseFragment$LoaderCallback;-><init>(Lcom/ebay/mobile/activities/BaseFragment;Lcom/ebay/mobile/activities/BaseFragment$1;)V

    invoke-virtual {v0, v2}, Lcom/ebay/nautilus/shell/app/FwLoaderManager;->setHandler(Lcom/ebay/nautilus/shell/app/FwLoaderManager$Callback;)V

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/activities/BaseFragment;->activityResult:Lcom/ebay/mobile/activities/ActivityResult;

    if-eqz v0, :cond_1

    .line 31
    iget-object v0, p0, Lcom/ebay/mobile/activities/BaseFragment;->activityResult:Lcom/ebay/mobile/activities/ActivityResult;

    iget v0, v0, Lcom/ebay/mobile/activities/ActivityResult;->requestCode:I

    iget-object v2, p0, Lcom/ebay/mobile/activities/BaseFragment;->activityResult:Lcom/ebay/mobile/activities/ActivityResult;

    iget v2, v2, Lcom/ebay/mobile/activities/ActivityResult;->resultCode:I

    iget-object v3, p0, Lcom/ebay/mobile/activities/BaseFragment;->activityResult:Lcom/ebay/mobile/activities/ActivityResult;

    iget-object v3, v3, Lcom/ebay/mobile/activities/ActivityResult;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v2, v3}, Lcom/ebay/mobile/activities/BaseFragment;->onActivityResultSafe(IILandroid/content/Intent;)V

    .line 32
    iput-object v1, p0, Lcom/ebay/mobile/activities/BaseFragment;->activityResult:Lcom/ebay/mobile/activities/ActivityResult;

    :cond_1
    return-void
.end method

.method protected onTaskComplete(ILcom/ebay/nautilus/shell/content/FwLoader;)V
    .locals 0

    return-void
.end method

.method protected onTaskStarted(ILcom/ebay/nautilus/shell/content/FwLoader;)V
    .locals 0

    return-void
.end method
