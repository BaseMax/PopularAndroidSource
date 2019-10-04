.class final Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$PropertyElement;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetDeviceNotificationSubscriptionsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PropertyElement"
.end annotation


# instance fields
.field private final preference:Lcom/ebay/common/net/api/mdns/DeviceNotificationSubscriptions$Preference;

.field private propertyName:Ljava/lang/String;

.field final synthetic this$1:Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement;


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement;Lcom/ebay/common/net/api/mdns/DeviceNotificationSubscriptions$Preference;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$PropertyElement;->this$1:Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 255
    iput-object p2, p0, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$PropertyElement;->preference:Lcom/ebay/common/net/api/mdns/DeviceNotificationSubscriptions$Preference;

    return-void
.end method

.method static synthetic access$200(Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$PropertyElement;)Ljava/lang/String;
    .locals 0

    .line 248
    iget-object p0, p0, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$PropertyElement;->propertyName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$PropertyElement;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$PropertyElement;->propertyName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$PropertyElement;)Lcom/ebay/common/net/api/mdns/DeviceNotificationSubscriptions$Preference;
    .locals 0

    .line 248
    iget-object p0, p0, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$PropertyElement;->preference:Lcom/ebay/common/net/api/mdns/DeviceNotificationSubscriptions$Preference;

    return-object p0
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v0, "http://www.ebay.com/marketplace/mobile/v1/services"

    .line 262
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "name"

    .line 264
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    new-instance p1, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$PropertyElement$1;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$PropertyElement$1;-><init>(Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$PropertyElement;)V

    return-object p1

    :cond_0
    const-string/jumbo v0, "value"

    .line 274
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    new-instance p1, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$PropertyElement$2;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$PropertyElement$2;-><init>(Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$PropertyElement;)V

    return-object p1

    .line 284
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
