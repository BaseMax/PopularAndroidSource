.class public final Lcom/ebay/common/net/api/mdns/SetDeviceNotificationSubscriptionsRequest;
.super Lcom/ebay/common/net/api/mdns/EbayMdnsApi$MdnsRequest;
.source "SetDeviceNotificationSubscriptionsRequest.java"


# static fields
.field public static final OPERATION_NAME:Ljava/lang/String; = "setDeviceNotificationSubscriptions"


# instance fields
.field private final params:Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string/jumbo v1, "setDeviceNotificationSubscriptions"

    .line 26
    iget-object v2, p1, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;->iafToken:Ljava/lang/String;

    iget-object v3, p1, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;->userId:Ljava/lang/String;

    iget-object v4, p1, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;->language:Ljava/lang/String;

    iget-object v5, p1, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;->metaCategories:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;->getDeviceHandle()Lcom/ebay/common/model/mdns/DeviceHandle;

    move-result-object v6

    iget-object v7, p1, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;->site:Lcom/ebay/nautilus/domain/EbaySite;

    move-object v0, p0

    .line 26
    invoke-direct/range {v0 .. v7}, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$MdnsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/common/model/mdns/DeviceHandle;Lcom/ebay/nautilus/domain/EbaySite;)V

    .line 28
    iput-object p1, p0, Lcom/ebay/common/net/api/mdns/SetDeviceNotificationSubscriptionsRequest;->params:Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;

    return-void
.end method


