.class final Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$ShipmentTrackingDetailXML;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetShipmentTrackingResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShipmentTrackingDetailXML"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse;


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$ShipmentTrackingDetailXML;->this$0:Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 189
    iget-object p1, p1, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse;->tracking:Lcom/ebay/nautilus/domain/data/ShipmentTracking;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/ShipmentTracking;->addDetail()V

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

    .line 196
    iget-object v0, p0, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$ShipmentTrackingDetailXML;->this$0:Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse;

    iget-object v0, v0, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse;->tracking:Lcom/ebay/nautilus/domain/data/ShipmentTracking;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/ShipmentTracking;->details:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$ShipmentTrackingDetailXML;->this$0:Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse;

    iget-object v1, v1, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse;->tracking:Lcom/ebay/nautilus/domain/data/ShipmentTracking;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/ShipmentTracking;->details:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/ShipmentTrackingDetail;

    const-string/jumbo v1, "tracking"

    .line 197
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    new-instance p1, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$Tracking;

    iget-object p2, p0, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$ShipmentTrackingDetailXML;->this$0:Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse;

    invoke-direct {p1, p2, v0}, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$Tracking;-><init>(Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse;Lcom/ebay/nautilus/domain/data/ShipmentTrackingDetail;)V

    return-object p1

    :cond_0
    const-string/jumbo v1, "trackingStatus"

    .line 199
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 200
    new-instance p1, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$ShipmentTrackingDetailXML$1;

    invoke-direct {p1, p0, v0}, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$ShipmentTrackingDetailXML$1;-><init>(Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$ShipmentTrackingDetailXML;Lcom/ebay/nautilus/domain/data/ShipmentTrackingDetail;)V

    return-object p1

    :cond_1
    const-string v0, "history"

    .line 208
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 209
    new-instance p1, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$History;

    iget-object p2, p0, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$ShipmentTrackingDetailXML;->this$0:Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$History;-><init>(Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse;Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$1;)V

    return-object p1

    .line 210
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
