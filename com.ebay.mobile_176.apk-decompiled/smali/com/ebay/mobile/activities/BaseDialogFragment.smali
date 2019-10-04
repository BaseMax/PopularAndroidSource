.class public abstract Lcom/ebay/mobile/activities/BaseDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "BaseDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/mobile/activities/BaseDialogFragment$ActivityResult;,
        Lcom/ebay/mobile/activities/BaseDialogFragment$LoaderCallback;
    }
.end annotation


# instance fields
.field private activityResult:Lcom/ebay/mobile/activities/BaseDialogFragment$ActivityResult;

.field private loaderManager:Lcom/ebay/nautilus/shell/app/FwLoaderManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/ebay/mobile/activities/BaseDialogFragment;->loaderManager:Lcom/ebay/nautilus/shell/app/FwLoaderManager;

    return-void
.end method


# virtual methods
.method public final getBaseActivity()Lcom/ebay/nautilus/shell/app/BaseActivity;
    .locals 1

    .line 109
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/BaseDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/shell/app/BaseActivity;

    return-object v0
.end method

.method protected final getFwLoaderManager()Lcom/ebay/nautilus/shell/app/FwLoaderManager;
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/ebay/mobile/activities/BaseDialogFragment;->loaderManager:Lcom/ebay/nautilus/shell/app/FwLoaderManager;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/ebay/nautilus/shell/app/FwLoaderManager;

    new-instance v1, Lcom/ebay/mobile/activities/BaseDialogFragment$LoaderCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/ebay/mobile/activities/BaseDialogFragment$LoaderCallback;-><init>(Lcom/ebay/mobile/activities/BaseDialogFragment;Lcom/ebay/mobile/activities/BaseDialogFragment$1;)V

    invoke-direct {v0, v1}, Lcom/ebay/nautilus/shell/app/FwLoaderManager;-><init>(Lcom/ebay/nautilus/shell/app/FwLoaderManager$Callback;)V

    iput-object v0, p0, Lcom/ebay/mobile/activities/BaseDialogFragment;->loaderManager:Lcom/ebay/nautilus/shell/app/FwLoaderManager;

    .line 70
    iget-object v0, p0, Lcom/ebay/mobile/activities/BaseDialogFragment;->loaderManager:Lcom/ebay/nautilus/shell/app/FwLoaderManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/shell/app/FwLoaderManager;->setDefaultPriority(I)V

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/activities/BaseDialogFragment;->loaderManager:Lcom/ebay/nautilus/shell/app/FwLoaderManager;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 47
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/BaseDialogFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p0, p1, p2, p3}, Lcom/ebay/mobile/activities/BaseDialogFragment;->onActivityResultSafe(IILandroid/content/Intent;)V

    goto :goto_0

    .line 50
    :cond_0
    new-instance v0, Lcom/ebay/mobile/activities/BaseDialogFragment$ActivityResult;

    invoke-direct {v0, p1, p2, p3}, Lcom/ebay/mobile/activities/BaseDialogFragment$ActivityResult;-><init>(IILandroid/content/Intent;)V

    iput-object v0, p0, Lcom/ebay/mobile/activities/BaseDialogFragment;->activityResult:Lcom/ebay/mobile/activities/BaseDialogFragment$ActivityResult;

    .line 52
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/DialogFragment;->onActivityResult(IILandroid/content/Intent;)V

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

    .line 35
    iget-object v0, p0, Lcom/ebay/mobile/activities/BaseDialogFragment;->loaderManager:Lcom/ebay/nautilus/shell/app/FwLoaderManager;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/ebay/mobile/activities/BaseDialogFragment;->loaderManager:Lcom/ebay/nautilus/shell/app/FwLoaderManager;

    invoke-virtual {v0}, Lcom/ebay/nautilus/shell/app/FwLoaderManager;->cancelAll()V

    .line 38
    iget-object v0, p0, Lcom/ebay/mobile/activities/BaseDialogFragment;->loaderManager:Lcom/ebay/nautilus/shell/app/FwLoaderManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/shell/app/FwLoaderManager;->setHandler(Lcom/ebay/nautilus/shell/app/FwLoaderManager$Callback;)V

    .line 41
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 20
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onResume()V

    .line 22
    iget-object v0, p0, Lcom/ebay/mobile/activities/BaseDialogFragment;->loaderManager:Lcom/ebay/nautilus/shell/app/FwLoaderManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/ebay/mobile/activities/BaseDialogFragment;->loaderManager:Lcom/ebay/nautilus/shell/app/FwLoaderManager;

    new-instance v2, Lcom/ebay/mobile/activities/BaseDialogFragment$LoaderCallback;

    invoke-direct {v2, p0, v1}, Lcom/ebay/mobile/activities/BaseDialogFragment$LoaderCallback;-><init>(Lcom/ebay/mobile/activities/BaseDialogFragment;Lcom/ebay/mobile/activities/BaseDialogFragment$1;)V

    invoke-virtual {v0, v2}, Lcom/ebay/nautilus/shell/app/FwLoaderManager;->setHandler(Lcom/ebay/nautilus/shell/app/FwLoaderManager$Callback;)V

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/activities/BaseDialogFragment;->activityResult:Lcom/ebay/mobile/activities/BaseDialogFragment$ActivityResult;

    if-eqz v0, :cond_1

    .line 27
    iget-object v0, p0, Lcom/ebay/mobile/activities/BaseDialogFragment;->activityResult:Lcom/ebay/mobile/activities/BaseDialogFragment$ActivityResult;

    iget v0, v0, Lcom/ebay/mobile/activities/BaseDialogFragment$ActivityResult;->requestCode:I

    iget-object v2, p0, Lcom/ebay/mobile/activities/BaseDialogFragment;->activityResult:Lcom/ebay/mobile/activities/BaseDialogFragment$ActivityResult;

    iget v2, v2, Lcom/ebay/mobile/activities/BaseDialogFragment$ActivityResult;->resultCode:I

    iget-object v3, p0, Lcom/ebay/mobile/activities/BaseDialogFragment;->activityResult:Lcom/ebay/mobile/activities/BaseDialogFragment$ActivityResult;

    iget-object v3, v3, Lcom/ebay/mobile/activities/BaseDialogFragment$ActivityResult;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v2, v3}, Lcom/ebay/mobile/activities/BaseDialogFragment;->onActivityResultSafe(IILandroid/content/Intent;)V

    .line 28
    iput-object v1, p0, Lcom/ebay/mobile/activities/BaseDialogFragment;->activityResult:Lcom/ebay/mobile/activities/BaseDialogFragment$ActivityResult;

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
