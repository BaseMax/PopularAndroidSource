.class public Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;
.super Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;
.source "CheckoutMixedActivity.java"

# interfaces
.implements Lcom/ebay/mobile/checkout/v2/model/OverlayContract;
.implements Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;
.implements Lcom/ebay/payments/checkout/IncentivesHandler;


# static fields
.field public static final GOOGLE_PAY_API_EXCEPTION_ERROR_CODE:Ljava/lang/String; = "IS_READY_TO_PAY_API_EXCEPTION"

.field public static final GOOGLE_PAY_IS_READY_TO_PAY_ERROR_CODE:Ljava/lang/String; = "IS_READY_TO_PAY_RETURNED_FALSE"

.field public static final GOOGLE_PAY_IS_READY_TO_PAY_JSON_ERROR_CODE:Ljava/lang/String; = "IS_READY_TO_PAY_JSON_EXCEPTION"

.field public static final GOOGLE_PAY_SERVICE_NAME:Ljava/lang/String; = "GooglePay"


# instance fields
.field private IS_READY_TO_PAY_REPORTED:Ljava/lang/String;

.field componentBindingInfo:Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo;

.field ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public googleApiAvailability:Lcom/google/android/gms/common/GoogleApiAvailability;
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x3
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private googlePaymentsClient:Lcom/google/android/gms/wallet/PaymentsClient;

.field public googlePaymentsClientProvider:Ljavax/inject/Provider;
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x3
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/gms/wallet/PaymentsClient;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private isReadyToPayResultReported:Z

.field public threeDs2Client:Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x3
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public wallClock:Lcom/ebay/nautilus/kernel/time/ClockWall;
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x3
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 119
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;-><init>()V

    const/4 v0, 0x0

    .line 134
    iput-boolean v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->isReadyToPayResultReported:Z

    const-string v0, "isReadyToPayReported"

    .line 138
    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->IS_READY_TO_PAY_REPORTED:Ljava/lang/String;

    return-void
.end method

.method private addHubSummaryNotifications(Landroid/view/ViewGroup;Ljava/util/List;)V
    .locals 4
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/Notification;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ViewGroup container for notifications is null"

    .line 574
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Notifications list to render is null"

    .line 575
    invoke-static {p2, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const v0, 0x7f0a0ea9

    .line 577
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 578
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 579
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 580
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/Notification;

    .line 582
    new-instance v3, Lcom/ebay/mobile/checkout/v2/model/NotificationViewModel;

    invoke-direct {v3, v2, v0}, Lcom/ebay/mobile/checkout/v2/model/NotificationViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/Notification;Z)V

    .line 583
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 585
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->bindViewModels(Landroid/view/ViewGroup;Ljava/util/List;)V

    return-void
.end method

.method private bindViewModel(Landroid/view/ViewGroup;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;)V
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "ViewGroup for binding cells is null"

    .line 445
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 447
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->inflater:Landroid/view/LayoutInflater;

    invoke-interface {p2}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;->getViewType()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 451
    :cond_0
    instance-of v0, p2, Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItem;

    if-eqz v0, :cond_1

    .line 452
    move-object v0, p2

    check-cast v0, Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItem;

    invoke-interface {v0, p0}, Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItem;->onBind(Landroid/content/Context;)V

    .line 454
    :cond_1
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->componentBindingInfo:Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo;

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo;->set(Landroid/view/View;)V

    const/16 v0, 0x8

    .line 455
    invoke-virtual {p1, v0, p0}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    const/4 v0, 0x5

    .line 456
    invoke-virtual {p1, v0, p2}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 457
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->executePendingBindings()V

    return-void
.end method

