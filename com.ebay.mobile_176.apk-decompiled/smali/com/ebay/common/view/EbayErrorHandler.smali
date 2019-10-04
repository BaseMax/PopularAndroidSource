.class public Lcom/ebay/common/view/EbayErrorHandler;
.super Ljava/lang/Object;
.source "EbayErrorHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/view/EbayErrorHandler$DefaultUserNotLoggedInCallback;,
        Lcom/ebay/common/view/EbayErrorHandler$UserNotLoggedInCallback;,
        Lcom/ebay/common/view/EbayErrorHandler$OverrideHandler;
    }
.end annotation


# instance fields
.field protected final activity:Landroidx/fragment/app/FragmentActivity;

.field private final closeActivityAfterDialog:Z

.field private final userNotLoggedInCallback:Lcom/ebay/common/view/EbayErrorHandler$UserNotLoggedInCallback;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, p1, v0, v1}, Lcom/ebay/common/view/EbayErrorHandler;-><init>(Landroidx/fragment/app/FragmentActivity;ZLcom/ebay/common/view/EbayErrorHandler$UserNotLoggedInCallback;)V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;ZLcom/ebay/common/view/EbayErrorHandler$UserNotLoggedInCallback;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/ebay/common/view/EbayErrorHandler;->activity:Landroidx/fragment/app/FragmentActivity;

    .line 73
    iput-boolean p2, p0, Lcom/ebay/common/view/EbayErrorHandler;->closeActivityAfterDialog:Z

    .line 74
    iput-object p3, p0, Lcom/ebay/common/view/EbayErrorHandler;->userNotLoggedInCallback:Lcom/ebay/common/view/EbayErrorHandler$UserNotLoggedInCallback;

    return-void
.end method

