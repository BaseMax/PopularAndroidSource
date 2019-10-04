.class public final Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;
.super Lcom/ebay/nautilus/domain/net/EbayResponse;
.source "GetItemTransactionsResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingAddress;,
        Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$BuyerInfo;,
        Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Buyer;,
        Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Status;,
        Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingServiceOption;,
        Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingPackageInfoElement;,
        Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingServiceSelected;,
        Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShipmentTrackingDetailsXml;,
        Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$SalesTax;,
        Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingDetails;,
        Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$RequiredSellerActionArray;,
        Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$PaymentHoldDetails;,
        Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ContainingOrder;,
        Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$NameValueList;,
        Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$VariationSpecifics;,
        Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Variation;,
        Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShipToAddress;,
        Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingServiceDetails;,
        Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$SellerShipmentToLogisticsProvider;,
        Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$MultiLegShippingDetails;,
        Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$PickupMethodSelected;,
        Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$PickupOptions;,
        Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$PickupDetails;,
        Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$PaymentElement;,
        Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Payments;,
        Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$RefundElement;,
        Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Refunds;,
        Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$UnpaidItem;,
        Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$MonetaryDetails;,
        Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Transaction;,
        Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$TransactionArray;,
        Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Seller;,
        Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Item;,
        Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$RootElement;
    }
.end annotation


# instance fields
.field private itemTransaction:Lcom/ebay/common/model/ItemTransaction;

.field private final itemTransactions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ebay/common/model/ItemTransaction;",
            ">;"
        }
    .end annotation
.end field

.field private final paymentMethods:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sellerUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/ebay/nautilus/domain/net/EbayResponse;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;->itemTransactions:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;->paymentMethods:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$400(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;)Ljava/util/ArrayList;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;->paymentMethods:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$502(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;->sellerUserId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;)Lcom/ebay/common/model/ItemTransaction;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;->itemTransaction:Lcom/ebay/common/model/ItemTransaction;

    return-object p0
.end method

.method static synthetic access$602(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;Lcom/ebay/common/model/ItemTransaction;)Lcom/ebay/common/model/ItemTransaction;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;->itemTransaction:Lcom/ebay/common/model/ItemTransaction;

    return-object p1
.end method

.method static synthetic access$700(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;)Ljava/util/ArrayList;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;->itemTransactions:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public getItemTransaction()Lcom/ebay/common/model/ItemTransaction;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;->itemTransaction:Lcom/ebay/common/model/ItemTransaction;

    return-object v0
.end method

.method public parse(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ebay/nautilus/kernel/net/ParseResponseDataException;
        }
    .end annotation

    .line 47
    new-instance v0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$RootElement;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$RootElement;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$1;)V

    .line 48
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/SaxHandler;->parseXml(Ljava/io/InputStream;Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;)V

    .line 51
    iget-object p1, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;->itemTransactions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/model/ItemTransaction;

    .line 53
    iget-object v1, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;->sellerUserId:Ljava/lang/String;

    iput-object v1, v0, Lcom/ebay/common/model/ItemTransaction;->sellerUserId:Ljava/lang/String;

    .line 54
    iget-object v1, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;->paymentMethods:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/ebay/common/model/ItemTransaction;->paymentMethods:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    return-void
.end method
