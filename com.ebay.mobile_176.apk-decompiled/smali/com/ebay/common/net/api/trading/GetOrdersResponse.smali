.class public Lcom/ebay/common/net/api/trading/GetOrdersResponse;
.super Lcom/ebay/nautilus/domain/net/EbayResponse;
.source "GetOrdersResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingAddress;,
        Lcom/ebay/common/net/api/trading/GetOrdersResponse$BuyerInfo;,
        Lcom/ebay/common/net/api/trading/GetOrdersResponse$Buyer;,
        Lcom/ebay/common/net/api/trading/GetOrdersResponse$Status;,
        Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingServiceOption;,
        Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingServiceSelected;,
        Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipmentTrackingDetailsXml;,
        Lcom/ebay/common/net/api/trading/GetOrdersResponse$SalesTax;,
        Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingDetails;,
        Lcom/ebay/common/net/api/trading/GetOrdersResponse$RequiredSellerActionArray;,
        Lcom/ebay/common/net/api/trading/GetOrdersResponse$PaymentHoldDetails;,
        Lcom/ebay/common/net/api/trading/GetOrdersResponse$ContainingOrder;,
        Lcom/ebay/common/net/api/trading/GetOrdersResponse$NameValueList;,
        Lcom/ebay/common/net/api/trading/GetOrdersResponse$VariationSpecifics;,
        Lcom/ebay/common/net/api/trading/GetOrdersResponse$Variation;,
        Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipToAddress;,
        Lcom/ebay/common/net/api/trading/GetOrdersResponse$SellerShipmentToLogisticsProvider;,
        Lcom/ebay/common/net/api/trading/GetOrdersResponse$MultiLegShippingDetails;,
        Lcom/ebay/common/net/api/trading/GetOrdersResponse$Item;,
        Lcom/ebay/common/net/api/trading/GetOrdersResponse$RefundElement;,
        Lcom/ebay/common/net/api/trading/GetOrdersResponse$Refunds;,
        Lcom/ebay/common/net/api/trading/GetOrdersResponse$MonetaryDetails;,
        Lcom/ebay/common/net/api/trading/GetOrdersResponse$Transaction;,
        Lcom/ebay/common/net/api/trading/GetOrdersResponse$TransactionArray;,
        Lcom/ebay/common/net/api/trading/GetOrdersResponse$PickupMethodSelected;,
        Lcom/ebay/common/net/api/trading/GetOrdersResponse$PickupOptions;,
        Lcom/ebay/common/net/api/trading/GetOrdersResponse$PickupDetails;,
        Lcom/ebay/common/net/api/trading/GetOrdersResponse$CheckoutStatus;,
        Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingServiceSelectedOrder;,
        Lcom/ebay/common/net/api/trading/GetOrdersResponse$Order;,
        Lcom/ebay/common/net/api/trading/GetOrdersResponse$OrderArray;,
        Lcom/ebay/common/net/api/trading/GetOrdersResponse$RootElement;
    }
.end annotation


# instance fields
.field public orders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/common/model/EbayOrder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/ebay/nautilus/domain/net/EbayResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ebay/nautilus/kernel/net/ParseResponseDataException;
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$RootElement;

    invoke-direct {v0, p0, p0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$RootElement;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse;Lcom/ebay/nautilus/domain/net/EbayResponse;)V

    .line 36
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/SaxHandler;->parseXml(Ljava/io/InputStream;Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;)V

    return-void
.end method
