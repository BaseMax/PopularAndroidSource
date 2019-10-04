.class final Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$History;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetShipmentTrackingResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "History"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse;


# direct methods
.method private constructor <init>(Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$History;->this$0:Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse;Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$1;)V
    .locals 0

    .line 214
    invoke-direct {p0, p1}, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$History;-><init>(Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse;)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$History;->this$0:Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse;

    iget-object v0, v0, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse;->tracking:Lcom/ebay/nautilus/domain/data/ShipmentTracking;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/ShipmentTracking;->details:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$History;->this$0:Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse;

    iget-object v1, v1, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse;->tracking:Lcom/ebay/nautilus/domain/data/ShipmentTracking;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/ShipmentTracking;->details:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/ShipmentTrackingDetail;

    const-string/jumbo v1, "scanDetail"

    .line 221
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    new-instance p1, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$ScanDetail;

    iget-object p2, p0, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$History;->this$0:Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse;

    invoke-direct {p1, p2, v0}, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$ScanDetail;-><init>(Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse;Lcom/ebay/nautilus/domain/data/ShipmentTrackingDetail;)V

    return-object p1

    .line 223
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
