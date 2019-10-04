.class Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$OperationElement$4;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$TextElement;
.source "GetDeviceNotificationSubscriptionsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$OperationElement;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$OperationElement;


# direct methods
.method constructor <init>(Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$OperationElement;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$OperationElement$4;->this$2:Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$OperationElement;

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

    .line 175
    iget-object v0, p0, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$OperationElement$4;->this$2:Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$OperationElement;

    invoke-static {v0}, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$OperationElement;->access$000(Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$OperationElement;)Lcom/ebay/common/net/api/mdns/DeviceNotificationSubscriptions;

    move-result-object v0

    iput-object p1, v0, Lcom/ebay/common/net/api/mdns/DeviceNotificationSubscriptions;->language:Ljava/lang/String;

    return-void
.end method
