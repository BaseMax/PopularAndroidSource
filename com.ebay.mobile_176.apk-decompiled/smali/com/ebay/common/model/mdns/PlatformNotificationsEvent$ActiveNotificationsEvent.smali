.class public abstract Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$ActiveNotificationsEvent;
.super Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;
.source "PlatformNotificationsEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ActiveNotificationsEvent"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 278
    invoke-direct {p0}, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentString(Landroid/content/Context;Lcom/ebay/common/model/mdns/NotificationStringResources;I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    const/4 v0, 0x2

    if-ge p3, v0, :cond_2

    .line 311
    iget p3, p2, Lcom/ebay/common/model/mdns/NotificationStringResources;->singleContentResourceId:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 312
    iget-object v1, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$ActiveNotificationsEvent;->currentPrice:Lcom/ebay/nautilus/domain/data/CurrencyAmount;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$ActiveNotificationsEvent;->currentPrice:Lcom/ebay/nautilus/domain/data/CurrencyAmount;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/CurrencyAmount;->isZero()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 317
    :cond_0
    iget p3, p2, Lcom/ebay/common/model/mdns/NotificationStringResources;->contentDelimiterResourceId:I

    .line 318
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget p2, p2, Lcom/ebay/common/model/mdns/NotificationStringResources;->singleContentResourceId:I

    .line 319
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x1

    iget-object p2, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$ActiveNotificationsEvent;->currentPrice:Lcom/ebay/nautilus/domain/data/CurrencyAmount;

    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/data/CurrencyAmount;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, p1

    .line 317
    invoke-static {p3, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object p3

    .line 322
    :cond_2
    iget p2, p2, Lcom/ebay/common/model/mdns/NotificationStringResources;->infiniteContentResourceId:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTickerString(Landroid/content/Context;Lcom/ebay/common/model/mdns/NotificationStringResources;I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/IllegalFormatConversionException;
        }
    .end annotation

    const/4 v0, 0x2

    if-ge p3, v0, :cond_0

    .line 288
    invoke-virtual {p0, p1, p2, p3}, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$ActiveNotificationsEvent;->getContentString(Landroid/content/Context;Lcom/ebay/common/model/mdns/NotificationStringResources;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 290
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$ActiveNotificationsEvent;->getTitleString(Landroid/content/Context;Lcom/ebay/common/model/mdns/NotificationStringResources;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTitleString(Landroid/content/Context;Lcom/ebay/common/model/mdns/NotificationStringResources;I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/IllegalFormatConversionException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const v2, 0x7fffffff

    const/4 v3, 0x2

    if-lt p3, v3, :cond_0

    if-gt p3, v2, :cond_0

    .line 298
    iget p2, p2, Lcom/ebay/common/model/mdns/NotificationStringResources;->finiteTitleResourceId:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, v0

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    if-le p3, v2, :cond_1

    .line 300
    iget p2, p2, Lcom/ebay/common/model/mdns/NotificationStringResources;->infiniteTitleResourceId:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 302
    :cond_1
    iget p2, p2, Lcom/ebay/common/model/mdns/NotificationStringResources;->singleTitleResourceId:I

    new-array p3, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$ActiveNotificationsEvent;->title:Ljava/lang/String;

    aput-object v1, p3, v0

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
