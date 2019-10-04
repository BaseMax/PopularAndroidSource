.class public Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;
.super Ljava/lang/Object;
.source "CheckoutActionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field public static final PROCESSOR_SESSION_ID:Ljava/lang/String; = "processorSessionId"


# instance fields
.field private final action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

.field private final activity:Landroid/app/Activity;

.field private bundle:Landroid/os/Bundle;

.field private final ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

.field private fragment:Landroidx/fragment/app/Fragment;

.field private isPayPalFlowInIntermediatedCheckout:Z

.field private xoParams:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/data/experience/type/base/Action;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/kernel/content/EbayContext;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/ebay/nautilus/domain/data/experience/type/base/Action;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 493
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;->activity:Landroid/app/Activity;

    .line 494
    iput-object p2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    .line 495
    iput-object p3, p0, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/data/experience/type/base/Action;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/kernel/content/EbayContext;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/ebay/nautilus/domain/data/experience/type/base/Action;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 500
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;-><init>(Landroid/app/Activity;Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/data/experience/type/base/Action;)V

    .line 501
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;->fragment:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method private build()Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 528
    new-instance v0, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler;-><init>(Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$1;)V

    return-object v0
.end method

.method private static shouldLaunchChromeCustomTabsForPayPalFlowInIntermediatedCheckout(ZLcom/ebay/nautilus/domain/data/experience/type/base/Action;)Z
    .locals 1
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/type/base/Action;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p0, :cond_0

    .line 565
    iget-object p0, p1, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->name:Ljava/lang/String;

    .line 566
    invoke-static {p0}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;->safeValueOf(Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;

    move-result-object p0

    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;->LOGIN_PAYPAL:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;

    if-ne p0, v0, :cond_0

    iget-object p0, p1, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->url:Ljava/lang/String;

    .line 567
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/ebay/nautilus/domain/data/experience/type/base/ActionType;->WEBVIEW:Lcom/ebay/nautilus/domain/data/experience/type/base/ActionType;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->type:Lcom/ebay/nautilus/domain/data/experience/type/base/ActionType;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public buildAndHandleAction()V
    .locals 9

    .line 537
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;->activity:Landroid/app/Activity;

    const-string v1, "baseActivity cannot be null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 539
    iget-boolean v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;->isPayPalFlowInIntermediatedCheckout:Z

    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    invoke-static {v0, v1}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;->shouldLaunchChromeCustomTabsForPayPalFlowInIntermediatedCheckout(ZLcom/ebay/nautilus/domain/data/experience/type/base/Action;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 542
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->getParams()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "processorSessionId"

    .line 543
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "processorSessionId"

    .line 545
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 546
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 547
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;->activity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/ebay/mobile/payments/service/MagnesService;->runMagnesWithPayPalOrderId(Landroid/app/Activity;Ljava/lang/String;)V

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->url:Ljava/lang/String;

    invoke-static {v1}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler;->access$300(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ebay/mobile/util/CustomTabsUtil;->launchCustomTabs(Landroid/content/Context;Landroid/net/Uri;)V

    return-void

    .line 553
    :cond_1
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;->bundle:Landroid/os/Bundle;

    if-nez v0, :cond_2

    .line 554
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;->bundle:Landroid/os/Bundle;

    .line 556
    :cond_2
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;->xoParams:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;

    if-eqz v0, :cond_3

    .line 557
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;->bundle:Landroid/os/Bundle;

    const-string v1, "extra_checkout_params"

    iget-object v2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;->xoParams:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 559
    :cond_3
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;->build()Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    iget-object v5, p0, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    iget-object v6, p0, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;->bundle:Landroid/os/Bundle;

    iget-object v7, p0, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;->activity:Landroid/app/Activity;

    iget-object v8, p0, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual/range {v3 .. v8}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler;->handleAction(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/data/experience/type/base/Action;Landroid/os/Bundle;Landroid/app/Activity;Landroidx/fragment/app/Fragment;)Z

    return-void
.end method

.method public setBundle(Landroid/os/Bundle;)Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 514
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;->bundle:Landroid/os/Bundle;

    return-object p0
.end method

.method public setPayPalFlowInIntermediatedCheckout(Z)Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 521
    iput-boolean p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;->isPayPalFlowInIntermediatedCheckout:Z

    return-object p0
.end method

.method public setXoParams(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;)Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;
    .locals 0
    .param p1    # Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 507
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;->xoParams:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;

    return-object p0
.end method
