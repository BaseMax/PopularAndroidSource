.class public Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$BidItemEndingEvent;
.super Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$ActiveNotificationsEvent;
.source "PlatformNotificationsEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BidItemEndingEvent"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 373
    invoke-direct {p0}, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$ActiveNotificationsEvent;-><init>()V

    .line 374
    sget-object v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->BIDITEM:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    invoke-virtual {v0}, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$ActiveNotificationsEvent;->eventType:Ljava/lang/String;

    return-void
.end method
