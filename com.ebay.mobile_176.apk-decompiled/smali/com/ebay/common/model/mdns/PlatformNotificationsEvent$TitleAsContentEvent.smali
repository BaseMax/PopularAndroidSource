.class public Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$TitleAsContentEvent;
.super Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$ActiveNotificationsEvent;
.source "PlatformNotificationsEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TitleAsContentEvent"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 329
    invoke-direct {p0}, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$ActiveNotificationsEvent;-><init>()V

    .line 330
    iput-object p1, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$ActiveNotificationsEvent;->eventType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContentString(Landroid/content/Context;Lcom/ebay/common/model/mdns/NotificationStringResources;I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 349
    iget-object p1, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$TitleAsContentEvent;->title:Ljava/lang/String;

    return-object p1

    .line 351
    :cond_0
    iget p2, p2, Lcom/ebay/common/model/mdns/NotificationStringResources;->finiteContentResourceId:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTitleString(Landroid/content/Context;Lcom/ebay/common/model/mdns/NotificationStringResources;I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/IllegalFormatConversionException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    .line 339
    iget p2, p2, Lcom/ebay/common/model/mdns/NotificationStringResources;->singleTitleResourceId:I

    new-array p3, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$TitleAsContentEvent;->title:Ljava/lang/String;

    aput-object v1, p3, v0

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 341
    :cond_0
    iget p2, p2, Lcom/ebay/common/model/mdns/NotificationStringResources;->finiteTitleResourceId:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, v0

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
