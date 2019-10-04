.class public Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$CouponAvailableEvent;
.super Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;
.source "PlatformNotificationsEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CouponAvailableEvent"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 441
    invoke-direct {p0}, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;-><init>()V

    .line 442
    sget-object v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->COUPONAVLBL:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    invoke-virtual {v0}, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;->eventType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public setInfo(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "code"

    .line 447
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$CouponAvailableEvent;->code:Ljava/lang/String;

    return-void
.end method
