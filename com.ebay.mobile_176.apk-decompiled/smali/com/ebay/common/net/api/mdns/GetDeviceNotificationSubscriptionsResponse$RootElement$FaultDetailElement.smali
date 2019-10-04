.class final Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$FaultDetailElement;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetDeviceNotificationSubscriptionsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FaultDetailElement"
.end annotation


# instance fields
.field private final data:Lcom/ebay/common/net/api/mdns/DeviceNotificationSubscriptions;

.field final synthetic this$1:Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement;


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement;Lcom/ebay/common/net/api/mdns/DeviceNotificationSubscriptions;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$FaultDetailElement;->this$1:Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 109
    iput-object p2, p0, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$FaultDetailElement;->data:Lcom/ebay/common/net/api/mdns/DeviceNotificationSubscriptions;

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

    const-string v0, "http://www.ebay.com/marketplace/services"

    .line 116
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "errorMessage"

    .line 118
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    new-instance p1, Lcom/ebay/nautilus/domain/net/ErrorMessageElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$FaultDetailElement;->this$1:Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement;

    iget-object p2, p2, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement;->this$0:Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse;

    const-string p3, "http://www.ebay.com/marketplace/services"

    invoke-direct {p1, p2, p3}, Lcom/ebay/nautilus/domain/net/ErrorMessageElement;-><init>(Lcom/ebay/nautilus/domain/net/EbayResponse;Ljava/lang/String;)V

    return-object p1

    .line 121
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
