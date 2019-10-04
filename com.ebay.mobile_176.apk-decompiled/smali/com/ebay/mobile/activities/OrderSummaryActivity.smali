.class public Lcom/ebay/mobile/activities/OrderSummaryActivity;
.super Lcom/ebay/mobile/activities/CoreActivity;
.source "OrderSummaryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final BUNDLE_EST_DELIVERY_DATE:Ljava/lang/String; = "est_delivery_date"

.field public static final BUNDLE_HOURS_OFFSET:Ljava/lang/String; = "hours_offset"

.field public static final BUNDLE_ORDER:Ljava/lang/String; = "order"

.field public static final BUNDLE_ORDER_ID:Ljava/lang/String; = "order_id"

.field public static final BUNDLE_STORE_DETAILS:Ljava/lang/String; = "store_details"

.field public static final BUNDLE_TRANSACTION:Ljava/lang/String; = "transaction"

.field public static final LOADER_GET_ITEM_TRANSACTION:I = 0x2

.field public static final LOADER_GET_LOCATION_DETAILS:I = 0x3

.field public static final LOADER_GET_ORDERS:I = 0x1


# instance fields
.field private estDeliveryDate:Ljava/util/Date;

.field private galleryImageHost:Ljava/lang/String;

.field private hoursOffset:I

.field private order:Lcom/ebay/common/model/EbayOrder;

.field private orderId:Ljava/lang/String;

.field private pickupInstructions:Landroid/view/View;

.field private storeDetails:Lcom/ebay/common/model/inventory/LocationDetails;

.field private transaction:Lcom/ebay/common/model/ItemTransaction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/ebay/mobile/activities/CoreActivity;-><init>()V

    return-void
.end method

.method public static StartActivity(Landroid/content/Context;Ljava/lang/String;Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;)V
    .locals 2

    .line 85
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ebay/mobile/activities/OrderSummaryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "order_id"

    .line 86
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.ebay.mobile.analytics.sid"

    .line 87
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 88
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$000(Lcom/ebay/mobile/activities/OrderSummaryActivity;)Lcom/ebay/common/model/inventory/LocationDetails;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->storeDetails:Lcom/ebay/common/model/inventory/LocationDetails;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ebay/mobile/activities/OrderSummaryActivity;)Lcom/ebay/common/model/ItemTransaction;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->transaction:Lcom/ebay/common/model/ItemTransaction;

    return-object p0
.end method

.method public static getBannerColor(Landroid/app/Activity;Lcom/ebay/common/model/ItemTransaction;)I
    .locals 7

    const v0, 0x7f0601c1

    const v1, 0x7f040167

    if-nez p1, :cond_0

    .line 343
    invoke-static {p0, v1, v0}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeResId(Landroid/content/Context;II)I

    move-result p0

    return p0

    .line 345
    :cond_0
    iget-object v2, p1, Lcom/ebay/common/model/ItemTransaction;->pickupStatus:Lcom/ebay/nautilus/domain/data/OrderPickupStatus;

    if-nez v2, :cond_1

    .line 347
    invoke-static {p0, v1, v0}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeResId(Landroid/content/Context;II)I

    move-result p0

    return p0

    .line 349
    :cond_1
    invoke-virtual {p1}, Lcom/ebay/common/model/ItemTransaction;->isInStoreCredit()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Lcom/ebay/common/model/ItemTransaction;->isPaymentRefund()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v3, 0x1

    :goto_1
    const v4, 0x7f0601d9

    const v5, 0x7f040156

    const v6, 0x7f0601a0

    if-eqz v3, :cond_5

    .line 352
    instance-of p1, p0, Lcom/ebay/mobile/viewitem/ItemViewActivity;

    if-eqz p1, :cond_4

    return v6

    .line 355
    :cond_4
    invoke-static {p0, v5, v4}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeResId(Landroid/content/Context;II)I

    move-result p0

    return p0

    .line 358
    :cond_5
    sget-object v3, Lcom/ebay/mobile/activities/OrderSummaryActivity$2;->$SwitchMap$com$ebay$nautilus$domain$data$OrderPickupStatus:[I

    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/OrderPickupStatus;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 373
    invoke-static {p0, v1, v0}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeResId(Landroid/content/Context;II)I

    move-result p0

    return p0

    .line 371
    :pswitch_0
    invoke-static {p0, v5, v4}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeResId(Landroid/content/Context;II)I

    move-result p0

    return p0

    :pswitch_1
    const p1, 0x7f04015a

    const v0, 0x7f0601a2

    .line 367
    invoke-static {p0, p1, v0}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeResId(Landroid/content/Context;II)I

    move-result p0

    return p0

    .line 363
    :pswitch_2
    invoke-virtual {p1}, Lcom/ebay/common/model/ItemTransaction;->isInStoreCredit()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p1}, Lcom/ebay/common/model/ItemTransaction;->isPaymentRefund()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_2

    .line 365
    :cond_6
    invoke-static {p0, v1, v0}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeResId(Landroid/content/Context;II)I

    move-result p0

    return p0

    :cond_7
    :goto_2
    return v6

    :pswitch_3
    const p0, 0x7f06018f

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getGoogleMapsIntent(Lcom/ebay/common/model/inventory/LocationAddress;)Landroid/content/Intent;
    .locals 5

    .line 633
    iget-object v0, p0, Lcom/ebay/common/model/inventory/LocationAddress;->address1:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ebay/common/model/inventory/LocationAddress;->postalCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 635
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "geo:0,0?q="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ebay/common/model/inventory/LocationAddress;->address1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ebay/common/model/inventory/LocationAddress;->postalCode:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 636
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0

    :cond_0
    const-string/jumbo v0, "saddr="

    .line 642
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&daddr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/ebay/common/model/inventory/LocationAddress;->latitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/ebay/common/model/inventory/LocationAddress;->longitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 644
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://maps.google.com/maps?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 645
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v1
.end method

