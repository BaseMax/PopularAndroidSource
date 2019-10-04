.class abstract Lcom/ebay/mobile/activities/CoreActivity$MessageHelper;
.super Ljava/lang/Object;
.source "CoreActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/activities/CoreActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "MessageHelper"
.end annotation


# instance fields
.field private showWarnings:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final setShowWarnings(Z)V
    .locals 0

    .line 2385
    iput-boolean p1, p0, Lcom/ebay/mobile/activities/CoreActivity$MessageHelper;->showWarnings:Z

    return-void
.end method

.method public final showMessage(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/Fragment;ILcom/ebay/nautilus/kernel/content/ResultStatus;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Landroidx/fragment/app/FragmentActivity;",
            ":",
            "Lcom/ebay/nautilus/shell/app/FwActivity;",
            ">(TA;",
            "Landroidx/fragment/app/Fragment;",
            "I",
            "Lcom/ebay/nautilus/kernel/content/ResultStatus;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2401
    invoke-static {}, Lcom/ebay/nautilus/kernel/NautilusKernel;->verifyMain()V

    .line 2406
    move-object v0, p1

    check-cast v0, Lcom/ebay/nautilus/shell/app/FwActivity;

    invoke-interface {v0}, Lcom/ebay/nautilus/shell/app/FwActivity;->isStateSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2409
    :cond_0
    invoke-virtual {p4}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->getFirstError()Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 2411
    iget-boolean v4, p0, Lcom/ebay/mobile/activities/CoreActivity$MessageHelper;->showWarnings:Z

    if-eqz v4, :cond_2

    .line 2412
    invoke-virtual {p4}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->getFirstWarning()Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_c

    .line 2415
    move-object v4, p1

    check-cast v4, Lcom/ebay/nautilus/shell/app/FwContext;

    invoke-interface {v4}, Lcom/ebay/nautilus/shell/app/FwContext;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v4

    .line 2416
    invoke-static {v4, v0}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->getSafeLongMessage(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;)Ljava/lang/String;

    move-result-object v5

    .line 2417
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v7, "message"

    .line 2418
    invoke-virtual {v6, v7, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "title"

    .line 2419
    invoke-virtual {v6, v5, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2420
    invoke-interface {v0}, Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;->getId()I

    move-result p5

    if-eqz p5, :cond_3

    const-string v5, "errorCode"

    .line 2422
    invoke-virtual {v6, v5, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_3
    if-eqz v3, :cond_4

    const-string p5, "isError"

    .line 2424
    invoke-virtual {v6, p5, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_4
    if-ltz p3, :cond_5

    const-string p5, "id"

    .line 2426
    invoke-virtual {v6, p5, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2427
    :cond_5
    invoke-virtual {p4}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->canRetry()Z

    move-result p3

    if-eqz p3, :cond_6

    const-string p3, "allowRetry"

    .line 2428
    invoke-virtual {v6, p3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2429
    :cond_6
    invoke-interface {v0, v4}, Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;->isLongMessageHtml(Lcom/ebay/nautilus/kernel/content/EbayContext;)Z

    move-result p3

    if-nez p3, :cond_7

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/CoreActivity$MessageHelper;->showMessageAsBar(Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;)Z

    move-result p3

    if-eqz p3, :cond_7

    const-string p3, "asMessageBar"

    .line 2430
    invoke-virtual {v6, p3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_7
    if-eqz p2, :cond_8

    .line 2434
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    goto :goto_1

    .line 2435
    :cond_8
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_c

    const-string p3, "messageDialog"

    .line 2440
    invoke-virtual {p1, p3}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p3

    .line 2441
    instance-of p4, p3, Landroidx/fragment/app/DialogFragment;

    if-eqz p4, :cond_9

    .line 2445
    check-cast p3, Landroidx/fragment/app/DialogFragment;

    invoke-virtual {p3}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    goto :goto_2

    :cond_9
    if-eqz p3, :cond_a

    .line 2450
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p4

    .line 2451
    invoke-virtual {p4, p3}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p3

    .line 2452
    invoke-virtual {p3}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 2455
    :cond_a
    :goto_2
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p3

    const/4 p4, 0x0

    .line 2456
    invoke-virtual {p3, p4}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 2457
    new-instance p4, Lcom/ebay/mobile/ErrorDialogFragment;

    invoke-direct {p4}, Lcom/ebay/mobile/ErrorDialogFragment;-><init>()V

    .line 2458
    invoke-virtual {p4, v6}, Lcom/ebay/mobile/ErrorDialogFragment;->setArguments(Landroid/os/Bundle;)V

    if-eqz p2, :cond_b

    .line 2460
    invoke-virtual {p4, p2, v1}, Lcom/ebay/mobile/ErrorDialogFragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    :cond_b
    const-string p2, "messageDialog"

    .line 2461
    invoke-virtual {p4, p3, p2}, Lcom/ebay/mobile/ErrorDialogFragment;->show(Landroidx/fragment/app/FragmentTransaction;Ljava/lang/String;)I

    .line 2465
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    :cond_c
    return-void
.end method

.method protected abstract showMessageAsBar(Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;)Z
.end method
