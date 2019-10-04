.class final Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetDeviceNotificationSubscriptionsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RootElement"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$PropertyElement;,
        Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$PreferenceElement;,
        Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$PreferencesElement;,
        Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$OperationElement;,
        Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$FaultDetailElement;,
        Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$FaultElement;,
        Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$SoapBodyElement;
    }
.end annotation


# instance fields
.field private final data:Lcom/ebay/common/net/api/mdns/DeviceNotificationSubscriptions;

.field private final operationElement:Ljava/lang/String;

.field final synthetic this$0:Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse;


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse;Lcom/ebay/common/net/api/mdns/DeviceNotificationSubscriptions;Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement;->this$0:Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 35
    iput-object p2, p0, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement;->data:Lcom/ebay/common/net/api/mdns/DeviceNotificationSubscriptions;

    .line 36
    iput-object p3, p0, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement;->operationElement:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v0, "http://www.w3.org/2003/05/soap-envelope"

    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Body"

    .line 45
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    new-instance p1, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$SoapBodyElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement;->data:Lcom/ebay/common/net/api/mdns/DeviceNotificationSubscriptions;

    iget-object p3, p0, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement;->operationElement:Ljava/lang/String;

    invoke-direct {p1, p0, p2, p3}, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$SoapBodyElement;-><init>(Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement;Lcom/ebay/common/net/api/mdns/DeviceNotificationSubscriptions;Ljava/lang/String;)V

    return-object p1

    .line 48
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
