.class public Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$SavedSearchEvent;
.super Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;
.source "PlatformNotificationsEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedSearchEvent"
.end annotation


# instance fields
.field public searchIds:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 428
    invoke-direct {p0}, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;-><init>()V

    .line 429
    sget-object v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->SVDSRCH:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    invoke-virtual {v0}, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;->eventType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public searchIdsToArray()[Ljava/lang/String;
    .locals 2

    .line 434
    iget-object v0, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$SavedSearchEvent;->searchIds:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$SavedSearchEvent;->searchIds:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
