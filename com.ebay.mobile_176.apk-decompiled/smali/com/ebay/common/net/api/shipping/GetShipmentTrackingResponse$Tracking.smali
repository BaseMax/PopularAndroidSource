.class final Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$Tracking;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetShipmentTrackingResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Tracking"
.end annotation


# instance fields
.field private final detail:Lcom/ebay/nautilus/domain/data/ShipmentTrackingDetail;

.field final synthetic this$0:Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse;


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse;Lcom/ebay/nautilus/domain/data/ShipmentTrackingDetail;)V
    .locals 0

    .line 336
    iput-object p1, p0, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$Tracking;->this$0:Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 337
    iput-object p2, p0, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$Tracking;->detail:Lcom/ebay/nautilus/domain/data/ShipmentTrackingDetail;

    return-void
.end method

.method static synthetic access$700(Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$Tracking;)Lcom/ebay/nautilus/domain/data/ShipmentTrackingDetail;
    .locals 0

    .line 331
    iget-object p0, p0, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$Tracking;->detail:Lcom/ebay/nautilus/domain/data/ShipmentTrackingDetail;

    return-object p0
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string/jumbo v0, "shippingCarrier"

    .line 344
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    new-instance p1, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$Tracking$1;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$Tracking$1;-><init>(Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$Tracking;)V

    return-object p1

    :cond_0
    const-string/jumbo v0, "trackingNumber"

    .line 353
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 354
    new-instance p1, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$Tracking$2;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$Tracking$2;-><init>(Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$Tracking;)V

    return-object p1

    :cond_1
    const-string v0, "Hop"

    .line 362
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 363
    new-instance p1, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$Hop;

    iget-object p2, p0, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$Tracking;->this$0:Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse;

    iget-object p3, p0, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$Tracking;->detail:Lcom/ebay/nautilus/domain/data/ShipmentTrackingDetail;

    invoke-direct {p1, p2, p3}, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$Hop;-><init>(Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse;Lcom/ebay/nautilus/domain/data/ShipmentTrackingDetail;)V

    return-object p1

    .line 364
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
