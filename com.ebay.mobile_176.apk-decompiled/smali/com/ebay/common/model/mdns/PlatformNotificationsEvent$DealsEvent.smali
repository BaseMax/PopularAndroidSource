.class public Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$DealsEvent;
.super Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;
.source "PlatformNotificationsEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DealsEvent"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 397
    invoke-direct {p0}, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;-><init>()V

    .line 398
    iput-object p1, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;->eventType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContentString(Landroid/content/Context;Lcom/ebay/common/model/mdns/NotificationStringResources;I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .line 419
    iget-object p1, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$DealsEvent;->content:Ljava/lang/String;

    return-object p1
.end method

.method public getTickerString(Landroid/content/Context;Lcom/ebay/common/model/mdns/NotificationStringResources;I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/IllegalFormatConversionException;
        }
    .end annotation

    .line 405
    iget-object p1, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$DealsEvent;->content:Ljava/lang/String;

    return-object p1
.end method

.method public getTitleString(Landroid/content/Context;Lcom/ebay/common/model/mdns/NotificationStringResources;I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/IllegalFormatConversionException;
        }
    .end annotation

    .line 412
    iget-object p1, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$DealsEvent;->header:Ljava/lang/String;

    return-object p1
.end method
