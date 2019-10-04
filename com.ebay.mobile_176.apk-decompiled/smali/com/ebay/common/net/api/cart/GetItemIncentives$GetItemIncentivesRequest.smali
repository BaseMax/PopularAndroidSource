.class public final Lcom/ebay/common/net/api/cart/GetItemIncentives$GetItemIncentivesRequest;
.super Lcom/ebay/nautilus/domain/net/EbaySoaRequest;
.source "GetItemIncentives.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/cart/GetItemIncentives;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetItemIncentivesRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/nautilus/domain/net/EbaySoaRequest<",
        "Lcom/ebay/common/net/api/cart/GetItemIncentives$GetItemIncentivesResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final DATE_PATTERN:Ljava/lang/String;

.field final categoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final currency:Ljava/lang/String;

.field final currentPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

.field final endDate:Ljava/util/Date;

.field final itemId:Ljava/lang/String;

.field final listingType:Ljava/lang/String;

.field final paymentMethodDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$PaymentMethodDetail;",
            ">;"
        }
    .end annotation
.end field

.field final quantity:Ljava/lang/Integer;

.field final transactionId:Ljava/lang/String;

.field final types:[Lcom/ebay/common/net/api/cart/GetItemIncentives$ItemIncentiveType;

.field final variationId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/cart/EbayCartApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;ZLjava/util/List;Ljava/util/Date;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/ItemCurrency;Ljava/util/List;)V
    .locals 15
    .param p9    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/util/Date;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p12    # Lcom/ebay/nautilus/domain/data/ItemCurrency;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p13    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/common/net/api/cart/EbayCartApi;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Z",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$PaymentMethodDetail;",
            ">;",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            "Lcom/ebay/nautilus/domain/data/ItemCurrency;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 75
    new-array v8, v0, [Lcom/ebay/common/net/api/cart/GetItemIncentives$ItemIncentiveType;

    .line 76
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ebay/common/net/api/cart/GetItemIncentives$ItemIncentiveType;->REWARD:Lcom/ebay/common/net/api/cart/GetItemIncentives$ItemIncentiveType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/ebay/common/net/api/cart/GetItemIncentives$ItemIncentiveType;->COUPON:Lcom/ebay/common/net/api/cart/GetItemIncentives$ItemIncentiveType;

    :goto_0
    const/4 v1, 0x0

    aput-object v0, v8, v1

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    .line 75
    invoke-direct/range {v1 .. v14}, Lcom/ebay/common/net/api/cart/GetItemIncentives$GetItemIncentivesRequest;-><init>(Lcom/ebay/common/net/api/cart/EbayCartApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;[Lcom/ebay/common/net/api/cart/GetItemIncentives$ItemIncentiveType;ZLjava/util/List;Ljava/util/Date;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/ItemCurrency;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/ebay/common/net/api/cart/EbayCartApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;[Lcom/ebay/common/net/api/cart/GetItemIncentives$ItemIncentiveType;Z)V
    .locals 14

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    .line 66
    invoke-direct/range {v0 .. v13}, Lcom/ebay/common/net/api/cart/GetItemIncentives$GetItemIncentivesRequest;-><init>(Lcom/ebay/common/net/api/cart/EbayCartApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;[Lcom/ebay/common/net/api/cart/GetItemIncentives$ItemIncentiveType;ZLjava/util/List;Ljava/util/Date;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/ItemCurrency;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/ebay/common/net/api/cart/EbayCartApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;[Lcom/ebay/common/net/api/cart/GetItemIncentives$ItemIncentiveType;ZLjava/util/List;Ljava/util/Date;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/ItemCurrency;Ljava/util/List;)V
    .locals 5
    .param p9    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/util/Date;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p12    # Lcom/ebay/nautilus/domain/data/ItemCurrency;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p13    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/common/net/api/cart/EbayCartApi;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/ebay/common/net/api/cart/GetItemIncentives$ItemIncentiveType;",
            "Z",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$PaymentMethodDetail;",
            ">;",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            "Lcom/ebay/nautilus/domain/data/ItemCurrency;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    const-string v2, "CommonMobileAppService"

    const-string v3, "getItemIncentives"

    const/4 v4, 0x0

    .line 86
    invoke-direct {p0, v2, v4, v3}, Lcom/ebay/nautilus/domain/net/EbaySoaRequest;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    const-string/jumbo v2, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    .line 49
    iput-object v2, v0, Lcom/ebay/common/net/api/cart/GetItemIncentives$GetItemIncentivesRequest;->DATE_PATTERN:Ljava/lang/String;

    .line 87
    iget-object v2, v1, Lcom/ebay/common/net/api/cart/EbayCartApi;->iafToken:Ljava/lang/String;

    iput-object v2, v0, Lcom/ebay/nautilus/domain/net/EbaySoaRequest;->iafToken:Ljava/lang/String;

    const-string v2, "JSON"

    .line 88
    iput-object v2, v0, Lcom/ebay/nautilus/domain/net/EbaySoaRequest;->dataFormat:Ljava/lang/String;

    const-string v2, "application/json"

    .line 89
    iput-object v2, v0, Lcom/ebay/nautilus/domain/net/EbaySoaRequest;->soaContentType:Ljava/lang/String;

    .line 90
    iget-object v1, v1, Lcom/ebay/common/net/api/cart/EbayCartApi;->site:Lcom/ebay/nautilus/domain/EbaySite;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/EbaySite;->idString:Ljava/lang/String;

    iput-object v1, v0, Lcom/ebay/nautilus/domain/net/EbaySoaRequest;->soaGlobalId:Ljava/lang/String;

    const-string/jumbo v1, "x-ebay-soa-security-appname"

    .line 91
    iput-object v1, v0, Lcom/ebay/nautilus/domain/net/EbaySoaRequest;->soaAppIdHeaderName:Ljava/lang/String;

    const-string v1, "1.1.1"

    .line 92
    iput-object v1, v0, Lcom/ebay/nautilus/domain/net/EbaySoaRequest;->soaServiceVersion:Ljava/lang/String;

    const/4 v1, 0x1

    .line 93
    iput-boolean v1, v0, Lcom/ebay/nautilus/domain/net/EbaySoaRequest;->useSoaLocaleList:Z

    move-object v1, p2

    .line 95
    iput-object v1, v0, Lcom/ebay/common/net/api/cart/GetItemIncentives$GetItemIncentivesRequest;->currency:Ljava/lang/String;

    move-object v1, p3

    .line 96
    iput-object v1, v0, Lcom/ebay/common/net/api/cart/GetItemIncentives$GetItemIncentivesRequest;->itemId:Ljava/lang/String;

    move-object v1, p4

    .line 97
    iput-object v1, v0, Lcom/ebay/common/net/api/cart/GetItemIncentives$GetItemIncentivesRequest;->transactionId:Ljava/lang/String;

    if-nez p5, :cond_0

    const-string v1, "0"

    goto :goto_0

    :cond_0
    move-object v1, p5

    .line 98
    :goto_0
    iput-object v1, v0, Lcom/ebay/common/net/api/cart/GetItemIncentives$GetItemIncentivesRequest;->variationId:Ljava/lang/String;

    move-object v1, p6

    .line 99
    iput-object v1, v0, Lcom/ebay/common/net/api/cart/GetItemIncentives$GetItemIncentivesRequest;->quantity:Ljava/lang/Integer;

    move-object v1, p7

    .line 100
    iput-object v1, v0, Lcom/ebay/common/net/api/cart/GetItemIncentives$GetItemIncentivesRequest;->types:[Lcom/ebay/common/net/api/cart/GetItemIncentives$ItemIncentiveType;

    move-object v1, p9

    .line 101
    iput-object v1, v0, Lcom/ebay/common/net/api/cart/GetItemIncentives$GetItemIncentivesRequest;->paymentMethodDetails:Ljava/util/List;

    move-object v1, p10

    .line 102
    iput-object v1, v0, Lcom/ebay/common/net/api/cart/GetItemIncentives$GetItemIncentivesRequest;->endDate:Ljava/util/Date;

    move-object/from16 v1, p11

    .line 103
    iput-object v1, v0, Lcom/ebay/common/net/api/cart/GetItemIncentives$GetItemIncentivesRequest;->listingType:Ljava/lang/String;

    move-object/from16 v1, p12

    .line 104
    iput-object v1, v0, Lcom/ebay/common/net/api/cart/GetItemIncentives$GetItemIncentivesRequest;->currentPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    move-object/from16 v1, p13

    .line 105
    iput-object v1, v0, Lcom/ebay/common/net/api/cart/GetItemIncentives$GetItemIncentivesRequest;->categoryList:Ljava/util/List;

    if-eqz p8, :cond_1

    const/16 v1, 0x2710

    .line 109
    invoke-virtual {p0, v1}, Lcom/ebay/common/net/api/cart/GetItemIncentives$GetItemIncentivesRequest;->setTimeout(I)V

    :cond_1
    return-void
.end method

.method private getListingTypeId()I
    .locals 6

    .line 232
    iget-object v0, p0, Lcom/ebay/common/net/api/cart/GetItemIncentives$GetItemIncentivesRequest;->listingType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/ebay/common/net/api/cart/GetItemIncentives$GetItemIncentivesRequest;->listingType:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "FixedPriceItem"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v3, "PersonalOffer"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_2
    const-string v3, "Dutch"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_3
    const-string v3, "Half"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_4
    const-string v3, "StoresFixedPrice"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_5
    const-string v3, "Chinese"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    const/16 v0, 0xf

    return v0

    :pswitch_1
    const/16 v0, 0xc

    return v0

    :pswitch_2
    const/16 v0, 0x9

    return v0

    :pswitch_3
    const/4 v0, 0x7

    return v0

    :pswitch_4
    return v4

    :pswitch_5
    return v5

    nop

    :sswitch_data_0
    .sparse-switch
        -0x704b4f33 -> :sswitch_5
        -0x3928d059 -> :sswitch_4
        0x223453 -> :sswitch_3
        0x3f52d88 -> :sswitch_2
        0x515c1bdc -> :sswitch_1
        0x554bfb08 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getPaymentMethodsComplete()I
    .locals 8

    .line 210
    iget-object v0, p0, Lcom/ebay/common/net/api/cart/GetItemIncentives$GetItemIncentivesRequest;->paymentMethodDetails:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$PaymentMethodDetail;

    const-string v5, "CREDIT_CARD"

    .line 212
    iget-object v6, v4, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$PaymentMethodDetail;->paymentMethodType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    const-string v5, "ONLINE"

    iget-object v7, v4, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$PaymentMethodDetail;->paymentMethodMode:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const-string v5, "PAYPAL"

    .line 214
    iget-object v4, v4, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$PaymentMethodDetail;->paymentMethod:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    const/16 v0, 0x19

    return v0

    :cond_3
    if-eqz v3, :cond_4

    return v1

    :cond_4
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public buildRequest()[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ebay/nautilus/kernel/net/BuildRequestDataException;
        }
    .end annotation

    .line 119
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 120
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "itemId"

    .line 121
    iget-object v3, p0, Lcom/ebay/common/net/api/cart/GetItemIncentives$GetItemIncentivesRequest;->itemId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    iget-object v2, p0, Lcom/ebay/common/net/api/cart/GetItemIncentives$GetItemIncentivesRequest;->variationId:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v2, "itemVariationId"

    .line 124
    iget-object v3, p0, Lcom/ebay/common/net/api/cart/GetItemIncentives$GetItemIncentivesRequest;->variationId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    :cond_0
    iget-object v2, p0, Lcom/ebay/common/net/api/cart/GetItemIncentives$GetItemIncentivesRequest;->transactionId:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string/jumbo v2, "transactionID"

    .line 127
    iget-object v3, p0, Lcom/ebay/common/net/api/cart/GetItemIncentives$GetItemIncentivesRequest;->transactionId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    :cond_1
    iget-object v2, p0, Lcom/ebay/common/net/api/cart/GetItemIncentives$GetItemIncentivesRequest;->quantity:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    const-string v2, "quantity"

    .line 130
    iget-object v3, p0, Lcom/ebay/common/net/api/cart/GetItemIncentives$GetItemIncentivesRequest;->quantity:Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    const-string v2, "entityType"

    const-string v3, "ITEM"

    .line 132
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v2

    sget-object v3, Lcom/ebay/nautilus/domain/dcs/DcsDomain$ViewItem$B;->supportBucksOnPaymentsV2:Lcom/ebay/nautilus/domain/dcs/DcsDomain$ViewItem$B;

    invoke-interface {v2, v3}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ebay/common/net/api/cart/GetItemIncentives$GetItemIncentivesRequest;->paymentMethodDetails:Ljava/util/List;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ebay/common/net/api/cart/GetItemIncentives$GetItemIncentivesRequest;->paymentMethodDetails:Ljava/util/List;

    .line 136
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/ebay/common/net/api/cart/GetItemIncentives$GetItemIncentivesRequest;->currentPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ebay/common/net/api/cart/GetItemIncentives$GetItemIncentivesRequest;->endDate:Ljava/util/Date;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ebay/common/net/api/cart/GetItemIncentives$GetItemIncentivesRequest;->categoryList:Ljava/util/List;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ebay/common/net/api/cart/GetItemIncentives$GetItemIncentivesRequest;->categoryList:Ljava/util/List;

    .line 137
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 139
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 140
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string/jumbo v5, "saleEndTime"

    .line 142
    iget-object v6, p0, Lcom/ebay/common/net/api/cart/GetItemIncentives$GetItemIncentivesRequest;->endDate:Ljava/util/Date;

    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "__value__"

    const-string v7, "0"

    .line 146
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "@currencyId"

    .line 147
    iget-object v7, p0, Lcom/ebay/common/net/api/cart/GetItemIncentives$GetItemIncentivesRequest;->currentPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v7, v7, Lcom/ebay/nautilus/domain/data/ItemCurrency;->code:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v6, "shippingFee"

    .line 148
    invoke-virtual {v2, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "__value__"

    .line 151
    iget-object v7, p0, Lcom/ebay/common/net/api/cart/GetItemIncentives$GetItemIncentivesRequest;->currentPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v7, v7, Lcom/ebay/nautilus/domain/data/ItemCurrency;->value:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "@currencyId"

    .line 152
    iget-object v7, p0, Lcom/ebay/common/net/api/cart/GetItemIncentives$GetItemIncentivesRequest;->currentPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v7, v7, Lcom/ebay/nautilus/domain/data/ItemCurrency;->code:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "itemPrice"

    .line 153
    invoke-virtual {v2, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "itemSellerId"

    .line 155
    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v5, "saleType"

    .line 156
    invoke-direct {p0}, Lcom/ebay/common/net/api/cart/GetItemIncentives$GetItemIncentivesRequest;->getListingTypeId()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 158
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 159
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 160
    iget-object v7, p0, Lcom/ebay/common/net/api/cart/GetItemIncentives$GetItemIncentivesRequest;->categoryList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 161
    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_3
    const-string v7, "categoryId"

    .line 162
    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "categoryIdList"

    .line 163
    invoke-virtual {v2, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v5, "transactionDate"

    .line 166
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "__value__"

    .line 169
    iget-object v6, p0, Lcom/ebay/common/net/api/cart/GetItemIncentives$GetItemIncentivesRequest;->currentPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v6, v6, Lcom/ebay/nautilus/domain/data/ItemCurrency;->value:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "@currencyId"

    .line 170
    iget-object v6, p0, Lcom/ebay/common/net/api/cart/GetItemIncentives$GetItemIncentivesRequest;->currentPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v6, v6, Lcom/ebay/nautilus/domain/data/ItemCurrency;->code:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v5, "transactionAmount"

    .line 171
    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 173
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 174
    invoke-direct {p0}, Lcom/ebay/common/net/api/cart/GetItemIncentives$GetItemIncentivesRequest;->getPaymentMethodsComplete()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    const-string v5, "paymentMethodsComplete"

    .line 175
    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "itemDetails"

    .line 177
    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 180
    :cond_4
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 182
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "items"

    .line 183
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "requester"

    const-string v2, "itemview"

    .line 184
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 185
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 186
    iget-object v2, p0, Lcom/ebay/common/net/api/cart/GetItemIncentives$GetItemIncentivesRequest;->types:[Lcom/ebay/common/net/api/cart/GetItemIncentives$ItemIncentiveType;

    array-length v4, v2

    :goto_1
    if-ge v3, v4, :cond_5

    aget-object v5, v2, v3

    .line 187
    invoke-virtual {v5}, Lcom/ebay/common/net/api/cart/GetItemIncentives$ItemIncentiveType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    const-string v2, "incentiveTypeList"

    .line 188
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "incentiveType"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "getItemIncentivesRequest"

    .line 191
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 198
    invoke-static {v0}, Lcom/ebay/nautilus/kernel/net/BuildRequestDataException;->create(Ljava/lang/Throwable;)Lcom/ebay/nautilus/kernel/net/BuildRequestDataException;

    move-result-object v0

    throw v0
.end method

.method public getRequestUrl()Ljava/net/URL;
    .locals 1

    .line 263
    invoke-static {}, Lcom/ebay/common/net/api/cart/EbayCartApi;->getIncentiveServiceUrl()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getResponse()Lcom/ebay/common/net/api/cart/GetItemIncentives$GetItemIncentivesResponse;
    .locals 2

    .line 257
    new-instance v0, Lcom/ebay/common/net/api/cart/GetItemIncentives$GetItemIncentivesResponse;

    iget-object v1, p0, Lcom/ebay/common/net/api/cart/GetItemIncentives$GetItemIncentivesRequest;->currency:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/ebay/common/net/api/cart/GetItemIncentives$GetItemIncentivesResponse;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic getResponse()Lcom/ebay/nautilus/kernel/net/Response;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lcom/ebay/common/net/api/cart/GetItemIncentives$GetItemIncentivesRequest;->getResponse()Lcom/ebay/common/net/api/cart/GetItemIncentives$GetItemIncentivesResponse;

    move-result-object v0

    return-object v0
.end method
