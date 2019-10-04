.class public Lcom/ebay/common/net/api/mdns/SyncUserOnDeviceRequest;
.super Lcom/ebay/common/net/api/mdns/EbayMdnsApi$MdnsRequest;
.source "SyncUserOnDeviceRequest.java"


# static fields
.field public static OPERATION_NAME:Ljava/lang/String; = "syncDevicePermission"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;)V
    .locals 8

    .line 19
    sget-object v1, Lcom/ebay/common/net/api/mdns/SyncUserOnDeviceRequest;->OPERATION_NAME:Ljava/lang/String;

    iget-object v2, p1, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;->iafToken:Ljava/lang/String;

    iget-object v3, p1, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;->userId:Ljava/lang/String;

    iget-object v4, p1, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;->language:Ljava/lang/String;

    iget-object v5, p1, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;->metaCategories:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;->getDeviceHandle()Lcom/ebay/common/model/mdns/DeviceHandle;

    move-result-object v6

    iget-object v7, p1, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;->site:Lcom/ebay/nautilus/domain/EbaySite;

    move-object v0, p0

    .line 19
    invoke-direct/range {v0 .. v7}, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$MdnsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/common/model/mdns/DeviceHandle;Lcom/ebay/nautilus/domain/EbaySite;)V

    return-void
.end method


# virtual methods
.method protected buildSpecificXmlRequest(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "http://www.ebay.com/marketplace/mobile/v1/services"

    const-string/jumbo v1, "syncWithUserId"

    const-string/jumbo v2, "true"

    .line 26
    invoke-static {p1, v0, v1, v2}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
