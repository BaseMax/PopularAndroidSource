.class public Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$OutbidEvent;
.super Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$ActiveNotificationsEvent;
.source "PlatformNotificationsEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OutbidEvent"
.end annotation


# instance fields
.field public highBidderEiasToken:Ljava/lang/String;

.field public highBidderUserId:Ljava/lang/String;

.field public minimumToBid:Lcom/ebay/nautilus/domain/data/CurrencyAmount;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 389
    invoke-direct {p0}, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$ActiveNotificationsEvent;-><init>()V

    .line 390
    sget-object v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->OUTBID:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    invoke-virtual {v0}, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$ActiveNotificationsEvent;->eventType:Ljava/lang/String;

    return-void
.end method
