.class public Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse;
.super Lcom/ebay/nautilus/domain/net/EbayResponse;
.source "GetShipmentTrackingResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$Hop;,
        Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$Tracking;,
        Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$ScanDetail;,
        Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$History;,
        Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$ShipmentTrackingDetailXML;,
        Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$TransactionInformation;,
        Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$ShipmentTrackingTransactionalInfo;,
        Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$ShipmentTrackingResponseInfo;,
        Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$ShipmentTrackingResponse;,
        Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$Body;,
        Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$RootElement;
    }
.end annotation


# instance fields
.field public tracking:Lcom/ebay/nautilus/domain/data/ShipmentTracking;

.field public useEventTimeHack:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/ebay/nautilus/domain/net/EbayResponse;-><init>()V

    .line 28
    new-instance v0, Lcom/ebay/nautilus/domain/data/ShipmentTracking;

    invoke-direct {v0}, Lcom/ebay/nautilus/domain/data/ShipmentTracking;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse;->tracking:Lcom/ebay/nautilus/domain/data/ShipmentTracking;

    .line 35
    iput-boolean p1, p0, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse;->useEventTimeHack:Z

    return-void
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ebay/nautilus/kernel/net/ParseResponseDataException;
        }
    .end annotation

    .line 41
    new-instance v0, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$RootElement;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$RootElement;-><init>(Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse;Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$1;)V

    .line 42
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/SaxHandler;->parseXml(Ljava/io/InputStream;Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;)V

    .line 44
    iget-object p1, p0, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse;->tracking:Lcom/ebay/nautilus/domain/data/ShipmentTracking;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse;->tracking:Lcom/ebay/nautilus/domain/data/ShipmentTracking;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/ShipmentTracking;->details:Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    .line 47
    iget-object p1, p0, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse;->tracking:Lcom/ebay/nautilus/domain/data/ShipmentTracking;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/ShipmentTracking;->details:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/ShipmentTrackingDetail;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 53
    iget-object v2, v0, Lcom/ebay/nautilus/domain/data/ShipmentTrackingDetail;->scanDetails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/nautilus/domain/data/ShipmentTrackingScanDetail;

    .line 55
    iget-object v3, v3, Lcom/ebay/nautilus/domain/data/ShipmentTrackingScanDetail;->eventTime:Ljava/util/Date;

    if-nez v3, :cond_1

    const/4 v1, 0x0

    :cond_2
    if-eqz v1, :cond_0

    .line 63
    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/ShipmentTrackingDetail;->scanDetails:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 64
    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/ShipmentTrackingDetail;->scanDetails:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    goto :goto_0

    :cond_3
    return-void
.end method
