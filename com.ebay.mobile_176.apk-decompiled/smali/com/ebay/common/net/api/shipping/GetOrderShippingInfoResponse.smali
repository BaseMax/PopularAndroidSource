.class public Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse;
.super Lcom/ebay/nautilus/domain/net/EbayResponse;
.source "GetOrderShippingInfoResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse$DeliveryEstimate;,
        Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse$SelectedShippingDetails;,
        Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse$itemShippingService;,
        Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse$TransactionInfo;,
        Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse$OrderShippingInfoXml;,
        Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse$GetOrderShippingInfoResponseXml;,
        Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse$Body;,
        Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse$RootElement;
    }
.end annotation


# instance fields
.field public info:Lcom/ebay/common/model/OrderShippingInfo;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/ebay/nautilus/domain/net/EbayResponse;-><init>()V

    .line 22
    new-instance v0, Lcom/ebay/common/model/OrderShippingInfo;

    invoke-direct {v0}, Lcom/ebay/common/model/OrderShippingInfo;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse;->info:Lcom/ebay/common/model/OrderShippingInfo;

    return-void
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ebay/nautilus/kernel/net/ParseResponseDataException;
        }
    .end annotation

    .line 28
    new-instance v0, Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse$RootElement;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse$RootElement;-><init>(Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse;Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse$1;)V

    .line 29
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/SaxHandler;->parseXml(Ljava/io/InputStream;Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;)V

    return-void
.end method