.method private bindViewModels(Landroid/view/ViewGroup;Ljava/util/List;)V
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;",
            ">;)V"
        }
    .end annotation

    .line 462
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    .line 463
    invoke-direct {p0, p1, v0}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->bindViewModel(Landroid/view/ViewGroup;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private clearAndBindViewModel(Landroid/view/ViewGroup;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;)V
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 438
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x0

    .line 439
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 440
    invoke-direct {p0, p1, p2}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->bindViewModel(Landroid/view/ViewGroup;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;)V

    return-void
.end method

.method private handleExchangeRateRefresh(Landroid/os/Bundle;)V
    .locals 1

    .line 694
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "extra_exchange_rate_action"

    .line 698
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    if-eqz p1, :cond_0

    .line 701
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->getParams()Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 702
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 704
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->startProgress()V

    .line 705
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    invoke-virtual {v0, p1, p0}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->editPaymentMethod(Ljava/util/Map;Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    :cond_0
    return-void
.end method

.method private handleIsReadyToPayRequest(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/googlepay/WalletPayMetadata;)V
    .locals 1

    .line 944
    :try_start_0
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/googlepay/WalletPayMetadata;->walletTypeMetadata:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/googlepay/GooglePayWalletMetaData;

    .line 945
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/googlepay/GooglePayWalletMetaData;->getIsReadyToPayRequest()Ljava/lang/String;

    move-result-object p1

    .line 946
    invoke-static {p1}, Lcom/google/android/gms/wallet/IsReadyToPayRequest;->fromJson(Ljava/lang/String;)Lcom/google/android/gms/wallet/IsReadyToPayRequest;

    move-result-object p1

    .line 947
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->googlePaymentsClient:Lcom/google/android/gms/wallet/PaymentsClient;

    if-nez v0, :cond_0

    .line 948
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->googlePaymentsClientProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wallet/PaymentsClient;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->googlePaymentsClient:Lcom/google/android/gms/wallet/PaymentsClient;

    .line 949
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->googlePaymentsClient:Lcom/google/android/gms/wallet/PaymentsClient;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wallet/PaymentsClient;->isReadyToPay(Lcom/google/android/gms/wallet/IsReadyToPayRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/ebay/mobile/checkout/v2/-$$Lambda$CheckoutMixedActivity$JdfHI0N88f7EWmKVsa5NkSafNS8;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/checkout/v2/-$$Lambda$CheckoutMixedActivity$JdfHI0N88f7EWmKVsa5NkSafNS8;-><init>(Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 953
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const-string v0, "IS_READY_TO_PAY_JSON_EXCEPTION"

    .line 954
    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->reportIsReadyToPayToApls(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private handleIsReadyToPayResult(Lcom/google/android/gms/tasks/Task;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    const-string v0, "Error: Google PaymentsClient#isReadyToPayRequest returned false"

    .line 969
    const-class v1, Lcom/google/android/gms/common/api/ApiException;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/tasks/Task;->getResult(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 972
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "Error: GoogleClient#isReadyToPayRequest returned null value. Unable to determine readiness"

    .line 978
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    .line 980
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    if-eqz p1, :cond_1

    .line 981
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->setSuppressGooglePay(Z)V

    :cond_1
    const-string p1, "IS_READY_TO_PAY_RETURNED_FALSE"

    .line 982
    invoke-direct {p0, p1, v0}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->reportIsReadyToPayToApls(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/gms/common/api/ApiException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 987
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/ApiException;->printStackTrace()V

    const-string v0, "IS_READY_TO_PAY_API_EXCEPTION"

    .line 988
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/ApiException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->reportIsReadyToPayToApls(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private handleThreeDs2ChallengeResult(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 929
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {v3}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getProcessorTransactionInfo()Ljava/util/Map;

    move-result-object v3

    move-object v4, p1

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->purchase(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    goto :goto_0

    .line 932
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->stopProgress()V

    :goto_0
    return-void
.end method

.method private interactiveGoogleSignIn()V
    .locals 2

    .line 1032
    sget-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->DEFAULT_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-static {p0, v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object v0

    .line 1033
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->getSignInIntent()Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x579

    invoke-virtual {p0, v0, v1}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static synthetic lambda$JdfHI0N88f7EWmKVsa5NkSafNS8(Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->handleIsReadyToPayResult(Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method public static synthetic lambda$bKe7r48DV38vQBPXM0Y7hPa9tkE(Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->handleThreeDs2ChallengeResult(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic lambda$onSessionChanged$0(Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/googlepay/WalletPayMetadata;)V
    .locals 0

    .line 907
    invoke-direct {p0, p1}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->handleIsReadyToPayRequest(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/googlepay/WalletPayMetadata;)V

    return-void
.end method

.method private launchGooglePaySheet()V
    .locals 2

    .line 791
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    if-nez v0, :cond_0

    return-void

    .line 794
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class v1, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToActionModule;

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToActionModule;

    if-nez v0, :cond_1

    return-void

    .line 800
    :cond_1
    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToActionModule;->walletPayMetadata:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/googlepay/WalletPayMetadata;

    if-eqz v0, :cond_3

    .line 803
    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/googlepay/WalletPayMetadata;->walletTypeMetadata:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/googlepay/GooglePayWalletMetaData;

    if-eqz v0, :cond_3

    .line 806
    invoke-static {}, Lcom/ebay/nautilus/domain/datamapping/DataMapperFactory;->getEbayRequestMapper()Lcom/ebay/nautilus/kernel/datamapping/DataMapper;

    move-result-object v1

    .line 807
    invoke-interface {v1, v0}, Lcom/ebay/nautilus/kernel/datamapping/DataMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 811
    invoke-static {v0}, Lcom/google/android/gms/wallet/PaymentDataRequest;->fromJson(Ljava/lang/String;)Lcom/google/android/gms/wallet/PaymentDataRequest;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 814
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->googlePaymentsClient:Lcom/google/android/gms/wallet/PaymentsClient;

    if-nez v1, :cond_2

    .line 815
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->googlePaymentsClientProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/wallet/PaymentsClient;

    iput-object v1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->googlePaymentsClient:Lcom/google/android/gms/wallet/PaymentsClient;

    .line 817
    :cond_2
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->googlePaymentsClient:Lcom/google/android/gms/wallet/PaymentsClient;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/wallet/PaymentsClient;->loadPaymentData(Lcom/google/android/gms/wallet/PaymentDataRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    const/16 v1, 0x578

    invoke-static {v0, p0, v1}, Lcom/google/android/gms/wallet/AutoResolveHelper;->resolveTask(Lcom/google/android/gms/tasks/Task;Landroid/app/Activity;I)V

    :cond_3
    return-void
.end method

.method private renderBanners()V
    .locals 4

    .line 202
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/banner/BannerModule;

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/banner/BannerModule;

    if-eqz v0, :cond_1

    .line 203
    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/banner/BannerModule;->bannerCard:Lcom/ebay/nautilus/domain/data/experience/type/banner/BannerCard;

    if-nez v1, :cond_0

    goto :goto_0

    .line 208
    :cond_0
    new-instance v1, Lcom/ebay/mobile/checkout/v2/model/BannerViewModel;

    iget-object v2, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/banner/BannerModule;->bannerCard:Lcom/ebay/nautilus/domain/data/experience/type/banner/BannerCard;

    const v3, 0x7f0d0633

    invoke-direct {v1, v2, v3}, Lcom/ebay/mobile/checkout/v2/model/BannerViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/type/banner/BannerCard;I)V

    .line 209
    iget-object v2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->bannerContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 210
    iget-object v2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->bannerContainer:Landroid/view/ViewGroup;

    invoke-direct {p0, v2, v1}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->bindViewModel(Landroid/view/ViewGroup;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;)V

    .line 211
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->trackRenderedModuleView(Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;)V

    .line 212
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->bannerContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    .line 205
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->bannerContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private reportGoogleApiAvailabilityToApls(I)V
    .locals 6

    const-string v0, "GooglePay"

    const-string v1, "GoogleApiAvailability"

    .line 998
    iget-object v2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    .line 999
    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Issue with Google Play Services"

    const-string v5, "The Google Play Services Version on this device is too old to support Google Pay, is invalid, or is missing."

    .line 998
    invoke-static/range {v0 .. v5}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->reportErrorToApls(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private reportGoogleSignInErrorToApls(Ljava/lang/String;I)V
    .locals 6

    const-string v0, "GooglePay"

    const-string/jumbo v1, "signIn"

    .line 1022
    iget-object v2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionId()Ljava/lang/String;

    move-result-object v2

    .line 1023
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Lcom/google/android/gms/common/api/CommonStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v4

    move-object v5, p1

    .line 1022
    invoke-static/range {v0 .. v5}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->reportErrorToApls(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private reportIsReadyToPayToApls(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, "GooglePay"

    const-string v1, "isReadyToPay"

    .line 1010
    iget-object v2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    .line 1011
    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    const-string v4, "isReadyToPay"

    move-object v3, p1

    move-object v5, p2

    .line 1010
    invoke-static/range {v0 .. v5}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->reportErrorToApls(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 1013
    iput-boolean p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->isReadyToPayResultReported:Z

    return-void
.end method


# virtual methods
.method public getRiskIdentAuthenticationData()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1072
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->shouldRequireRiskIdentFingerprint()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1075
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->wallClock:Lcom/ebay/nautilus/kernel/time/ClockWall;

    invoke-virtual {v2}, Lcom/ebay/nautilus/kernel/time/ClockWall;->instant()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ":0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ratepay-ebay"

    .line 1076
    invoke-static {v2}, Lcom/riskident/device/ClientSecurityModule;->initialize(Ljava/lang/String;)V

    .line 1077
    invoke-static {}, Lcom/riskident/device/ClientSecurityModule;->getInstance()Lcom/riskident/device/ClientSecurityModule;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Lcom/riskident/device/ClientSecurityModule;->execute(Landroid/app/Activity;Ljava/lang/String;)V

    :try_start_0
    const-string v2, "MD5"

    .line 1080
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 1081
    new-instance v3, Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {v3, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 1082
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v4, "uniqueToken"

    const-string v5, "%032X"

    .line 1083
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v2, v6

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v1

    :cond_1
    :goto_0
    return-object v1
.end method

.method public handleApplyIncentiveV2(Lcom/ebay/nautilus/domain/data/experience/type/base/Action;)V
    .locals 1

    .line 723
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->getParams()Ljava/util/HashMap;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 727
    :cond_0
    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;->REDEMPTION_CODE:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 728
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 730
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->startProgress()V

    .line 731
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    invoke-virtual {v0, p1, p0}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->applyIncentive(Ljava/lang/String;Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    :cond_1
    return-void
.end method

.method protected handlePayPalContingency()Z
    .locals 4

    .line 591
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getPaymentContingency()Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PaymentContingency;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 592
    iget-object v2, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PaymentContingency;->actions:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PaymentContingency;->actions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 594
    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PaymentContingency;->actions:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    if-eqz v0, :cond_1

    .line 597
    new-instance v1, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;

    iget-object v2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    invoke-direct {v1, p0, v2, v0}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;-><init>(Landroid/app/Activity;Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/data/experience/type/base/Action;)V

    iget-object v2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->xoParams:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;

    .line 598
    invoke-virtual {v1, v2}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;->setXoParams(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;)Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    .line 599
    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->isPayPalFlowInIntermediatedCheckout()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;->setPayPalFlowInIntermediatedCheckout(Z)Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;

    move-result-object v1

    .line 600
    invoke-virtual {v1}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;->buildAndHandleAction()V

    .line 601
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    sget-object v2, Lcom/ebay/nautilus/domain/data/experience/type/base/ActionType;->WEBVIEW:Lcom/ebay/nautilus/domain/data/experience/type/base/ActionType;

    iget-object v3, v0, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->type:Lcom/ebay/nautilus/domain/data/experience/type/base/ActionType;

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;->RESOLVE_CREDIT_CARD_CHALLENGE:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->name:Ljava/lang/String;

    .line 602
    invoke-static {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;->safeValueOf(Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;

    move-result-object v0

    if-ne v2, v0, :cond_0

    const/16 v0, 0x7d3

    goto :goto_0

    :cond_0
    const/16 v0, 0x7d0

    .line 601
    :goto_0
    invoke-virtual {v1, v0}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->setRequestType(I)V

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .line 613
    invoke-super {p0, p1, p2, p3}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x7d8

    if-eq p1, v0, :cond_4

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 671
    :pswitch_0
    sget-object p1, Lcom/google/android/gms/auth/api/Auth;->GoogleSignInApi:Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;

    invoke-interface {p1, p3}, Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;->getSignInResultFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 675
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->isSuccess()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 676
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->launchGooglePaySheet()V

    goto :goto_0

    .line 679
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 680
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result p2

    .line 681
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->reportGoogleSignInErrorToApls(Ljava/lang/String;I)V

    .line 683
    :goto_0
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->stopProgress()V

    goto/16 :goto_1

    :pswitch_1
    packed-switch p2, :pswitch_data_1

    goto :goto_1

    .line 652
    :pswitch_2
    invoke-static {p3}, Lcom/google/android/gms/wallet/AutoResolveHelper;->getStatusFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 655
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result p2

    const-string v0, "GooglePay"

    const-string v1, "GOOGLE_SHEET_RESULT_ERROR"

    .line 656
    iget-object p3, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    .line 657
    invoke-virtual {p3}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 658
    invoke-static {p2}, Lcom/google/android/gms/common/api/CommonStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object v5

    .line 656
    invoke-static/range {v0 .. v5}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->reportErrorToApls(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    :cond_2
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->stopProgress()V

    goto :goto_1

    .line 643
    :pswitch_3
    invoke-static {p3}, Lcom/google/android/gms/wallet/AutoResolveHelper;->getStatusFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 645
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result p1

    const/16 p2, 0x199

    if-ne p1, p2, :cond_3

    .line 646
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->interactiveGoogleSignIn()V

    .line 648
    :cond_3
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->stopProgress()V

    goto :goto_1

    .line 628
    :pswitch_4
    invoke-static {p3}, Lcom/google/android/gms/wallet/PaymentData;->getFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/wallet/PaymentData;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 631
    invoke-virtual {p1}, Lcom/google/android/gms/wallet/PaymentData;->toJson()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 634
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->startProgress()V

    .line 635
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    const/4 v1, 0x0

    new-instance p2, Lcom/ebay/payments/checkout/googlepay/GooglePayResponseMapper;

    invoke-direct {p2, p1}, Lcom/ebay/payments/checkout/googlepay/GooglePayResponseMapper;-><init>(Ljava/lang/String;)V

    .line 636
    invoke-virtual {p2}, Lcom/ebay/payments/checkout/googlepay/GooglePayResponseMapper;->performAddInstrumentRequestMapping()Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    .line 635
    invoke-virtual/range {v0 .. v5}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->purchase(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    goto :goto_1

    :cond_4
    const/4 p1, -0x1

    if-ne p2, p1, :cond_5

    if-eqz p3, :cond_5

    const-string p1, "proxUserDataBundle"

    .line 619
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->handleExchangeRateRefresh(Landroid/os/Bundle;)V

    :cond_5
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x578
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 758
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a02f2

    if-eq v0, v1, :cond_2

    const v1, 0x7f0a0cef

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 761
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->shouldPurchaseSession()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 765
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->getRiskIdentAuthenticationData()Ljava/util/Map;

    move-result-object p1

    .line 766
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->threeDs2Client:Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;

    invoke-virtual {v0, p1}, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;->addAndroidChannel(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    .line 769
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->threeDs2Client:Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;

    invoke-virtual {p1}, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;->clearChallenge()V

    .line 773
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getProcessorTransactionInfo()Ljava/util/Map;

    move-result-object v4

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->purchase(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    .line 774
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->startProgress()V

    return-void

    .line 783
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->onClick(Landroid/view/View;)V

    return-void

    .line 780
    :cond_2
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->launchGooglePaySheet()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 158
    invoke-static {p0}, Ldagger/android/AndroidInjection;->inject(Landroid/app/Activity;)V

    .line 159
    invoke-super {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 161
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->IS_READY_TO_PAY_REPORTED:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->isReadyToPayResultReported:Z

    .line 163
    :cond_0
    invoke-static {p0}, Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo$-CC;->builder(Landroidx/fragment/app/FragmentActivity;)Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo$Builder;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo$Builder;->setItemClickListener(Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;)Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo$Builder;

    move-result-object p1

    invoke-interface {p1}, Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo$Builder;->build()Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->componentBindingInfo:Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo;

    return-void
.end method

.method public onItemClick(Landroid/view/View;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;)Z
    .locals 3

    .line 469
    instance-of v0, p2, Lcom/ebay/payments/experience/PaymentsAction;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 471
    check-cast p2, Lcom/ebay/payments/experience/PaymentsAction;

    .line 472
    invoke-interface {p2}, Lcom/ebay/payments/experience/PaymentsAction;->getAction()Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    move-result-object p1

    if-nez p1, :cond_0

    return v2

    :cond_0
    const/4 p2, 0x0

    .line 477
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;->safeValueOf(Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;

    move-result-object v0

    sget-object v2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;->VIEW_CURRENCY_CONVERSION_OPTIONS:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;

    if-ne v0, v2, :cond_1

    .line 479
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "extra_exchange_rate_action"

    .line 480
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 482
    :cond_1
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    invoke-virtual {v0, p2}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->setExchangeRateBundle(Landroid/os/Bundle;)V

    .line 483
    iget-object p2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/type/base/ActionType;->WEBVIEW:Lcom/ebay/nautilus/domain/data/experience/type/base/ActionType;

    iget-object v2, p1, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->type:Lcom/ebay/nautilus/domain/data/experience/type/base/ActionType;

    if-ne v0, v2, :cond_2

    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;->RESOLVE_CREDIT_CARD_CHALLENGE:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;

    iget-object v2, p1, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->name:Ljava/lang/String;

    .line 484
    invoke-static {v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;->safeValueOf(Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;

    move-result-object v2

    if-ne v0, v2, :cond_2

    const/16 v0, 0x7d3

    goto :goto_0

    :cond_2
    const/16 v0, 0x7d0

    .line 483
    :goto_0
    invoke-virtual {p2, v0}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->setRequestType(I)V

    .line 487
    new-instance p2, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;

    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    invoke-direct {p2, p0, v0, p1}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;-><init>(Landroid/app/Activity;Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/data/experience/type/base/Action;)V

    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->xoParams:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;

    .line 488
    invoke-virtual {p2, p1}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;->setXoParams(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;)Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    .line 489
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->isPayPalFlowInIntermediatedCheckout()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;->setPayPalFlowInIntermediatedCheckout(Z)Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;

    move-result-object p1

    .line 490
    invoke-virtual {p1}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;->buildAndHandleAction()V

    return v1

    .line 494
    :cond_3
    instance-of v0, p2, Lcom/ebay/mobile/checkout/v2/model/OverlayViewModel;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    if-eqz v0, :cond_5

    .line 496
    check-cast p2, Lcom/ebay/mobile/checkout/v2/model/OverlayViewModel;

    .line 497
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a030d

    if-eq p1, v0, :cond_4

    return v2

    .line 500
    :cond_4
    new-instance p1, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;

    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    iget-object p2, p2, Lcom/ebay/mobile/checkout/v2/model/OverlayViewModel;->cancelAction:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    invoke-direct {p1, p0, v0, p2}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;-><init>(Landroid/app/Activity;Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/data/experience/type/base/Action;)V

    iget-object p2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->xoParams:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;

    .line 501
    invoke-virtual {p1, p2}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;->setXoParams(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;)Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    .line 502
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->isPayPalFlowInIntermediatedCheckout()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;->setPayPalFlowInIntermediatedCheckout(Z)Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;

    move-result-object p1

    .line 503
    invoke-virtual {p1}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;->buildAndHandleAction()V

    return v1

    :cond_5
    return v2
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    if-eqz p1, :cond_4

    .line 1039
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    if-eqz v0, :cond_4

    .line 1041
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->getExchangeRateBundle()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1043
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->startProgress()V

    .line 1044
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->getExchangeRateBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->handleExchangeRateRefresh(Landroid/os/Bundle;)V

    return-void

    :cond_0
    const-string v0, "android.intent.action.VIEW"

    .line 1048
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 1051
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 1055
    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fedlink"

    .line 1056
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1057
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->processFedLinkOnNewIntent(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const-string/jumbo p1, "sca"

    .line 1058
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1059
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->process3ds1RedirectOnNewIntent(Landroid/net/Uri;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 176
    invoke-super {p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->onResume()V

    .line 182
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->threeDs2Client:Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->threeDs2Client:Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;

    invoke-virtual {v0}, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;->isChallengeRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    invoke-static {}, Lcom/ebay/mobile/screenshare/ScreenShareUtil;->getInstance()Lcom/ebay/mobile/screenshare/ScreenShareUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/mobile/screenshare/ScreenShareUtil;->resume()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 169
    invoke-super {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 170
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->IS_READY_TO_PAY_REPORTED:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->isReadyToPayResultReported:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onSessionChanged(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;Lcom/ebay/nautilus/domain/content/Content;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;",
            ">;Z)V"
        }
    .end annotation

    .line 827
    invoke-super {p0, p1, p2, p3}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->onSessionChanged(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;Lcom/ebay/nautilus/domain/content/Content;Z)V

    .line 829
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    if-nez p1, :cond_0

    return-void

    .line 832
    :cond_0
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->isProcessorAdyen()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_8

    .line 836
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getAuthenticationParameter()Ljava/util/Map;

    move-result-object p1

    const p3, 0x7f120a38

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 837
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_1

    .line 848
    :cond_1
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->triggerThreeDs2Fingerprint()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 850
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->threeDs2Client:Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;

    .line 851
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {v3}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p1}, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;->identifyShopper(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Lcom/adyen/threeds2/AuthenticationRequestParameters;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 854
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object p2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getProcessorTransactionInfo()Ljava/util/Map;

    move-result-object v4

    iget-object p2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->threeDs2Client:Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;

    .line 855
    invoke-virtual {p2, p1}, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;->createThreeDs2Fingerprint(Lcom/adyen/threeds2/AuthenticationRequestParameters;)Ljava/util/Map;

    move-result-object v5

    move-object v6, p0

    .line 854
    invoke-virtual/range {v1 .. v6}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->purchase(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    .line 856
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->startProgress()V

    goto :goto_0

    .line 860
    :cond_2
    invoke-virtual {p0, p3}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p2}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->showDynamicAlertDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 861
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->stopProgress()V

    :goto_0
    return-void

    .line 868
    :cond_3
    iget-object p3, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {p3}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->triggerThreeDs2Challenge()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 870
    iget-object p3, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->threeDs2Client:Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;

    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ebay/mobile/checkout/v2/-$$Lambda$CheckoutMixedActivity$bKe7r48DV38vQBPXM0Y7hPa9tkE;

    invoke-direct {v1, p0}, Lcom/ebay/mobile/checkout/v2/-$$Lambda$CheckoutMixedActivity$bKe7r48DV38vQBPXM0Y7hPa9tkE;-><init>(Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;)V

    invoke-virtual {p3, p0, v0, p1, v1}, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;->challengeShopper(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client$OnAdyenCompleteListener;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 872
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->startProgress()V

    goto :goto_2

    .line 874
    :cond_4
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->stopProgress()V

    goto :goto_2

    .line 879
    :cond_5
    iget-object p3, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {p3}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->triggerThreeDs1Redirect()Z

    move-result p3

    if-eqz p3, :cond_8

    .line 881
    iget-object p3, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->threeDs2Client:Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;

    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p0, v0, p1}, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;->redirectShopper(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 882
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->startProgress()V

    goto :goto_2

    .line 884
    :cond_6
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->stopProgress()V

    goto :goto_2

    .line 839
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->threeDs2Client:Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ADYEN_AUTH_PARAM_MISSING"

    invoke-virtual {p1, v1, v2}, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;->reportFingerprintErrorToApls(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    invoke-virtual {p0, p3}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p2}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->showDynamicAlertDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 841
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->stopProgress()V

    return-void

    .line 889
    :cond_8
    :goto_2
    iget-boolean p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->isReadyToPayResultReported:Z

    if-nez p1, :cond_c

    .line 891
    iput-boolean p2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->isReadyToPayResultReported:Z

    .line 893
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->googleApiAvailability:Lcom/google/android/gms/common/GoogleApiAvailability;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result p1

    if-eqz p1, :cond_a

    const/4 p3, 0x2

    if-ne p1, p3, :cond_9

    goto :goto_3

    .line 912
    :cond_9
    invoke-direct {p0, p1}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->reportGoogleApiAvailabilityToApls(I)V

    .line 913
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    if-eqz p1, :cond_c

    .line 914
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    invoke-virtual {p1, p2}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->setSuppressGooglePay(Z)V

    goto :goto_5

    .line 897
    :cond_a
    :goto_3
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class p2, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToActionModule;

    invoke-virtual {p1, p2}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToActionModule;

    if-eqz p1, :cond_c

    .line 902
    iget-object p2, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToActionModule;->walletPayMetadata:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/googlepay/WalletPayMetadata;

    if-nez p2, :cond_b

    .line 903
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getWalletPayMetadata()Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/googlepay/WalletPayMetadata;

    move-result-object p1

    goto :goto_4

    .line 905
    :cond_b
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToActionModule;->walletPayMetadata:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/googlepay/WalletPayMetadata;

    :goto_4
    if-eqz p1, :cond_c

    .line 907
    new-instance p2, Lcom/ebay/mobile/checkout/v2/-$$Lambda$CheckoutMixedActivity$oRymDTCg2zpfMwwqdCZ4E4wPVXU;

    invoke-direct {p2, p0, p1}, Lcom/ebay/mobile/checkout/v2/-$$Lambda$CheckoutMixedActivity$oRymDTCg2zpfMwwqdCZ4E4wPVXU;-><init>(Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/googlepay/WalletPayMetadata;)V

    invoke-static {p2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    :cond_c
    :goto_5
    return-void
.end method

.method protected process3ds1RedirectOnNewIntent(Landroid/net/Uri;)V
    .locals 10

    .line 1103
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->threeDs2Client:Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;

    invoke-virtual {v0}, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;->clearChallenge()V

    .line 1104
    invoke-static {}, Lcom/ebay/mobile/screenshare/ScreenShareUtil;->getInstance()Lcom/ebay/mobile/screenshare/ScreenShareUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/mobile/screenshare/ScreenShareUtil;->resume()V

    .line 1105
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->threeDs2Client:Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;

    const-string/jumbo v1, "redirect"

    iget-object v2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "operation_completed"

    invoke-virtual {v0, v1, v2, v3}, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;->reportAdyenOperationToApls(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    iget-object v4, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getProcessorTransactionInfo()Ljava/util/Map;

    move-result-object v7

    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->threeDs2Client:Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;

    .line 1110
    invoke-virtual {v0, p1}, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;->getThreeDs1ResponseData(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v8

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v9, p0

    .line 1109
    invoke-virtual/range {v4 .. v9}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->purchase(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    .line 1111
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->startProgress()V

    return-void
.end method

.method protected renderCallToAction(Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToActionModule;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 303
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class v2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PaymentMethodsModule;

    .line 304
    invoke-virtual {v1, v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PaymentMethodsModule;

    if-eqz v1, :cond_1

    .line 307
    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PaymentMethodsModule;->getSelectedPaymentMethod()Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PaymentMethodSelectableRenderSummary;

    move-result-object v0

    :cond_1
    const v1, 0x7f0a02f2

    .line 309
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v0, :cond_2

    .line 310
    sget-object v4, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->GOOGLE_PAY:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PaymentMethodSelectableRenderSummary;->getPaymentMethodType()Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    move-result-object v0

    if-ne v4, v0, :cond_2

    .line 312
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 313
    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->purchaseButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 318
    :cond_2
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->purchaseButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 320
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToActionModule;->text:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 321
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->purchaseButton:Landroid/widget/Button;

    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToActionModule;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 323
    :cond_3
    :goto_0
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->trackRenderedModuleView(Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;)V

    return-void
.end method

.method protected renderHeaderContent()V
    .locals 7

    .line 222
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->renderBanners()V

    .line 224
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/notifications/NotificationsModule;

    .line 225
    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/notifications/NotificationsModule;

    const v1, 0x7f0a05f3

    .line 226
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 227
    iget-object v2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class v3, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/RiskContingencyModule;

    .line 228
    invoke-virtual {v2, v3}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/RiskContingencyModule;

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/notifications/NotificationsModule;->hasNotifications()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    if-eqz v2, :cond_4

    iget-object v3, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/RiskContingencyModule;->notification:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/Notification;

    if-nez v3, :cond_1

    goto :goto_2

    .line 238
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_2

    .line 241
    iget-object v4, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/notifications/NotificationsModule;->notifications:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/Notification;

    .line 243
    new-instance v6, Lcom/ebay/mobile/checkout/v2/model/NotificationViewModel;

    invoke-direct {v6, v5}, Lcom/ebay/mobile/checkout/v2/model/NotificationViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/Notification;)V

    .line 244
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 248
    :cond_2
    new-instance v4, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;

    invoke-direct {v4}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;-><init>()V

    sget v5, Lcom/ebay/mobile/payments/experience/PaymentsComponentViewType;->VERTICAL_LIST_ITEMS:I

    .line 249
    invoke-virtual {v4, v5}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;->setViewType(I)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;

    move-result-object v4

    const v5, 0x7f1306b9

    .line 250
    invoke-static {p0, v5}, Lcom/ebay/nautilus/shell/uxcomponents/widget/BaseContainerStyle;->create(Landroid/content/Context;I)Lcom/ebay/nautilus/shell/uxcomponents/widget/BaseContainerStyle;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;->setContainerStyle(Lcom/ebay/nautilus/shell/uxcomponents/widget/BaseContainerStyle;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;

    move-result-object v4

    .line 251
    invoke-virtual {v4, v3}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;->setData(Ljava/util/List;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;

    move-result-object v3

    .line 252
    invoke-virtual {v3}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;->build()Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;

    move-result-object v3

    .line 248
    invoke-direct {p0, v1, v3}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->clearAndBindViewModel(Landroid/view/ViewGroup;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;)V

    if-eqz v0, :cond_3

    .line 255
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->trackRenderedModuleView(Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;)V

    goto :goto_1

    .line 257
    :cond_3
    invoke-virtual {p0, v2}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->trackRenderedModuleView(Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;)V

    :goto_1
    const/4 v0, 0x0

    .line 258
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    :cond_4
    :goto_2
    const/16 v0, 0x8

    .line 234
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method protected renderPaymentMethod()V
    .locals 13

    .line 367
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PaymentMethodsModule;

    .line 368
    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PaymentMethodsModule;

    const v1, 0x7f0a03be

    .line 370
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/shimmer/ShimmerFrameLayout;

    const v2, 0x7f0a0b86

    .line 372
    invoke-virtual {p0, v2}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-nez v0, :cond_1

    .line 375
    invoke-virtual {v2, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 376
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->isAsyncCreate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    invoke-virtual {v1, v3}, Lcom/facebook/shimmer/ShimmerFrameLayout;->setVisibility(I)V

    .line 379
    invoke-virtual {v1}, Lcom/facebook/shimmer/ShimmerFrameLayout;->startShimmer()V

    goto :goto_0

    .line 383
    :cond_0
    invoke-virtual {v1, v5}, Lcom/facebook/shimmer/ShimmerFrameLayout;->setVisibility(I)V

    .line 384
    invoke-virtual {v1, v4}, Lcom/facebook/shimmer/ShimmerFrameLayout;->setShimmer(Lcom/facebook/shimmer/Shimmer;)Lcom/facebook/shimmer/ShimmerFrameLayout;

    :goto_0
    return-void

    .line 389
    :cond_1
    invoke-virtual {v1}, Lcom/facebook/shimmer/ShimmerFrameLayout;->stopShimmer()V

    .line 390
    invoke-virtual {v1, v4}, Lcom/facebook/shimmer/ShimmerFrameLayout;->setShimmer(Lcom/facebook/shimmer/Shimmer;)Lcom/facebook/shimmer/ShimmerFrameLayout;

    .line 391
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 392
    invoke-virtual {v1, v5}, Lcom/facebook/shimmer/ShimmerFrameLayout;->setVisibility(I)V

    .line 394
    iget-object v7, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PaymentMethodsModule;->summary:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;

    if-nez v7, :cond_2

    return-void

    .line 398
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 402
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PaymentMethodsModule;->hasSelectedPaymentMethod()Z

    move-result v3

    if-eqz v3, :cond_3

    const v3, 0x7f04043a

    const v9, 0x7f04043a

    goto :goto_1

    :cond_3
    const v3, 0x7f040435

    const v9, 0x7f040435

    .line 404
    :goto_1
    new-instance v3, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryLargeIconViewModel;

    const v8, 0x7f040434

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, v3

    invoke-direct/range {v6 .. v12}, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryLargeIconViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;IIIZZ)V

    const v4, 0x7f0a14b0

    .line 407
    iput v4, v3, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->id:I

    const/4 v4, 0x2

    .line 408
    iput v4, v3, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->actionImportantForAccessibility:I

    .line 409
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    iget-object v3, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PaymentMethodsModule;->dynamicCurrencyConversion:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;

    if-eqz v3, :cond_4

    .line 413
    new-instance v3, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;

    iget-object v5, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PaymentMethodsModule;->dynamicCurrencyConversion:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;

    const/4 v6, 0x0

    const v7, 0x7f04043a

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v4, v3

    invoke-direct/range {v4 .. v10}, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;IIIZZ)V

    const v4, 0x7f0a14af

    .line 416
    iput v4, v3, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->id:I

    .line 417
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    :cond_4
    new-instance v3, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;

    invoke-direct {v3}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;-><init>()V

    sget v4, Lcom/ebay/nautilus/shell/uxcomponents/ContainerComponentType;->UX_CONTAINER_VERTICAL_LIST_NO_PADDING:I

    .line 430
    invoke-virtual {v3, v4}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;->setViewType(I)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;

    move-result-object v3

    .line 431
    invoke-virtual {v3, v1}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;->setData(Ljava/util/List;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;

    move-result-object v1

    .line 432
    invoke-virtual {v1}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;->build()Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;

    move-result-object v1

    .line 428
    invoke-direct {p0, v2, v1}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->clearAndBindViewModel(Landroid/view/ViewGroup;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;)V

    .line 433
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->trackRenderedModuleView(Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;)V

    return-void
.end method

.method protected renderRewards()V
    .locals 10

    .line 344
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/RewardsModule;

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/RewardsModule;

    if-nez v0, :cond_0

    return-void

    .line 349
    :cond_0
    iget-object v2, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/RewardsModule;->summary:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;

    if-eqz v2, :cond_1

    const v1, 0x7f0a0e02

    .line 352
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    .line 353
    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 355
    new-instance v9, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;

    const v3, 0x7f040434

    const v4, 0x7f040434

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v7}, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;IIIZZ)V

    const v1, 0x7f0a14b1

    .line 357
    iput v1, v9, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->id:I

    const/4 v1, 0x2

    .line 358
    iput v1, v9, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->actionImportantForAccessibility:I

    .line 359
    invoke-direct {p0, v8, v9}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->clearAndBindViewModel(Landroid/view/ViewGroup;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;)V

    .line 361
    :cond_1
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->trackRenderedModuleView(Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;)V

    return-void
.end method

.method protected renderScreen()V
    .locals 2

    .line 189
    invoke-super {p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->renderScreen()V

    .line 191
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->isAsyncCreate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PaymentMethodsModule;

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    .line 192
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->hasPendingRequest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->stopProgress()V

    :cond_0
    return-void
.end method

.method protected renderScreenViews()V
    .locals 0

    .line 335
    invoke-super {p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->renderScreenViews()V

    .line 336
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->renderRewards()V

    return-void
.end method

.method protected renderShipTo()V
    .locals 10

    .line 264
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/address/ShippingAddressesModule;

    .line 265
    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/address/ShippingAddressesModule;

    const v1, 0x7f0a1036

    .line 267
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    const/16 v0, 0x8

    .line 271
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    .line 276
    :cond_0
    iget-object v3, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/address/ShippingAddressesModule;->summary:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;

    if-eqz v3, :cond_1

    .line 279
    new-instance v9, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;

    const v4, 0x7f040434

    const v5, 0x7f04043a

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;IIIZZ)V

    const v2, 0x7f0a14b2

    .line 281
    iput v2, v9, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->id:I

    const/4 v2, 0x2

    .line 282
    iput v2, v9, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->actionImportantForAccessibility:I

    .line 283
    invoke-direct {p0, v1, v9}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->clearAndBindViewModel(Landroid/view/ViewGroup;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;)V

    .line 285
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/address/ShippingAddressesModule;->hasNotifications()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 286
    iget-object v2, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/address/ShippingAddressesModule;->notifications:Ljava/util/List;

    invoke-direct {p0, v1, v2}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->addHubSummaryNotifications(Landroid/view/ViewGroup;Ljava/util/List;)V

    .line 288
    :cond_1
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->trackRenderedModuleView(Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;)V

    return-void
.end method

.method public showOverlay()V
    .locals 4

    const/4 v0, 0x0

    .line 738
    iput-boolean v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->isOverlayShown:Z

    .line 740
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    if-nez v0, :cond_0

    return-void

    .line 743
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/SplitOrderSuccess;

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/SplitOrderSuccess;

    if-eqz v0, :cond_1

    .line 746
    new-instance v1, Lcom/ebay/mobile/checkout/v2/model/OverlayViewModel;

    invoke-direct {v1, v0}, Lcom/ebay/mobile/checkout/v2/model/OverlayViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/SplitOrderSuccess;)V

    .line 747
    invoke-virtual {v1, p0}, Lcom/ebay/mobile/checkout/v2/model/OverlayViewModel;->onBind(Landroid/content/Context;)V

    .line 748
    invoke-static {v1}, Lcom/ebay/mobile/common/BindableDialogFragment;->create(Lcom/ebay/mobile/common/BindableDialogFragment$BindableDialogViewModel;)Lcom/ebay/mobile/common/BindableDialogFragment;

    move-result-object v1

    .line 749
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/ebay/mobile/common/BindableDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 750
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->trackRenderedModuleView(Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;)V

    const/4 v0, 0x1

    .line 751
    iput-boolean v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->isOverlayShown:Z

    :cond_1
    return-void
.end method

.method public validateXoSession(Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;)Z
    .locals 5

    const v0, 0x7f120a38

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_6

    .line 523
    iget-object v4, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->modules:Ljava/util/Map;

    if-nez v4, :cond_0

    goto :goto_2

    .line 532
    :cond_0
    iget-object v4, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->errorContainer:Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    .line 533
    iget-object v4, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->errorContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 536
    :cond_1
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->hasErrors()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->hasFatalError()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 538
    const-class v4, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/notifications/NotificationsModule;

    .line 539
    invoke-virtual {p1, v4}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/notifications/NotificationsModule;

    if-eqz p1, :cond_2

    .line 544
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/notifications/NotificationsModule;->hasNotifications()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 546
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/notifications/NotificationsModule;->notifications:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/Notification;

    .line 547
    new-instance v0, Lcom/ebay/mobile/checkout/v2/model/NotificationViewModel;

    invoke-direct {v0, p1, v2}, Lcom/ebay/mobile/checkout/v2/model/NotificationViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/Notification;Z)V

    .line 548
    invoke-virtual {v0, p0}, Lcom/ebay/mobile/checkout/v2/model/NotificationViewModel;->onBind(Landroid/content/Context;)V

    .line 549
    iget-object p1, v0, Lcom/ebay/mobile/checkout/v2/model/NotificationViewModel;->title:Ljava/lang/CharSequence;

    .line 550
    iget-object v0, v0, Lcom/ebay/mobile/checkout/v2/model/NotificationViewModel;->message:Ljava/lang/CharSequence;

    goto :goto_0

    .line 555
    :cond_2
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object p1, v3

    :goto_0
    if-eqz p1, :cond_3

    .line 558
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    move-object p1, v3

    :goto_1
    if-eqz v0, :cond_4

    .line 559
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 557
    :cond_4
    invoke-virtual {p0, p1, v3, v1}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->showDynamicAlertDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    return v2

    :cond_5
    return v1

    .line 525
    :cond_6
    :goto_2
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 526
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->stopProgress()V

    .line 527
    invoke-virtual {p0, v3, p1, v1}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->showDynamicAlertDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    return v2
.end method