.method private getItemTransactions(Lcom/ebay/common/model/EbayOrder;)V
    .locals 8

    .line 206
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/common/Preferences;->getAuthentication()Lcom/ebay/nautilus/domain/app/Authentication;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 207
    iget-object v1, p1, Lcom/ebay/common/model/EbayOrder;->transactions:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/ebay/common/model/EbayOrder;->transactions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 209
    iget-object p1, p1, Lcom/ebay/common/model/EbayOrder;->transactions:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/common/model/OrderItemTransaction;

    .line 210
    invoke-static {v0}, Lcom/ebay/mobile/util/EbayApiUtil;->getTradingApi(Lcom/ebay/nautilus/domain/app/Authentication;)Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;

    move-result-object v3

    .line 211
    new-instance v0, Lcom/ebay/common/net/api/trading/GetItemTransactionsNetLoader;

    invoke-virtual {p0}, Lcom/ebay/mobile/activities/OrderSummaryActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v2

    iget-object v1, p1, Lcom/ebay/common/model/OrderItemTransaction;->itemId:Ljava/lang/String;

    .line 212
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iget-object p1, p1, Lcom/ebay/common/model/OrderItemTransaction;->transactionId:Ljava/lang/String;

    .line 213
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/ebay/common/net/api/trading/GetItemTransactionsNetLoader;-><init>(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;JJ)V

    .line 214
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/OrderSummaryActivity;->getFwLoaderManager()Lcom/ebay/nautilus/shell/app/FwLoaderManager;

    move-result-object p1

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Lcom/ebay/nautilus/shell/app/FwLoaderManager;->start(ILcom/ebay/nautilus/shell/content/FwLoader;Z)V

    :cond_0
    return-void
.end method

