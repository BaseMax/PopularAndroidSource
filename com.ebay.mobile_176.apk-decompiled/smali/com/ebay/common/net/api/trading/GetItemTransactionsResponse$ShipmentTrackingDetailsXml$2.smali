.class Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShipmentTrackingDetailsXml$2;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$TextElement;
.source "GetItemTransactionsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShipmentTrackingDetailsXml;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShipmentTrackingDetailsXml;

.field final synthetic val$std:Lcom/ebay/common/model/ItemTransaction$ShipmentTrackingDetails;


# direct methods
.method constructor <init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShipmentTrackingDetailsXml;Lcom/ebay/common/model/ItemTransaction$ShipmentTrackingDetails;)V
    .locals 0

    .line 1090
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShipmentTrackingDetailsXml$2;->this$1:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShipmentTrackingDetailsXml;

    iput-object p2, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShipmentTrackingDetailsXml$2;->val$std:Lcom/ebay/common/model/ItemTransaction$ShipmentTrackingDetails;

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

    .line 1094
    iget-object v0, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShipmentTrackingDetailsXml$2;->val$std:Lcom/ebay/common/model/ItemTransaction$ShipmentTrackingDetails;

    iput-object p1, v0, Lcom/ebay/common/model/ItemTransaction$ShipmentTrackingDetails;->shippingCarrierUsed:Ljava/lang/String;

    return-void
.end method
