.class Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$PropertyElement$2;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$TextElement;
.source "GetDeviceNotificationSubscriptionsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$PropertyElement;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$PropertyElement;


# direct methods
.method constructor <init>(Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$PropertyElement;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$PropertyElement$2;->this$2:Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$PropertyElement;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$TextElement;-><init>()V

    return-void
.end method


# virtual methods
.method public text(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 280
    iget-object v0, p0, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$PropertyElement$2;->this$2:Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$PropertyElement;

    invoke-static {v0}, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$PropertyElement;->access$300(Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$PropertyElement;)Lcom/ebay/common/net/api/mdns/DeviceNotificationSubscriptions$Preference;

    move-result-object v0

    iget-object v0, v0, Lcom/ebay/common/net/api/mdns/DeviceNotificationSubscriptions$Preference;->properties:Ljava/util/Map;

    iget-object v1, p0, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$PropertyElement$2;->this$2:Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$PropertyElement;

    invoke-static {v1}, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$PropertyElement;->access$200(Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$PropertyElement;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
