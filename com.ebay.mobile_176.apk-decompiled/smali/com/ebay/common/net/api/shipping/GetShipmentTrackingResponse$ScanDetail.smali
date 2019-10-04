.class final Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$ScanDetail;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetShipmentTrackingResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScanDetail"
.end annotation


# instance fields
.field final detail:Lcom/ebay/nautilus/domain/data/ShipmentTrackingDetail;

.field final synthetic this$0:Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse;


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse;Lcom/ebay/nautilus/domain/data/ShipmentTrackingDetail;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$ScanDetail;->this$0:Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 233
    iput-object p2, p0, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$ScanDetail;->detail:Lcom/ebay/nautilus/domain/data/ShipmentTrackingDetail;

    .line 234
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/data/ShipmentTrackingDetail;->addScanDetail()V

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

    .line 241
    iget-object v0, p0, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$ScanDetail;->detail:Lcom/ebay/nautilus/domain/data/ShipmentTrackingDetail;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/ShipmentTrackingDetail;->scanDetails:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$ScanDetail;->detail:Lcom/ebay/nautilus/domain/data/ShipmentTrackingDetail;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/ShipmentTrackingDetail;->scanDetails:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/ShipmentTrackingScanDetail;

    const-string v1, "eventStatus"

    .line 242
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    new-instance p1, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$ScanDetail$1;

    invoke-direct {p1, p0, v0}, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$ScanDetail$1;-><init>(Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$ScanDetail;Lcom/ebay/nautilus/domain/data/ShipmentTrackingScanDetail;)V

    return-object p1

    :cond_0
    const-string v1, "eventDesc"

    .line 251
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 252
    new-instance p1, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$ScanDetail$2;

    invoke-direct {p1, p0, v0}, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$ScanDetail$2;-><init>(Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$ScanDetail;Lcom/ebay/nautilus/domain/data/ShipmentTrackingScanDetail;)V

    return-object p1

    :cond_1
    const-string v1, "eventTime"

    .line 260
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 261
    new-instance p1, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$ScanDetail$3;

    invoke-direct {p1, p0, v0}, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$ScanDetail$3;-><init>(Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$ScanDetail;Lcom/ebay/nautilus/domain/data/ShipmentTrackingScanDetail;)V

    return-object p1

    :cond_2
    const-string v1, "eventCity"

    .line 291
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 292
    new-instance p1, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$ScanDetail$4;

    invoke-direct {p1, p0, v0}, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$ScanDetail$4;-><init>(Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$ScanDetail;Lcom/ebay/nautilus/domain/data/ShipmentTrackingScanDetail;)V

    return-object p1

    :cond_3
    const-string v1, "eventStateOrProvince"

    .line 300
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 301
    new-instance p1, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$ScanDetail$5;

    invoke-direct {p1, p0, v0}, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$ScanDetail$5;-><init>(Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$ScanDetail;Lcom/ebay/nautilus/domain/data/ShipmentTrackingScanDetail;)V

    return-object p1

    :cond_4
    const-string v1, "eventPostalCode"

    .line 309
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 310
    new-instance p1, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$ScanDetail$6;

    invoke-direct {p1, p0, v0}, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$ScanDetail$6;-><init>(Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$ScanDetail;Lcom/ebay/nautilus/domain/data/ShipmentTrackingScanDetail;)V

    return-object p1

    :cond_5
    const-string v1, "eventCode"

    .line 318
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 319
    new-instance p1, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$ScanDetail$7;

    invoke-direct {p1, p0, v0}, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$ScanDetail$7;-><init>(Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$ScanDetail;Lcom/ebay/nautilus/domain/data/ShipmentTrackingScanDetail;)V

    return-object p1

    .line 327
    :cond_6
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