# virtual methods
.method protected buildSpecificXmlRequest(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/ebay/common/net/api/mdns/SetDeviceNotificationSubscriptionsRequest;->params:Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;

    iget-object v0, v0, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;->prefs:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    const-string v0, "http://www.ebay.com/marketplace/mobile/v1/services"

    const-string v1, "preferences"

    .line 36
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 37
    iget-object v0, p0, Lcom/ebay/common/net/api/mdns/SetDeviceNotificationSubscriptionsRequest;->params:Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;

    iget-object v0, v0, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;->prefs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/common/model/mdns/NotificationPreference;

    const-string v2, "http://www.ebay.com/marketplace/mobile/v1/services"

    const-string v3, "preference"

    .line 39
    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "http://www.ebay.com/marketplace/mobile/v1/services"

    const-string v3, "eventName"

    .line 40
    iget-object v4, v1, Lcom/ebay/common/model/mdns/NotificationPreference;->eventType:Ljava/lang/String;

    invoke-static {p1, v2, v3, v4}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "http://www.ebay.com/marketplace/mobile/v1/services"

    const-string/jumbo v3, "state"

    .line 41
    iget-boolean v4, v1, Lcom/ebay/common/model/mdns/NotificationPreference;->isEnabled:Z

    if-eqz v4, :cond_0

    const-string v4, "Enable"

    goto :goto_1

    :cond_0
    const-string v4, "Disable"

    :goto_1
    invoke-static {p1, v2, v3, v4}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v2, v1, Lcom/ebay/common/model/mdns/NotificationPreference;->deliveryPolicyType:Lcom/ebay/common/model/mdns/NotificationPreference$DeliveryPolicyType;

    if-eqz v2, :cond_1

    const-string v2, "http://www.ebay.com/marketplace/mobile/v1/services"

    const-string v3, "deliveryPolicyType"

    .line 43
    iget-object v4, v1, Lcom/ebay/common/model/mdns/NotificationPreference;->deliveryPolicyType:Lcom/ebay/common/model/mdns/NotificationPreference$DeliveryPolicyType;

    iget-object v4, v4, Lcom/ebay/common/model/mdns/NotificationPreference$DeliveryPolicyType;->apiValue:Ljava/lang/String;

    invoke-static {p1, v2, v3, v4}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_1
    iget-object v2, v1, Lcom/ebay/common/model/mdns/NotificationPreference;->properties:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/ebay/common/model/mdns/NotificationPreference;->properties:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 47
    iget-object v2, v1, Lcom/ebay/common/model/mdns/NotificationPreference;->properties:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/nautilus/domain/data/NameValue;

    const-string v4, "http://www.ebay.com/marketplace/mobile/v1/services"

    const-string/jumbo v5, "properties"

    .line 49
    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 52
    iget-object v4, v1, Lcom/ebay/common/model/mdns/NotificationPreference;->eventType:Ljava/lang/String;

    sget-object v5, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->BIDITEM:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    invoke-virtual {v5}, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "http://www.ebay.com/marketplace/mobile/v1/services"

    const-string v5, "name"

    .line 53
    sget-object v6, Lcom/ebay/common/model/mdns/NotificationPreference$PropertyType;->TimeLeft:Lcom/ebay/common/model/mdns/NotificationPreference$PropertyType;

    invoke-virtual {v6}, Lcom/ebay/common/model/mdns/NotificationPreference$PropertyType;->name()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v4, v5, v6}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    const-string v4, "http://www.ebay.com/marketplace/mobile/v1/services"

    const-string v5, "name"

    .line 55
    invoke-virtual {v3}, Lcom/ebay/nautilus/domain/data/NameValue;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v4, v5, v6}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    const-string v4, "http://www.ebay.com/marketplace/mobile/v1/services"

    const-string/jumbo v5, "value"

    .line 57
    invoke-virtual {v3}, Lcom/ebay/nautilus/domain/data/NameValue;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v4, v5, v3}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "http://www.ebay.com/marketplace/mobile/v1/services"

    const-string/jumbo v4, "properties"

    .line 58
    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_2

    :cond_3
    const-string v1, "http://www.ebay.com/marketplace/mobile/v1/services"

    const-string v2, "preference"

    .line 61
    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_0

    :cond_4
    const-string v0, "http://www.ebay.com/marketplace/mobile/v1/services"

    const-string v1, "preferences"

    .line 63
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 67
    :cond_5
    iget-object v0, p0, Lcom/ebay/common/net/api/mdns/SetDeviceNotificationSubscriptionsRequest;->params:Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;

    iget-object v0, v0, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;->metaCategories:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/ebay/common/net/api/mdns/SetDeviceNotificationSubscriptionsRequest;->getOperationName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setDeviceNotificationSubscriptions"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "http://www.ebay.com/marketplace/mobile/v1/services"

    const-string v1, "metaCategoryFilter"

    .line 68
    iget-object v2, p0, Lcom/ebay/common/net/api/mdns/SetDeviceNotificationSubscriptionsRequest;->params:Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;

    iget-object v2, v2, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;->metaCategories:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_6
    iget-object v0, p0, Lcom/ebay/common/net/api/mdns/SetDeviceNotificationSubscriptionsRequest;->params:Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;

    iget-object v0, v0, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;->quietTimeStart:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/ebay/common/net/api/mdns/SetDeviceNotificationSubscriptionsRequest;->params:Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;

    iget-object v0, v0, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;->quietTimeStop:Ljava/lang/String;

    if-eqz v0, :cond_7

    const-string v0, "http://www.ebay.com/marketplace/mobile/v1/services"

    const-string/jumbo v1, "quietPeriods"

    .line 74
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "http://www.ebay.com/marketplace/mobile/v1/services"

    const-string/jumbo v1, "quietPeriod"

    .line 75
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "http://www.ebay.com/marketplace/mobile/v1/services"

    const-string/jumbo v1, "quietPeriodTypeCode"

    const-string v2, "Alldays"

    .line 76
    invoke-static {p1, v0, v1, v2}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "http://www.ebay.com/marketplace/mobile/v1/services"

    const-string/jumbo v1, "startHour"

    .line 77
    iget-object v2, p0, Lcom/ebay/common/net/api/mdns/SetDeviceNotificationSubscriptionsRequest;->params:Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;

    iget-object v2, v2, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;->quietTimeStart:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "http://www.ebay.com/marketplace/mobile/v1/services"

    const-string v1, "endHour"

    .line 78
    iget-object v2, p0, Lcom/ebay/common/net/api/mdns/SetDeviceNotificationSubscriptionsRequest;->params:Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;

    iget-object v2, v2, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;->quietTimeStop:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "http://www.ebay.com/marketplace/mobile/v1/services"

    const-string/jumbo v1, "quietPeriod"

    .line 79
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "http://www.ebay.com/marketplace/mobile/v1/services"

    const-string/jumbo v1, "quietPeriods"

    .line 80
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_7
    return-void
.end method
