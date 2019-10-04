.class final Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$Hop;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetShipmentTrackingResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Hop"
.end annotation


# instance fields
.field private final detail:Lcom/ebay/nautilus/domain/data/ShipmentTrackingDetail;

.field final synthetic this$0:Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse;


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse;Lcom/ebay/nautilus/domain/data/ShipmentTrackingDetail;)V
    .locals 0

    .line 373
    iput-object p1, p0, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$Hop;->this$0:Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 374
    iput-object p2, p0, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$Hop;->detail:Lcom/ebay/nautilus/domain/data/ShipmentTrackingDetail;

    .line 375
    iget-object p1, p0, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$Hop;->detail:Lcom/ebay/nautilus/domain/data/ShipmentTrackingDetail;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/ShipmentTrackingDetail;->addHop()V

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

    .line 382
    iget-object v0, p0, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$Hop;->detail:Lcom/ebay/nautilus/domain/data/ShipmentTrackingDetail;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/ShipmentTrackingDetail;->hops:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$Hop;->detail:Lcom/ebay/nautilus/domain/data/ShipmentTrackingDetail;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/ShipmentTrackingDetail;->hops:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/ShipmentTrackingDetail$Hop;

    const-string v1, "From"

    .line 383
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 384
    new-instance p1, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$Hop$1;

    invoke-direct {p1, p0, v0}, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$Hop$1;-><init>(Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$Hop;Lcom/ebay/nautilus/domain/data/ShipmentTrackingDetail$Hop;)V

    return-object p1

    :cond_0
    const-string v1, "To"

    .line 392
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 393
    new-instance p1, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$Hop$2;

    invoke-direct {p1, p0, v0}, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$Hop$2;-><init>(Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$Hop;Lcom/ebay/nautilus/domain/data/ShipmentTrackingDetail$Hop;)V

    return-object p1

    .line 401
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
