.class public Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;
.super Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;
.source "CheckoutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ebay/payments/checkout/IncentivesHandler;


# static fields
.field public static final ACCESSIBILITY_FOCUS_DELAY_SHIPPING_METHOD:J = 0x3e8L
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final EXTRA_CHANGE_SHIPPING_METHOD:Ljava/lang/String; = "extra_change_shipping_service"

.field public static final EXTRA_LAST_CLICK_TIME:Ljava/lang/String; = "extra_last_click_time"

.field public static final EXTRA_LINEITEM_ID:Ljava/lang/String; = "lineItemId"

.field public static final EXTRA_LOGISTICS_ID:Ljava/lang/String; = "logisticsId"

.field public static final EXTRA_LOGISTICS_SUB_TYPE:Ljava/lang/String; = "subType"

.field public static final EXTRA_LOGISTICS_TYPE:Ljava/lang/String; = "logisticsType"

.field public static final EXTRA_PERSONAL_ACCOUNT_NUMBER:Ljava/lang/String; = "extra_personal_account_number"

.field public static final EXTRA_PICKUP_PROGRAM_ID:Ljava/lang/String; = "extra_pickup_program_id"

.field public static final EXTRA_PROVIDER_ID:Ljava/lang/String; = "extra_provider_id"

.field public static final EXTRA_SHIPPING_SERVICE_ID:Ljava/lang/String; = "extra_shipping_service_id"

.field public static final REQUEST_ADDRESS_CHOICE:I = 0x3ea

.field public static final REQUEST_INCENTIVES:I = 0x3ec

.field public static skipBuyToThankYouPage:Z = false

.field public static skipBuyToThankYouPageV2:Z = false


# instance fields
.field private clickTimer:Lcom/ebay/common/util/ClickTimer;

.field private hasShippingMethodChanged:Z

.field protected isOverlayShown:Z

.field private lineItemId:Ljava/lang/String;

.field protected purchaseButton:Landroid/widget/Button;

.field private result:Lcom/ebay/mobile/activities/ActivityResult;

.field private selectedAddressId:Ljava/lang/String;

.field private selectedPostalCode:Ljava/lang/String;

.field private store:Lcom/ebay/common/model/inventory/StoreAvailability;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 172
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;)Lcom/ebay/common/util/ClickTimer;
    .locals 0

    .line 172
    iget-object p0, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->clickTimer:Lcom/ebay/common/util/ClickTimer;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;Ljava/lang/Object;Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;Ljava/lang/String;)V
    .locals 0

    .line 172
    invoke-direct {p0, p1, p2, p3}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->handleWebLinkAction(Ljava/lang/Object;Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;Ljava/lang/String;)V

    return-void
.end method

.method private appendPaypalCreditMessage(Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;Landroid/view/ViewGroup;)V
    .locals 3

    .line 2772
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d00e7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0a03d8

    .line 2773
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0a03d9

    .line 2775
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2776
    invoke-static {p0, p1}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2777
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private appendSummaryItem(Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryItem;Landroid/view/ViewGroup;)V
    .locals 3

    .line 2761
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d00e7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0a03d8

    .line 2762
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2763
    iget-object v2, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryItem;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a03d9

    .line 2765
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2766
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryItem;->amount:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplayValue;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplayValue;->textSpans:Lcom/ebay/nautilus/domain/data/experience/type/base/StyledText;

    invoke-static {p0, p1}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/StyledText;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2767
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private cancelCheckout()V
    .locals 1

    const-string v0, "CheckoutCanceled"

    .line 836
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->sendCheckoutPageImpression(Ljava/lang/String;)V

    .line 837
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    if-eqz v0, :cond_0

    .line 838
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->flush()V

    :cond_0
    const/4 v0, 0x3

    .line 839
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->setResult(I)V

    .line 840
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->finish()V

    return-void
.end method

.method private changeShippingMethod(Landroid/content/Intent;)V
    .locals 12
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 788
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    if-nez v0, :cond_0

    const p1, 0x7f12077c

    .line 790
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f120a38

    .line 791
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 790
    invoke-virtual {p0, p1, v0, v1}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->showDynamicAlertDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_0
    const-string v0, "extra_change_shipping_service"

    const/4 v1, 0x0

    .line 795
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->hasShippingMethodChanged:Z

    const-string v0, "lineItemId"

    .line 797
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->lineItemId:Ljava/lang/String;

    const-string v0, "logisticsType"

    .line 798
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;

    const-string v1, "logisticsId"

    .line 799
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v1, "subType"

    .line 801
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsSubType;

    const-string v2, "extra_provider_id"

    .line 802
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v2, "extra_shipping_service_id"

    .line 803
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v2, "extra_pickup_program_id"

    .line 804
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v2, "extra_personal_account_number"

    .line 805
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 808
    sget-object v2, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsSubType;->HYDRA:Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsSubType;

    const/4 v3, 0x0

    if-ne v2, v1, :cond_1

    const-string v1, "extra_selected_store_id"

    .line 809
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v6, p1

    goto :goto_1

    :cond_1
    const-string v1, "inventory_info"

    .line 813
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/ebay/common/model/inventory/InventoryInfo;

    if-eqz p1, :cond_2

    .line 816
    invoke-virtual {p1}, Lcom/ebay/common/model/inventory/InventoryInfo;->getSelectedStore()Lcom/ebay/common/model/inventory/StoreAvailability;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->store:Lcom/ebay/common/model/inventory/StoreAvailability;

    .line 817
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->store:Lcom/ebay/common/model/inventory/StoreAvailability;

    if-eqz p1, :cond_2

    .line 818
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->store:Lcom/ebay/common/model/inventory/StoreAvailability;

    iget-object p1, p1, Lcom/ebay/common/model/inventory/StoreAvailability;->locationId:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v6, v3

    :goto_1
    if-eqz v0, :cond_3

    .line 824
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;->name()Ljava/lang/String;

    move-result-object p1

    move-object v5, p1

    goto :goto_2

    :cond_3
    move-object v5, v3

    .line 826
    :goto_2
    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    iget-object v3, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->lineItemId:Ljava/lang/String;

    move-object v11, p0

    invoke-virtual/range {v2 .. v11}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->changeShippingMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    .line 828
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->startProgress()V

    return-void
.end method

