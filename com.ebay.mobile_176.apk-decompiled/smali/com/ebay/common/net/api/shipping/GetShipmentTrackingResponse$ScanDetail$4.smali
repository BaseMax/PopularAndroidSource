.class Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$ScanDetail$4;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$TextElement;
.source "GetShipmentTrackingResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$ScanDetail;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$ScanDetail;

.field final synthetic val$scanDetail:Lcom/ebay/nautilus/domain/data/ShipmentTrackingScanDetail;


# direct methods
.method constructor <init>(Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$ScanDetail;Lcom/ebay/nautilus/domain/data/ShipmentTrackingScanDetail;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$ScanDetail$4;->this$1:Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$ScanDetail;

    iput-object p2, p0, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$ScanDetail$4;->val$scanDetail:Lcom/ebay/nautilus/domain/data/ShipmentTrackingScanDetail;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$TextElement;-><init>()V

    return-void
.end method


# virtual methods
.method public text(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 297
    iget-object v0, p0, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$ScanDetail$4;->val$scanDetail:Lcom/ebay/nautilus/domain/data/ShipmentTrackingScanDetail;

    iput-object p1, v0, Lcom/ebay/nautilus/domain/data/ShipmentTrackingScanDetail;->eventCity:Ljava/lang/String;

    return-void
.end method
