.class Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$Hop$2;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$TextElement;
.source "GetShipmentTrackingResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$Hop;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$Hop;

.field final synthetic val$hop:Lcom/ebay/nautilus/domain/data/ShipmentTrackingDetail$Hop;


# direct methods
.method constructor <init>(Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$Hop;Lcom/ebay/nautilus/domain/data/ShipmentTrackingDetail$Hop;)V
    .locals 0

    .line 394
    iput-object p1, p0, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$Hop$2;->this$1:Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$Hop;

    iput-object p2, p0, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$Hop$2;->val$hop:Lcom/ebay/nautilus/domain/data/ShipmentTrackingDetail$Hop;

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

    .line 398
    iget-object v0, p0, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$Hop$2;->val$hop:Lcom/ebay/nautilus/domain/data/ShipmentTrackingDetail$Hop;

    iput-object p1, v0, Lcom/ebay/nautilus/domain/data/ShipmentTrackingDetail$Hop;->to:Ljava/lang/String;

    return-void
.end method
