.class public Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;
.super Ljava/lang/Object;
.source "EbayMdnsApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/mdns/EbayMdnsApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationParams"
.end annotation


# instance fields
.field public clientId:Ljava/lang/String;

.field public deviceType:Ljava/lang/String;

.field public iafToken:Ljava/lang/String;

.field public language:Ljava/lang/String;

.field public metaCategories:Ljava/lang/String;

.field public prefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ebay/common/model/mdns/NotificationPreference;",
            ">;"
        }
    .end annotation
.end field

.field public quietTimeStart:Ljava/lang/String;

.field public quietTimeStop:Ljava/lang/String;

.field public registrationId:Ljava/lang/String;

.field public site:Lcom/ebay/nautilus/domain/EbaySite;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 97
    :cond_0
    instance-of v1, p1, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;

    if-nez v1, :cond_1

    return v0

    .line 100
    :cond_1
    check-cast p1, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;

    .line 101
    iget-object v1, p0, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;->iafToken:Ljava/lang/String;

    iget-object v2, p1, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;->iafToken:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;->userId:Ljava/lang/String;

    iget-object v2, p1, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;->userId:Ljava/lang/String;

    .line 102
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;->registrationId:Ljava/lang/String;

    iget-object v2, p1, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;->registrationId:Ljava/lang/String;

    .line 103
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;->language:Ljava/lang/String;

    iget-object v2, p1, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;->language:Ljava/lang/String;

    .line 104
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;->clientId:Ljava/lang/String;

    iget-object v2, p1, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;->clientId:Ljava/lang/String;

    .line 105
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;->deviceType:Ljava/lang/String;

    iget-object v2, p1, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;->deviceType:Ljava/lang/String;

    .line 106
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;->metaCategories:Ljava/lang/String;

    iget-object v2, p1, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;->metaCategories:Ljava/lang/String;

    .line 107
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;->prefs:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;->prefs:Ljava/util/ArrayList;

    .line 108
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;->quietTimeStart:Ljava/lang/String;

    iget-object v2, p1, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;->quietTimeStart:Ljava/lang/String;

    .line 109
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;->quietTimeStop:Ljava/lang/String;

    iget-object v2, p1, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;->quietTimeStop:Ljava/lang/String;

    .line 110
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;->site:Lcom/ebay/nautilus/domain/EbaySite;

    iget-object p1, p1, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;->site:Lcom/ebay/nautilus/domain/EbaySite;

    .line 111
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public getDeviceHandle()Lcom/ebay/common/model/mdns/DeviceHandle;
    .locals 4

    .line 89
    new-instance v0, Lcom/ebay/common/model/mdns/DeviceHandle;

    iget-object v1, p0, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;->registrationId:Ljava/lang/String;

    iget-object v2, p0, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;->deviceType:Ljava/lang/String;

    iget-object v3, p0, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;->clientId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/ebay/common/model/mdns/DeviceHandle;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0xb

    .line 117
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;->iafToken:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;->userId:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;->registrationId:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;->language:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;->clientId:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;->deviceType:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;->metaCategories:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;->prefs:Ljava/util/ArrayList;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;->quietTimeStart:Ljava/lang/String;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;->quietTimeStop:Ljava/lang/String;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;->site:Lcom/ebay/nautilus/domain/EbaySite;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
