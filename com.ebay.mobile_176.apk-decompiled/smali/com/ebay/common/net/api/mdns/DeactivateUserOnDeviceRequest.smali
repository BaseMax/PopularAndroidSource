.class public final Lcom/ebay/common/net/api/mdns/DeactivateUserOnDeviceRequest;
.super Lcom/ebay/common/net/api/mdns/EbayMdnsApi$MdnsRequest;
.source "DeactivateUserOnDeviceRequest.java"


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/common/model/mdns/DeviceHandle;Lcom/ebay/nautilus/domain/EbaySite;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v1, "deactivateUserOnDevice"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 17
    invoke-direct/range {v0 .. v7}, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$MdnsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/common/model/mdns/DeviceHandle;Lcom/ebay/nautilus/domain/EbaySite;)V

    return-void
.end method


# virtual methods
.method protected buildSpecificXmlRequest(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 0

    return-void
.end method