.method private static deviceClockInvalid(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 693
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 696
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;

    .line 698
    instance-of v2, v1, Lcom/ebay/nautilus/kernel/net/IoError;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/ebay/nautilus/kernel/net/IoError;

    .line 699
    invoke-virtual {v1}, Lcom/ebay/nautilus/kernel/net/IoError;->getException()Ljava/io/IOException;

    move-result-object v1

    instance-of v1, v1, Lcom/ebay/nautilus/kernel/net/InvalidDeviceClockException;

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v0
.end method

.method private displayUserError(Ljava/util/List;Z)V
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/net/EbayResponseError;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x1

    const v1, 0x7f120367

    if-eqz p1, :cond_4

    .line 494
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/ebay/common/view/EbayErrorHandler;->activity:Landroidx/fragment/app/FragmentActivity;

    instance-of v2, v2, Lcom/ebay/nautilus/shell/app/BaseActivity;

    if-eqz v2, :cond_4

    .line 496
    iget-object v2, p0, Lcom/ebay/common/view/EbayErrorHandler;->activity:Landroidx/fragment/app/FragmentActivity;

    check-cast v2, Lcom/ebay/nautilus/shell/app/BaseActivity;

    const-class v3, Lcom/ebay/common/view/util/DialogManager;

    invoke-virtual {v2, v3}, Lcom/ebay/nautilus/shell/app/BaseActivity;->getShim(Ljava/lang/Class;)Lcom/ebay/nautilus/shell/app/ActivityShim;

    move-result-object v2

    check-cast v2, Lcom/ebay/common/view/util/DialogManager;

    if-nez v2, :cond_0

    .line 498
    iget-object p1, p0, Lcom/ebay/common/view/EbayErrorHandler;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 501
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/net/EbayResponseError;

    invoke-virtual {p0, v1}, Lcom/ebay/common/view/EbayErrorHandler;->getMessageFromResponseError(Lcom/ebay/nautilus/domain/net/EbayResponseError;)Ljava/lang/String;

    move-result-object v1

    .line 502
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 503
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 506
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    const-string p2, "\n"

    .line 508
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ebay/nautilus/domain/net/EbayResponseError;

    const/16 v1, 0xa

    .line 511
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/ebay/common/view/EbayErrorHandler;->getMessageFromResponseError(Lcom/ebay/nautilus/domain/net/EbayResponseError;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 512
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    const/4 p1, 0x0

    .line 514
    iget-boolean p2, p0, Lcom/ebay/common/view/EbayErrorHandler;->closeActivityAfterDialog:Z

    invoke-virtual {v2, p1, v1, p2}, Lcom/ebay/common/view/util/DialogManager;->showDynamicAlertDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 519
    :cond_4
    iget-object p1, p0, Lcom/ebay/common/view/EbayErrorHandler;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method

.method private handleEbayError(Ljava/util/List;ZZZLjava/io/IOException;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/net/EbayResponseError;",
            ">;ZZZ",
            "Ljava/io/IOException;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    .line 592
    instance-of p1, p5, Lcom/ebay/nautilus/kernel/net/HostErrorException;

    if-eqz p1, :cond_1

    .line 594
    check-cast p5, Lcom/ebay/nautilus/kernel/net/HostErrorException;

    .line 595
    invoke-virtual {p5}, Lcom/ebay/nautilus/kernel/net/HostErrorException;->getResponseCode()I

    move-result p1

    const/16 p2, 0x1f4

    if-ne p1, p2, :cond_0

    .line 596
    invoke-virtual {p0}, Lcom/ebay/common/view/EbayErrorHandler;->onServerError()V

    goto :goto_0

    .line 598
    :cond_0
    invoke-direct {p0}, Lcom/ebay/common/view/EbayErrorHandler;->onNetworkError()V

    goto :goto_0

    .line 600
    :cond_1
    instance-of p1, p5, Lcom/ebay/nautilus/kernel/net/InvalidDeviceClockException;

    if-eqz p1, :cond_2

    .line 601
    iget-object p1, p0, Lcom/ebay/common/view/EbayErrorHandler;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f120211

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 603
    :cond_2
    invoke-direct {p0}, Lcom/ebay/common/view/EbayErrorHandler;->onNetworkError()V

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_4

    .line 606
    invoke-direct {p0}, Lcom/ebay/common/view/EbayErrorHandler;->onInternalError()V

    goto :goto_0

    :cond_4
    if-eqz p4, :cond_6

    .line 609
    invoke-static {p1}, Lcom/ebay/common/util/EbayErrorUtil;->userNotLoggedIn(Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 611
    invoke-direct {p0}, Lcom/ebay/common/view/EbayErrorHandler;->onUserNotLoggedIn()V

    const/4 p1, 0x0

    return p1

    .line 614
    :cond_5
    invoke-direct {p0, p1}, Lcom/ebay/common/view/EbayErrorHandler;->onError(Ljava/util/List;)V

    :cond_6
    :goto_0
    return v0
.end method

.method public static handleResultStatus(Landroidx/fragment/app/Fragment;ILcom/ebay/nautilus/kernel/content/ResultStatus;)Z
    .locals 1

    const/4 v0, 0x0

    .line 236
    invoke-static {p0, p1, p2, v0}, Lcom/ebay/common/view/EbayErrorHandler;->handleResultStatus(Landroidx/fragment/app/Fragment;ILcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/common/view/EbayErrorHandler$OverrideHandler;)Z

    move-result p0

    return p0
.end method

.method public static handleResultStatus(Landroidx/fragment/app/Fragment;ILcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/common/view/EbayErrorHandler$OverrideHandler;)Z
    .locals 1

    .line 255
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p0, p1, p2, p3}, Lcom/ebay/common/view/EbayErrorHandler;->handleResultStatus(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/Fragment;ILcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/common/view/EbayErrorHandler$OverrideHandler;)Z

    move-result p0

    return p0
.end method

.method public static handleResultStatus(Landroidx/fragment/app/FragmentActivity;ILcom/ebay/nautilus/kernel/content/ResultStatus;)Z
    .locals 1

    const/4 v0, 0x0

    .line 198
    invoke-static {p0, p1, p2, v0}, Lcom/ebay/common/view/EbayErrorHandler;->handleResultStatus(Landroidx/fragment/app/FragmentActivity;ILcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/common/view/EbayErrorHandler$OverrideHandler;)Z

    move-result p0

    return p0
.end method

.method public static handleResultStatus(Landroidx/fragment/app/FragmentActivity;ILcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/common/view/EbayErrorHandler$OverrideHandler;)Z
    .locals 1

    const/4 v0, 0x0

    .line 218
    invoke-static {p0, v0, p1, p2, p3}, Lcom/ebay/common/view/EbayErrorHandler;->handleResultStatus(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/Fragment;ILcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/common/view/EbayErrorHandler$OverrideHandler;)Z

    move-result p0

    return p0
.end method

.method private static handleResultStatus(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/Fragment;ILcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/common/view/EbayErrorHandler$OverrideHandler;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_10

    .line 273
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 276
    :cond_0
    invoke-virtual {p3}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->hasError()Z

    move-result v1

    if-eqz v1, :cond_a

    if-eqz p4, :cond_1

    .line 278
    invoke-virtual {p4, p0, p1, p2, p3}, Lcom/ebay/common/view/EbayErrorHandler$OverrideHandler;->handleError(Landroid/app/Activity;Landroidx/fragment/app/Fragment;ILcom/ebay/nautilus/kernel/content/ResultStatus;)Lcom/ebay/common/view/EbayErrorHandler$OverrideHandler$HandleState;

    move-result-object v1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/ebay/common/view/EbayErrorHandler$OverrideHandler$HandleState;->DefaultHandling:Lcom/ebay/common/view/EbayErrorHandler$OverrideHandler$HandleState;

    .line 280
    :goto_0
    sget-object v2, Lcom/ebay/common/view/EbayErrorHandler$1;->$SwitchMap$com$ebay$common$view$EbayErrorHandler$OverrideHandler$HandleState:[I

    invoke-virtual {v1}, Lcom/ebay/common/view/EbayErrorHandler$OverrideHandler$HandleState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    return v0

    .line 284
    :pswitch_1
    invoke-virtual {p3}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->hasError()Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_2

    .line 287
    :cond_2
    invoke-virtual {p3}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->getMessages()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/ebay/common/util/EbayErrorUtil;->userNotLoggedIn(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ebay/common/Preferences;->isSignedIn()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 288
    invoke-static {p0}, Lcom/ebay/mobile/MyApp;->signOutForIafTokenFailure(Landroid/app/Activity;)V

    goto :goto_1

    .line 289
    :cond_3
    invoke-virtual {p3}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->getMessages()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/ebay/common/view/EbayErrorHandler;->deviceClockInvalid(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_4

    instance-of v1, p0, Lcom/ebay/nautilus/shell/app/FwActivity;

    if-eqz v1, :cond_4

    .line 290
    check-cast p0, Lcom/ebay/nautilus/shell/app/FwActivity;

    invoke-static {p0}, Lcom/ebay/common/view/EbayErrorHandler;->promptToUpdateDeviceDateTime(Lcom/ebay/nautilus/shell/app/FwActivity;)V

    goto :goto_1

    .line 291
    :cond_4
    invoke-virtual {p3}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->getMessages()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/ebay/common/view/EbayErrorHandler;->noPlayServices(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_5

    const p1, 0x7f120402

    .line 296
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const p3, 0x7f120401

    .line 298
    invoke-virtual {p0, p3}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 295
    invoke-static {p0, p1, p2, p3, v0}, Lcom/ebay/mobile/activities/ErrorDialogActivity;->StartActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 304
    :cond_5
    instance-of v1, p1, Lcom/ebay/nautilus/shell/content/ErrorResultHandler;

    if-eqz v1, :cond_7

    .line 306
    move-object v1, p1

    check-cast v1, Lcom/ebay/nautilus/shell/content/ErrorResultHandler;

    .line 307
    invoke-interface {v1, p0, p1, p2, p3}, Lcom/ebay/nautilus/shell/content/ErrorResultHandler;->handleError(Landroid/content/Context;Landroidx/fragment/app/Fragment;ILcom/ebay/nautilus/kernel/content/ResultStatus;)Z

    move-result v1

    if-eqz v1, :cond_6

    return v0

    .line 311
    :cond_6
    invoke-virtual {p3}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->hasError()Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_2

    .line 315
    :cond_7
    instance-of v1, p0, Lcom/ebay/nautilus/shell/content/ErrorResultHandler;

    if-eqz v1, :cond_9

    .line 317
    move-object v1, p0

    check-cast v1, Lcom/ebay/nautilus/shell/content/ErrorResultHandler;

    .line 318
    invoke-interface {v1, p0, p1, p2, p3}, Lcom/ebay/nautilus/shell/content/ErrorResultHandler;->handleError(Landroid/content/Context;Landroidx/fragment/app/Fragment;ILcom/ebay/nautilus/kernel/content/ResultStatus;)Z

    move-result v1

    if-eqz v1, :cond_8

    return v0

    .line 322
    :cond_8
    invoke-virtual {p3}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->hasError()Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_2

    .line 325
    :cond_9
    invoke-virtual {p3}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->getFirstError()Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ebay/common/view/EbayErrorHandler;->showError(Landroid/app/Activity;Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;)V

    :goto_1
    return v0

    .line 335
    :cond_a
    :goto_2
    invoke-virtual {p3}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->hasWarning()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    if-eqz p4, :cond_b

    .line 338
    invoke-virtual {p4, p0, p1, p2, p3}, Lcom/ebay/common/view/EbayErrorHandler$OverrideHandler;->handleWarning(Landroid/app/Activity;Landroidx/fragment/app/Fragment;ILcom/ebay/nautilus/kernel/content/ResultStatus;)Lcom/ebay/common/view/EbayErrorHandler$OverrideHandler$HandleState;

    move-result-object p4

    sget-object v0, Lcom/ebay/common/view/EbayErrorHandler$OverrideHandler$HandleState;->DefaultHandling:Lcom/ebay/common/view/EbayErrorHandler$OverrideHandler$HandleState;

    if-ne p4, v0, :cond_f

    .line 341
    :cond_b
    invoke-virtual {p3}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->hasWarning()Z

    move-result p4

    if-nez p4, :cond_c

    return v1

    .line 345
    :cond_c
    instance-of p4, p1, Lcom/ebay/nautilus/shell/content/WarningResultHandler;

    if-eqz p4, :cond_e

    .line 347
    move-object p4, p1

    check-cast p4, Lcom/ebay/nautilus/shell/content/WarningResultHandler;

    .line 348
    invoke-interface {p4, p0, p1, p2, p3}, Lcom/ebay/nautilus/shell/content/WarningResultHandler;->handleWarning(Landroid/content/Context;Landroidx/fragment/app/Fragment;ILcom/ebay/nautilus/kernel/content/ResultStatus;)Z

    move-result p4

    if-eqz p4, :cond_d

    return v1

    .line 352
    :cond_d
    invoke-virtual {p3}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->hasWarning()Z

    move-result p4

    if-nez p4, :cond_e

    return v1

    .line 356
    :cond_e
    instance-of p4, p0, Lcom/ebay/nautilus/shell/content/WarningResultHandler;

    if-eqz p4, :cond_f

    .line 358
    move-object p4, p0

    check-cast p4, Lcom/ebay/nautilus/shell/content/WarningResultHandler;

    .line 359
    invoke-interface {p4, p0, p1, p2, p3}, Lcom/ebay/nautilus/shell/content/WarningResultHandler;->handleWarning(Landroid/content/Context;Landroidx/fragment/app/Fragment;ILcom/ebay/nautilus/kernel/content/ResultStatus;)Z

    :cond_f
    return v1

    :cond_10
    :goto_3
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static noPlayServices(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 707
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 710
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;

    .line 712
    invoke-interface {v1}, Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;->getId()I

    move-result v2

    const v3, 0x767c8

    if-ne v2, v3, :cond_1

    const-string v2, "TIDE"

    .line 713
    invoke-interface {v1}, Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v0
.end method

.method private onError(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/net/EbayResponseError;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 553
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 555
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 557
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/net/EbayResponseError;

    .line 559
    iget-boolean v2, v1, Lcom/ebay/nautilus/domain/net/EbayResponseError;->userDisplay:Z

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/ebay/nautilus/domain/net/EbayResponseError;->shortMessage:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 560
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 562
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/net/EbayResponseError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 565
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 567
    invoke-virtual {p0, v0}, Lcom/ebay/common/view/EbayErrorHandler;->onUserError(Ljava/util/List;)V

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 571
    invoke-virtual {p0, p1}, Lcom/ebay/common/view/EbayErrorHandler;->onUserError(Ljava/util/List;)V

    return-void
.end method

.method private onInternalError()V
    .locals 3

    .line 449
    iget-object v0, p0, Lcom/ebay/common/view/EbayErrorHandler;->activity:Landroidx/fragment/app/FragmentActivity;

    const v1, 0x7f120368

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 450
    invoke-virtual {p0}, Lcom/ebay/common/view/EbayErrorHandler;->getMaintenanceTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 453
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 455
    :cond_0
    iget-object v1, p0, Lcom/ebay/common/view/EbayErrorHandler;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private onNetworkError()V
    .locals 3

    .line 463
    iget-object v0, p0, Lcom/ebay/common/view/EbayErrorHandler;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120369

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private onUserNotLoggedIn()V
    .locals 1

    .line 579
    iget-object v0, p0, Lcom/ebay/common/view/EbayErrorHandler;->userNotLoggedInCallback:Lcom/ebay/common/view/EbayErrorHandler$UserNotLoggedInCallback;

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/ebay/common/view/EbayErrorHandler;->userNotLoggedInCallback:Lcom/ebay/common/view/EbayErrorHandler$UserNotLoggedInCallback;

    invoke-interface {v0}, Lcom/ebay/common/view/EbayErrorHandler$UserNotLoggedInCallback;->onUserNotLoggedIn()V

    :cond_0
    return-void
.end method

.method public static promptToUpdateDeviceDateTime(Lcom/ebay/nautilus/shell/app/FwActivity;)V
    .locals 4

    .line 767
    const-class v0, Lcom/ebay/common/view/util/DialogManager;

    invoke-interface {p0, v0}, Lcom/ebay/nautilus/shell/app/FwActivity;->getShim(Ljava/lang/Class;)Lcom/ebay/nautilus/shell/app/ActivityShim;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/view/util/DialogManager;

    if-eqz v0, :cond_0

    .line 770
    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    .line 771
    new-instance v2, Lcom/ebay/common/view/EbayErrorHandler$1Listener;

    check-cast p0, Landroid/app/Activity;

    invoke-direct {v2, p0}, Lcom/ebay/common/view/EbayErrorHandler$1Listener;-><init>(Landroid/app/Activity;)V

    const p0, 0x7f120209

    .line 773
    invoke-virtual {v1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const v3, 0x7f120211

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1, v2, v2}, Lcom/ebay/common/view/util/DialogManager;->showDynamicAlertDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    :cond_0
    return-void
.end method

.method public static rewriteServiceErrors(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/kernel/content/ResultStatus;)V
    .locals 6

    .line 107
    invoke-interface {p0}, Lcom/ebay/nautilus/kernel/content/EbayContext;->getResources()Lcom/ebay/nautilus/kernel/content/EbayResources;

    move-result-object v0

    .line 109
    invoke-virtual {p1}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->getMessages()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 110
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 113
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_9

    .line 115
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;

    .line 116
    invoke-interface {v2}, Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;->getSeverity()Lcom/ebay/nautilus/kernel/content/ResultStatus$Severity;

    move-result-object v3

    sget-object v4, Lcom/ebay/nautilus/kernel/content/ResultStatus$Severity;->Error:Lcom/ebay/nautilus/kernel/content/ResultStatus$Severity;

    if-ne v3, v4, :cond_8

    .line 118
    instance-of v3, v2, Lcom/ebay/nautilus/domain/net/EbayResponseError;

    const v4, 0x7f12073f

    if-eqz v3, :cond_4

    .line 120
    check-cast v2, Lcom/ebay/nautilus/domain/net/EbayResponseError;

    .line 127
    iget-object v3, v2, Lcom/ebay/nautilus/domain/net/EbayResponseError;->code:Ljava/lang/String;

    invoke-static {v3}, Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;->errorCodeRepresentsCongestion(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f120223

    .line 129
    invoke-interface {v0, v3}, Lcom/ebay/nautilus/kernel/content/EbayResources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/ebay/nautilus/domain/net/EbayResponseError;->shortMessage:Ljava/lang/String;

    const/4 v3, 0x0

    .line 130
    iput-object v3, v2, Lcom/ebay/nautilus/domain/net/EbayResponseError;->longMessage:Ljava/lang/String;

    .line 133
    :cond_1
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getDeviceConfiguration()Lcom/ebay/mobile/dcs/DcsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ebay/mobile/dcs/DcsHelper;->isMaintenanceWindow()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 135
    iget-object v3, v2, Lcom/ebay/nautilus/domain/net/EbayResponseError;->longMessage:Ljava/lang/String;

    .line 136
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 137
    iget-object v3, v2, Lcom/ebay/nautilus/domain/net/EbayResponseError;->shortMessage:Ljava/lang/String;

    .line 139
    :cond_2
    invoke-virtual {v2, p0}, Lcom/ebay/nautilus/domain/net/EbayResponseError;->isLongMessageHtml(Lcom/ebay/nautilus/kernel/content/EbayContext;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 140
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, v4}, Lcom/ebay/nautilus/kernel/content/EbayResources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n\n"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/ebay/nautilus/domain/net/EbayResponseError;->longMessage:Ljava/lang/String;

    .line 144
    :cond_3
    iget-object v3, v2, Lcom/ebay/nautilus/domain/net/EbayResponseError;->longMessage:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, v2, Lcom/ebay/nautilus/domain/net/EbayResponseError;->shortMessage:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    const v3, 0x7f120373

    .line 145
    invoke-interface {v0, v3}, Lcom/ebay/nautilus/kernel/content/EbayResources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/ebay/nautilus/domain/net/EbayResponseError;->shortMessage:Ljava/lang/String;

    goto/16 :goto_1

    .line 149
    :cond_4
    instance-of v3, v2, Lcom/ebay/nautilus/kernel/net/HttpError;

    if-eqz v3, :cond_5

    .line 151
    invoke-interface {v2}, Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;->getId()I

    move-result v3

    const/16 v5, 0x1f4

    if-ne v3, v5, :cond_8

    .line 153
    check-cast v2, Lcom/ebay/nautilus/kernel/net/HttpError;

    const v3, 0x7f120370

    .line 154
    invoke-interface {v0, v3}, Lcom/ebay/nautilus/kernel/content/EbayResources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/ebay/nautilus/kernel/net/HttpError;->message:Ljava/lang/String;

    .line 156
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getDeviceConfiguration()Lcom/ebay/mobile/dcs/DcsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ebay/mobile/dcs/DcsHelper;->isMaintenanceWindow()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 157
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, v4}, Lcom/ebay/nautilus/kernel/content/EbayResources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/ebay/nautilus/kernel/net/HttpError;->message:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/ebay/nautilus/kernel/net/HttpError;->message:Ljava/lang/String;

    goto :goto_1

    .line 161
    :cond_5
    instance-of v3, v2, Lcom/ebay/nautilus/kernel/net/IoError;

    if-eqz v3, :cond_8

    .line 163
    check-cast v2, Lcom/ebay/nautilus/kernel/net/IoError;

    .line 164
    invoke-virtual {v2}, Lcom/ebay/nautilus/kernel/net/IoError;->getException()Ljava/io/IOException;

    move-result-object v3

    .line 165
    instance-of v5, v3, Lcom/ebay/nautilus/kernel/net/ClientErrorException;

    if-eqz v5, :cond_6

    const v3, 0x7f120368

    .line 167
    invoke-interface {v0, v3}, Lcom/ebay/nautilus/kernel/content/EbayResources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/ebay/nautilus/kernel/net/IoError;->message:Ljava/lang/String;

    .line 169
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getDeviceConfiguration()Lcom/ebay/mobile/dcs/DcsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ebay/mobile/dcs/DcsHelper;->isMaintenanceWindow()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 170
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, v4}, Lcom/ebay/nautilus/kernel/content/EbayResources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/ebay/nautilus/kernel/net/IoError;->message:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/ebay/nautilus/kernel/net/IoError;->message:Ljava/lang/String;

    goto :goto_1

    .line 173
    :cond_6
    instance-of v3, v3, Lcom/ebay/nautilus/kernel/net/InvalidDeviceClockException;

    if-eqz v3, :cond_7

    const v3, 0x7f120211

    .line 174
    invoke-interface {v0, v3}, Lcom/ebay/nautilus/kernel/content/EbayResources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/ebay/nautilus/kernel/net/IoError;->message:Ljava/lang/String;

    goto :goto_1

    :cond_7
    const v3, 0x7f120369

    .line 176
    invoke-interface {v0, v3}, Lcom/ebay/nautilus/kernel/content/EbayResources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/ebay/nautilus/kernel/net/IoError;->message:Ljava/lang/String;

    :cond_8
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    :cond_9
    return-void

    :cond_a
    :goto_2
    return-void
.end method

.method private static showError(Landroid/app/Activity;Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;)V
    .locals 2

    .line 370
    invoke-static {}, Lcom/ebay/nautilus/kernel/dagger/KernelComponentHolder;->getOrCreateInstance()Lcom/ebay/nautilus/kernel/dagger/KernelComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/ebay/nautilus/kernel/dagger/KernelComponent;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v0

    .line 371
    invoke-interface {p1}, Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 372
    invoke-static {v0, p1}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->getSafeLongMessage(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;)Ljava/lang/String;

    move-result-object p1

    .line 374
    invoke-static {p0, v1, p1}, Lcom/ebay/mobile/activities/ErrorDialogActivity;->StartActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getMaintenanceTitle()Ljava/lang/String;
    .locals 2

    .line 647
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getDeviceConfiguration()Lcom/ebay/mobile/dcs/DcsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/mobile/dcs/DcsHelper;->isMaintenanceWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/ebay/common/view/EbayErrorHandler;->activity:Landroidx/fragment/app/FragmentActivity;

    const v1, 0x7f12073f

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getMessageFromResponseError(Lcom/ebay/nautilus/domain/net/EbayResponseError;)Ljava/lang/String;
    .locals 1

    .line 472
    iget-object v0, p1, Lcom/ebay/nautilus/domain/net/EbayResponseError;->shortMessage:Ljava/lang/String;

    .line 479
    iget-object p1, p1, Lcom/ebay/nautilus/domain/net/EbayResponseError;->code:Ljava/lang/String;

    invoke-static {p1}, Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;->errorCodeRepresentsCongestion(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 480
    iget-object p1, p0, Lcom/ebay/common/view/EbayErrorHandler;->activity:Landroidx/fragment/app/FragmentActivity;

    const v0, 0x7f120223

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public handle(Landroidx/fragment/app/Fragment;ILcom/ebay/nautilus/kernel/content/ResultStatus;)Z
    .locals 2

    .line 96
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, p3, v1}, Lcom/ebay/common/view/EbayErrorHandler;->handleResultStatus(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/Fragment;ILcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/common/view/EbayErrorHandler$OverrideHandler;)Z

    move-result p1

    return p1
.end method

.method public final handleEbayError(Ljava/util/List;Lcom/ebay/nautilus/shell/content/FwNetLoader;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/net/EbayResponseError;",
            ">;",
            "Lcom/ebay/nautilus/shell/content/FwNetLoader;",
            ")Z"
        }
    .end annotation

    .line 629
    invoke-virtual {p2}, Lcom/ebay/nautilus/shell/content/FwNetLoader;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    invoke-virtual {p2}, Lcom/ebay/nautilus/shell/content/FwNetLoader;->isConnectionError()Z

    move-result v3

    .line 633
    invoke-virtual {p2}, Lcom/ebay/nautilus/shell/content/FwNetLoader;->isClientError()Z

    move-result v4

    .line 634
    invoke-virtual {p2}, Lcom/ebay/nautilus/shell/content/FwNetLoader;->isServiceError()Z

    move-result v5

    .line 635
    invoke-virtual {p2}, Lcom/ebay/nautilus/shell/content/FwNetLoader;->getException()Ljava/io/IOException;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    .line 637
    invoke-direct/range {v1 .. v6}, Lcom/ebay/common/view/EbayErrorHandler;->handleEbayError(Ljava/util/List;ZZZLjava/io/IOException;)Z

    move-result p1

    return p1

    .line 630
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Not in an error state, should not be handled here."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onServerError()V
    .locals 3

    .line 655
    iget-object v0, p0, Lcom/ebay/common/view/EbayErrorHandler;->activity:Landroidx/fragment/app/FragmentActivity;

    const v1, 0x7f120370

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 656
    invoke-virtual {p0}, Lcom/ebay/common/view/EbayErrorHandler;->getMaintenanceTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 659
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 661
    :cond_0
    iget-object v1, p0, Lcom/ebay/common/view/EbayErrorHandler;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method protected onUserError(Ljava/util/List;)V
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/net/EbayResponseError;",
            ">;)V"
        }
    .end annotation

    .line 530
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getDeviceConfiguration()Lcom/ebay/mobile/dcs/DcsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/mobile/dcs/DcsHelper;->isMaintenanceWindow()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 534
    new-instance v0, Lcom/ebay/nautilus/domain/net/EbayResponseError;

    invoke-direct {v0}, Lcom/ebay/nautilus/domain/net/EbayResponseError;-><init>()V

    .line 535
    iget-object v2, p0, Lcom/ebay/common/view/EbayErrorHandler;->activity:Landroidx/fragment/app/FragmentActivity;

    const v3, 0x7f12073f

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/ebay/nautilus/domain/net/EbayResponseError;->longMessage:Ljava/lang/String;

    iput-object v2, v0, Lcom/ebay/nautilus/domain/net/EbayResponseError;->shortMessage:Ljava/lang/String;

    .line 536
    invoke-interface {p1, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    const/4 v1, 0x1

    .line 542
    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/ebay/common/view/EbayErrorHandler;->displayUserError(Ljava/util/List;Z)V

    return-void
.end method
