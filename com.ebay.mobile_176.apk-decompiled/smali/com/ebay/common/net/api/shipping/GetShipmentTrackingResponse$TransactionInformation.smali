.class final Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$TransactionInformation;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetShipmentTrackingResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TransactionInformation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse;


# direct methods
.method private constructor <init>(Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$TransactionInformation;->this$0:Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse;Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$1;)V
    .locals 0

    .line 139
    invoke-direct {p0, p1}, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$TransactionInformation;-><init>(Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse;)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string/jumbo v0, "shippedDate"

    .line 145
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    new-instance p1, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$TransactionInformation$1;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$TransactionInformation$1;-><init>(Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$TransactionInformation;)V

    return-object p1

    :cond_0
    const-string/jumbo v0, "transitDate"

    .line 154
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    new-instance p1, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$TransactionInformation$2;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$TransactionInformation$2;-><init>(Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$TransactionInformation;)V

    return-object p1

    :cond_1
    const-string v0, "handlingTime"

    .line 163
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 164
    new-instance p1, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$TransactionInformation$3;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$TransactionInformation$3;-><init>(Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$TransactionInformation;)V

    return-object p1

    :cond_2
    const-string v0, "estimatedDeliveryDate"

    .line 172
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 173
    new-instance p1, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$TransactionInformation$4;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$TransactionInformation$4;-><init>(Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$TransactionInformation;)V

    return-object p1

    .line 181
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
