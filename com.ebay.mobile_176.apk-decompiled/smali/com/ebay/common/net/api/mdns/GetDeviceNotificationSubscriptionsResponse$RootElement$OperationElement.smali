.class final Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$OperationElement;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetDeviceNotificationSubscriptionsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OperationElement"
.end annotation


# instance fields
.field private final data:Lcom/ebay/common/net/api/mdns/DeviceNotificationSubscriptions;

.field final synthetic this$1:Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement;


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement;Lcom/ebay/common/net/api/mdns/DeviceNotificationSubscriptions;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$OperationElement;->this$1:Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 131
    iput-object p2, p0, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$OperationElement;->data:Lcom/ebay/common/net/api/mdns/DeviceNotificationSubscriptions;

    return-void
.end method

.method static synthetic access$000(Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$OperationElement;)Lcom/ebay/common/net/api/mdns/DeviceNotificationSubscriptions;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$OperationElement;->data:Lcom/ebay/common/net/api/mdns/DeviceNotificationSubscriptions;

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

    .line 138
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "ack"

    .line 140
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    new-instance p1, Lcom/ebay/nautilus/domain/net/AckElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$OperationElement;->this$1:Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement;

    iget-object p2, p2, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement;->this$0:Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse;

    invoke-direct {p1, p2}, Lcom/ebay/nautilus/domain/net/AckElement;-><init>(Lcom/ebay/nautilus/domain/net/EbayResponse;)V

    return-object p1

    :cond_0
    const-string/jumbo v0, "timestamp"

    .line 142
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    new-instance p1, Lcom/ebay/nautilus/domain/net/TimestampElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$OperationElement;->this$1:Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement;

    iget-object p2, p2, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement;->this$0:Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse;

    invoke-direct {p1, p2}, Lcom/ebay/nautilus/domain/net/TimestampElement;-><init>(Lcom/ebay/nautilus/domain/net/EbayResponse;)V

    return-object p1

    :cond_1
    const-string/jumbo v0, "version"

    .line 144
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    new-instance p1, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$OperationElement$1;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$OperationElement$1;-><init>(Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$OperationElement;)V

    return-object p1

    :cond_2
    const-string v0, "errorMessage"

    .line 152
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 153
    new-instance p1, Lcom/ebay/nautilus/domain/net/ErrorMessageElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$OperationElement;->this$1:Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement;

    iget-object p2, p2, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement;->this$0:Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse;

    const-string p3, "http://www.ebay.com/marketplace/mobile/v1/services"

    invoke-direct {p1, p2, p3}, Lcom/ebay/nautilus/domain/net/ErrorMessageElement;-><init>(Lcom/ebay/nautilus/domain/net/EbayResponse;Ljava/lang/String;)V

    return-object p1

    :cond_3
    const-string v0, "active"

    .line 154
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 155
    new-instance p1, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$OperationElement$2;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$OperationElement$2;-><init>(Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$OperationElement;)V

    return-object p1

    :cond_4
    const-string v0, "description"

    .line 162
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 163
    new-instance p1, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$OperationElement$3;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$OperationElement$3;-><init>(Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$OperationElement;)V

    return-object p1

    :cond_5
    const-string v0, "language"

    .line 170
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 171
    new-instance p1, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$OperationElement$4;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$OperationElement$4;-><init>(Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$OperationElement;)V

    return-object p1

    :cond_6
    const-string v0, "preferences"

    .line 178
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 179
    new-instance p1, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$PreferencesElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$OperationElement;->this$1:Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement;

    iget-object p3, p0, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$OperationElement;->data:Lcom/ebay/common/net/api/mdns/DeviceNotificationSubscriptions;

    iget-object p3, p3, Lcom/ebay/common/net/api/mdns/DeviceNotificationSubscriptions;->preferences:Ljava/util/List;

    invoke-direct {p1, p2, p3}, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement$PreferencesElement;-><init>(Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement;Ljava/util/List;)V

    return-object p1

    .line 181
    :cond_7
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