.method public static findViewWithTag(Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/view/View;
    .locals 5
    .param p0    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1340
    invoke-static {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->isViewShippingLink(Landroid/view/View;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1344
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_3

    .line 1346
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1347
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    .line 1349
    invoke-static {v3, p1}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->isViewShippingLink(Landroid/view/View;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v3

    goto :goto_1

    .line 1356
    :cond_1
    check-cast v3, Landroid/view/ViewGroup;

    invoke-static {v3, p1}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->findViewWithTag(Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method

.method private getTrackingIntentForPurchaseComplete()Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    .line 1011
    invoke-direct {p0, v0, v0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->handlePurchaseCompleteAction(Lcom/ebay/nautilus/domain/data/experience/checkout/success/SuccessModule;Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutServiceMeta;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private handleMessageToSellerAction(Lcom/ebay/nautilus/domain/data/experience/checkout/details/SellerBucket;)V
    .locals 3

    .line 970
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "seller_id"

    .line 971
    iget-object v2, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/SellerBucket;->sellerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 972
    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/SellerBucket;->seller:Lcom/ebay/nautilus/domain/data/experience/checkout/details/Seller;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/Seller;->sellerMessage:Lcom/ebay/nautilus/domain/data/experience/checkout/details/SellerMessage;

    if-eqz v1, :cond_0

    const-string v1, "message_to_seller"

    .line 974
    iget-object v2, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/SellerBucket;->seller:Lcom/ebay/nautilus/domain/data/experience/checkout/details/Seller;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/details/Seller;->sellerMessage:Lcom/ebay/nautilus/domain/data/experience/checkout/details/SellerMessage;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/details/SellerMessage;->sellerNote:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "characters_remaining"

    .line 976
    iget-object v2, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/SellerBucket;->seller:Lcom/ebay/nautilus/domain/data/experience/checkout/details/Seller;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/details/Seller;->sellerMessage:Lcom/ebay/nautilus/domain/data/experience/checkout/details/SellerMessage;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/details/SellerMessage;->charactersRemaining:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 979
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/SellerBucket;->seller:Lcom/ebay/nautilus/domain/data/experience/checkout/details/Seller;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/Seller;->sellerMessage:Lcom/ebay/nautilus/domain/data/experience/checkout/details/SellerMessage;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/SellerMessage;->actions:Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 982
    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;->SUBMIT_SELLER_MESSAGE:Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    if-eqz p1, :cond_0

    .line 983
    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;->attributes:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-boolean v1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;->enabled:Z

    if-eqz v1, :cond_0

    .line 986
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;->attributes:Ljava/util/Map;

    const-string v1, "maxSellerMessageLength"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    :try_start_0
    const-string v1, "max_seller_message_length"

    .line 992
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 991
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/16 p1, 0x3ed

    .line 1003
    invoke-virtual {p0, v0, p1}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private handlePaymentMethodAction()V
    .locals 3

    .line 853
    const-class v0, Lcom/ebay/mobile/checkout/xoneor/PaymentMethodActivity;

    .line 856
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getPaymentMethodWithContingency()Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;

    move-result-object v1

    const/16 v2, 0x3e8

    if-eqz v1, :cond_0

    .line 859
    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->getPaymentInstrumentWithContingency()Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 862
    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;->hasEbayMediumRiskContingency()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 864
    const-class v0, Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity;

    const/16 v1, 0x3ef

    const/16 v2, 0x3ef

    goto :goto_0

    .line 869
    :cond_0
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->isPaymentMethodSelected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 871
    const-class v0, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;

    const/16 v2, 0x3e9

    .line 875
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->createCheckoutIntent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private handlePurchaseCompleteAction(Lcom/ebay/nautilus/domain/data/experience/checkout/success/SuccessModule;Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutServiceMeta;)Landroid/content/Intent;
    .locals 8
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/checkout/success/SuccessModule;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutServiceMeta;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1026
    :goto_0
    invoke-static {p1, p2}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->launchSuccessWithOrderDetails(Lcom/ebay/nautilus/domain/data/experience/checkout/success/SuccessModule;Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutServiceMeta;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-class p2, Lcom/ebay/mobile/checkout/xoneor/success/CheckoutSuccessActivity;

    goto :goto_1

    :cond_1
    const-class p2, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;

    .line 1028
    :goto_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1029
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->trackCheckoutTransactions()Ljava/util/Map;

    move-result-object p2

    const-string/jumbo v4, "tracking_key_values"

    .line 1030
    check-cast p2, Ljava/io/Serializable;

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1032
    iget-object p2, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class v4, Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;

    invoke-virtual {p2, v4}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object p2

    check-cast p2, Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;

    if-eqz p2, :cond_2

    .line 1034
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;->hasActiveDonation()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "charity_id"

    .line 1036
    iget-object v5, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;->charityId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "charity_name"

    .line 1037
    iget-object p2, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1038
    iget-object p2, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class v4, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryModule;

    invoke-virtual {p2, v4}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object p2

    check-cast p2, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryModule;

    if-eqz p2, :cond_2

    .line 1041
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryModule;->getDonationAmount()Lcom/ebay/nautilus/domain/data/cos/base/Amount;

    move-result-object p2

    if-eqz p2, :cond_2

    const-string v4, "charity_donation"

    .line 1043
    iget-wide v5, p2, Lcom/ebay/nautilus/domain/data/cos/base/Amount;->value:D

    .line 1044
    invoke-static {v5, v6}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p2

    .line 1043
    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1048
    :cond_2
    iget-object p2, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class v4, Lcom/ebay/nautilus/domain/data/experience/checkout/survey/SurveyModule;

    invoke-virtual {p2, v4}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object p2

    check-cast p2, Lcom/ebay/nautilus/domain/data/experience/checkout/survey/SurveyModule;

    if-eqz p2, :cond_3

    .line 1050
    iget-object v4, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/survey/SurveyModule;->surveyKey:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/survey/SurveyModule;->surveyContext:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/google/android/gms/common/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/survey/SurveyModule;->moduleTitle:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/survey/SurveyModule;->moduleLinkText:Ljava/lang/String;

    if-eqz v4, :cond_3

    const-string/jumbo v4, "survey_module_title"

    .line 1052
    iget-object v5, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/survey/SurveyModule;->moduleTitle:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "survey_module_link_title"

    .line 1053
    iget-object v5, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/survey/SurveyModule;->moduleLinkText:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "survey_key"

    .line 1054
    iget-object v5, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/survey/SurveyModule;->surveyKey:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "context_list"

    .line 1055
    iget-object p2, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/survey/SurveyModule;->surveyContext:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :cond_3
    const-string p2, "not_all_items_purchased"

    .line 1058
    invoke-virtual {v3, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "bopis_in_cart"

    .line 1059
    invoke-virtual {v3, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "ebn_in_cart"

    .line 1060
    invoke-virtual {v3, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo p2, "shopping_cart_checkout"

    .line 1062
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "shopping_cart_id"

    const-wide/16 v6, -0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    .line 1061
    :goto_2
    invoke-virtual {v3, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "MimsScope"

    .line 1063
    sget-object v0, Lcom/ebay/nautilus/domain/analytics/mts/MimsUtil;->PROVIDER_ID_PAYPAL:Ljava/lang/String;

    .line 1064
    invoke-static {v0}, Lcom/ebay/nautilus/domain/analytics/mts/MimsUtil;->useProviderScoped(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 1063
    invoke-virtual {v3, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p2, "purchased_item_ids"

    .line 1065
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getItemIds()[J

    move-result-object v0

    invoke-virtual {v3, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    const-string p2, "checkoutable_items_in_cart"

    .line 1067
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "checkoutable_items_in_cart"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1066
    invoke-virtual {v3, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz v2, :cond_6

    .line 1071
    invoke-static {}, Lcom/ebay/nautilus/domain/datamapping/DataMapperFactory;->getCheckoutExperienceIntentMapper()Lcom/ebay/nautilus/kernel/datamapping/IntentMapper;

    move-result-object p2

    invoke-interface {p2, v3, p1}, Lcom/ebay/nautilus/kernel/datamapping/IntentMapper;->writeIntentJson(Landroid/content/Intent;Ljava/lang/Object;)V

    .line 1072
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->trackRenderedModuleView(Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;)V

    .line 1073
    invoke-virtual {p0, v3}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->startActivity(Landroid/content/Intent;)V

    .line 1076
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    if-eqz p1, :cond_5

    .line 1077
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->flush()V

    .line 1078
    :cond_5
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->finish()V

    const/4 p1, 0x0

    return-object p1

    :cond_6
    return-object v3
.end method

.method private handleShippingMethodAction(Ljava/lang/String;Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;)V
    .locals 2

    .line 880
    const-class v0, Lcom/ebay/mobile/checkout/xoneor/ShippingMethodActivity;

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->createCheckoutIntent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "lineItemId"

    .line 881
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "logisticsType"

    .line 882
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;->ordinal()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 p1, 0x3eb

    .line 883
    invoke-virtual {p0, v0, p1}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private handleWebLinkAction(Ljava/lang/Object;Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1086
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->handleWebLinkAction(Ljava/lang/Object;Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method private handleWebLinkAction(Ljava/lang/Object;Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 1091
    invoke-virtual {p0, p2}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->trackExperienceAction(Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;)V

    .line 1094
    invoke-direct {p0, p1, p3, p4}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->startWebViewFromAction(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method private initInventoryInfo(Ljava/lang/String;Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;)Lcom/ebay/common/model/inventory/InventoryInfo;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 2826
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    return-object v4

    .line 2828
    :cond_0
    sget-object v3, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;->IN_STORE_PICKUP:Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;

    if-eq v2, v3, :cond_1

    sget-object v3, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;->PICKUP_AND_DROPOFF:Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;

    if-eq v2, v3, :cond_1

    return-object v4

    .line 2831
    :cond_1
    iget-object v3, v0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {v3, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getLineItem(Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;

    move-result-object v3

    .line 2832
    iget-object v5, v0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class v6, Lcom/ebay/nautilus/domain/data/experience/checkout/details/CartDetailsModule;

    invoke-virtual {v5, v6}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object v5

    check-cast v5, Lcom/ebay/nautilus/domain/data/experience/checkout/details/CartDetailsModule;

    if-eqz v5, :cond_2

    .line 2833
    invoke-virtual {v5, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/details/CartDetailsModule;->getSellerBucketForLineItem(Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/experience/checkout/details/SellerBucket;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v4

    :goto_0
    if-eqz v3, :cond_3

    .line 2838
    iget-object v5, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;->logistics:Lcom/ebay/nautilus/domain/data/experience/checkout/details/Logistics;

    if-eqz v5, :cond_3

    sget-object v5, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;->PICKUP_AND_DROPOFF:Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;

    if-ne v2, v5, :cond_3

    .line 2840
    sget-object v2, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;->PICKUP_AND_DROPOFF:Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;

    invoke-virtual {v3, v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;->getLogisticsType(Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;)Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsList;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 2843
    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsList;->getFirstLogisticsPlan()Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 2846
    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;->deliveryEstimate:Lcom/ebay/nautilus/domain/data/experience/checkout/details/DeliveryEstimate;

    if-eqz v2, :cond_3

    .line 2847
    iget-object v5, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/details/DeliveryEstimate;->estimatedDeliveryDateMin:Lcom/ebay/nautilus/domain/data/cos/base/DateTime;

    if-eqz v5, :cond_3

    .line 2848
    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/details/DeliveryEstimate;->estimatedDeliveryDateMin:Lcom/ebay/nautilus/domain/data/cos/base/DateTime;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/cos/base/DateTime;->value:Ljava/util/Date;

    goto :goto_1

    :cond_3
    move-object v2, v4

    .line 2855
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v5

    iget-object v6, v0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->selectedPostalCode:Ljava/lang/String;

    invoke-static {v5, v6, v4}, Lcom/ebay/mobile/util/LocationUtil;->getAvailableLocation(Lcom/ebay/nautilus/kernel/content/EbayContext;Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$PhysicalLocation;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 2857
    invoke-virtual {v5}, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$PhysicalLocation;->getLatitude()Ljava/lang/Double;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$PhysicalLocation;->getLongitude()Ljava/lang/Double;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 2858
    new-instance v6, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v5}, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$PhysicalLocation;->getLatitude()Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-virtual {v5}, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$PhysicalLocation;->getLongitude()Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    move-object v13, v6

    goto :goto_2

    :cond_4
    move-object v13, v4

    .line 2861
    :goto_2
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v6

    .line 2862
    new-instance v7, Lcom/ebay/common/model/inventory/InventoryInfo;

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$PhysicalLocation;->getPostalCode()Ljava/lang/String;

    move-result-object v5

    move-object v12, v5

    goto :goto_3

    :cond_5
    move-object v12, v4

    :goto_3
    sget-object v5, Lcom/ebay/mobile/dcs/DcsInteger;->BopisGeocoderBiasBoxSize:Lcom/ebay/mobile/dcs/DcsInteger;

    .line 2864
    invoke-interface {v6, v5}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropInteger;)I

    move-result v14

    const/4 v15, 0x0

    if-eqz v13, :cond_6

    sget-object v5, Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;->LATLNG:Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;

    :goto_4
    move-object/from16 v16, v5

    goto :goto_5

    :cond_6
    sget-object v5, Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;->POSTAL_CODE:Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;

    goto :goto_4

    :goto_5
    if-eqz v1, :cond_7

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/SellerBucket;->sellerId:Ljava/lang/String;

    move-object/from16 v17, v1

    goto :goto_6

    :cond_7
    move-object/from16 v17, v4

    :goto_6
    if-eqz v3, :cond_8

    iget-object v4, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;->sellerProductId:Ljava/lang/String;

    :cond_8
    move-object/from16 v18, v4

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v11, v7

    invoke-direct/range {v11 .. v21}, Lcom/ebay/common/model/inventory/InventoryInfo;-><init>(Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;ILjava/util/List;Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/common/model/cart/LogisticsPlanType;Ljava/util/Date;Ljava/lang/String;)V

    .line 2868
    iget-object v1, v0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->selectedPostalCode:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 2869
    iget-object v1, v0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->selectedPostalCode:Ljava/lang/String;

    invoke-virtual {v7, v1}, Lcom/ebay/common/model/inventory/InventoryInfo;->setSearchRefinedPostalCode(Ljava/lang/String;)V

    :cond_9
    if-eqz v2, :cond_a

    .line 2871
    invoke-virtual {v7, v2}, Lcom/ebay/common/model/inventory/InventoryInfo;->setEstimatedDeliveryDate(Ljava/util/Date;)V

    :cond_a
    return-object v7
.end method

.method public static isViewShippingLink(Landroid/view/View;Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1368
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a08da

    if-ne v1, v0, :cond_0

    const v0, 0x7f0a1249

    .line 1369
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$focusOnDeliveryMethodForAccessibility$0(Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x8

    .line 1313
    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    const/4 v0, 0x0

    .line 1314
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method

.method static synthetic lambda$focusOnDeliveryMethodForAccessibility$1(Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x8

    .line 1320
    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void
.end method

.method public static synthetic lambda$renderBranding$3(Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;Landroid/view/View;)V
    .locals 2

    .line 1724
    sget-object p2, Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;->ENROLL_LOYALTY_LOGISTICS_PLAN:Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;

    invoke-virtual {p1, p2}, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;->getWebAction(Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;)Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem$WebAction;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1726
    iget-object p2, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem$WebAction;->url:Ljava/lang/String;

    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem$WebAction;->cta:Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem$WebAction;->title:Ljava/lang/String;

    const/16 v1, 0x3f4

    .line 1727
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1726
    invoke-direct {p0, p2, v0, p1, v1}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->handleWebLinkAction(Ljava/lang/Object;Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$renderLineItem$2(Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;Lcom/ebay/nautilus/domain/data/experience/checkout/InputField;ILcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p2    # I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 p6, 0x0

    const/4 v0, 0x6

    if-ne p5, v0, :cond_1

    .line 1634
    :try_start_0
    invoke-virtual {p4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p5

    invoke-interface {p5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1638
    :catch_0
    iget-object p5, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/InputField;->value:Ljava/lang/Object;

    check-cast p5, Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    :goto_0
    const/4 v0, 0x1

    if-le p5, p2, :cond_0

    .line 1644
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p5, 0x7f120e98

    new-array v1, v0, [Ljava/lang/Object;

    .line 1645
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p6

    invoke-virtual {p3, p5, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1644
    invoke-static {p0, p2}, Lcom/ebay/common/view/util/DialogManager;->createAlertDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object p2

    .line 1646
    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    .line 1647
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    const-string p3, "%d"

    new-array p5, v0, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/InputField;->value:Ljava/lang/Object;

    aput-object p1, p5, p6

    invoke-static {p2, p3, p5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return v0

    .line 1652
    :cond_0
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/InputField;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    .line 1653
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p4, p1, v0, p2}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->validateQuantityUpdate(Landroid/widget/TextView;III)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    const p2, 0x1020002

    .line 1656
    invoke-virtual {p0, p2}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/ebay/mobile/util/Util;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)V

    .line 1657
    iget-object p2, p3, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;->lineItemId:Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->handleChangeLineItemQuantity(Ljava/lang/String;I)V

    return v0

    :cond_1
    return p6
.end method

.method public static synthetic lambda$renderUserAgreements$4(Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 2627
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->purchaseButton:Landroid/widget/Button;

    iget-object p2, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->isReadyToPurchase()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->userAgreementIsAccepted()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method private static launchSuccessWithOrderDetails(Lcom/ebay/nautilus/domain/data/experience/checkout/success/SuccessModule;Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutServiceMeta;)Z
    .locals 2
    .param p0    # Lcom/ebay/nautilus/domain/data/experience/checkout/success/SuccessModule;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutServiceMeta;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2955
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v0

    sget-object v1, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Payments$B;->checkoutSuccessWithOrderDetails:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Payments$B;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 2956
    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/data/experience/checkout/success/SuccessModule;->hasSuccessOrdersInfo()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    iget-object p0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutServiceMeta;->xoServiceMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutServiceMetaExtension;

    if-eqz p0, :cond_0

    sget-object p0, Lcom/ebay/nautilus/domain/data/experience/checkout/session/PageLayout;->ORDER_DETAILS_SUCCESS_EXPERIENCE:Lcom/ebay/nautilus/domain/data/experience/checkout/session/PageLayout;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutServiceMeta;->xoServiceMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutServiceMetaExtension;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutServiceMetaExtension;->pageLayout:Lcom/ebay/nautilus/domain/data/experience/checkout/session/PageLayout;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private refreshBranding()V
    .locals 4

    .line 759
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class v1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/CartDetailsModule;

    .line 760
    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/details/CartDetailsModule;

    if-eqz v0, :cond_1

    .line 761
    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/details/CartDetailsModule;->sellerBuckets:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/details/CartDetailsModule;->sellerBuckets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 763
    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/details/CartDetailsModule;->sellerBuckets:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/details/SellerBucket;

    .line 764
    iget-object v2, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/details/SellerBucket;->lineItems:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/details/SellerBucket;->lineItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 766
    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/details/SellerBucket;->lineItems:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;

    if-eqz v0, :cond_1

    .line 767
    iget-object v2, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;->listingSummaries:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;->listingSummaries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 769
    iget-object v2, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;->listingSummaries:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/type/listing/ListingSummary;

    if-eqz v1, :cond_1

    .line 770
    iget-object v2, v1, Lcom/ebay/nautilus/domain/data/experience/type/listing/ListingSummary;->xoListingExtension:Lcom/ebay/nautilus/domain/data/experience/checkout/details/XoListingExtension;

    if-eqz v2, :cond_1

    .line 772
    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/type/listing/ListingSummary;->xoListingExtension:Lcom/ebay/nautilus/domain/data/experience/checkout/details/XoListingExtension;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/XoListingExtension;->selectedQuantity:Lcom/ebay/nautilus/domain/data/experience/checkout/InputField;

    .line 773
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->startProgress()V

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 775
    iget-object v3, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;->lineItemId:Ljava/lang/String;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/InputField;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v0, v1, v2, p0}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->changeLineItemQuantity(Ljava/lang/String;ILjava/lang/Boolean;Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    goto :goto_0

    .line 778
    :cond_0
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;->lineItemId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3, p0}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->changeLineItemQuantity(Ljava/lang/String;ILjava/lang/Boolean;Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private renderBranding(Landroid/view/ViewGroup;Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;)V
    .locals 4

    .line 1721
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->inflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    const v2, 0x7f0d00dc

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1722
    new-instance v2, Lcom/ebay/mobile/checkout/xoneor/-$$Lambda$CheckoutActivity$DQc4OnB1lDlYCOYuypviQZJtLk0;

    invoke-direct {v2, p0, p2}, Lcom/ebay/mobile/checkout/xoneor/-$$Lambda$CheckoutActivity$DQc4OnB1lDlYCOYuypviQZJtLk0;-><init>(Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a01f7

    .line 1729
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1730
    iget-object v3, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;->brandingText:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    invoke-static {v2, v3}, Lcom/ebay/mobile/util/ExperienceUtil;->updateFromTextualDisplay(Landroid/widget/TextView;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)V

    .line 1731
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1733
    iget-object v1, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;->lineItemId:Ljava/lang/String;

    const v2, 0x7f0a03a6

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    const v1, 0x7f0a01f5

    .line 1734
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1735
    iget-object v2, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;->brandingIcon:Lcom/ebay/nautilus/domain/data/experience/type/base/Icon;

    if-eqz v2, :cond_0

    .line 1736
    iget-object p2, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;->brandingIcon:Lcom/ebay/nautilus/domain/data/experience/type/base/Icon;

    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/data/experience/type/base/Icon;->getAccessibilityText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1737
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private renderCartDetails(Lcom/ebay/nautilus/domain/data/experience/checkout/details/CartDetailsModule;)V
    .locals 9

    if-eqz p1, :cond_6

    .line 1445
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/CartDetailsModule;->sellerBuckets:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/CartDetailsModule;->sellerBuckets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_2

    .line 1448
    :cond_0
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/CartDetailsModule;->sellerBuckets:Ljava/util/List;

    const v1, 0x7f0a0f7d

    .line 1449
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1450
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1452
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/domain/data/experience/checkout/details/SellerBucket;

    .line 1454
    iget-object v3, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/details/SellerBucket;->lineItems:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/details/SellerBucket;->lineItems:Ljava/util/List;

    .line 1455
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1456
    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/details/SellerBucket;->activeItemCount()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 1459
    :cond_2
    iget-object v3, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0d00db

    const/4 v5, 0x0

    .line 1460
    invoke-virtual {v3, v4, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const v4, 0x7f0a0fa9

    .line 1461
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1462
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/details/SellerBucket;->seller:Lcom/ebay/nautilus/domain/data/experience/checkout/details/Seller;

    iget-object v7, v7, Lcom/ebay/nautilus/domain/data/experience/checkout/details/Seller;->label:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/details/SellerBucket;->seller:Lcom/ebay/nautilus/domain/data/experience/checkout/details/Seller;

    iget-object v7, v7, Lcom/ebay/nautilus/domain/data/experience/checkout/details/Seller;->text:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1463
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f0a0f86

    .line 1466
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 1467
    iget-object v6, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/details/SellerBucket;->lineItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;

    .line 1469
    invoke-virtual {p0, v4, v7}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->renderLineItem(Landroid/view/ViewGroup;Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1471
    iget-object v7, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->inflater:Landroid/view/LayoutInflater;

    const v8, 0x7f0d016c

    .line 1472
    invoke-virtual {v7, v8, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 1473
    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 1476
    :cond_4
    invoke-direct {p0, v4, v2}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->renderMessageToSeller(Landroid/view/ViewGroup;Lcom/ebay/nautilus/domain/data/experience/checkout/details/SellerBucket;)V

    .line 1478
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1481
    :cond_5
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->trackRenderedModuleView(Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;)V

    return-void

    :cond_6
    :goto_2
    return-void
.end method

.method private renderCashOnDelivery(Landroid/view/ViewGroup;Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;)V
    .locals 3

    if-eqz p2, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 1751
    :cond_0
    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryItemType;->CASH_ON_DELIVERY:Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryItemType;

    invoke-virtual {p2, v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;->getSummaryItem(Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryItemType;)Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryItem;

    move-result-object p2

    const v0, 0x7f0a034d

    .line 1752
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p2, :cond_2

    const v0, 0x7f0a034f

    .line 1756
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a034e

    .line 1757
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1759
    iget-object v2, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryItem;->label:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1761
    iget-object v2, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryItem;->label:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1762
    iget-object p2, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryItem;->amount:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplayValue;

    invoke-static {p0, p2}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const/4 p2, 0x0

    .line 1764
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/16 p2, 0x8

    .line 1767
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method private renderCharity(Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;)V
    .locals 8

    const v0, 0x7f0a0580

    .line 2444
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a057f

    .line 2445
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez p1, :cond_0

    const/16 p1, 0x8

    .line 2449
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 2453
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f0a0584

    .line 2455
    invoke-virtual {p0, v3}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a0578

    .line 2456
    invoke-virtual {p0, v4}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2459
    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 2460
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2461
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2462
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2465
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;->selectedAmount:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplayValue;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;->selectedAmount:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplayValue;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplayValue;->value:Ljava/lang/Object;

    check-cast v0, Lcom/ebay/nautilus/domain/data/cos/base/Amount;

    iget-wide v0, v0, Lcom/ebay/nautilus/domain/data/cos/base/Amount;->value:D

    const-wide/16 v6, 0x0

    cmpl-double v0, v0, v6

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2474
    iput v0, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 2475
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f120a37

    .line 2477
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    .line 2478
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;->name:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2467
    iput v0, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 2468
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2469
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;->moduleTitle:Ljava/lang/String;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 2470
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2481
    :goto_1
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->trackRenderedModuleView(Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;)V

    return-void
.end method

.method private renderDocuments(Lcom/ebay/nautilus/domain/data/experience/checkout/document/SupportingDocumentsModule;)V
    .locals 6

    const v0, 0x7f0a056a

    .line 2493
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a056d

    .line 2494
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    if-nez p1, :cond_0

    .line 2498
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2499
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v3, 0x0

    .line 2502
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2503
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a056c

    .line 2505
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2506
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/document/SupportingDocumentsModule;->getDocumentSummaryLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a056e

    .line 2508
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2509
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/document/SupportingDocumentsModule;->getDocumentSummaryText()Ljava/lang/String;

    move-result-object v4

    .line 2510
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2512
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2513
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 2516
    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    const v0, 0x7f0a056b

    .line 2518
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2519
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/document/SupportingDocumentsModule;->hasDocumentError()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2521
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/document/SupportingDocumentsModule;->getDocumentErrors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;

    .line 2522
    invoke-static {p0, v0, v2}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->renderInLineError(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;)I

    .line 2523
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 2526
    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2528
    :goto_1
    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    .line 2529
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 2531
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->trackRenderedModuleView(Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;)V

    return-void
.end method

.method private renderFundingSource(Landroid/view/ViewGroup;Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSource;)V
    .locals 7
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2358
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->inflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    const v2, 0x7f0d00c4

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v2, 0x7f0a06d4

    .line 2359
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0a06d6

    .line 2360
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 2363
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSource;->getSubType()Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSourceSubType;

    move-result-object v4

    invoke-static {v2, v4, p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->setCreditCardDrawableFromSubtype(Landroid/widget/ImageView;Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSourceSubType;Landroid/content/Context;)Z

    move-result v4

    const/16 v5, 0x8

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 2366
    :cond_0
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v2, 0x1

    .line 2367
    :goto_0
    invoke-virtual {p2, v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSource;->getLabelText(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2370
    sget-object v2, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSourceType;->PAY_AFTER_DELIVERY:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSourceType;

    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSource;->getType()Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSourceType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSourceType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f0a0b5b

    .line 2372
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2373
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSource;->getAccountText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2374
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2377
    :cond_1
    iget-object v2, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSource;->backupFundingSource:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSource;

    if-eqz v2, :cond_2

    const v2, 0x7f0a0b5c

    .line 2379
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2380
    iget-object v3, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSource;->backupFundingSource:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSource;

    invoke-virtual {v3, v6}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSource;->getLabelText(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2381
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2384
    :cond_2
    iget-object v2, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSource;->description:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const v2, 0x7f0a0b5e

    .line 2386
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2387
    iget-object v3, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSource;->description:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2388
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    const v2, 0x7f0a0b77

    .line 2391
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2392
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSource;->hasDisplayText()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2394
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSource;->getDisplayText()Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/ebay/mobile/util/ExperienceUtil;->updateFromTextualDisplay(Landroid/widget/TextView;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)V

    .line 2395
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 2398
    :cond_4
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2400
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private renderIncentives(Lcom/ebay/nautilus/domain/data/experience/checkout/incentive/IncentivesModule;)V
    .locals 5

    const v0, 0x7f0a0b78

    .line 2410
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0807

    .line 2411
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a07ff

    .line 2412
    invoke-virtual {p0, v2}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    if-nez p1, :cond_0

    .line 2416
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2417
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2418
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v4, 0x0

    .line 2422
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2425
    iget-boolean v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/incentive/IncentivesModule;->enabled:Z

    if-nez v0, :cond_1

    .line 2427
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    .line 2431
    :cond_1
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/incentive/IncentivesModule;->moduleTitle:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2432
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2433
    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2434
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2436
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->trackRenderedModuleView(Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;)V

    return-void
.end method

.method private renderLoyalty(Lcom/ebay/nautilus/domain/data/experience/checkout/rewards/SessionRewardsModule;)V
    .locals 2

    const v0, 0x7f0a098b

    .line 2737
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 2744
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    return-void

    .line 2750
    :cond_1
    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/rewards/SessionRewardsModule;->rewards:Ljava/util/List;

    invoke-static {v1}, Lcom/google/android/gms/common/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2752
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->inflater:Landroid/view/LayoutInflater;

    invoke-static {p1, v0, v1, p0}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->getRenderedLoyaltyContent(Lcom/ebay/nautilus/domain/data/experience/checkout/rewards/Rewards;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;Landroid/view/View$OnClickListener;)Landroid/view/ViewGroup;

    move-result-object p1

    .line 2753
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 2756
    :cond_2
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->inflater:Landroid/view/LayoutInflater;

    invoke-static {p1, v0, v1, p0}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->renderLoyaltyContent(Lcom/ebay/nautilus/domain/data/experience/checkout/rewards/SessionRewardsModule;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method private renderMessageToSeller(Landroid/view/ViewGroup;Lcom/ebay/nautilus/domain/data/experience/checkout/details/SellerBucket;)V
    .locals 4

    if-eqz p2, :cond_4

    .line 2046
    iget-object v0, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/details/SellerBucket;->actions:Ljava/util/Map;

    if-nez v0, :cond_0

    goto :goto_1

    .line 2049
    :cond_0
    iget-object v0, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/details/SellerBucket;->actions:Ljava/util/Map;

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;->MESSAGE_TO_SELLER:Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    if-eqz v0, :cond_3

    .line 2050
    iget-boolean v1, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;->enabled:Z

    if-nez v1, :cond_1

    goto :goto_0

    .line 2053
    :cond_1
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0d00dd

    const/4 v3, 0x0

    .line 2054
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f0a0a02

    .line 2055
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2056
    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;->text:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a09f7

    .line 2057
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2058
    iget-object v2, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/details/SellerBucket;->seller:Lcom/ebay/nautilus/domain/data/experience/checkout/details/Seller;

    if-eqz v2, :cond_2

    iget-object v2, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/details/SellerBucket;->seller:Lcom/ebay/nautilus/domain/data/experience/checkout/details/Seller;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/details/Seller;->sellerMessage:Lcom/ebay/nautilus/domain/data/experience/checkout/details/SellerMessage;

    if-eqz v2, :cond_2

    .line 2059
    iget-object v2, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/details/SellerBucket;->seller:Lcom/ebay/nautilus/domain/data/experience/checkout/details/Seller;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/details/Seller;->sellerMessage:Lcom/ebay/nautilus/domain/data/experience/checkout/details/SellerMessage;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/details/SellerMessage;->sellerNote:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2061
    :cond_2
    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 2062
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p2, 0x1

    .line 2063
    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 2065
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method private renderOrderPriceMessages(Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryModule;)V
    .locals 6
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryModule;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const v0, 0x7f0a03bd

    .line 2705
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2707
    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryModule;->orderPriceMessages:Ljava/util/List;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryModule;->orderPriceMessages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_1

    .line 2713
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2714
    :goto_0
    iget-object v3, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryModule;->orderPriceMessages:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 2716
    iget-object v3, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryModule;->orderPriceMessages:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    if-eqz v3, :cond_1

    .line 2719
    iget-object v4, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0d00cd

    invoke-virtual {v4, v5, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 2722
    invoke-static {p0, v3}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2723
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2727
    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    :cond_3
    :goto_1
    const/16 p1, 0x8

    .line 2709
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private renderSummary(Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryModule;)V
    .locals 3

    const v0, 0x7f0a03d6

    .line 2656
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez p1, :cond_0

    const/16 p1, 0x8

    .line 2660
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 2664
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a03d7

    .line 2666
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2667
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2669
    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryModule;->summaryItemList:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryModule;->summaryItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 2671
    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryModule;->summaryItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryItem;

    .line 2672
    invoke-direct {p0, v2, v0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->appendSummaryItem(Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryItem;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 2675
    :cond_1
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryModule;->total:Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryItem;

    if-eqz v0, :cond_2

    const v0, 0x7f0a03df

    .line 2677
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2678
    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryModule;->total:Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryItem;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryItem;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a03e0

    .line 2680
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2681
    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryModule;->total:Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryItem;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryItem;->amount:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplayValue;

    invoke-static {p0, v1}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2683
    invoke-direct {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->renderOrderPriceMessages(Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryModule;)V

    .line 2686
    :cond_2
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryModule;->paypalCreditMessage:Ljava/util/List;

    const v1, 0x7f0a0bb2

    .line 2687
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2688
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    if-eqz v0, :cond_3

    .line 2691
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    .line 2692
    invoke-direct {p0, v2, v1}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->appendPaypalCreditMessage(Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;Landroid/view/ViewGroup;)V

    goto :goto_1

    .line 2694
    :cond_3
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->trackRenderedModuleView(Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;)V

    return-void
.end method

.method private renderUserAgreements(Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryModule;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const v2, 0x7f0a13a9

    .line 2537
    invoke-virtual {v0, v2}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 2538
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    if-eqz v1, :cond_8

    .line 2541
    iget-object v3, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryModule;->userAgreements:Ljava/util/List;

    if-eqz v3, :cond_8

    iget-object v3, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryModule;->userAgreements:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_3

    .line 2547
    :cond_0
    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryModule;->userAgreements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/UserAgreement;

    .line 2549
    iget-object v5, v0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->inflater:Landroid/view/LayoutInflater;

    const v6, 0x7f0d00ef

    invoke-virtual {v5, v6, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    const v6, 0x7f0a13a2

    .line 2551
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    const v7, 0x7f0a13a6

    .line 2552
    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0a13a8

    .line 2553
    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 2555
    iget-object v9, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/UserAgreement;->termsAndConditions:Ljava/util/List;

    const v10, 0x7f0a123f

    const v12, 0x7f0a123e

    const/4 v13, 0x0

    if-eqz v9, :cond_2

    const v14, 0x7f0a1264

    .line 2559
    invoke-virtual {v5, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    .line 2561
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    .line 2563
    invoke-virtual/range {p0 .. p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v11, 0x7f0d0527

    invoke-virtual {v4, v11, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2564
    invoke-static {v0, v15}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2566
    iget-object v11, v15, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    if-eqz v11, :cond_1

    .line 2568
    iget-object v11, v15, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    invoke-virtual {v4, v12, v11}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 2570
    iget-object v11, v15, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    iget-object v11, v11, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->url:Ljava/lang/String;

    if-eqz v11, :cond_1

    .line 2571
    iget-object v11, v15, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    iget-object v11, v11, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->url:Ljava/lang/String;

    invoke-virtual {v4, v10, v11}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 2574
    :cond_1
    iget-object v11, v15, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->textSpans:Lcom/ebay/nautilus/domain/data/experience/type/base/StyledText;

    invoke-virtual {v11}, Lcom/ebay/nautilus/domain/data/experience/type/base/StyledText;->getString()Ljava/lang/String;

    move-result-object v11

    const v15, 0x7f0a1240

    invoke-virtual {v4, v15, v11}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 2575
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2576
    invoke-virtual {v14, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v4, 0x0

    goto :goto_1

    .line 2582
    :cond_2
    iget-object v4, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/UserAgreement;->legalText:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 2584
    iget-object v4, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/UserAgreement;->legalText:Ljava/lang/String;

    invoke-static {v4}, Lcom/ebay/mobile/util/Util;->compatFromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Landroid/text/Spannable;

    .line 2586
    invoke-interface {v13}, Landroid/text/Spannable;->length()I

    move-result v4

    const-class v9, Landroid/text/style/URLSpan;

    const/4 v11, 0x0

    invoke-interface {v13, v11, v4, v9}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/URLSpan;

    array-length v9, v4

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v9, :cond_3

    aget-object v14, v4, v11

    .line 2588
    new-instance v15, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity$1;

    invoke-direct {v15, v0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity$1;-><init>(Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;)V

    .line 2607
    invoke-interface {v13, v14}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v12

    invoke-interface {v13, v14}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v14

    const/16 v10, 0x21

    invoke-interface {v13, v15, v12, v14, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v11, v11, 0x1

    const v10, 0x7f0a123f

    const v12, 0x7f0a123e

    goto :goto_2

    :cond_3
    const v4, 0x101009b

    .line 2613
    invoke-static {v0, v4}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 2614
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 2615
    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2616
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 2619
    iget-object v4, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/UserAgreement;->actions:Ljava/util/Map;

    if-eqz v4, :cond_6

    .line 2622
    iget-object v4, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/UserAgreement;->actions:Ljava/util/Map;

    sget-object v7, Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;->ACCEPT_AGREEMENT:Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    if-eqz v4, :cond_4

    .line 2623
    iget-boolean v4, v4, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;->enabled:Z

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    .line 2625
    invoke-virtual {v6, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 2626
    new-instance v4, Lcom/ebay/mobile/checkout/xoneor/-$$Lambda$CheckoutActivity$pN9s_CnWoXc-rbPpwlr4NjIxgd4;

    invoke-direct {v4, v0}, Lcom/ebay/mobile/checkout/xoneor/-$$Lambda$CheckoutActivity$pN9s_CnWoXc-rbPpwlr4NjIxgd4;-><init>(Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;)V

    invoke-virtual {v6, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2631
    :cond_4
    iget-object v3, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/UserAgreement;->actions:Ljava/util/Map;

    sget-object v4, Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;->SEE_TERMS:Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    .line 2632
    iget-object v4, v0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {v4}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSelectedPaymentMethod()Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;

    move-result-object v4

    if-eqz v3, :cond_6

    .line 2635
    iget-object v6, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;->text:Ljava/lang/String;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2636
    invoke-virtual {v3}, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;->getUrl()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0a123f

    invoke-virtual {v8, v7, v6}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    const v6, 0x7f0a123e

    .line 2637
    invoke-virtual {v8, v6, v3}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    if-eqz v4, :cond_5

    .line 2639
    iget-object v3, v4, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->text:Ljava/lang/String;

    const v4, 0x7f0a1240

    invoke-virtual {v8, v4, v3}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 2640
    :cond_5
    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v3, 0x0

    .line 2641
    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2644
    :cond_6
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_7
    const/4 v3, 0x0

    .line 2646
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    :cond_8
    :goto_3
    const/16 v1, 0x8

    .line 2543
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private startWebViewFromAction(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2

    .line 1099
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1101
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ebay/mobile/activities/ShowWebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.intent.extra.TITLE"

    .line 1102
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p2, "url"

    .line 1103
    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p1, "use_sso"

    const/4 p2, 0x1

    .line 1104
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "back"

    .line 1105
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "add_device_id"

    const/4 p2, 0x0

    .line 1106
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-nez p3, :cond_0

    .line 1108
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1110
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateQuantityTextAndContentDescription(Landroid/widget/TextView;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6

    .line 1773
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "%s %d"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v5, 0x1

    aput-object p2, v3, v5

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1776
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1777
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "%s %d"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p4, v2, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v2, v5

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    const/16 p4, 0x8

    .line 1779
    invoke-static {p1, p2, p3, p4}, Lcom/ebay/mobile/util/Util;->updateFromText(Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    return-void
.end method


# virtual methods
.method public focusOnDeliveryMethodForAccessibility()V
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1298
    iget-boolean v0, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->hasShippingMethodChanged:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->lineItemId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f0a14a0

    .line 1301
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1302
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 1304
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->lineItemId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->findViewWithTag(Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    const v1, 0x7f0a03e1

    .line 1307
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    if-eqz v1, :cond_1

    const/4 v4, 0x1

    .line 1310
    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 1311
    new-instance v4, Lcom/ebay/mobile/checkout/xoneor/-$$Lambda$CheckoutActivity$moKV4nHgJS-KH7Qx0By_6vbtsR8;

    invoke-direct {v4, v1}, Lcom/ebay/mobile/checkout/xoneor/-$$Lambda$CheckoutActivity$moKV4nHgJS-KH7Qx0By_6vbtsR8;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v4, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1319
    :cond_1
    new-instance v1, Lcom/ebay/mobile/checkout/xoneor/-$$Lambda$CheckoutActivity$2yn5rMe7PD5Kfflq9FEDH5-AXTk;

    invoke-direct {v1, v0}, Lcom/ebay/mobile/checkout/xoneor/-$$Lambda$CheckoutActivity$2yn5rMe7PD5Kfflq9FEDH5-AXTk;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    const/4 v0, 0x0

    .line 1325
    iput-boolean v0, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->hasShippingMethodChanged:Z

    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method public getTrackingEventName()Ljava/lang/String;
    .locals 1

    const-string v0, "CheckoutPage"

    return-object v0
.end method

.method public handleApplyIncentiveV2(Lcom/ebay/nautilus/domain/data/experience/type/base/Action;)V
    .locals 0

    return-void
.end method

.method handleBopisAction(Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsSubType;)V
    .locals 7
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1127
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {v0, p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getLineItem(Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 1131
    :cond_1
    invoke-virtual {v0, p3}, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;->getLogisticsType(Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;)Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsList;

    move-result-object v0

    .line 1136
    sget-object v2, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsSubType;->HYDRA:Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsSubType;

    const/16 v3, 0x3f0

    if-eq p4, v2, :cond_6

    .line 1138
    invoke-direct {p0, p1, p3}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->initInventoryInfo(Ljava/lang/String;Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;)Lcom/ebay/common/model/inventory/InventoryInfo;

    move-result-object v2

    if-nez v2, :cond_2

    return-void

    .line 1146
    :cond_2
    sget-object v4, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;->IN_STORE_PICKUP:Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;

    if-ne p3, v4, :cond_3

    .line 1147
    sget-object v4, Lcom/ebay/common/model/cart/LogisticsPlanType;->ISPU:Lcom/ebay/common/model/cart/LogisticsPlanType;

    goto :goto_1

    .line 1148
    :cond_3
    sget-object v4, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;->PICKUP_AND_DROPOFF:Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;

    if-ne p3, v4, :cond_5

    .line 1149
    sget-object v4, Lcom/ebay/common/model/cart/LogisticsPlanType;->PUDO:Lcom/ebay/common/model/cart/LogisticsPlanType;

    .line 1153
    :goto_1
    invoke-static {p1}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->getCartLineitemId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/ebay/common/model/inventory/InventoryInfo;->setCheckoutLineItemId(Ljava/lang/String;)V

    const/4 v5, 0x1

    .line 1154
    invoke-virtual {v2, v5}, Lcom/ebay/common/model/inventory/InventoryInfo;->setForceInventoryLookup(Z)V

    .line 1155
    invoke-virtual {v2, v4}, Lcom/ebay/common/model/inventory/InventoryInfo;->setLogisticsPlanType(Lcom/ebay/common/model/cart/LogisticsPlanType;)V

    .line 1157
    iget-object v4, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->store:Lcom/ebay/common/model/inventory/StoreAvailability;

    if-eqz v4, :cond_4

    .line 1158
    iget-object v4, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->store:Lcom/ebay/common/model/inventory/StoreAvailability;

    invoke-virtual {v2, v4}, Lcom/ebay/common/model/inventory/InventoryInfo;->setSelectedStore(Lcom/ebay/common/model/inventory/StoreAvailability;)V

    .line 1160
    :cond_4
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/ebay/mobile/inventory/StorePickerActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "inventory_info"

    .line 1161
    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object v2, v4

    goto :goto_3

    :cond_5
    return-void

    :cond_6
    if-eqz v0, :cond_9

    .line 1165
    iget-object v2, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsList;->actions:Ljava/util/Map;

    if-eqz v2, :cond_9

    .line 1166
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_9

    .line 1168
    sget-object v4, Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;->SELECT_LOGISTICS_PLAN:Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1170
    const-class v2, Lcom/ebay/mobile/checkout/storepicker/PudoSelectLogisticsActivity;

    invoke-virtual {p0, v2}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->createCheckoutIntent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    const/16 v3, 0x3f1

    goto :goto_2

    :cond_7
    move-object v2, v1

    :goto_2
    if-nez v2, :cond_8

    .line 1174
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_8
    const-string v4, "extra_logistics_list"

    .line 1176
    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1178
    iget-object v4, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {v4}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getDefaultLocation()Lcom/ebay/nautilus/domain/data/experience/checkout/session/DefaultLocation;

    move-result-object v4

    if-eqz v4, :cond_a

    const-string v5, "default_postal_code"

    .line 1181
    iget-object v6, v4, Lcom/ebay/nautilus/domain/data/experience/checkout/session/DefaultLocation;->postalCode:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "default_country_code"

    .line 1183
    iget-object v4, v4, Lcom/ebay/nautilus/domain/data/experience/checkout/session/DefaultLocation;->countryCode:Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    :cond_9
    move-object v2, v1

    :cond_a
    :goto_3
    if-eqz v0, :cond_b

    .line 1190
    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;->SELECT_STORE:Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsList;->getAction(Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;)Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    move-result-object v1

    :cond_b
    if-eqz v1, :cond_c

    .line 1193
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->trackExperienceAction(Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;)V

    :cond_c
    if-eqz v2, :cond_d

    const-string v0, "lineItemId"

    .line 1197
    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "logisticsId"

    .line 1198
    invoke-virtual {v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "logisticsType"

    .line 1199
    invoke-virtual {v2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string/jumbo p1, "subType"

    .line 1200
    invoke-virtual {v2, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "com.ebay.mobile.analytics.sid"

    .line 1201
    new-instance p2, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->getTrackingEventName()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1202
    invoke-virtual {p0, v2, v3}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_d
    return-void
.end method

.method handleChangeLineItemQuantity(Ljava/lang/String;I)V
    .locals 2

    .line 1116
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->startProgress()V

    .line 1117
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p0}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->changeLineItemQuantity(Ljava/lang/String;ILjava/lang/Boolean;Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    return-void
.end method

.method public handleIncentivesAction()V
    .locals 3

    .line 963
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "xoParams"

    .line 964
    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoParams:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v1, 0x3ec

    .line 965
    invoke-virtual {p0, v0, v1}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method handleLogisticsSelectionAction(Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsSubType;)V
    .locals 10
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 891
    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;->IN_STORE_PICKUP:Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;

    if-eq v1, p3, :cond_1

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;->PICKUP_AND_DROPOFF:Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;

    if-ne v1, p3, :cond_0

    goto :goto_0

    .line 949
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->startProgress()V

    .line 950
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v9, p0

    invoke-virtual/range {v0 .. v9}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->changeShippingMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    goto/16 :goto_3

    .line 894
    :cond_1
    :goto_0
    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsSubType;->HYDRA:Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsSubType;

    if-ne v1, p4, :cond_6

    .line 896
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {v1, p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getLineItem(Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v3

    :goto_1
    if-nez v1, :cond_3

    return-void

    .line 900
    :cond_3
    invoke-virtual {v1, p3}, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;->getLogisticsType(Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;)Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsList;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 904
    iget-object v5, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsList;->pickupDetails:Lcom/ebay/nautilus/domain/data/experience/checkout/details/PickupServiceDetails;

    if-eqz v5, :cond_6

    .line 913
    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsList;->getSelectedLogisticsPlan()Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;

    move-result-object v5

    if-nez v5, :cond_4

    .line 915
    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsList;->getFirstLogisticsPlan()Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;

    move-result-object v5

    :cond_4
    if-eqz v5, :cond_5

    .line 919
    iget-object v1, v5, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;->pickupAndDropOffDetails:Lcom/ebay/nautilus/domain/data/experience/checkout/details/PickupAndDropOffDetails;

    if-eqz v1, :cond_5

    .line 923
    iget-object v3, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/PickupAndDropOffDetails;->locationId:Ljava/lang/String;

    .line 924
    iget-object v5, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/PickupAndDropOffDetails;->providerId:Ljava/lang/String;

    .line 925
    iget-object v6, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/PickupAndDropOffDetails;->shippingServiceId:Ljava/lang/String;

    .line 926
    iget-object v7, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/PickupAndDropOffDetails;->selectedPickupProgramId:Ljava/lang/String;

    .line 927
    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/PickupAndDropOffDetails;->personalAccountNumber:Ljava/lang/String;

    move-object v9, v1

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v3

    goto :goto_2

    :cond_5
    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    .line 931
    :goto_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 932
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 933
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 935
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->startProgress()V

    .line 936
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    invoke-virtual {p3}, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;->name()Ljava/lang/String;

    move-result-object v3

    move-object v0, v1

    move-object v1, p1

    move-object v2, p2

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, p0

    invoke-virtual/range {v0 .. v9}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->changeShippingMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    return-void

    .line 943
    :cond_6
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->handleBopisAction(Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsSubType;)V

    :goto_3
    return-void
.end method

.method protected handlePayPalContingency()Z
    .locals 2

    .line 1401
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getPaymentMethodWithContingency()Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1404
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->getPaymentInstrumentWithContingency()Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1407
    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;->hasCreditCardChallengeContingency()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1409
    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->paymentMethodId:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;->RESOLVE_CREDIT_CARD_CHALLENGE:Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;

    invoke-virtual {p0, v0, v1}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->handlePaymentMethodSelectionWithAction(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected handleToolTipAction(Lcom/ebay/nautilus/domain/data/experience/checkout/common/ToolTip;)V
    .locals 2

    .line 447
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ebay/mobile/checkout/xoneor/ToolTipActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "tool_tip"

    .line 448
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 p1, 0x3f2

    .line 449
    invoke-virtual {p0, v0, p1}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public isAccessibilityEnabled()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1375
    invoke-static {p0}, Lcom/ebay/mobile/util/Util;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isHasShippingMethodChanged()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 2976
    iget-boolean v0, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->hasShippingMethodChanged:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    .line 648
    invoke-super {p0, p1, p2, p3}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 650
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    .line 651
    invoke-static {p1, p2, p3, v0}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->validateOnActivityResult(IILandroid/content/Intent;Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;)Lcom/ebay/mobile/activities/ActivityResult;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->result:Lcom/ebay/mobile/activities/ActivityResult;

    .line 652
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->result:Lcom/ebay/mobile/activities/ActivityResult;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xe

    if-eq p1, v0, :cond_a

    const/16 v0, 0x6b

    if-eq p1, v0, :cond_a

    const/16 v0, 0x2711

    if-eq p1, v0, :cond_a

    const/4 v0, 0x0

    const/4 v1, -0x1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    goto/16 :goto_0

    :pswitch_0
    if-ne p2, v1, :cond_b

    if-eqz p3, :cond_b

    const-string p1, "eplus"

    .line 748
    invoke-virtual {p3, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 749
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->refreshBranding()V

    goto/16 :goto_0

    :pswitch_1
    if-ne p2, v1, :cond_1

    if-eqz p3, :cond_1

    .line 729
    invoke-direct {p0, p3}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->changeShippingMethod(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_1
    if-nez p2, :cond_b

    .line 731
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->stopProgress()V

    goto/16 :goto_0

    :pswitch_2
    if-ne p2, v1, :cond_2

    if-eqz p3, :cond_2

    const-string p1, "donation_amount"

    const-wide/16 v0, 0x0

    .line 696
    invoke-virtual {p3, p1, v0, v1}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v4

    .line 697
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class p2, Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;

    invoke-virtual {p1, p2}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;

    iget-object v3, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;->charityId:Ljava/lang/String;

    const-string p1, "donation_amount_currency"

    .line 699
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 700
    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    move-object v7, p0

    invoke-virtual/range {v2 .. v7}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->setDonation(Ljava/lang/String;DLjava/lang/String;Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    .line 701
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->startProgress()V

    goto/16 :goto_0

    :cond_2
    if-nez p2, :cond_b

    .line 704
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->stopProgress()V

    goto/16 :goto_0

    :pswitch_3
    if-ne p2, v1, :cond_3

    if-eqz p3, :cond_3

    const-string p1, "message_to_seller"

    .line 710
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "seller_id"

    .line 711
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 712
    iget-object p3, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    invoke-virtual {p3, p2, p1, p0}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->addSellerNote(Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    .line 713
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->startProgress()V

    goto/16 :goto_0

    :cond_3
    if-nez p2, :cond_b

    const-string/jumbo p1, "seller_id"

    .line 717
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 718
    iget-object p2, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class p3, Lcom/ebay/nautilus/domain/data/experience/checkout/details/CartDetailsModule;

    .line 719
    invoke-virtual {p2, p3}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object p2

    check-cast p2, Lcom/ebay/nautilus/domain/data/experience/checkout/details/CartDetailsModule;

    if-eqz p2, :cond_4

    .line 721
    sget-object p3, Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;->CANCEL_SELLER_MESSAGE:Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;

    invoke-virtual {p2, p1, p3}, Lcom/ebay/nautilus/domain/data/experience/checkout/details/CartDetailsModule;->getSellerAction(Ljava/lang/String;Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;)Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->trackExperienceAction(Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;)V

    .line 723
    :cond_4
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->stopProgress()V

    goto :goto_0

    :pswitch_4
    if-ne p2, v1, :cond_5

    if-eqz p3, :cond_5

    .line 688
    invoke-direct {p0, p3}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->changeShippingMethod(Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    if-nez p2, :cond_b

    .line 690
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->stopProgress()V

    goto :goto_0

    :pswitch_5
    if-ne p2, v1, :cond_7

    if-eqz p3, :cond_7

    const-string p1, "change_selected_address"

    .line 671
    invoke-virtual {p3, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "addressId"

    .line 673
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 674
    iget-object p2, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    invoke-virtual {p2, p1, p0}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->changeSelectedAddress(Ljava/lang/String;Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    .line 675
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->startProgress()V

    goto :goto_0

    .line 678
    :cond_6
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->renderScreen()V

    goto :goto_0

    :cond_7
    if-nez p2, :cond_b

    .line 681
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->stopProgress()V

    goto :goto_0

    :pswitch_6
    if-eq p2, v1, :cond_8

    const/4 p1, 0x6

    if-ne p2, p1, :cond_9

    .line 661
    :cond_8
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    .line 662
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->isTaskRunning()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 663
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->startProgress()V

    goto :goto_0

    .line 665
    :cond_9
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->stopProgress()V

    goto :goto_0

    .line 740
    :cond_a
    invoke-virtual {p0, p2}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->setResult(I)V

    .line 741
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->finish()V

    :cond_b
    :goto_0
    :pswitch_7
    return-void

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3ed
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3f0
        :pswitch_1
        :pswitch_4
        :pswitch_7
        :pswitch_7
        :pswitch_0
    .end packed-switch
.end method

.method public onAddressFieldsSaved(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;Lcom/ebay/nautilus/domain/content/Content;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;",
            ">;Z)V"
        }
    .end annotation

    .line 419
    invoke-super {p0, p1, p2, p3}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->onAddressFieldsSaved(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;Lcom/ebay/nautilus/domain/content/Content;Z)V

    .line 421
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/content/Content;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    .line 422
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->validateXoSession(Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 424
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->stopProgress()V

    return-void

    .line 428
    :cond_0
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSelectedCheckoutAddress()Lcom/ebay/nautilus/domain/data/experience/checkout/address/Address;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 430
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/Address;->addressId:Ljava/lang/String;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->selectedAddressId:Ljava/lang/String;

    .line 435
    :cond_1
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->renderScreen()V

    return-void
.end method

.method public onAddressesChanged(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;Lcom/ebay/nautilus/domain/content/Content;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;",
            ">;Z)V"
        }
    .end annotation

    .line 356
    invoke-super {p0, p1, p2, p3}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->onAddressesChanged(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;Lcom/ebay/nautilus/domain/content/Content;Z)V

    if-eqz p2, :cond_8

    .line 357
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/content/Content;->getStatus()Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->hasError()Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_2

    .line 360
    :cond_0
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/content/Content;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    if-eqz p1, :cond_7

    .line 361
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->hasErrors()Z

    move-result p2

    if-eqz p2, :cond_1

    goto/16 :goto_1

    .line 364
    :cond_1
    const-class p2, Lcom/ebay/nautilus/domain/data/experience/checkout/address/ShippingAddressesModule;

    invoke-virtual {p1, p2}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object p1

    .line 365
    instance-of p2, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/ShippingAddressesModule;

    if-eqz p2, :cond_6

    .line 367
    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/ShippingAddressesModule;

    .line 368
    iget-object p2, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/ShippingAddressesModule;->addresses:Ljava/util/List;

    if-nez p2, :cond_2

    return-void

    .line 371
    :cond_2
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/ShippingAddressesModule;->addresses:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ebay/nautilus/domain/data/experience/checkout/address/Address;

    if-eqz p2, :cond_3

    .line 373
    iget-object p3, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/address/Address;->value:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    if-nez p3, :cond_4

    goto :goto_0

    .line 377
    :cond_4
    iget-boolean p3, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/address/Address;->primary:Z

    if-eqz p3, :cond_3

    .line 379
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object p3

    .line 380
    const-class v0, Lcom/ebay/mobile/dagger/AppComponent;

    invoke-interface {p3, v0}, Lcom/ebay/nautilus/kernel/content/EbayContext;->as(Ljava/lang/Class;)Lcom/ebay/nautilus/kernel/dagger/KernelComponent;

    move-result-object v0

    check-cast v0, Lcom/ebay/mobile/dagger/AppComponent;

    invoke-interface {v0}, Lcom/ebay/mobile/dagger/AppComponent;->getPreferences()Lcom/ebay/common/Preferences;

    move-result-object v0

    .line 381
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->getUserContext()Lcom/ebay/nautilus/domain/content/dm/UserContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/content/dm/UserContext;->getCurrentCountry()Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object v1

    .line 382
    iget-object v2, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/address/Address;->value:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;->country:Ljava/lang/String;

    invoke-static {v2}, Lcom/ebay/nautilus/domain/EbayCountry;->getInstance(Ljava/lang/String;)Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object v2

    .line 383
    invoke-virtual {v0}, Lcom/ebay/common/Preferences;->getCountryAutoDetected()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 387
    invoke-virtual {v1, v2}, Lcom/ebay/nautilus/domain/EbayCountry;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 389
    sget-object v0, Lcom/ebay/nautilus/domain/content/dm/UserContextDataManager;->KEY:Lcom/ebay/nautilus/domain/content/dm/UserContextDataManager$KeyParams;

    invoke-static {p3, v0}, Lcom/ebay/nautilus/domain/content/dm/UserContextDataManager;->get(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/content/DataManager$DataManagerKeyParams;)Lcom/ebay/nautilus/domain/content/DataManager;

    move-result-object p3

    check-cast p3, Lcom/ebay/nautilus/domain/content/dm/UserContextDataManager;

    if-eqz p3, :cond_5

    .line 392
    invoke-virtual {p3, v2}, Lcom/ebay/nautilus/domain/content/dm/UserContextDataManager;->setCurrentCountry(Lcom/ebay/nautilus/domain/EbayCountry;)V

    .line 394
    :cond_5
    new-instance p3, Lcom/ebay/mobile/settings/general/DefaultCountryChangeHandler;

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v1

    .line 395
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v3

    const-class v4, Lcom/ebay/nautilus/domain/dagger/DomainComponent;

    invoke-interface {v3, v4}, Lcom/ebay/nautilus/kernel/content/EbayContext;->as(Ljava/lang/Class;)Lcom/ebay/nautilus/kernel/dagger/KernelComponent;

    move-result-object v3

    check-cast v3, Lcom/ebay/nautilus/domain/dagger/DomainComponent;

    invoke-interface {v3}, Lcom/ebay/nautilus/domain/dagger/DomainComponent;->getDataManagerMaster()Lcom/ebay/nautilus/domain/content/DataManager$Master;

    move-result-object v3

    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object v4

    invoke-direct {p3, v0, v1, v3, v4}, Lcom/ebay/mobile/settings/general/DefaultCountryChangeHandler;-><init>(Landroid/content/Context;Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/content/DataManager$Master;Lcom/ebay/common/Preferences;)V

    .line 396
    invoke-virtual {p3, v2}, Lcom/ebay/mobile/settings/general/DefaultCountryChangeHandler;->sendCountryChangeTracking(Lcom/ebay/nautilus/domain/EbayCountry;)V

    .line 398
    new-instance p3, Landroid/content/Intent;

    const-class v0, Lcom/ebay/mobile/service/PreferenceSyncService;

    invoke-direct {p3, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "countryCode"

    .line 399
    iget-object v1, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/address/Address;->value:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;->country:Ljava/lang/String;

    .line 400
    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "postalCode"

    .line 401
    iget-object v1, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/address/Address;->value:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;->postalCode:Ljava/lang/String;

    .line 402
    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "stateOrProvince"

    .line 403
    iget-object p2, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/address/Address;->value:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    iget-object p2, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;->stateOrProvince:Ljava/lang/String;

    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "com.ebay.mobile.service.PreferenceSyncService.updatePrefsPrimaryAddress"

    .line 405
    invoke-virtual {p3, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 406
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->getApplication()Landroid/app/Application;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    :cond_6
    return-void

    :cond_7
    :goto_1
    return-void

    :cond_8
    :goto_2
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 636
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->cancelCheckout()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->clickTimer:Lcom/ebay/common/util/ClickTimer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ebay/common/util/ClickTimer;->enoughTimeHasElapsedBetweenClicks(JZ)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 461
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a1240

    const v2, 0x7f0a123e

    const v3, 0x7f0a124b

    const v4, 0x7f0a124c

    const v5, 0x7f0a124a

    const v6, 0x7f0a1249

    const v7, 0x7f0a124d

    const v8, 0x7f0a123f

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    .line 586
    :sswitch_0
    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->trackExperienceAction(Lcom/ebay/nautilus/domain/data/experience/type/base/Action;Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    .line 587
    invoke-virtual {p1, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 588
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v1, 0x0

    .line 587
    invoke-direct {p0, v0, p1, v1}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->startWebViewFromAction(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 496
    :sswitch_1
    invoke-virtual {p1, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 497
    invoke-virtual {p1, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 498
    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;

    .line 500
    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsSubType;

    .line 501
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->handleLogisticsSelectionAction(Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsSubType;)V

    goto/16 :goto_1

    .line 473
    :sswitch_2
    const-class p1, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->createCheckoutIntent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0x3ea

    invoke-virtual {p0, p1, v0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 468
    :sswitch_3
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->shouldPurchaseSession()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 469
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->purchase(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    goto/16 :goto_1

    .line 520
    :sswitch_4
    invoke-virtual {p1, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 521
    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    .line 522
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 520
    invoke-direct {p0, v0, v2, p1}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->handleWebLinkAction(Ljava/lang/Object;Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 464
    :sswitch_5
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->handlePaymentMethodAction()V

    goto/16 :goto_1

    .line 579
    :sswitch_6
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/ExchangeRate;

    const v1, 0x7f0a1247

    .line 580
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    const v2, 0x7f0a1243

    .line 581
    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 582
    invoke-virtual {p0, v0, v1, p1}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->handleExchangeRateAction(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/ExchangeRate;Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 526
    :sswitch_7
    invoke-virtual {p1, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 528
    invoke-virtual {p1, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->getWebViewIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 529
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 478
    :sswitch_8
    invoke-virtual {p1, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 479
    invoke-virtual {p1, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 480
    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;

    .line 482
    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsSubType;

    .line 483
    invoke-virtual {p1, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/common/ToolTip;

    .line 485
    sget-object v4, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;->IN_STORE_PICKUP:Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;

    if-eq v2, v4, :cond_4

    sget-object v4, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;->PICKUP_AND_DROPOFF:Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;

    if-ne v2, v4, :cond_2

    goto :goto_0

    .line 487
    :cond_2
    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;->GLOBAL_SHIPPING:Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;

    if-ne v2, v1, :cond_3

    if-eqz p1, :cond_3

    .line 488
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->handleToolTipAction(Lcom/ebay/nautilus/domain/data/experience/checkout/common/ToolTip;)V

    goto/16 :goto_1

    .line 490
    :cond_3
    invoke-direct {p0, v0, v2}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->handleShippingMethodAction(Ljava/lang/String;Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;)V

    goto/16 :goto_1

    .line 486
    :cond_4
    :goto_0
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->handleBopisAction(Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsSubType;)V

    goto/16 :goto_1

    .line 566
    :sswitch_9
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 567
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 569
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->startProgress()V

    .line 570
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    invoke-virtual {v0, p1, p0}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->removeLineItem(Ljava/lang/String;Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    goto :goto_1

    :sswitch_a
    const v0, 0x7f0a1245

    .line 546
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/ActionConfirmation;

    const v1, 0x7f0a1246

    .line 547
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 549
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    if-eqz v0, :cond_5

    .line 553
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "dialog_line_item_id_arg"

    .line 554
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "dialog_remove_line_item"

    .line 555
    invoke-virtual {p0, v0, v1, p1}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->showActionConfirmationDialog(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/ActionConfirmation;Landroid/os/Bundle;Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    goto :goto_1

    .line 559
    :cond_5
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->startProgress()V

    .line 560
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    invoke-virtual {v0, p1, p0}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->removeLineItem(Ljava/lang/String;Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    goto :goto_1

    .line 510
    :sswitch_b
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->handleIncentivesAction()V

    goto :goto_1

    .line 538
    :sswitch_c
    invoke-virtual {p1, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/common/ToolTip;

    if-eqz p1, :cond_6

    .line 540
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->handleToolTipAction(Lcom/ebay/nautilus/domain/data/experience/checkout/common/ToolTip;)V

    goto :goto_1

    .line 506
    :sswitch_d
    const-class p1, Lcom/ebay/mobile/checkout/xoneor/DonationActivity;

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->createCheckoutIntent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0x3ee

    invoke-virtual {p0, p1, v0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 575
    :sswitch_e
    const-class p1, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->createCheckoutIntent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0x3f3

    invoke-virtual {p0, p1, v0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 514
    :sswitch_f
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/SellerBucket;

    .line 515
    invoke-direct {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->handleMessageToSellerAction(Lcom/ebay/nautilus/domain/data/experience/checkout/details/SellerBucket;)V

    :cond_6
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a03cd -> :sswitch_f
        0x7f0a056d -> :sswitch_e
        0x7f0a0580 -> :sswitch_d
        0x7f0a0737 -> :sswitch_c
        0x7f0a07ff -> :sswitch_b
        0x7f0a0885 -> :sswitch_a
        0x7f0a08d6 -> :sswitch_9
        0x7f0a08da -> :sswitch_8
        0x7f0a098d -> :sswitch_7
        0x7f0a0b7a -> :sswitch_6
        0x7f0a0b86 -> :sswitch_5
        0x7f0a0b9b -> :sswitch_4
        0x7f0a0cef -> :sswitch_3
        0x7f0a1036 -> :sswitch_2
        0x7f0a1049 -> :sswitch_1
        0x7f0a1267 -> :sswitch_0
        0x7f0a13a8 -> :sswitch_4
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 224
    invoke-super {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d00b2

    .line 225
    invoke-virtual {p0, v0, p1}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->initContentView(ILandroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string/jumbo v0, "selecteAddressId"

    .line 229
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->selectedAddressId:Ljava/lang/String;

    const-string/jumbo v0, "selectedPostalCode"

    .line 230
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->selectedPostalCode:Ljava/lang/String;

    const-string v0, "overlay_shown"

    .line 231
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->isOverlayShown:Z

    .line 234
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->startProgress()V

    .line 235
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->showCloseButton()V

    const p1, 0x7f0a0cef

    .line 237
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->purchaseButton:Landroid/widget/Button;

    .line 238
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->purchaseButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->purchaseButton:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 240
    new-instance p1, Lcom/ebay/common/util/ClickTimer;

    invoke-direct {p1}, Lcom/ebay/common/util/ClickTimer;-><init>()V

    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->clickTimer:Lcom/ebay/common/util/ClickTimer;

    return-void
.end method

.method public onMenuHomeClicked(Landroid/view/MenuItem;)Z
    .locals 0
    .param p1    # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 270
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->cancelCheckout()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 2932
    invoke-super {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2933
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    if-eqz v0, :cond_1

    .line 2935
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->getExchangeRateBundle()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2937
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->startProgress()V

    .line 2938
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->getExchangeRateBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->handleExchangeRatePaymentMethodRefresh(Landroid/os/Bundle;)Z

    goto :goto_0

    .line 2941
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->processFedLinkOnNewIntent(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 261
    invoke-super {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "selecteAddressId"

    .line 262
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->selectedAddressId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "selectedPostalCode"

    .line 263
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->selectedPostalCode:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "overlay_shown"

    .line 264
    iget-boolean v1, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->isOverlayShown:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onSessionChanged(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;Lcom/ebay/nautilus/domain/content/Content;Z)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 277
    invoke-super/range {p0 .. p3}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->onSessionChanged(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;Lcom/ebay/nautilus/domain/content/Content;Z)V

    .line 279
    invoke-virtual/range {p2 .. p2}, Lcom/ebay/nautilus/domain/content/Content;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    iput-object v1, v0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    .line 281
    iget-object v1, v0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->result:Lcom/ebay/mobile/activities/ActivityResult;

    if-eqz v1, :cond_0

    .line 283
    iget-object v1, v0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->result:Lcom/ebay/mobile/activities/ActivityResult;

    iget v1, v1, Lcom/ebay/mobile/activities/ActivityResult;->requestCode:I

    iget-object v2, v0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->result:Lcom/ebay/mobile/activities/ActivityResult;

    iget v2, v2, Lcom/ebay/mobile/activities/ActivityResult;->resultCode:I

    iget-object v3, v0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->result:Lcom/ebay/mobile/activities/ActivityResult;

    iget-object v3, v3, Lcom/ebay/mobile/activities/ActivityResult;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v1, 0x0

    .line 284
    iput-object v1, v0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->result:Lcom/ebay/mobile/activities/ActivityResult;

    if-eqz p1, :cond_0

    .line 285
    invoke-virtual/range {p1 .. p1}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->isTaskRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 289
    :cond_0
    invoke-virtual/range {p0 .. p3}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->checkSessionChanged(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;Lcom/ebay/nautilus/domain/content/Content;Z)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 292
    :cond_1
    iget-object v1, v0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {v0, v1}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->validateXoSession(Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 294
    invoke-virtual/range {p0 .. p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->stopProgress()V

    .line 295
    invoke-virtual/range {p0 .. p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->hideContent()V

    return-void

    .line 301
    :cond_2
    iget-object v1, v0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    sget-object v2, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;->IN_STORE_PICKUP:Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;

    invoke-virtual {v1, v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->hasLogisticsType(Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    sget-object v2, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;->PICKUP_AND_DROPOFF:Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;

    .line 302
    invoke-virtual {v1, v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->hasLogisticsType(Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 304
    :cond_3
    iget-object v1, v0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSelectedCheckoutAddress()Lcom/ebay/nautilus/domain/data/experience/checkout/address/Address;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 307
    iget-object v2, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/Address;->addressId:Ljava/lang/String;

    iput-object v2, v0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->selectedAddressId:Ljava/lang/String;

    .line 308
    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/Address;->value:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;->postalCode:Ljava/lang/String;

    iput-object v1, v0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->selectedPostalCode:Ljava/lang/String;

    .line 313
    :cond_4
    iget-object v1, v0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->redirectToNextCheckout()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 315
    iget-object v1, v0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->meta:Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutServiceMeta;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutServiceMeta;->screenFlowDestination:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->getParams()Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v2, "previousCartId"

    .line 318
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Ljava/lang/String;

    const-string v2, "previousSessionId"

    .line 319
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v20, v1

    check-cast v20, Ljava/lang/String;

    if-eqz v19, :cond_5

    if-eqz v20, :cond_5

    .line 323
    invoke-direct/range {p0 .. p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->getTrackingIntentForPurchaseComplete()Landroid/content/Intent;

    move-result-object v1

    .line 324
    invoke-virtual/range {p0 .. p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->sendPurchaseCompleteTracking(Landroid/content/Intent;Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    .line 326
    new-instance v1, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;

    move-object v3, v1

    iget-object v2, v0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoParams:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;

    iget-object v4, v2, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;->auth:Lcom/ebay/nautilus/domain/app/Authentication;

    iget-object v2, v0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoParams:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;

    iget-object v5, v2, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;->site:Lcom/ebay/nautilus/domain/EbaySite;

    iget-object v2, v0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoParams:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;

    iget-object v6, v2, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;->countryCode:Ljava/lang/String;

    iget-object v2, v0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoParams:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;

    iget-object v7, v2, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;->itemId:Ljava/lang/String;

    iget-object v2, v0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoParams:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;

    iget-object v8, v2, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;->transactionId:Ljava/lang/String;

    iget-object v2, v0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoParams:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;

    iget-object v9, v2, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;->variationId:Ljava/lang/String;

    iget-object v2, v0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoParams:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;

    iget v10, v2, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;->quantity:I

    iget-object v2, v0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoParams:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;

    iget-object v11, v2, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;->giftDetailsKey:Ljava/lang/String;

    iget-object v2, v0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoParams:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;

    iget-object v12, v2, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;->cartId:Ljava/lang/String;

    iget-object v2, v0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoParams:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;

    iget-object v13, v2, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;->dysonPairingId:Ljava/lang/String;

    iget-object v2, v0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoParams:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;

    iget-object v14, v2, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    iget-object v2, v0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoParams:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;

    iget-object v15, v2, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;->clickThroughSidTracking:Ljava/lang/String;

    iget-object v2, v0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoParams:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;->roiTrackingDetails:Ljava/lang/String;

    move-object/from16 v16, v2

    iget-object v2, v0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoParams:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;->shippingCode:Ljava/lang/String;

    move-object/from16 v17, v2

    iget-object v2, v0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoParams:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;

    iget-boolean v2, v2, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;->buyerSelected:Z

    move/from16 v18, v2

    invoke-direct/range {v3 .. v20}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;-><init>(Lcom/ebay/nautilus/domain/app/Authentication;Lcom/ebay/nautilus/domain/EbaySite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/experience/type/base/Action;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoParams:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;

    .line 332
    invoke-virtual/range {p0 .. p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->initDataManagers()V

    return-void

    .line 338
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->renderScreen()V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 246
    invoke-super {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->onStart()V

    .line 248
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 250
    new-instance v1, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->getTrackingEventName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/ebay/nautilus/domain/analytics/TrackingType;->PAGE_IMPRESSION:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    invoke-virtual {v1, v2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->trackingType(Lcom/ebay/nautilus/domain/analytics/TrackingType;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v1

    .line 251
    invoke-virtual {v1, v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->setSourceIdentification(Landroid/content/Intent;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v1

    .line 252
    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->build()Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    const-string v1, "extra_last_click_time"

    const/4 v2, 0x0

    .line 254
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    .line 255
    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->clickTimer:Lcom/ebay/common/util/ClickTimer;

    invoke-virtual {v2, v0, v1}, Lcom/ebay/common/util/ClickTimer;->setLastClickTime(J)V

    return-void
.end method

.method protected renderCallToAction(Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToActionModule;)V
    .locals 2

    const v0, 0x7f0a03b1

    .line 1425
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez p1, :cond_0

    const/16 p1, 0x8

    .line 1428
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 1432
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1433
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToActionModule;->text:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1434
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->purchaseButton:Landroid/widget/Button;

    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToActionModule;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1435
    :cond_1
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->trackRenderedModuleView(Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;)V

    return-void
.end method

.method public renderEgdTimer(Lcom/ebay/nautilus/domain/data/experience/checkout/details/CountdownTimer;Lcom/ebay/nautilus/domain/data/experience/checkout/details/CutoffTime;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
    .locals 7

    .line 2879
    invoke-virtual {p3}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x0

    const v1, 0x7f0d0504

    .line 2881
    invoke-virtual {p4, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/LinearLayout;

    const v1, 0x7f0a0479

    .line 2883
    invoke-virtual {p4, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a047a

    .line 2884
    invoke-virtual {p4, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/shell/widget/CountdownView;

    .line 2890
    iget-object p2, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/details/CutoffTime;->time:Lcom/ebay/nautilus/domain/data/cos/base/DateTime;

    const-wide/16 v3, 0x0

    if-eqz p2, :cond_2

    .line 2893
    iget-object v5, p2, Lcom/ebay/nautilus/domain/data/cos/base/DateTime;->formattedValue:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 2894
    iget-object p2, p2, Lcom/ebay/nautilus/domain/data/cos/base/DateTime;->formattedValue:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    goto :goto_0

    .line 2895
    :cond_0
    iget-object v5, p2, Lcom/ebay/nautilus/domain/data/cos/base/DateTime;->value:Ljava/util/Date;

    if-eqz v5, :cond_1

    .line 2896
    iget-object p2, p2, Lcom/ebay/nautilus/domain/data/cos/base/DateTime;->value:Ljava/util/Date;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    .line 2898
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long p2, v3, v5

    if-lez p2, :cond_2

    .line 2899
    iget-object p2, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v5, v3, v5

    invoke-virtual {p2, v5, v6}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->addCountdownTimerToReloadSession(J)V

    :cond_2
    if-eqz p1, :cond_3

    .line 2901
    iget p2, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/CountdownTimer;->lastLegThresholdInSeconds:I

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    if-eqz p1, :cond_4

    .line 2902
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/CountdownTimer;->timerText:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    invoke-static {p0, p1}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_2

    :cond_4
    const-string p1, ""

    .line 2904
    :goto_2
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2905
    invoke-virtual {v2, v3, v4}, Lcom/ebay/nautilus/shell/widget/CountdownView;->setEndDate(J)V

    .line 2906
    invoke-virtual {v2, p2}, Lcom/ebay/nautilus/shell/widget/CountdownView;->setThresholdInSeconds(I)V

    .line 2911
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    new-instance p2, Lcom/ebay/mobile/events/EventTimeLeftHelper$TimeSpan;

    .line 2912
    invoke-static {}, Lcom/ebay/nautilus/domain/net/EbayResponse;->currentHostTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-direct {p2, v3, v4}, Lcom/ebay/mobile/events/EventTimeLeftHelper$TimeSpan;-><init>(J)V

    const/4 v1, 0x1

    .line 2911
    invoke-static {p1, p2, v1}, Lcom/ebay/mobile/events/EventTimeLeftHelper;->getEndsInTimeMaxUnitAccessibilityString(Landroid/content/res/Resources;Lcom/ebay/mobile/events/EventTimeLeftHelper$TimeSpan;Z)Ljava/lang/String;

    move-result-object p1

    .line 2913
    invoke-virtual {v2, p1}, Lcom/ebay/nautilus/shell/widget/CountdownView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2915
    invoke-virtual {p3, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2916
    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method protected renderHeaderContent()V
    .locals 2

    .line 2921
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class v1, Lcom/ebay/nautilus/domain/data/experience/checkout/error/ErrorsModule;

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/error/ErrorsModule;

    if-eqz v0, :cond_0

    .line 2924
    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/error/ErrorsModule;->errors:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->renderErrors(Ljava/util/List;)V

    .line 2925
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->trackRenderedModuleView(Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;)V

    :cond_0
    return-void
.end method

.method protected renderLineItem(Landroid/view/ViewGroup;Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;)Z
    .locals 17
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 1498
    :cond_0
    iget-object v4, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;->errors:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 1499
    iget-object v4, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;->errors:Ljava/util/List;

    invoke-virtual {v0, v1, v4}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->renderInlineErrors(Landroid/view/ViewGroup;Ljava/util/List;)V

    .line 1501
    :cond_1
    iget-object v4, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;->listingSummaries:Ljava/util/List;

    if-eqz v4, :cond_18

    .line 1502
    iget-boolean v5, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;->selected:Z

    if-nez v5, :cond_2

    goto/16 :goto_c

    :cond_2
    const v5, 0x7f0a00e5

    .line 1505
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 1507
    invoke-static {v5, v3}, Lcom/ebay/mobile/util/Util;->setViewVisibility(Landroid/view/View;Z)V

    .line 1511
    :cond_3
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v5

    .line 1513
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v7, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ebay/nautilus/domain/data/experience/type/listing/ListingSummary;

    .line 1515
    iget-object v9, v0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->inflater:Landroid/view/LayoutInflater;

    const v10, 0x7f0d00e0

    .line 1516
    invoke-virtual {v9, v10, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 1518
    iget-object v10, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;->lineItemType:Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItemType;

    sget-object v11, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItemType;->SELLER_CREATED_ORDER:Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItemType;

    if-ne v10, v11, :cond_4

    const/4 v10, 0x1

    goto :goto_1

    :cond_4
    const/4 v10, 0x0

    :goto_1
    const/16 v11, 0x8

    if-eqz v10, :cond_6

    if-nez v7, :cond_6

    .line 1524
    invoke-virtual/range {p2 .. p2}, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;->isRemovable()Z

    move-result v12

    if-eqz v12, :cond_6

    iget-object v12, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;->actions:Ljava/util/Map;

    if-eqz v12, :cond_6

    .line 1526
    iget-object v7, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;->actions:Ljava/util/Map;

    sget-object v12, Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;->REMOVE_ITEM:Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;

    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    const v12, 0x7f0a0885

    .line 1527
    invoke-virtual {v9, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    if-eqz v7, :cond_5

    .line 1528
    iget-object v7, v7, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;->text:Ljava/lang/String;

    goto :goto_2

    :cond_5
    const/4 v7, 0x0

    :goto_2
    invoke-static {v12, v7, v11}, Lcom/ebay/mobile/util/Util;->updateFromText(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    .line 1529
    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v7, 0x7f0a1245

    .line 1530
    iget-object v13, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;->actionConfirmation:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/ActionConfirmation;

    .line 1531
    invoke-virtual {v12, v7, v13}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    const v7, 0x7f0a1246

    .line 1532
    iget-object v13, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;->lineItemId:Ljava/lang/String;

    invoke-virtual {v12, v7, v13}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    const/4 v7, 0x1

    :cond_6
    const v12, 0x7f0a093a

    .line 1538
    invoke-virtual {v9, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v12

    invoke-static {v12, v7}, Lcom/ebay/mobile/util/Util;->setViewVisibility(Landroid/view/View;Z)V

    .line 1540
    iget-object v7, v8, Lcom/ebay/nautilus/domain/data/experience/type/listing/ListingSummary;->image:Lcom/ebay/nautilus/domain/data/experience/type/base/Image;

    if-eqz v7, :cond_7

    iget-object v7, v8, Lcom/ebay/nautilus/domain/data/experience/type/listing/ListingSummary;->image:Lcom/ebay/nautilus/domain/data/experience/type/base/Image;

    iget-object v7, v7, Lcom/ebay/nautilus/domain/data/experience/type/base/Image;->url:Ljava/lang/String;

    if-eqz v7, :cond_7

    const v7, 0x7f0a08be

    .line 1542
    invoke-virtual {v9, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/ebay/android/widget/RemoteImageView;

    .line 1543
    iget-object v12, v8, Lcom/ebay/nautilus/domain/data/experience/type/listing/ListingSummary;->image:Lcom/ebay/nautilus/domain/data/experience/type/base/Image;

    invoke-virtual {v12}, Lcom/ebay/nautilus/domain/data/experience/type/base/Image;->getImageData()Lcom/ebay/nautilus/domain/data/image/ImageData;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/ebay/android/widget/RemoteImageView;->setImageData(Lcom/ebay/nautilus/domain/data/image/ImageData;)V

    .line 1546
    :cond_7
    iget-object v7, v8, Lcom/ebay/nautilus/domain/data/experience/type/listing/ListingSummary;->title:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    if-eqz v7, :cond_8

    const v7, 0x7f0a08ea

    .line 1548
    invoke-virtual {v9, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1549
    iget-object v12, v8, Lcom/ebay/nautilus/domain/data/experience/type/listing/ListingSummary;->title:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    invoke-static {v0, v12}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1552
    :cond_8
    iget-object v7, v8, Lcom/ebay/nautilus/domain/data/experience/type/listing/ListingSummary;->displayPrice:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplayValue;

    if-eqz v7, :cond_9

    const v7, 0x7f0a08cc

    .line 1554
    invoke-virtual {v9, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1555
    iget-object v12, v8, Lcom/ebay/nautilus/domain/data/experience/type/listing/ListingSummary;->displayPrice:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplayValue;

    invoke-static {v0, v12}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    const v7, 0x7f0a089a

    .line 1558
    invoke-virtual {v9, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 1559
    invoke-virtual/range {p2 .. p2}, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;->isEbayPlusMemberEnabled()Z

    move-result v12

    if-eqz v12, :cond_a

    sget-object v12, Lcom/ebay/mobile/dcs/Dcs$App$B;->ebayPlus:Lcom/ebay/mobile/dcs/Dcs$App$B;

    .line 1560
    invoke-interface {v5, v12}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v12

    if-eqz v12, :cond_a

    sget-object v12, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Payments$B;->ebayPlusMemberFlow:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Payments$B;

    invoke-interface {v5, v12}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v12

    if-eqz v12, :cond_a

    const/4 v12, 0x1

    goto :goto_3

    :cond_a
    const/4 v12, 0x0

    :goto_3
    if-eqz v12, :cond_b

    .line 1563
    new-instance v12, Lcom/ebay/mobile/uxcomponents/viewmodel/StyledTextThemeData;

    invoke-direct {v12, v0}, Lcom/ebay/mobile/uxcomponents/viewmodel/StyledTextThemeData;-><init>(Landroid/content/Context;)V

    .line 1564
    iget-object v13, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;->brandingIcon:Lcom/ebay/nautilus/domain/data/experience/type/base/Icon;

    invoke-virtual {v13}, Lcom/ebay/nautilus/domain/data/experience/type/base/Icon;->getIconName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/ebay/mobile/uxcomponents/viewmodel/StyledTextThemeData;->getIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1565
    iget-object v12, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;->brandingIcon:Lcom/ebay/nautilus/domain/data/experience/type/base/Icon;

    invoke-virtual {v12}, Lcom/ebay/nautilus/domain/data/experience/type/base/Icon;->getAccessibilityText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1566
    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 1569
    :cond_b
    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_4
    const v7, 0x7f0a08d6

    .line 1572
    invoke-virtual {v9, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    if-nez v10, :cond_d

    .line 1573
    invoke-virtual/range {p2 .. p2}, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;->isRemovable()Z

    move-result v10

    if-eqz v10, :cond_d

    iget-object v10, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;->actions:Ljava/util/Map;

    if-eqz v10, :cond_d

    .line 1575
    iget-object v10, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;->actions:Ljava/util/Map;

    sget-object v12, Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;->REMOVE_ITEM:Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;

    invoke-interface {v10, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    if-eqz v10, :cond_c

    .line 1578
    iget-object v12, v10, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;->text:Ljava/lang/String;

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1579
    iget-object v12, v10, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;->accessibilityText:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_c

    .line 1580
    iget-object v10, v10, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;->accessibilityText:Ljava/lang/String;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1582
    :cond_c
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1583
    iget-object v10, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;->lineItemId:Ljava/lang/String;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto :goto_5

    .line 1586
    :cond_d
    invoke-static {v7, v3}, Lcom/ebay/mobile/util/Util;->setViewVisibility(Landroid/view/View;Z)V

    :goto_5
    const v7, 0x7f0a08de

    .line 1589
    invoke-virtual {v9, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1590
    iget-object v10, v8, Lcom/ebay/nautilus/domain/data/experience/type/listing/ListingSummary;->energyEfficiencyRating:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    if-eqz v10, :cond_e

    .line 1591
    iget-object v10, v8, Lcom/ebay/nautilus/domain/data/experience/type/listing/ListingSummary;->energyEfficiencyRating:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    invoke-static {v0, v10}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 1593
    :cond_e
    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_6
    const v7, 0x7f0a08f1

    .line 1596
    invoke-virtual {v9, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v10, 0x7f0a08d0

    .line 1597
    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    const v12, 0x7f0a08ce

    .line 1598
    invoke-virtual {v9, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const v13, 0x7f0a08cf

    .line 1599
    invoke-virtual {v9, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    const v14, 0x7f0a08b2

    .line 1600
    invoke-virtual {v9, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 1601
    iget-object v15, v8, Lcom/ebay/nautilus/domain/data/experience/type/listing/ListingSummary;->xoListingExtension:Lcom/ebay/nautilus/domain/data/experience/checkout/details/XoListingExtension;

    if-eqz v15, :cond_13

    .line 1603
    iget-object v15, v8, Lcom/ebay/nautilus/domain/data/experience/type/listing/ListingSummary;->xoListingExtension:Lcom/ebay/nautilus/domain/data/experience/checkout/details/XoListingExtension;

    .line 1606
    iget-object v6, v15, Lcom/ebay/nautilus/domain/data/experience/checkout/details/XoListingExtension;->variation:Lcom/ebay/nautilus/domain/data/experience/checkout/details/ItemVariation;

    if-eqz v6, :cond_f

    iget-object v6, v15, Lcom/ebay/nautilus/domain/data/experience/checkout/details/XoListingExtension;->variation:Lcom/ebay/nautilus/domain/data/experience/checkout/details/ItemVariation;

    iget-object v6, v6, Lcom/ebay/nautilus/domain/data/experience/checkout/details/ItemVariation;->variationDisplay:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 1607
    iget-object v6, v15, Lcom/ebay/nautilus/domain/data/experience/checkout/details/XoListingExtension;->variation:Lcom/ebay/nautilus/domain/data/experience/checkout/details/ItemVariation;

    iget-object v6, v6, Lcom/ebay/nautilus/domain/data/experience/checkout/details/ItemVariation;->variationDisplay:Ljava/lang/String;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 1609
    :cond_f
    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1612
    :goto_7
    iget-object v6, v15, Lcom/ebay/nautilus/domain/data/experience/checkout/details/XoListingExtension;->selectedQuantity:Lcom/ebay/nautilus/domain/data/experience/checkout/InputField;

    if-eqz v6, :cond_11

    .line 1619
    invoke-virtual/range {p2 .. p2}, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;->getEditableMaxQuantity()I

    move-result v7

    const/4 v10, -0x1

    if-eq v7, v10, :cond_10

    .line 1622
    iget-object v10, v6, Lcom/ebay/nautilus/domain/data/experience/checkout/InputField;->label:Ljava/lang/String;

    iget-object v15, v6, Lcom/ebay/nautilus/domain/data/experience/checkout/InputField;->accessibilityText:Ljava/lang/String;

    invoke-static {v12, v10, v15, v11}, Lcom/ebay/mobile/util/Util;->updateFromText(Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 1624
    iget-object v10, v6, Lcom/ebay/nautilus/domain/data/experience/checkout/InputField;->value:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v13, v10, v11}, Lcom/ebay/mobile/util/Util;->updateFromText(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    .line 1626
    new-instance v10, Lcom/ebay/mobile/checkout/xoneor/-$$Lambda$CheckoutActivity$zIGISi3X5DXdZa-p0vnQFT4CTYk;

    invoke-direct {v10, v0, v6, v7, v2}, Lcom/ebay/mobile/checkout/xoneor/-$$Lambda$CheckoutActivity$zIGISi3X5DXdZa-p0vnQFT4CTYk;-><init>(Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;Lcom/ebay/nautilus/domain/data/experience/checkout/InputField;ILcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;)V

    invoke-virtual {v13, v10}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    goto :goto_8

    .line 1666
    :cond_10
    iget-object v7, v6, Lcom/ebay/nautilus/domain/data/experience/checkout/InputField;->label:Ljava/lang/String;

    iget-object v10, v6, Lcom/ebay/nautilus/domain/data/experience/checkout/InputField;->value:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    .line 1667
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v6, v6, Lcom/ebay/nautilus/domain/data/experience/checkout/InputField;->accessibilityText:Ljava/lang/String;

    .line 1666
    invoke-direct {v0, v12, v7, v10, v6}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->updateQuantityTextAndContentDescription(Landroid/widget/TextView;Ljava/lang/String;ILjava/lang/String;)V

    .line 1668
    invoke-virtual {v13, v11}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_8

    .line 1672
    :cond_11
    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1675
    :goto_8
    iget-object v6, v8, Lcom/ebay/nautilus/domain/data/experience/type/listing/ListingSummary;->xoListingExtension:Lcom/ebay/nautilus/domain/data/experience/checkout/details/XoListingExtension;

    iget-object v6, v6, Lcom/ebay/nautilus/domain/data/experience/checkout/details/XoListingExtension;->digitalGiftInfo:Lcom/ebay/nautilus/domain/data/experience/checkout/details/DigitalGiftInfo;

    if-eqz v6, :cond_12

    .line 1678
    iget-object v6, v6, Lcom/ebay/nautilus/domain/data/experience/checkout/details/DigitalGiftInfo;->email:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplayValue;

    invoke-static {v0, v6}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v14, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1679
    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_9

    .line 1682
    :cond_12
    invoke-virtual {v14, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_9

    .line 1686
    :cond_13
    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1687
    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1688
    invoke-virtual {v14, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1691
    :goto_9
    invoke-direct {v0, v9, v2}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->renderCashOnDelivery(Landroid/view/ViewGroup;Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;)V

    .line 1693
    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v7, 0x1

    goto/16 :goto_0

    .line 1699
    :cond_14
    iget-object v4, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;->logistics:Lcom/ebay/nautilus/domain/data/experience/checkout/details/Logistics;

    if-eqz v4, :cond_15

    iget-object v4, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;->logistics:Lcom/ebay/nautilus/domain/data/experience/checkout/details/Logistics;

    iget-object v4, v4, Lcom/ebay/nautilus/domain/data/experience/checkout/details/Logistics;->logisticsOptionsSequence:Ljava/util/List;

    if-eqz v4, :cond_15

    .line 1701
    iget-object v4, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;->logistics:Lcom/ebay/nautilus/domain/data/experience/checkout/details/Logistics;

    iget-object v4, v4, Lcom/ebay/nautilus/domain/data/experience/checkout/details/Logistics;->logisticsOptionsSequence:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;

    .line 1702
    invoke-virtual {v0, v1, v2, v6}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->renderShipping(Landroid/view/ViewGroup;Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;)V

    goto :goto_a

    .line 1705
    :cond_15
    invoke-virtual/range {p2 .. p2}, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;->isEbayPlusNonMemberEnabled()Z

    move-result v4

    if-eqz v4, :cond_16

    sget-object v4, Lcom/ebay/mobile/dcs/Dcs$App$B;->ebayPlus:Lcom/ebay/mobile/dcs/Dcs$App$B;

    .line 1706
    invoke-interface {v5, v4}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v4

    if-eqz v4, :cond_16

    sget-object v4, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Payments$B;->ebayPlusNonMemberFlow:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Payments$B;

    invoke-interface {v5, v4}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v4

    if-eqz v4, :cond_16

    const/16 v16, 0x1

    goto :goto_b

    :cond_16
    const/16 v16, 0x0

    :goto_b
    if-eqz v16, :cond_17

    .line 1708
    invoke-direct/range {p0 .. p2}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->renderBranding(Landroid/view/ViewGroup;Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;)V

    .line 1710
    :cond_17
    iget-boolean v1, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;->selected:Z

    return v1

    :cond_18
    :goto_c
    return v3
.end method

.method protected renderPaymentMethod()V
    .locals 18

    move-object/from16 v7, p0

    .line 2144
    iget-object v0, v7, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class v1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodsModule;

    .line 2145
    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodsModule;

    const v0, 0x7f0a0b86

    .line 2147
    invoke-virtual {v7, v0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/view/ViewGroup;

    const/16 v0, 0x8

    if-nez v8, :cond_0

    .line 2151
    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v10, 0x0

    .line 2155
    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    const v1, 0x7f0a0b80

    .line 2157
    invoke-virtual {v7, v1}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ebay/android/widget/RemoteImageView;

    const v2, 0x7f0a0b85

    .line 2158
    invoke-virtual {v7, v2}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a0b88

    .line 2159
    invoke-virtual {v7, v3}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Landroid/widget/TextView;

    const v3, 0x7f0a0b7f

    .line 2160
    invoke-virtual {v7, v3}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Landroid/view/ViewGroup;

    const v3, 0x7f0a0b97

    .line 2161
    invoke-virtual {v7, v3}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a0b98

    .line 2162
    invoke-virtual {v7, v4}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0a0b9b

    .line 2163
    invoke-virtual {v7, v5}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v13, v5

    check-cast v13, Landroid/widget/TextView;

    const v5, 0x7f0a0b8c

    .line 2164
    invoke-virtual {v7, v5}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0a0b7a

    .line 2165
    invoke-virtual {v7, v6}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    const v14, 0x7f040156

    const v15, 0x7f0601d9

    .line 2167
    invoke-static {v7, v14, v15}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeColor(Landroid/content/Context;II)I

    move-result v14

    .line 2170
    iget-object v15, v8, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodsModule;->moduleTitle:Ljava/lang/String;

    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2171
    invoke-virtual {v9, v7}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2172
    invoke-virtual {v12}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2173
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2174
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2175
    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2176
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2177
    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2180
    invoke-virtual/range {p0 .. p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v15, 0x7f070496

    invoke-virtual {v6, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-static {v9, v6}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->setBottomPadding(Landroid/view/ViewGroup;I)V

    .line 2183
    iget-object v6, v7, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {v6}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getPaymentMethodWithContingency()Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 2185
    invoke-virtual {v6}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->getPaymentInstrumentWithContingency()Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;

    move-result-object v16

    goto :goto_0

    :cond_1
    const/16 v16, 0x0

    .line 2188
    :goto_0
    iget-object v15, v7, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {v15}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->isPaymentMethodSelected()Z

    move-result v15

    if-nez v15, :cond_5

    .line 2190
    invoke-virtual {v1, v0}, Lcom/ebay/android/widget/RemoteImageView;->setVisibility(I)V

    .line 2191
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2192
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setVisibility(I)V

    const v1, 0x7f040435

    .line 2193
    invoke-static {v7, v1}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeResId(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v11, v1}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    if-eqz v6, :cond_3

    if-eqz v16, :cond_3

    .line 2197
    invoke-virtual/range {v16 .. v16}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;->getContingencyError()Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->renderError(Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;)V

    .line 2198
    invoke-virtual/range {v16 .. v16}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;->getContingencyModuleText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2201
    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2202
    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 2205
    :cond_2
    iget-object v1, v8, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodsModule;->text:Ljava/lang/String;

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const v1, 0x7f0a14a5

    .line 2206
    invoke-virtual {v7, v1}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v10, v10}, Landroid/view/View;->scrollTo(II)V

    goto :goto_2

    .line 2209
    :cond_3
    iget-object v1, v8, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodsModule;->text:Ljava/lang/String;

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2210
    :goto_2
    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2212
    iget-object v1, v8, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodsModule;->displayText:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    invoke-static {v1}, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->isEmpty(Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2214
    iget-object v1, v8, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodsModule;->displayText:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    invoke-static {v5, v1}, Lcom/ebay/mobile/util/ExperienceUtil;->updateFromTextualDisplay(Landroid/widget/TextView;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)V

    .line 2215
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2216
    iget-object v1, v7, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->isReadyToPurchase()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2217
    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    return-void

    :cond_5
    const v5, 0x7f13023e

    .line 2223
    invoke-static {v11, v5}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 2224
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setAllCaps(Z)V

    const/4 v5, 0x3

    .line 2225
    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 2229
    iget-object v5, v7, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {v5}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSelectedPaymentMethod()Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;

    move-result-object v15

    if-eqz v15, :cond_12

    .line 2235
    iget-object v5, v15, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->image:Lcom/ebay/nautilus/domain/data/experience/type/base/Image;

    if-eqz v5, :cond_6

    iget-object v5, v15, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->image:Lcom/ebay/nautilus/domain/data/experience/type/base/Image;

    iget-object v5, v5, Lcom/ebay/nautilus/domain/data/experience/type/base/Image;->url:Ljava/lang/String;

    if-eqz v5, :cond_6

    iget-object v5, v15, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->paymentMethodId:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    sget-object v6, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->CC:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    if-eq v5, v6, :cond_6

    .line 2237
    iget-object v5, v15, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->image:Lcom/ebay/nautilus/domain/data/experience/type/base/Image;

    invoke-virtual {v5}, Lcom/ebay/nautilus/domain/data/experience/type/base/Image;->getImageData()Lcom/ebay/nautilus/domain/data/image/ImageData;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/ebay/android/widget/RemoteImageView;->setImageData(Lcom/ebay/nautilus/domain/data/image/ImageData;)V

    .line 2238
    invoke-virtual {v1, v10}, Lcom/ebay/android/widget/RemoteImageView;->setVisibility(I)V

    .line 2239
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 2243
    :cond_6
    invoke-virtual {v1, v0}, Lcom/ebay/android/widget/RemoteImageView;->setVisibility(I)V

    .line 2244
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2247
    :goto_3
    invoke-virtual {v15}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->getSelectedPaymentInstrument()Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;

    move-result-object v1

    const v2, 0x1010036

    if-eqz v1, :cond_e

    .line 2250
    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;->getAccountLoginName()Ljava/lang/String;

    move-result-object v5

    .line 2251
    sget-object v6, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->CC:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    iget-object v0, v15, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->paymentMethodId:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    invoke-virtual {v6, v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_4

    .line 2255
    :cond_7
    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2256
    invoke-static {v7, v2}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2257
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    :cond_8
    :goto_4
    const/16 v0, 0x8

    .line 2252
    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2262
    :goto_5
    iget-object v0, v15, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->paymentMethodId:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    sget-object v2, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->PAYPAL_CREDIT:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    if-ne v0, v2, :cond_a

    .line 2264
    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;->COMPLETE_PAYMENT_METHOD:Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;

    invoke-virtual {v15, v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->getAction(Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;)Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2270
    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;->text:Ljava/lang/String;

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2271
    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x4

    .line 2272
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_8

    .line 2276
    :cond_9
    iget-object v0, v15, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->text:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2277
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2279
    iget-object v0, v15, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->paymentPromotions:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotions;

    if-eqz v0, :cond_f

    iget-object v0, v15, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->paymentPromotions:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotions;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotions;->promotionSummary:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotionSummary;

    if-eqz v0, :cond_f

    .line 2281
    iget-object v0, v15, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->paymentPromotions:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotions;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotions;->promotionSummary:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotionSummary;

    .line 2282
    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotionSummary;->message:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    if-eqz v1, :cond_f

    .line 2284
    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotionSummary;->message:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    invoke-static {v7, v0}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 2287
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2288
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8

    .line 2298
    :cond_a
    iget-object v0, v15, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->paymentMethodId:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    sget-object v2, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->PAYPAL:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    if-ne v0, v2, :cond_b

    .line 2300
    invoke-virtual {v15}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->getSelectedPaymentInstrument()Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2302
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;->getSelectedFundingPlan()Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingPlan;

    move-result-object v0

    move-object/from16 v17, v0

    goto :goto_6

    :cond_b
    const/16 v17, 0x0

    .line 2305
    :goto_6
    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;->getSelectedFundingSources()Ljava/util/List;

    move-result-object v0

    .line 2306
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    .line 2308
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_c
    :goto_7
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSource;

    .line 2310
    invoke-direct {v7, v12, v3}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->renderFundingSource(Landroid/view/ViewGroup;Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSource;)V

    const v6, 0x7f13023e

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object v2, v9

    move-object v4, v15

    move-object/from16 v5, v17

    .line 2311
    invoke-virtual/range {v0 .. v6}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->renderExchangeRate(Landroid/view/View$OnClickListener;Landroid/view/ViewGroup;Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSource;Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingPlan;I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2313
    invoke-static {v9}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->setBottomPaddingToZero(Landroid/view/ViewGroup;)V

    goto :goto_7

    .line 2315
    :cond_d
    invoke-virtual {v12, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_8

    .line 2321
    :cond_e
    iget-object v0, v15, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->text:Ljava/lang/String;

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2322
    invoke-static {v7, v2}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2323
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2327
    :cond_f
    :goto_8
    iget-object v0, v15, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->paymentMethodId:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->PAYPAL:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    if-eq v0, v1, :cond_10

    iget-object v0, v15, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->paymentMethodId:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->PAYPAL_CREDIT:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    if-ne v0, v1, :cond_11

    .line 2329
    :cond_10
    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;->SEE_TERMS:Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;

    invoke-virtual {v15, v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->getAction(Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;)Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 2332
    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;->text:Ljava/lang/String;

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a123f

    .line 2333
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    const v1, 0x7f0a123e

    .line 2334
    invoke-virtual {v13, v1, v0}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    const v0, 0x7f0a1240

    .line 2335
    iget-object v1, v15, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->text:Ljava/lang/String;

    invoke-virtual {v13, v0, v1}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 2336
    invoke-virtual {v13, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2337
    invoke-virtual {v13, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2341
    :cond_11
    iget-object v0, v15, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->paymentMethodId:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->DIRECT_DEBIT:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    if-ne v0, v1, :cond_12

    .line 2343
    iget-object v0, v15, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->text:Ljava/lang/String;

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2344
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2347
    :cond_12
    invoke-virtual {v7, v8}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->trackRenderedModuleView(Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;)V

    return-void
.end method

.method protected renderScreen()V
    .locals 4

    .line 1214
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    if-nez v0, :cond_0

    return-void

    .line 1219
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->hasHeaderContent()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const v0, 0x7f0a14a5

    .line 1220
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->scrollTo(II)V

    .line 1224
    :cond_1
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class v2, Lcom/ebay/nautilus/domain/data/experience/checkout/success/SuccessModule;

    invoke-virtual {v0, v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/success/SuccessModule;

    if-eqz v0, :cond_2

    const/4 v1, -0x1

    .line 1227
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->setResult(I)V

    .line 1228
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->meta:Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutServiceMeta;

    invoke-direct {p0, v0, v1}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->handlePurchaseCompleteAction(Lcom/ebay/nautilus/domain/data/experience/checkout/success/SuccessModule;Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutServiceMeta;)Landroid/content/Intent;

    return-void

    .line 1231
    :cond_2
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->hasFatalError()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1233
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->meta:Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->meta:Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutServiceMeta;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutServiceMeta;->xoServiceMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutServiceMetaExtension;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->meta:Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutServiceMeta;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutServiceMeta;->xoServiceMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutServiceMetaExtension;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutServiceMetaExtension;->pageTitle:Ljava/lang/String;

    .line 1234
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1235
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->meta:Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutServiceMeta;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutServiceMeta;->xoServiceMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutServiceMetaExtension;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutServiceMetaExtension;->pageTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1237
    :cond_3
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->handlePayPalContingency()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1239
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->stopProgress()V

    return-void

    .line 1244
    :cond_4
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->renderScreenViews()V

    .line 1246
    iget-boolean v0, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->isOverlayShown:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->shouldShowSplitOrderSuccess()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1248
    new-instance v0, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v2

    iget-object v3, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    iget-object v3, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->meta:Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;

    check-cast v3, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutServiceMeta;

    iget-object v3, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutServiceMeta;->screenFlowDestination:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    invoke-direct {v0, p0, v2, v3}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;-><init>(Landroid/app/Activity;Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/data/experience/type/base/Action;)V

    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoParams:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;

    .line 1249
    invoke-virtual {v0, v2}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;->setXoParams(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;)Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    .line 1250
    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->isPayPalFlowInIntermediatedCheckout()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;->setPayPalFlowInIntermediatedCheckout(Z)Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;

    move-result-object v0

    .line 1251
    invoke-virtual {v0}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;->buildAndHandleAction()V

    :cond_5
    const v0, 0x7f0a1036

    .line 1254
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const v2, 0x7f0a00e0

    if-nez v0, :cond_6

    const v0, 0x7f0a0b86

    .line 1255
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_6

    const v0, 0x7f0a0580

    .line 1256
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_6

    const v0, 0x7f0a07ff

    .line 1257
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_6

    .line 1260
    invoke-virtual {p0, v2}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1263
    :cond_6
    invoke-virtual {p0, v2}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1266
    :goto_0
    sget-boolean v0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->skipBuyToThankYouPage:Z

    const/4 v2, 0x1

    if-nez v0, :cond_7

    sget-boolean v0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->skipBuyToThankYouPageV2:Z

    if-eqz v0, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    if-eqz v0, :cond_8

    .line 1268
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->purchaseButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 1272
    :cond_8
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->purchaseButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {v3}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->isReadyToPurchase()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->userAgreementIsAccepted()Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v1, 0x1

    :cond_9
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1275
    :goto_1
    const-class v0, Lcom/ebay/mobile/appspeed/AppSpeedShim;

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->getShim(Ljava/lang/Class;)Lcom/ebay/nautilus/shell/app/ActivityShim;

    move-result-object v0

    check-cast v0, Lcom/ebay/mobile/appspeed/AppSpeedShim;

    if-eqz v0, :cond_c

    .line 1278
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->isAsyncCreate()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string/jumbo v1, "sessionAsync"

    goto :goto_2

    :cond_a
    const-string/jumbo v1, "sessionSync"

    :goto_2
    invoke-virtual {v0, v1}, Lcom/ebay/mobile/appspeed/AppSpeedShim;->addTag(Ljava/lang/String;)V

    .line 1280
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->isEbayIntermediatedPayment()Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "intermediatedEbay"

    goto :goto_3

    :cond_b
    const-string v1, "intermediatedPayPal"

    :goto_3
    invoke-virtual {v0, v1}, Lcom/ebay/mobile/appspeed/AppSpeedShim;->addTag(Ljava/lang/String;)V

    .line 1282
    invoke-virtual {v0}, Lcom/ebay/mobile/appspeed/AppSpeedShim;->atfRendered()V

    :cond_c
    const-string v0, "CheckoutPage"

    .line 1285
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->sendCheckoutPageImpression(Ljava/lang/String;)V

    .line 1288
    :cond_d
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->isTaskRunning()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1290
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->stopProgress()V

    .line 1291
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->focusOnDeliveryMethodForAccessibility()V

    :cond_e
    return-void
.end method

.method protected renderScreenViews()V
    .locals 2

    .line 1380
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->renderHeaderContent()V

    .line 1381
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class v1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/CartDetailsModule;

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/details/CartDetailsModule;

    invoke-direct {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->renderCartDetails(Lcom/ebay/nautilus/domain/data/experience/checkout/details/CartDetailsModule;)V

    .line 1382
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->renderShipTo()V

    .line 1383
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class v1, Lcom/ebay/nautilus/domain/data/experience/checkout/document/SupportingDocumentsModule;

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/document/SupportingDocumentsModule;

    invoke-direct {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->renderDocuments(Lcom/ebay/nautilus/domain/data/experience/checkout/document/SupportingDocumentsModule;)V

    .line 1384
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->renderPaymentMethod()V

    .line 1385
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class v1, Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;

    invoke-direct {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->renderCharity(Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;)V

    .line 1386
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class v1, Lcom/ebay/nautilus/domain/data/experience/checkout/incentive/IncentivesModule;

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/incentive/IncentivesModule;

    invoke-direct {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->renderIncentives(Lcom/ebay/nautilus/domain/data/experience/checkout/incentive/IncentivesModule;)V

    .line 1387
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class v1, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryModule;

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryModule;

    invoke-direct {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->renderSummary(Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryModule;)V

    .line 1388
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class v1, Lcom/ebay/nautilus/domain/data/experience/checkout/rewards/SessionRewardsModule;

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/rewards/SessionRewardsModule;

    invoke-direct {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->renderLoyalty(Lcom/ebay/nautilus/domain/data/experience/checkout/rewards/SessionRewardsModule;)V

    .line 1389
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class v1, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryModule;

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryModule;

    invoke-direct {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->renderUserAgreements(Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryModule;)V

    .line 1390
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->config:Lcom/ebay/mobile/dcs/DcsHelper;

    invoke-virtual {v0}, Lcom/ebay/mobile/dcs/DcsHelper;->getConfig()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v0

    sget-object v1, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Payments$B;->seekSurvey:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Payments$B;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1391
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class v1, Lcom/ebay/nautilus/domain/data/experience/checkout/survey/SurveyModule;

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/survey/SurveyModule;

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->renderSurvey(Lcom/ebay/nautilus/domain/data/experience/checkout/survey/SurveyModule;)V

    .line 1392
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class v1, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToActionModule;

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToActionModule;

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->renderCallToAction(Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToActionModule;)V

    return-void
.end method

.method protected renderShipTo()V
    .locals 7

    .line 2074
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/ShippingAddressesModule;

    .line 2075
    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/ShippingAddressesModule;

    const v1, 0x7f0a1036

    .line 2077
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    if-eqz v0, :cond_5

    .line 2080
    iget-object v4, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/ShippingAddressesModule;->addresses:Ljava/util/List;

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/address/ShippingAddressesModule;->hasError()Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v4, 0x0

    .line 2086
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v2, 0x7f0a1035

    .line 2088
    invoke-virtual {p0, v2}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2089
    iget-object v5, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/ShippingAddressesModule;->moduleTitle:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2092
    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSelectedCheckoutAddress()Lcom/ebay/nautilus/domain/data/experience/checkout/address/Address;

    move-result-object v2

    const v5, 0x7f0a1033

    .line 2093
    invoke-virtual {p0, v5}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 2094
    iget-object v6, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/address/Address;->addressLines:Ljava/util/List;

    if-eqz v6, :cond_1

    iget-object v6, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/address/Address;->addressLines:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 2096
    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/address/Address;->addressLines:Ljava/util/List;

    invoke-static {v2}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->getSpannableFromStringArray(Ljava/util/List;)Landroid/text/Spannable;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2097
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 2100
    :cond_1
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    const v2, 0x7f0a1034

    .line 2103
    invoke-virtual {p0, v2}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    .line 2106
    iget-object v5, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/ShippingAddressesModule;->errors:Ljava/util/List;

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/ShippingAddressesModule;->errors:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2108
    iget-object v5, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/ShippingAddressesModule;->errors:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;

    .line 2109
    invoke-static {p0, v2, v5}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->renderInLineError(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;)I

    .line 2110
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 2113
    :cond_2
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2116
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/address/ShippingAddressesModule;->hasAction()Z

    move-result v2

    const v5, 0x7f0a1032

    if-eqz v2, :cond_4

    .line 2118
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2119
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 2120
    invoke-virtual {p0, v5}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 2124
    :cond_4
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2125
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setClickable(Z)V

    .line 2126
    invoke-virtual {p0, v5}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2128
    :goto_2
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->trackRenderedModuleView(Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;)V

    return-void

    .line 2082
    :cond_5
    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public renderShipping(Landroid/view/ViewGroup;Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;)V
    .locals 23
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 1793
    invoke-virtual/range {p2 .. p3}, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;->getLogisticsType(Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;)Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsList;

    move-result-object v4

    if-eqz v4, :cond_1e

    .line 1794
    iget-object v5, v4, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsList;->logisticsPlans:Ljava/util/List;

    if-nez v5, :cond_0

    goto/16 :goto_12

    .line 1797
    :cond_0
    iget-object v5, v0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->inflater:Landroid/view/LayoutInflater;

    const v6, 0x7f0d00de

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    const v6, 0x7f0a1049

    .line 1798
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    const v8, 0x7f0a1093

    .line 1799
    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RadioButton;

    const v9, 0x7f0a08da

    .line 1800
    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    const v10, 0x7f0a104f

    .line 1801
    invoke-virtual {v5, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    const v11, 0x7f0a1075

    .line 1802
    invoke-virtual {v5, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 1804
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const v13, 0x7f0a124c

    .line 1807
    invoke-virtual {v9, v13, v3}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 1811
    invoke-virtual {v4}, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsList;->getSelectedLogisticsPlan()Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;

    move-result-object v14

    if-nez v14, :cond_1

    .line 1815
    invoke-virtual {v4}, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsList;->getFirstLogisticsPlan()Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;

    move-result-object v14

    const/16 v16, 0x0

    goto :goto_0

    :cond_1
    const/16 v16, 0x1

    :goto_0
    const v13, 0x7f0a10ba

    .line 1821
    invoke-virtual {v5, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    const v15, 0x7f0a10b3

    .line 1822
    invoke-virtual {v5, v15}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 1823
    sget-object v7, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;->GLOBAL_SHIPPING:Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;

    move-object/from16 v17, v10

    const/16 v10, 0x8

    if-ne v3, v7, :cond_3

    if-eqz v14, :cond_2

    .line 1825
    iget-object v7, v14, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;->text:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v7, v4, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsList;->sectionTitle:Ljava/lang/String;

    :goto_1
    invoke-static {v13, v7, v10}, Lcom/ebay/mobile/util/Util;->updateFromText(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    .line 1826
    invoke-virtual {v15, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 1830
    :cond_3
    iget-object v7, v4, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsList;->sectionTitle:Ljava/lang/String;

    invoke-static {v13, v7, v10}, Lcom/ebay/mobile/util/Util;->updateFromText(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    .line 1831
    iget-object v7, v4, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsList;->sectionSubtitle:Ljava/lang/String;

    invoke-static {v15, v7, v10}, Lcom/ebay/mobile/util/Util;->updateFromText(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    .line 1833
    :goto_2
    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1834
    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v7, 0x7f0a1059

    .line 1836
    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    if-eqz v14, :cond_4

    .line 1837
    iget-object v15, v14, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;->deliveryEstimate:Lcom/ebay/nautilus/domain/data/experience/checkout/details/DeliveryEstimate;

    goto :goto_3

    :cond_4
    const/4 v15, 0x0

    :goto_3
    if-eqz v15, :cond_5

    if-eqz v7, :cond_5

    const v13, 0x7f0a05cd

    .line 1840
    invoke-virtual {v5, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup;

    .line 1841
    invoke-virtual {v13}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1842
    iget-object v15, v15, Lcom/ebay/nautilus/domain/data/experience/checkout/details/DeliveryEstimate;->estimatedDeliveryMessages:Ljava/util/List;

    if-eqz v15, :cond_5

    .line 1845
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v10, v18

    check-cast v10, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-object/from16 v19, v15

    const v15, 0x7f0d00c1

    move-object/from16 v20, v6

    .line 1847
    iget-object v6, v0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->inflater:Landroid/view/LayoutInflater;

    .line 1848
    invoke-static {v10, v15, v6}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->renderEgdMessage(Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;ILandroid/view/LayoutInflater;)Landroid/widget/RelativeLayout;

    move-result-object v6

    invoke-virtual {v13, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v6, 0x7f0a05ce

    .line 1851
    invoke-virtual {v13, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    .line 1850
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    .line 1852
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, v19

    move-object/from16 v6, v20

    const/16 v10, 0x8

    goto :goto_4

    :cond_5
    move-object/from16 v20, v6

    if-eqz v14, :cond_6

    .line 1860
    iget-object v6, v14, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;->brandingIcon:Lcom/ebay/nautilus/domain/data/experience/type/base/Icon;

    iget-object v10, v14, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;->brandingText:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    invoke-virtual {v0, v5, v6, v10}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->populateBranding(Landroid/view/ViewGroup;Lcom/ebay/nautilus/domain/data/experience/type/base/Icon;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)V

    const v6, 0x7f0a14a4

    .line 1861
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    .line 1862
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    if-eqz v14, :cond_7

    .line 1865
    iget-object v13, v14, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;->cutoffTime:Lcom/ebay/nautilus/domain/data/experience/checkout/details/CutoffTime;

    goto :goto_5

    :cond_7
    const/4 v13, 0x0

    :goto_5
    if-eqz v14, :cond_8

    .line 1866
    iget-object v6, v14, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;->countdownTimer:Lcom/ebay/nautilus/domain/data/experience/checkout/details/CountdownTimer;

    goto :goto_6

    :cond_8
    const/4 v6, 0x0

    :goto_6
    if-eqz v6, :cond_9

    if-eqz v13, :cond_9

    if-eqz v7, :cond_9

    .line 1869
    iget-object v10, v0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v6, v13, v7, v10}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->renderEgdTimer(Lcom/ebay/nautilus/domain/data/experience/checkout/details/CountdownTimer;Lcom/ebay/nautilus/domain/data/experience/checkout/details/CutoffTime;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    const v6, 0x7f0a0479

    .line 1870
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    .line 1871
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v6, 0x7f0a047a

    .line 1872
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    .line 1873
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    .line 1874
    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_7

    :cond_9
    const v6, 0x7f0a105a

    .line 1878
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    if-eqz v13, :cond_a

    if-eqz v6, :cond_a

    .line 1881
    iget-object v7, v13, Lcom/ebay/nautilus/domain/data/experience/checkout/details/CutoffTime;->text:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    const/16 v10, 0x8

    invoke-static {v6, v7, v10}, Lcom/ebay/mobile/util/ExperienceUtil;->updateFromTextualDisplay(Landroid/widget/TextView;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;I)V

    .line 1882
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    :goto_7
    const v6, 0x7f0a10b2

    .line 1888
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1889
    sget-object v7, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;->IN_STORE_PICKUP:Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;

    if-eq v3, v7, :cond_c

    sget-object v7, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;->PICKUP_AND_DROPOFF:Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;

    if-ne v3, v7, :cond_b

    goto :goto_8

    :cond_b
    const/16 v7, 0x8

    .line 1910
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_9

    .line 1891
    :cond_c
    :goto_8
    iget-object v7, v4, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsList;->pickupDetails:Lcom/ebay/nautilus/domain/data/experience/checkout/details/PickupServiceDetails;

    if-eqz v7, :cond_d

    .line 1892
    iget-object v10, v7, Lcom/ebay/nautilus/domain/data/experience/checkout/details/PickupServiceDetails;->storeAddress:Lcom/ebay/nautilus/domain/data/experience/checkout/address/Address;

    if-eqz v10, :cond_d

    .line 1894
    iget-object v7, v7, Lcom/ebay/nautilus/domain/data/experience/checkout/details/PickupServiceDetails;->storeAddress:Lcom/ebay/nautilus/domain/data/experience/checkout/address/Address;

    iget-object v7, v7, Lcom/ebay/nautilus/domain/data/experience/checkout/address/Address;->addressLines:Ljava/util/List;

    invoke-static {v7}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->getSpannableFromStringArray(Ljava/util/List;)Landroid/text/Spannable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1895
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 1899
    :cond_d
    sget-object v7, Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;->SELECT_STORE:Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;

    invoke-virtual {v4, v7}, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsList;->getAction(Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;)Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    move-result-object v7

    if-eqz v7, :cond_e

    .line 1902
    iget-object v7, v7, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;->text:Ljava/lang/String;

    const/16 v10, 0x8

    invoke-static {v6, v7, v10}, Lcom/ebay/mobile/util/Util;->updateFromText(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    .line 1903
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_e
    const/16 v10, 0x8

    .line 1906
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_9
    const v6, 0x7f0a07b6

    .line 1912
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/ebay/android/widget/RemoteImageView;

    if-eqz v14, :cond_f

    .line 1913
    iget-object v7, v14, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;->image:Lcom/ebay/nautilus/domain/data/experience/type/base/Image;

    if-eqz v7, :cond_f

    .line 1915
    iget-object v7, v14, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;->image:Lcom/ebay/nautilus/domain/data/experience/type/base/Image;

    invoke-virtual {v7}, Lcom/ebay/nautilus/domain/data/experience/type/base/Image;->getImageData()Lcom/ebay/nautilus/domain/data/image/ImageData;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/ebay/android/widget/RemoteImageView;->setImageData(Lcom/ebay/nautilus/domain/data/image/ImageData;)V

    .line 1916
    iget-object v7, v14, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;->image:Lcom/ebay/nautilus/domain/data/experience/type/base/Image;

    iget-object v7, v7, Lcom/ebay/nautilus/domain/data/experience/type/base/Image;->title:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/ebay/android/widget/RemoteImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1917
    iget-object v7, v14, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;->image:Lcom/ebay/nautilus/domain/data/experience/type/base/Image;

    iget-object v7, v7, Lcom/ebay/nautilus/domain/data/experience/type/base/Image;->title:Ljava/lang/String;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x1

    .line 1918
    invoke-static {v6, v7}, Lcom/ebay/mobile/util/Util;->setViewVisibility(Landroid/view/View;Z)V

    :cond_f
    const v6, 0x7f0a105e

    .line 1921
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    if-eqz v14, :cond_11

    .line 1922
    sget-object v7, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;->IN_STORE_PICKUP:Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;

    iget-object v10, v14, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;->logisticsType:Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;

    if-eq v7, v10, :cond_11

    .line 1924
    iget-object v7, v14, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;->deliveryEstimate:Lcom/ebay/nautilus/domain/data/experience/checkout/details/DeliveryEstimate;

    const/4 v10, 0x1

    .line 1925
    invoke-static {v0, v7, v10}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->getLocalizedDeliveryEstimate(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/checkout/details/DeliveryEstimate;Z)Ljava/lang/String;

    move-result-object v7

    iget-object v10, v14, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;->deliveryEstimate:Lcom/ebay/nautilus/domain/data/experience/checkout/details/DeliveryEstimate;

    if-eqz v10, :cond_10

    iget-object v10, v14, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;->deliveryEstimate:Lcom/ebay/nautilus/domain/data/experience/checkout/details/DeliveryEstimate;

    iget-object v13, v10, Lcom/ebay/nautilus/domain/data/experience/checkout/details/DeliveryEstimate;->accessibilityText:Ljava/lang/String;

    const/16 v10, 0x8

    goto :goto_a

    :cond_10
    const/16 v10, 0x8

    const/4 v13, 0x0

    .line 1924
    :goto_a
    invoke-static {v6, v7, v13, v10}, Lcom/ebay/mobile/util/Util;->updateFromText(Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 1927
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_11
    const/16 v10, 0x8

    .line 1930
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_b
    const v6, 0x7f0a1088

    .line 1934
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    if-eqz v14, :cond_12

    .line 1935
    sget-object v7, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;->GLOBAL_SHIPPING:Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;

    if-ne v3, v7, :cond_12

    .line 1937
    iget-object v7, v14, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;->subText:Ljava/lang/String;

    invoke-static {v6, v7, v10}, Lcom/ebay/mobile/util/Util;->updateFromText(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    .line 1938
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    :cond_12
    if-eqz v14, :cond_13

    .line 1940
    sget-object v7, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;->IN_STORE_PICKUP:Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;

    if-eq v3, v7, :cond_13

    sget-object v7, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;->PICKUP_AND_DROPOFF:Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;

    if-eq v3, v7, :cond_13

    iget-object v7, v14, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;->text:Ljava/lang/String;

    .line 1941
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_13

    iget-object v7, v14, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;->loyaltyServiceType:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/LoyaltyServiceType;

    sget-object v10, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/LoyaltyServiceType;->EBAY_PLUS:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/LoyaltyServiceType;

    if-eq v7, v10, :cond_13

    .line 1944
    iget-object v7, v14, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;->text:Ljava/lang/String;

    const/16 v10, 0x8

    invoke-static {v6, v7, v10}, Lcom/ebay/mobile/util/Util;->updateFromText(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    .line 1945
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    :cond_13
    const/16 v10, 0x8

    .line 1948
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_c
    const v6, 0x7f0a1051

    .line 1951
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    if-eqz v14, :cond_14

    .line 1952
    iget-object v7, v14, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;->amount:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplayValue;

    if-eqz v7, :cond_14

    .line 1954
    iget-object v7, v14, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;->amount:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplayValue;

    invoke-static {v0, v7}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1955
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_14
    const/16 v7, 0x8

    .line 1958
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_d
    const v6, 0x7f0a124d

    if-eqz v14, :cond_16

    .line 1961
    iget-object v7, v14, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;->logisticsType:Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;

    sget-object v10, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;->GLOBAL_SHIPPING:Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;

    if-ne v7, v10, :cond_16

    const v7, 0x7f0a124c

    .line 1963
    invoke-virtual {v9, v7, v3}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 1964
    iget-object v7, v14, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;->logisticsInfoToolTip:Lcom/ebay/nautilus/domain/data/experience/checkout/common/ToolTip;

    invoke-virtual {v9, v6, v7}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 1965
    iget-object v7, v14, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;->logisticsInfoToolTip:Lcom/ebay/nautilus/domain/data/experience/checkout/common/ToolTip;

    if-eqz v7, :cond_15

    .line 1967
    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v7, 0x7f0a1076

    .line 1968
    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_15
    const v7, 0x7f12011d

    .line 1970
    invoke-virtual {v0, v7}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x8

    .line 1971
    invoke-virtual {v11, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1974
    :cond_16
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1978
    sget-object v5, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryItemType;->IMPORT_CHARGE:Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryItemType;

    invoke-virtual {v2, v5}, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;->getSummaryItem(Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryItemType;)Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryItem;

    move-result-object v5

    if-eqz v5, :cond_17

    .line 1982
    iget-object v7, v0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->inflater:Landroid/view/LayoutInflater;

    const v10, 0x7f0d00df

    const/4 v13, 0x0

    .line 1983
    invoke-virtual {v7, v10, v1, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    const v10, 0x7f0a0737

    .line 1985
    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    const v13, 0x7f0a0739

    .line 1986
    invoke-virtual {v7, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    const v15, 0x7f0a0738

    .line 1987
    invoke-virtual {v7, v15}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    const v6, 0x7f0a0735

    .line 1988
    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    move-object/from16 v21, v8

    const v8, 0x7f0a0732

    .line 1989
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    move-object/from16 v22, v8

    .line 1990
    iget-object v8, v5, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryItem;->text:Ljava/lang/String;

    invoke-virtual {v13, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1991
    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v8, "\n"

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1992
    iget-object v8, v5, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryItem;->subText:Ljava/lang/String;

    invoke-virtual {v15, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1993
    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v8, "\n"

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1994
    iget-object v8, v5, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryItem;->amount:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplayValue;

    invoke-static {v0, v8}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1995
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1996
    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1997
    iget-object v5, v5, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryItem;->summaryInfoTooltip:Lcom/ebay/nautilus/domain/data/experience/checkout/common/ToolTip;

    const v6, 0x7f0a124d

    invoke-virtual {v10, v6, v5}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 1998
    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object/from16 v1, v22

    goto :goto_e

    :cond_17
    move-object/from16 v21, v8

    const/4 v1, 0x0

    .line 2002
    :goto_e
    iget-object v5, v4, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsList;->logisticsPlans:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const v6, 0x7f0a124b

    const v7, 0x7f0a124a

    const v8, 0x7f0a1249

    const/4 v10, 0x1

    if-gt v5, v10, :cond_19

    sget-object v5, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;->IN_STORE_PICKUP:Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;

    if-eq v3, v5, :cond_19

    sget-object v5, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;->PICKUP_AND_DROPOFF:Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;

    if-ne v3, v5, :cond_18

    goto :goto_f

    :cond_18
    const/16 v5, 0x8

    .line 2015
    invoke-virtual {v11, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_10

    .line 2005
    :cond_19
    :goto_f
    iget-object v5, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;->lineItemId:Ljava/lang/String;

    invoke-virtual {v9, v8, v5}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    if-eqz v14, :cond_1a

    .line 2007
    iget-object v5, v14, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;->logisticsId:Ljava/lang/String;

    invoke-virtual {v9, v7, v5}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 2008
    :cond_1a
    iget-object v5, v4, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsList;->subType:Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsSubType;

    invoke-virtual {v9, v6, v5}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 2009
    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v5, 0x1

    .line 2010
    invoke-virtual {v9, v5}, Landroid/view/ViewGroup;->setClickable(Z)V

    const/4 v5, 0x0

    .line 2011
    invoke-virtual {v11, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    const v5, 0x7f120eab

    .line 2012
    invoke-virtual {v0, v5}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2017
    :goto_10
    iget-object v5, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;->logistics:Lcom/ebay/nautilus/domain/data/experience/checkout/details/Logistics;

    invoke-virtual {v5}, Lcom/ebay/nautilus/domain/data/experience/checkout/details/Logistics;->hasMoreThanOneLogisticsType()Z

    move-result v5

    const/4 v10, 0x4

    if-eqz v5, :cond_1d

    move/from16 v15, v16

    move-object/from16 v5, v21

    .line 2019
    invoke-virtual {v5, v15}, Landroid/widget/RadioButton;->setChecked(Z)V

    move-object/from16 v11, v20

    .line 2020
    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2021
    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;->lineItemId:Ljava/lang/String;

    invoke-virtual {v11, v8, v2}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    if-eqz v14, :cond_1b

    .line 2023
    iget-object v2, v14, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;->logisticsId:Ljava/lang/String;

    invoke-virtual {v11, v7, v2}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    :cond_1b
    const v2, 0x7f0a124c

    .line 2024
    invoke-virtual {v11, v2, v3}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 2025
    iget-object v2, v4, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsList;->subType:Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsSubType;

    invoke-virtual {v11, v6, v2}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    const/4 v2, 0x0

    .line 2026
    invoke-virtual {v11, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v2, 0x2

    move-object/from16 v3, v17

    .line 2027
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    if-eqz v1, :cond_1c

    .line 2029
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    .line 2030
    :cond_1c
    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    .line 2031
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/RadioButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_11

    :cond_1d
    move-object/from16 v11, v20

    .line 2034
    invoke-virtual {v11, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_11
    return-void

    :cond_1e
    :goto_12
    return-void
.end method

.method public setHasShippingMethodChanged(Z)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 2967
    iput-boolean p1, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->hasShippingMethodChanged:Z

    return-void
.end method

.method public setLineItemId(Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 2982
    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->lineItemId:Ljava/lang/String;

    return-void
.end method

.method protected shouldPurchaseSession()Z
    .locals 5

    .line 602
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->skipBuyToThankYouPage:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->skipBuyToThankYouPageV2:Z

    if-eqz v0, :cond_2

    .line 604
    :cond_0
    new-instance v0, Lcom/ebay/nautilus/domain/data/experience/checkout/success/SuccessModule;

    invoke-direct {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/success/SuccessModule;-><init>()V

    const v3, 0x7f120a34

    .line 605
    invoke-virtual {p0, v3}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/success/SuccessModule;->title:Ljava/lang/String;

    .line 606
    sget-boolean v3, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->skipBuyToThankYouPageV2:Z

    if-eqz v3, :cond_1

    .line 608
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v3

    sget-object v4, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Payments$B;->checkoutSuccessWithOrderDetails:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Payments$B;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->setDevOverride(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;Ljava/lang/Boolean;)V

    .line 609
    new-instance v2, Lcom/ebay/nautilus/domain/data/experience/checkout/success/SuccessDetails;

    invoke-direct {v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/success/SuccessDetails;-><init>()V

    .line 610
    new-instance v3, Lcom/ebay/nautilus/domain/data/experience/checkout/success/SuccessOrdersInfo;

    invoke-direct {v3}, Lcom/ebay/nautilus/domain/data/experience/checkout/success/SuccessOrdersInfo;-><init>()V

    iput-object v3, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/success/SuccessDetails;->successOrdersInfo:Lcom/ebay/nautilus/domain/data/experience/checkout/success/SuccessOrdersInfo;

    .line 611
    iput-object v2, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/success/SuccessModule;->successDetails:Lcom/ebay/nautilus/domain/data/experience/checkout/success/SuccessDetails;

    .line 612
    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->meta:Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->meta:Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;

    check-cast v2, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutServiceMeta;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutServiceMeta;->xoServiceMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutServiceMetaExtension;

    if-eqz v2, :cond_1

    .line 613
    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->meta:Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;

    check-cast v2, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutServiceMeta;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutServiceMeta;->xoServiceMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutServiceMetaExtension;

    sget-object v3, Lcom/ebay/nautilus/domain/data/experience/checkout/session/PageLayout;->ORDER_DETAILS_SUCCESS_EXPERIENCE:Lcom/ebay/nautilus/domain/data/experience/checkout/session/PageLayout;

    iput-object v3, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutServiceMetaExtension;->pageLayout:Lcom/ebay/nautilus/domain/data/experience/checkout/session/PageLayout;

    .line 616
    :cond_1
    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class v3, Lcom/ebay/nautilus/domain/data/experience/checkout/success/SuccessModule;

    invoke-virtual {v2, v3, v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->setSessionModule(Ljava/lang/reflect/Type;Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;)V

    .line 617
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->renderScreen()V

    return v1

    .line 621
    :cond_2
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    if-nez v0, :cond_3

    const v0, 0x7f12077c

    .line 623
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f12046b

    .line 624
    invoke-virtual {p0, v3}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 625
    invoke-virtual {p0, v0, v3, v2}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->showDynamicAlertDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    return v1

    .line 629
    :cond_3
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->startProgress()V

    return v2
.end method

.method userAgreementIsAccepted()Z
    .locals 7

    .line 2788
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class v1, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryModule;

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryModule;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 2791
    iget-object v2, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryModule;->userAgreements:Ljava/util/List;

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryModule;->userAgreements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const v2, 0x7f0a13a9

    .line 2794
    invoke-virtual {p0, v2}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 2796
    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryModule;->userAgreements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/UserAgreement;

    .line 2798
    iget-object v6, v5, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/UserAgreement;->actions:Ljava/util/Map;

    if-eqz v6, :cond_1

    .line 2800
    iget-object v5, v5, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/UserAgreement;->actions:Ljava/util/Map;

    sget-object v6, Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;->ACCEPT_AGREEMENT:Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    if-eqz v5, :cond_1

    .line 2801
    iget-boolean v5, v5, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;->enabled:Z

    if-eqz v5, :cond_1

    .line 2803
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    const v6, 0x7f0a13a2

    .line 2804
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    if-eqz v5, :cond_1

    .line 2805
    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-nez v5, :cond_1

    return v3

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_1
    return v1
.end method
