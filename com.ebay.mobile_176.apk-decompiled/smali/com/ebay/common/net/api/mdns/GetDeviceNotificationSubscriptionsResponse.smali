.class public Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse;
.super Lcom/ebay/nautilus/domain/net/EbayResponse;
.source "GetDeviceNotificationSubscriptionsResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement;
    }
.end annotation


# instance fields
.field public subscriptions:Lcom/ebay/common/net/api/mdns/DeviceNotificationSubscriptions;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/ebay/nautilus/domain/net/EbayResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ebay/nautilus/kernel/net/ParseResponseDataException;
        }
    .end annotation

    .line 23
    new-instance v0, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement;

    new-instance v1, Lcom/ebay/common/net/api/mdns/DeviceNotificationSubscriptions;

    invoke-direct {v1}, Lcom/ebay/common/net/api/mdns/DeviceNotificationSubscriptions;-><init>()V

    iput-object v1, p0, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse;->subscriptions:Lcom/ebay/common/net/api/mdns/DeviceNotificationSubscriptions;

    const-string v2, "getDeviceNotificationSubscriptionsResponse"

    invoke-direct {v0, p0, v1, v2}, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse$RootElement;-><init>(Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse;Lcom/ebay/common/net/api/mdns/DeviceNotificationSubscriptions;Ljava/lang/String;)V

    .line 25
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/SaxHandler;->parseXml(Ljava/io/InputStream;Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;)V

    return-void
.end method