.method private getLocationDetails()V
    .locals 4

    .line 240
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/common/Preferences;->getAuthentication()Lcom/ebay/nautilus/domain/app/Authentication;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->order:Lcom/ebay/common/model/EbayOrder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->transaction:Lcom/ebay/common/model/ItemTransaction;

    if-eqz v0, :cond_0

    .line 243
    new-instance v0, Lcom/ebay/common/net/api/inventory/GetStoreLocationNetLoader;

    invoke-virtual {p0}, Lcom/ebay/mobile/activities/OrderSummaryActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v1

    iget-object v2, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->transaction:Lcom/ebay/common/model/ItemTransaction;

    iget-object v2, v2, Lcom/ebay/common/model/ItemTransaction;->sellerUserId:Ljava/lang/String;

    iget-object v3, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->order:Lcom/ebay/common/model/EbayOrder;

    iget-object v3, v3, Lcom/ebay/common/model/EbayOrder;->storeId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/ebay/common/net/api/inventory/GetStoreLocationNetLoader;-><init>(Lcom/ebay/nautilus/kernel/content/EbayContext;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/OrderSummaryActivity;->getFwLoaderManager()Lcom/ebay/nautilus/shell/app/FwLoaderManager;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/ebay/nautilus/shell/app/FwLoaderManager;->start(ILcom/ebay/nautilus/shell/content/FwLoader;Z)V

    :cond_0
    return-void
.end method

.method private getOrders(Ljava/lang/String;)V
    .locals 8

    .line 225
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/common/Preferences;->getAuthentication()Lcom/ebay/nautilus/domain/app/Authentication;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 228
    sget-object v1, Lcom/ebay/mobile/viewitem/ItemViewCommonProgressAndError$LayoutState;->TRANSLUCENT_PROGRESS:Lcom/ebay/mobile/viewitem/ItemViewCommonProgressAndError$LayoutState;

    invoke-static {p0, v1}, Lcom/ebay/mobile/viewitem/ItemViewCommonProgressAndError;->showLayouts(Landroid/app/Activity;Lcom/ebay/mobile/viewitem/ItemViewCommonProgressAndError$LayoutState;)V

    .line 229
    new-instance v1, Lcom/ebay/common/net/api/trading/GetOrdersNetLoader;

    invoke-virtual {p0}, Lcom/ebay/mobile/activities/OrderSummaryActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v3

    invoke-static {v0}, Lcom/ebay/mobile/util/EbayApiUtil;->getTradingApi(Lcom/ebay/nautilus/domain/app/Authentication;)Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;

    move-result-object v4

    iget-object v5, v0, Lcom/ebay/nautilus/domain/app/Authentication;->iafToken:Ljava/lang/String;

    .line 230
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    move-object v2, v1

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/ebay/common/net/api/trading/GetOrdersNetLoader;-><init>(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/OrderSummaryActivity;->getFwLoaderManager()Lcom/ebay/nautilus/shell/app/FwLoaderManager;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v1, v0}, Lcom/ebay/nautilus/shell/app/FwLoaderManager;->start(ILcom/ebay/nautilus/shell/content/FwLoader;Z)V

    :cond_0
    return-void
.end method

.method private onGetItemTransactionsComplete(Lcom/ebay/common/net/api/trading/GetItemTransactionsNetLoader;)V
    .locals 1

    .line 285
    invoke-virtual {p1}, Lcom/ebay/common/net/api/trading/GetItemTransactionsNetLoader;->isError()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/ebay/common/net/api/trading/GetItemTransactionsNetLoader;->getResponse()Lcom/ebay/nautilus/domain/net/EbayResponse;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ebay/common/net/api/trading/GetItemTransactionsNetLoader;->getResponse()Lcom/ebay/nautilus/domain/net/EbayResponse;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;

    invoke-virtual {v0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;->getItemTransaction()Lcom/ebay/common/model/ItemTransaction;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 287
    invoke-virtual {p1}, Lcom/ebay/common/net/api/trading/GetItemTransactionsNetLoader;->getResponse()Lcom/ebay/nautilus/domain/net/EbayResponse;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;

    invoke-virtual {v0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;->getItemTransaction()Lcom/ebay/common/model/ItemTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->transaction:Lcom/ebay/common/model/ItemTransaction;

    .line 288
    iget-object v0, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->transaction:Lcom/ebay/common/model/ItemTransaction;

    iget-object v0, v0, Lcom/ebay/common/model/ItemTransaction;->sellerUserId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->storeDetails:Lcom/ebay/common/model/inventory/LocationDetails;

    if-nez v0, :cond_0

    .line 291
    invoke-direct {p0}, Lcom/ebay/mobile/activities/OrderSummaryActivity;->getLocationDetails()V

    goto :goto_0

    .line 293
    :cond_0
    invoke-direct {p0}, Lcom/ebay/mobile/activities/OrderSummaryActivity;->render()V

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    .line 300
    invoke-static {p0, p1}, Lcom/ebay/mobile/viewitem/ItemViewCommonProgressAndError;->updateLayoutForLoaderError(Lcom/ebay/nautilus/shell/app/BaseActivity;Lcom/ebay/common/content/EbaySimpleNetLoader;)Lcom/ebay/mobile/viewitem/ItemViewCommonProgressAndError$LayoutState;

    move-result-object p1

    .line 299
    invoke-static {p0, p1}, Lcom/ebay/mobile/viewitem/ItemViewCommonProgressAndError;->showLayouts(Landroid/app/Activity;Lcom/ebay/mobile/viewitem/ItemViewCommonProgressAndError$LayoutState;)V

    :cond_2
    return-void
.end method

.method private onGetLocationDetailsComplete(Lcom/ebay/common/net/api/inventory/GetStoreLocationNetLoader;)V
    .locals 1

    .line 311
    invoke-virtual {p1}, Lcom/ebay/common/net/api/inventory/GetStoreLocationNetLoader;->getResponse()Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse;

    move-result-object v0

    .line 312
    invoke-virtual {p1}, Lcom/ebay/common/net/api/inventory/GetStoreLocationNetLoader;->isError()Z

    move-result p1

    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse;->isLocationFound()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 313
    iget-object p1, v0, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse;->locationDetails:Lcom/ebay/common/model/inventory/LocationDetails;

    iput-object p1, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->storeDetails:Lcom/ebay/common/model/inventory/LocationDetails;

    .line 316
    :cond_0
    invoke-direct {p0}, Lcom/ebay/mobile/activities/OrderSummaryActivity;->render()V

    return-void
.end method

.method private onGetOrders(Lcom/ebay/common/net/api/trading/GetOrdersNetLoader;)V
    .locals 4

    .line 257
    invoke-virtual {p1}, Lcom/ebay/common/net/api/trading/GetOrdersNetLoader;->isError()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/ebay/common/net/api/trading/GetOrdersNetLoader;->getResponse()Lcom/ebay/nautilus/domain/net/EbayResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {p1}, Lcom/ebay/common/net/api/trading/GetOrdersNetLoader;->getResponse()Lcom/ebay/nautilus/domain/net/EbayResponse;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/net/api/trading/GetOrdersResponse;

    iget-object v0, v0, Lcom/ebay/common/net/api/trading/GetOrdersResponse;->orders:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 260
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 263
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/model/EbayOrder;

    iput-object v0, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->order:Lcom/ebay/common/model/EbayOrder;

    .line 264
    iget-object v0, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->order:Lcom/ebay/common/model/EbayOrder;

    invoke-direct {p0, v0}, Lcom/ebay/mobile/activities/OrderSummaryActivity;->getItemTransactions(Lcom/ebay/common/model/EbayOrder;)V

    const/4 v2, 0x1

    :cond_0
    if-nez v2, :cond_2

    .line 270
    invoke-virtual {p1}, Lcom/ebay/common/net/api/trading/GetOrdersNetLoader;->isConnectionError()Z

    move-result p1

    xor-int/2addr p1, v1

    if-eqz p1, :cond_1

    .line 271
    sget-object p1, Lcom/ebay/mobile/viewitem/ItemViewCommonProgressAndError$LayoutState;->SERVICE_ERROR:Lcom/ebay/mobile/viewitem/ItemViewCommonProgressAndError$LayoutState;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/ebay/mobile/viewitem/ItemViewCommonProgressAndError$LayoutState;->CONNECTION_ERROR:Lcom/ebay/mobile/viewitem/ItemViewCommonProgressAndError$LayoutState;

    :goto_0
    invoke-static {p0, p1}, Lcom/ebay/mobile/viewitem/ItemViewCommonProgressAndError;->showLayouts(Landroid/app/Activity;Lcom/ebay/mobile/viewitem/ItemViewCommonProgressAndError$LayoutState;)V

    :cond_2
    return-void
.end method

.method private render()V
    .locals 10

    .line 397
    iget-object v0, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->order:Lcom/ebay/common/model/EbayOrder;

    if-eqz v0, :cond_11

    const v0, 0x7f0a1345

    .line 399
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/OrderSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 400
    sget-object v0, Lcom/ebay/mobile/viewitem/ItemViewCommonProgressAndError$LayoutState;->NORMAL:Lcom/ebay/mobile/viewitem/ItemViewCommonProgressAndError$LayoutState;

    invoke-static {p0, v0}, Lcom/ebay/mobile/viewitem/ItemViewCommonProgressAndError;->showLayouts(Landroid/app/Activity;Lcom/ebay/mobile/viewitem/ItemViewCommonProgressAndError$LayoutState;)V

    const/4 v0, 0x1

    .line 403
    iget-object v2, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->transaction:Lcom/ebay/common/model/ItemTransaction;

    invoke-static {p0, v2}, Lcom/ebay/mobile/activities/OrderSummaryActivity;->getBannerColor(Landroid/app/Activity;Lcom/ebay/common/model/ItemTransaction;)I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/ebay/mobile/activities/OrderSummaryActivity;->setupBanner(ZI)V

    .line 406
    iget-object v0, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->transaction:Lcom/ebay/common/model/ItemTransaction;

    iget-object v2, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->order:Lcom/ebay/common/model/EbayOrder;

    invoke-static {p0, v0, v2}, Lcom/ebay/mobile/util/PickupUtil;->getOrderStatusText(Landroid/content/Context;Lcom/ebay/common/model/ItemTransaction;Lcom/ebay/common/model/EbayOrder;)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0a075a

    .line 407
    invoke-virtual {p0, v2}, Lcom/ebay/mobile/activities/OrderSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 408
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    iget-object v0, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->transaction:Lcom/ebay/common/model/ItemTransaction;

    invoke-static {p0, v0}, Lcom/ebay/mobile/util/PickupUtil;->getOrderStatusSubText(Landroid/app/Activity;Lcom/ebay/common/model/ItemTransaction;)Ljava/lang/String;

    move-result-object v0

    .line 411
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const v2, 0x7f0a11de

    .line 413
    invoke-virtual {p0, v2}, Lcom/ebay/mobile/activities/OrderSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 414
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 418
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 419
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/OrderSummaryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 424
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const v4, 0x7f0a0afc

    .line 425
    invoke-virtual {p0, v4}, Lcom/ebay/mobile/activities/OrderSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 426
    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 429
    iget-object v5, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->transaction:Lcom/ebay/common/model/ItemTransaction;

    iget-object v5, v5, Lcom/ebay/common/model/ItemTransaction;->createdDate:Ljava/util/Date;

    if-eqz v5, :cond_1

    const v5, 0x7f120bac

    .line 432
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->transaction:Lcom/ebay/common/model/ItemTransaction;

    iget-object v6, v6, Lcom/ebay/common/model/ItemTransaction;->createdDate:Ljava/util/Date;

    .line 431
    invoke-static {p0, v0, v4, v5, v6}, Lcom/ebay/mobile/util/Util;->createViewItemStatFormattedDate(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/util/Date;)Landroid/view/View;

    move-result-object v5

    .line 433
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    :cond_1
    iget-object v5, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->transaction:Lcom/ebay/common/model/ItemTransaction;

    iget-object v5, v5, Lcom/ebay/common/model/ItemTransaction;->pickupStatus:Lcom/ebay/nautilus/domain/data/OrderPickupStatus;

    sget-object v6, Lcom/ebay/nautilus/domain/data/OrderPickupStatus;->PendingMerchantConfirmation:Lcom/ebay/nautilus/domain/data/OrderPickupStatus;

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->estDeliveryDate:Ljava/util/Date;

    if-eqz v5, :cond_2

    const v5, 0x7f120947

    .line 440
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->estDeliveryDate:Ljava/util/Date;

    .line 441
    invoke-static {p0, v6, v1}, Lcom/ebay/mobile/util/Util;->getEstimatedPickupDateString(Landroid/content/Context;Ljava/util/Date;Z)Ljava/lang/String;

    move-result-object v6

    .line 439
    invoke-static {v0, v4, v5, v6}, Lcom/ebay/mobile/util/Util;->createViewItemStat(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v5

    .line 442
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    :cond_2
    iget-object v5, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->storeDetails:Lcom/ebay/common/model/inventory/LocationDetails;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->storeDetails:Lcom/ebay/common/model/inventory/LocationDetails;

    iget-object v5, v5, Lcom/ebay/common/model/inventory/LocationDetails;->pickupInstructions:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const v5, 0x7f120942

    .line 449
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->storeDetails:Lcom/ebay/common/model/inventory/LocationDetails;

    iget-object v6, v6, Lcom/ebay/common/model/inventory/LocationDetails;->pickupInstructions:Ljava/lang/String;

    .line 448
    invoke-static {v0, v4, v5, v6}, Lcom/ebay/mobile/util/Util;->createViewItemStatTruncated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->pickupInstructions:Landroid/view/View;

    .line 450
    iget-object v5, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->pickupInstructions:Landroid/view/View;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    :cond_3
    iget-object v5, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->transaction:Lcom/ebay/common/model/ItemTransaction;

    iget-object v5, v5, Lcom/ebay/common/model/ItemTransaction;->shipmentTrackingDetails:Ljava/util/ArrayList;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->transaction:Lcom/ebay/common/model/ItemTransaction;

    iget-object v5, v5, Lcom/ebay/common/model/ItemTransaction;->shipmentTrackingDetails:Ljava/util/ArrayList;

    .line 455
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4

    iget-object v5, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->transaction:Lcom/ebay/common/model/ItemTransaction;

    iget-object v5, v5, Lcom/ebay/common/model/ItemTransaction;->shipmentTrackingDetails:Ljava/util/ArrayList;

    .line 456
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ebay/common/model/ItemTransaction$ShipmentTrackingDetails;

    iget-object v5, v5, Lcom/ebay/common/model/ItemTransaction$ShipmentTrackingDetails;->shipmentTrackingNumber:Ljava/lang/String;

    if-eqz v5, :cond_4

    const v5, 0x7f120fc1

    .line 460
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->transaction:Lcom/ebay/common/model/ItemTransaction;

    iget-object v6, v6, Lcom/ebay/common/model/ItemTransaction;->shipmentTrackingDetails:Ljava/util/ArrayList;

    .line 461
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ebay/common/model/ItemTransaction$ShipmentTrackingDetails;

    iget-object v6, v6, Lcom/ebay/common/model/ItemTransaction$ShipmentTrackingDetails;->shipmentTrackingNumber:Ljava/lang/String;

    .line 459
    invoke-static {v0, v4, v5, v6}, Lcom/ebay/mobile/util/Util;->createViewItemStat(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v5

    .line 462
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_7

    .line 467
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 469
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 470
    iget-object v6, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->pickupInstructions:Landroid/view/View;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 471
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 473
    :cond_6
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 479
    :cond_7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const v4, 0x7f0a0beb

    .line 480
    invoke-virtual {p0, v4}, Lcom/ebay/mobile/activities/OrderSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 481
    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 483
    iget-object v5, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->storeDetails:Lcom/ebay/common/model/inventory/LocationDetails;

    const/4 v6, 0x0

    if-eqz v5, :cond_b

    .line 486
    iget-object v5, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->storeDetails:Lcom/ebay/common/model/inventory/LocationDetails;

    iget-object v5, v5, Lcom/ebay/common/model/inventory/LocationDetails;->address:Lcom/ebay/common/model/inventory/LocationAddress;

    if-eqz v5, :cond_8

    const v5, 0x7f1202af

    .line 489
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->storeDetails:Lcom/ebay/common/model/inventory/LocationDetails;

    iget-object v7, v7, Lcom/ebay/common/model/inventory/LocationDetails;->address:Lcom/ebay/common/model/inventory/LocationAddress;

    .line 490
    invoke-virtual {v7}, Lcom/ebay/common/model/inventory/LocationAddress;->getInStorePickupAddress()Ljava/lang/String;

    move-result-object v7

    .line 488
    invoke-static {p0, v0, v4, v5, v7}, Lcom/ebay/mobile/util/Util;->createViewItemStatTertiary(Landroid/app/Activity;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v5

    .line 491
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    :cond_8
    iget-object v5, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->storeDetails:Lcom/ebay/common/model/inventory/LocationDetails;

    iget-object v5, v5, Lcom/ebay/common/model/inventory/LocationDetails;->phone:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    const v5, 0x7f120911

    .line 498
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->storeDetails:Lcom/ebay/common/model/inventory/LocationDetails;

    iget-object v7, v7, Lcom/ebay/common/model/inventory/LocationDetails;->phone:Ljava/lang/String;

    .line 497
    invoke-static {p0, v0, v4, v5, v7}, Lcom/ebay/mobile/util/Util;->createViewItemStatPhone(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v5

    .line 499
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 504
    :cond_9
    iget-object v5, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->storeDetails:Lcom/ebay/common/model/inventory/LocationDetails;

    iget-object v5, v5, Lcom/ebay/common/model/inventory/LocationDetails;->hours:Lcom/ebay/common/model/inventory/LocationDetails$Hours;

    if-eqz v5, :cond_a

    .line 505
    iget-object v5, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->storeDetails:Lcom/ebay/common/model/inventory/LocationDetails;

    iget-object v5, v5, Lcom/ebay/common/model/inventory/LocationDetails;->hours:Lcom/ebay/common/model/inventory/LocationDetails$Hours;

    iget v7, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->hoursOffset:I

    invoke-static {p0, v5, v7}, Lcom/ebay/mobile/util/PickupUtil;->formatStoreHours(Landroid/content/Context;Lcom/ebay/common/model/inventory/LocationDetails$Hours;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_a
    move-object v5, v6

    .line 507
    :goto_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b

    const v7, 0x7f1202b0

    .line 510
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 509
    invoke-static {v0, v4, v2, v5}, Lcom/ebay/mobile/util/Util;->createViewItemStat(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v2

    .line 511
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 515
    :cond_b
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_d

    .line 517
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 518
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 519
    :cond_c
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    const v2, 0x7f0a0bec

    .line 520
    invoke-virtual {p0, v2}, Lcom/ebay/mobile/activities/OrderSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 526
    :cond_d
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const v3, 0x7f0a0af5

    .line 527
    invoke-virtual {p0, v3}, Lcom/ebay/mobile/activities/OrderSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 528
    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 531
    iget-object v4, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->order:Lcom/ebay/common/model/EbayOrder;

    iget-object v4, v4, Lcom/ebay/common/model/EbayOrder;->transactions:Ljava/util/List;

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->order:Lcom/ebay/common/model/EbayOrder;

    iget-object v4, v4, Lcom/ebay/common/model/EbayOrder;->transactions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_f

    .line 533
    iget-object v4, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->order:Lcom/ebay/common/model/EbayOrder;

    iget-object v4, v4, Lcom/ebay/common/model/EbayOrder;->transactions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ebay/common/model/OrderItemTransaction;

    const v7, 0x7f0d030c

    .line 535
    invoke-virtual {v0, v7, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0803af

    .line 536
    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundResource(I)V

    const v8, 0x7f0a131d

    .line 538
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 539
    iget-object v9, v5, Lcom/ebay/common/model/OrderItemTransaction;->title:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 542
    iget-object v8, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->galleryImageHost:Ljava/lang/String;

    if-eqz v8, :cond_e

    iget-object v8, v5, Lcom/ebay/common/model/OrderItemTransaction;->itemId:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_e

    .line 543
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "http://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->galleryImageHost:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/d/l200/pict/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v5, Lcom/ebay/common/model/OrderItemTransaction;->itemId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".JPG"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    :cond_e
    move-object v8, v6

    :goto_4
    const v9, 0x7f0a07c3

    .line 545
    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/ebay/android/widget/RemoteImageView;

    .line 546
    invoke-virtual {v9, v8}, Lcom/ebay/android/widget/RemoteImageView;->setRemoteImageUrl(Ljava/lang/String;)V

    .line 548
    new-instance v8, Lcom/ebay/mobile/activities/OrderSummaryActivity$1;

    invoke-direct {v8, p0, v7}, Lcom/ebay/mobile/activities/OrderSummaryActivity$1;-><init>(Lcom/ebay/mobile/activities/OrderSummaryActivity;Landroid/view/View;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 577
    invoke-virtual {v7, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 579
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 583
    :cond_f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_12

    .line 585
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 586
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_5

    .line 587
    :cond_10
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    const v0, 0x7f0a0af6

    .line 588
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/OrderSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 595
    :cond_11
    sget-object v0, Lcom/ebay/mobile/viewitem/ItemViewCommonProgressAndError$LayoutState;->SERVICE_ERROR:Lcom/ebay/mobile/viewitem/ItemViewCommonProgressAndError$LayoutState;

    invoke-static {p0, v0}, Lcom/ebay/mobile/viewitem/ItemViewCommonProgressAndError;->showLayouts(Landroid/app/Activity;Lcom/ebay/mobile/viewitem/ItemViewCommonProgressAndError$LayoutState;)V

    :cond_12
    :goto_6
    return-void
.end method

.method private setupBanner(ZI)V
    .locals 1

    const v0, 0x7f0a019c

    .line 385
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/OrderSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 388
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 389
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/OrderSummaryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 392
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getTrackingEventName()Ljava/lang/String;
    .locals 1

    const-string v0, "OrderSummary"

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 165
    invoke-super {p0, p1, p2, p3}, Lcom/ebay/mobile/activities/CoreActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x1

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 172
    iget-object p1, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->orderId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 173
    iget-object p1, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->orderId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ebay/mobile/activities/OrderSummaryActivity;->getOrders(Ljava/lang/String;)V

    goto :goto_0

    .line 176
    :cond_1
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/OrderSummaryActivity;->finish()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 602
    invoke-static {p0}, Lcom/ebay/mobile/util/Util;->hasNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->pickupInstructions:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 607
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/ebay/mobile/activities/OrderSummaryInstructionsActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "order_instructions"

    .line 608
    iget-object v1, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->storeDetails:Lcom/ebay/common/model/inventory/LocationDetails;

    iget-object v1, v1, Lcom/ebay/common/model/inventory/LocationDetails;->pickupInstructions:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 609
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/OrderSummaryActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 613
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a05fc

    if-eq p1, v0, :cond_3

    const v0, 0x7f0a0beb

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 616
    :cond_2
    iget-object p1, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->storeDetails:Lcom/ebay/common/model/inventory/LocationDetails;

    iget-object p1, p1, Lcom/ebay/common/model/inventory/LocationDetails;->address:Lcom/ebay/common/model/inventory/LocationAddress;

    invoke-static {p1}, Lcom/ebay/mobile/activities/OrderSummaryActivity;->getGoogleMapsIntent(Lcom/ebay/common/model/inventory/LocationAddress;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/OrderSummaryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 620
    :cond_3
    iget-object p1, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->orderId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ebay/mobile/activities/OrderSummaryActivity;->getOrders(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 94
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d030a

    .line 95
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/OrderSummaryActivity;->setContentView(I)V

    .line 97
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getDeviceConfiguration()Lcom/ebay/mobile/dcs/DcsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/mobile/dcs/DcsHelper;->getGalleryImageHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->galleryImageHost:Ljava/lang/String;

    const v0, 0x7f0a05fc

    .line 98
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/OrderSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0beb

    .line 99
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/OrderSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_1

    const-string v2, "order_id"

    .line 103
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->orderId:Ljava/lang/String;

    const-string v2, "order"

    .line 104
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/ebay/common/model/EbayOrder;

    iput-object v2, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->order:Lcom/ebay/common/model/EbayOrder;

    const-string/jumbo v2, "store_details"

    .line 105
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/ebay/common/model/inventory/LocationDetails;

    iput-object v2, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->storeDetails:Lcom/ebay/common/model/inventory/LocationDetails;

    const-string/jumbo v2, "transaction"

    .line 106
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/ebay/common/model/ItemTransaction;

    iput-object v2, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->transaction:Lcom/ebay/common/model/ItemTransaction;

    const-string v2, "est_delivery_date"

    .line 107
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    .line 109
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->estDeliveryDate:Ljava/util/Date;

    :cond_0
    const-string v0, "hours_offset"

    .line 110
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->hoursOffset:I

    goto :goto_0

    .line 114
    :cond_1
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/OrderSummaryActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "order_id"

    .line 115
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->orderId:Ljava/lang/String;

    const-string/jumbo v2, "store_details"

    .line 116
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/ebay/common/model/inventory/LocationDetails;

    iput-object v2, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->storeDetails:Lcom/ebay/common/model/inventory/LocationDetails;

    const-string v2, "est_delivery_date"

    .line 117
    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-eqz v0, :cond_2

    .line 119
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->estDeliveryDate:Ljava/util/Date;

    :cond_2
    const-string v0, "noti_type_id"

    const/4 v1, -0x1

    .line 122
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_3

    const-string v0, "event_type"

    .line 125
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->orderId:Ljava/lang/String;

    .line 124
    invoke-static {p0, v0, v1}, Lcom/ebay/mobile/ServiceStarter;->startUpdateNotificationCacheService(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v0, "hours_offset"

    const/4 v1, 0x0

    .line 126
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->hoursOffset:I

    .line 129
    :goto_0
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ebay/common/Preferences;->getAuthentication()Lcom/ebay/nautilus/domain/app/Authentication;

    move-result-object p1

    if-nez p1, :cond_4

    .line 131
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/OrderSummaryActivity;->getTrackingEventName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/ebay/mobile/connection/idsignin/SignInActivity;->getIntentForSignIn(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x1

    .line 132
    invoke-virtual {p0, p1, v0}, Lcom/ebay/mobile/activities/OrderSummaryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 136
    :cond_4
    iget-object p1, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->order:Lcom/ebay/common/model/EbayOrder;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->storeDetails:Lcom/ebay/common/model/inventory/LocationDetails;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->transaction:Lcom/ebay/common/model/ItemTransaction;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->transaction:Lcom/ebay/common/model/ItemTransaction;

    iget-object p1, p1, Lcom/ebay/common/model/ItemTransaction;->sellerUserId:Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 137
    invoke-direct {p0}, Lcom/ebay/mobile/activities/OrderSummaryActivity;->render()V

    goto :goto_1

    .line 138
    :cond_5
    iget-object p1, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->orderId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 139
    iget-object p1, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->orderId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ebay/mobile/activities/OrderSummaryActivity;->getOrders(Ljava/lang/String;)V

    goto :goto_1

    .line 141
    :cond_6
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/OrderSummaryActivity;->finish()V

    :goto_1
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 322
    invoke-super {p0}, Lcom/ebay/mobile/activities/CoreActivity;->onResume()V

    .line 324
    new-instance v0, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    invoke-virtual {p0}, Lcom/ebay/mobile/activities/OrderSummaryActivity;->getTrackingEventName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/ebay/nautilus/domain/analytics/TrackingType;->PAGE_IMPRESSION:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    .line 325
    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->trackingType(Lcom/ebay/nautilus/domain/analytics/TrackingType;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v0

    .line 326
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/OrderSummaryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 327
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/OrderSummaryActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v2

    const-string v3, "event_type"

    .line 328
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 327
    invoke-static {v2, v0, v1, v3}, Lcom/ebay/mobile/notifications/NotificationTrackingUtil;->addNotificationTracking(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;Landroid/content/Intent;Ljava/lang/String;)V

    .line 329
    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->setSourceIdentification(Landroid/content/Intent;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    .line 330
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->build()Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ebay/mobile/activities/OrderSummaryActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "order"

    .line 148
    iget-object v1, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->order:Lcom/ebay/common/model/EbayOrder;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 150
    iget-object v0, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->storeDetails:Lcom/ebay/common/model/inventory/LocationDetails;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "store_details"

    .line 151
    iget-object v1, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->storeDetails:Lcom/ebay/common/model/inventory/LocationDetails;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    const-string/jumbo v0, "transaction"

    .line 152
    iget-object v1, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->transaction:Lcom/ebay/common/model/ItemTransaction;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "order_id"

    .line 153
    iget-object v1, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->orderId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->estDeliveryDate:Ljava/util/Date;

    if-eqz v0, :cond_1

    const-string v0, "est_delivery_date"

    .line 155
    iget-object v1, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->estDeliveryDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    :cond_1
    const-string v0, "est_delivery_date"

    const-wide/16 v1, 0x0

    .line 157
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :goto_0
    const-string v0, "hours_offset"

    .line 158
    iget v1, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity;->hoursOffset:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 159
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onTaskComplete(ILcom/ebay/nautilus/shell/content/FwLoader;)V
    .locals 1

    .line 184
    invoke-virtual {p2}, Lcom/ebay/nautilus/shell/content/FwLoader;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 195
    :pswitch_0
    check-cast p2, Lcom/ebay/common/net/api/inventory/GetStoreLocationNetLoader;

    invoke-direct {p0, p2}, Lcom/ebay/mobile/activities/OrderSummaryActivity;->onGetLocationDetailsComplete(Lcom/ebay/common/net/api/inventory/GetStoreLocationNetLoader;)V

    goto :goto_0

    .line 192
    :pswitch_1
    check-cast p2, Lcom/ebay/common/net/api/trading/GetItemTransactionsNetLoader;

    invoke-direct {p0, p2}, Lcom/ebay/mobile/activities/OrderSummaryActivity;->onGetItemTransactionsComplete(Lcom/ebay/common/net/api/trading/GetItemTransactionsNetLoader;)V

    goto :goto_0

    .line 189
    :pswitch_2
    check-cast p2, Lcom/ebay/common/net/api/trading/GetOrdersNetLoader;

    invoke-direct {p0, p2}, Lcom/ebay/mobile/activities/OrderSummaryActivity;->onGetOrders(Lcom/ebay/common/net/api/trading/GetOrdersNetLoader;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
