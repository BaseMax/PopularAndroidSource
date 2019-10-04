.class public Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;
.super Lcom/ebay/nautilus/domain/datamapping/BaseDataMapped;
.source "PlatformNotificationsEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$GenericEvent;,
        Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$CouponAvailableEvent;,
        Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$SavedSearchEvent;,
        Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$DealsEvent;,
        Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$OutbidEvent;,
        Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$BidItemEndingEvent;,
        Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$WatchedItemEndingEvent;,
        Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$TitleAsContentEvent;,
        Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$ActiveNotificationsEvent;,
        Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$ItemListingType;
    }
.end annotation


# static fields
.field public static final BUY_IT_NOW_AVAILABLE:Ljava/lang/String; = "buyItNowAvailable"

.field public static final CONTENT:Ljava/lang/String; = "content"

.field public static final CURRENCY_CODE:Ljava/lang/String; = "currency"

.field public static final CURRENT_BID:Ljava/lang/String; = "curbid"

.field public static final DEVICE:Ljava/lang/String; = "device"

.field public static final DRAFT_ID:Ljava/lang/String; = "did"

.field public static final EVENT_KEY:Ljava/lang/String; = "evt"

.field public static final FOLLOW_IDS:Ljava/lang/String; = "instid"

.field public static final HEADER:Ljava/lang/String; = "header"

.field public static final INTERNAL_BADGE_COUNT:Ljava/lang/String; = "badge"

.field public static final ITEM_ID:Ljava/lang/String; = "itm"

.field public static final LISTING_END_TIME:Ljava/lang/String; = "itemEndTime"

.field public static final LISTING_MODE:Ljava/lang/String; = "lmode"

.field public static final LISTING_TITLE:Ljava/lang/String; = "itemTitle"

.field public static final LISTING_TYPE:Ljava/lang/String; = "itemListingType"

.field public static final MC3_ID:Ljava/lang/String; = "mc3id"

.field public static final ORDER_ID:Ljava/lang/String; = "odr"

.field public static final REF_ID:Ljava/lang/String; = "rid"

.field public static final SEARCH_IDS:Ljava/lang/String; = "sid"

.field public static final SITE_ID:Ljava/lang/String; = "site"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final TRANSACTION_ID:Ljava/lang/String; = "tid"

.field public static final USER:Ljava/lang/String; = "usr"


# instance fields
.field public actionId:Ljava/lang/String;

.field public bidCount:I

.field public buttons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/notification/GenericNotification$FlexNotificationButton;",
            ">;"
        }
    .end annotation
.end field

.field public canStack:Z

.field public click:Ljava/lang/String;

.field public clientId:Ljava/lang/String;

.field public code:Ljava/lang/String;

.field public content:Ljava/lang/String;

.field public currentPrice:Lcom/ebay/nautilus/domain/data/CurrencyAmount;

.field public deviceId:Ljava/lang/String;

.field public draftId:Ljava/lang/String;

.field public endTime:Ljava/lang/String;

.field public endTimestamp:J

.field public eventType:Ljava/lang/String;

.field public galleryUrl:Ljava/lang/String;

.field public genericMdnsName:Ljava/lang/String;

.field public header:Ljava/lang/String;

.field public imageUrl:Ljava/lang/String;

.field public itemId:Ljava/lang/String;

.field public itemTitle:Ljava/lang/String;

.field public itemType:Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$ItemListingType;

.field public listingMode:Ljava/lang/String;

.field public mc3id:Ljava/lang/String;

.field public orderId:Ljava/lang/String;

.field public pictureUrl:Ljava/lang/String;

.field public refId:Ljava/lang/String;

.field public sellerUserId:Ljava/lang/String;

.field public siteId:Ljava/lang/String;

.field public soundBucket:Ljava/lang/String;

.field public stackBody:Ljava/lang/String;

.field public stackClick:Ljava/lang/String;

.field public stackCount:I

.field public stackTitle:Ljava/lang/String;

.field public timestamp:J

.field public title:Ljava/lang/String;

.field public transactionId:Ljava/lang/String;

.field public username:Ljava/lang/String;

.field public viewed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/ebay/nautilus/domain/datamapping/BaseDataMapped;-><init>()V

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;->viewed:Z

    return-void
.end method

.method public static createEvent(ILjava/lang/String;)Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;
    .locals 1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    .line 198
    new-instance p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;

    invoke-direct {p0}, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;-><init>()V

    .line 199
    iput-object p1, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;->eventType:Ljava/lang/String;

    return-object p0

    .line 196
    :pswitch_0
    new-instance p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$GenericEvent;

    invoke-direct {p0}, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$GenericEvent;-><init>()V

    return-object p0

    .line 194
    :pswitch_1
    new-instance p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$DealsEvent;

    invoke-direct {p0, p1}, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$DealsEvent;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 185
    :pswitch_2
    new-instance p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$CouponAvailableEvent;

    invoke-direct {p0}, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$CouponAvailableEvent;-><init>()V

    return-object p0

    .line 189
    :pswitch_3
    new-instance p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$BidItemEndingEvent;

    invoke-direct {p0}, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$BidItemEndingEvent;-><init>()V

    return-object p0

    .line 173
    :pswitch_4
    new-instance p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$TitleAsContentEvent;

    sget-object p1, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->ITMSOLD:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    invoke-virtual {p1}, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$TitleAsContentEvent;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 179
    :pswitch_5
    new-instance p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$TitleAsContentEvent;

    sget-object p1, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->ITMWON:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    invoke-virtual {p1}, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$TitleAsContentEvent;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 167
    :pswitch_6
    new-instance p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$TitleAsContentEvent;

    sget-object p1, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->CNTROFFR:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    invoke-virtual {p1}, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$TitleAsContentEvent;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 169
    :pswitch_7
    new-instance p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$TitleAsContentEvent;

    sget-object p1, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->BODECLND:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    invoke-virtual {p1}, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$TitleAsContentEvent;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 171
    :pswitch_8
    new-instance p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$TitleAsContentEvent;

    sget-object p1, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->BESTOFR:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    invoke-virtual {p1}, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$TitleAsContentEvent;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 183
    :pswitch_9
    new-instance p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$SavedSearchEvent;

    invoke-direct {p0}, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$SavedSearchEvent;-><init>()V

    return-object p0

    .line 187
    :pswitch_a
    new-instance p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$WatchedItemEndingEvent;

    invoke-direct {p0}, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$WatchedItemEndingEvent;-><init>()V

    return-object p0

    .line 181
    :pswitch_b
    new-instance p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$OutbidEvent;

    invoke-direct {p0}, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$OutbidEvent;-><init>()V

    return-object p0

    .line 177
    :cond_0
    new-instance p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$TitleAsContentEvent;

    sget-object p1, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->COCMPLT:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    invoke-virtual {p1}, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$TitleAsContentEvent;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 175
    :cond_1
    new-instance p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$TitleAsContentEvent;

    sget-object p1, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->BIDRCVD:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    invoke-virtual {p1}, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$TitleAsContentEvent;-><init>(Ljava/lang/String;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x24
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getContentString(Landroid/content/Context;Lcom/ebay/common/model/mdns/NotificationStringResources;I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .line 225
    iget-object p1, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;->title:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 231
    iget-object p1, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;->title:Ljava/lang/String;

    return-object p1

    .line 227
    :cond_0
    new-instance p1, Ljava/util/MissingResourceException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Event title was empty!"

    const-string/jumbo v0, "title"

    invoke-direct {p1, p3, p2, v0}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public getSafeItemId()J
    .locals 5

    .line 101
    iget-object v0, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;->itemId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    return-wide v1

    .line 107
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;->itemId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v1, v3

    :catch_0
    return-wide v1
.end method

.method public getTickerString(Landroid/content/Context;Lcom/ebay/common/model/mdns/NotificationStringResources;I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/IllegalFormatConversionException;
        }
    .end annotation

    .line 206
    iget-object p3, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;->title:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 208
    iget p2, p2, Lcom/ebay/common/model/mdns/NotificationStringResources;->singleContentResourceId:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 212
    :cond_0
    iget p2, p2, Lcom/ebay/common/model/mdns/NotificationStringResources;->singleContentResourceId:I

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;->title:Ljava/lang/String;

    aput-object v1, p3, v0

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

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

    .line 219
    iget p2, p2, Lcom/ebay/common/model/mdns/NotificationStringResources;->singleTitleResourceId:I

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;->title:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, p3, v1

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 238
    invoke-virtual {p0}, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 244
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "itemId"

    .line 245
    iget-object v2, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;->itemId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "eventType"

    .line 246
    iget-object v2, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;->eventType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "timestamp"

    .line 247
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;->timestamp:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "viewed"

    .line 248
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;->viewed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "code"

    .line 249
    iget-object v2, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;->code:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;->code:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v2, "<null>"

    :goto_0
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "clientId"

    .line 250
    iget-object v2, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;->clientId:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;->clientId:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v2, "<null>"

    :goto_1
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "title"

    .line 251
    iget-object v2, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;->title:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;->title:Ljava/lang/String;

    goto :goto_2

    :cond_2
    const-string v2, "<null>"

    :goto_2
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "deviceId"

    .line 252
    iget-object v2, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;->deviceId:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;->deviceId:Ljava/lang/String;

    goto :goto_3

    :cond_3
    const-string v2, "<null>"

    :goto_3
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "username"

    .line 253
    iget-object v2, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;->username:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;->username:Ljava/lang/String;

    goto :goto_4

    :cond_4
    const-string v2, "<null>"

    :goto_4
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "transactionId"

    .line 254
    iget-object v2, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;->transactionId:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;->transactionId:Ljava/lang/String;

    goto :goto_5

    :cond_5
    const-string v2, "<null>"

    :goto_5
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "draftId"

    .line 255
    iget-object v2, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;->draftId:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;->draftId:Ljava/lang/String;

    goto :goto_6

    :cond_6
    const-string v2, "<null>"

    :goto_6
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "listingMode"

    .line 256
    iget-object v2, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;->listingMode:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;->listingMode:Ljava/lang/String;

    goto :goto_7

    :cond_7
    const-string v2, "<null>"

    :goto_7
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "siteId"

    .line 257
    iget-object v2, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;->siteId:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;->siteId:Ljava/lang/String;

    goto :goto_8

    :cond_8
    const-string v2, "<null>"

    :goto_8
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "endTimeStamp"

    .line 258
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;->endTimestamp:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "refId"

    .line 259
    iget-object v2, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;->refId:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;->refId:Ljava/lang/String;

    goto :goto_9

    :cond_9
    const-string v2, "<null>"

    :goto_9
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "galleryUrl"

    .line 260
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;->galleryUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "pictureUrl"

    .line 261
    iget-object v2, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;->pictureUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "orderId"

    .line 262
    iget-object v2, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;->orderId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "itemType"

    .line 263
    iget-object v2, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;->itemType:Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$ItemListingType;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;->itemType:Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$ItemListingType;

    invoke-virtual {v2}, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$ItemListingType;->name()Ljava/lang/String;

    move-result-object v2

    goto :goto_a

    :cond_a
    const-string v2, "<null>"

    :goto_a
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "click"

    .line 264
    iget-object v2, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;->click:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;->click:Ljava/lang/String;

    goto :goto_b

    :cond_b
    const-string v2, "<null>"

    :goto_b
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "canStack"

    .line 265
    iget-boolean v2, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;->canStack:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "stackTitle"

    .line 266
    iget-object v2, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;->stackTitle:Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;->stackTitle:Ljava/lang/String;

    goto :goto_c

    :cond_c
    const-string v2, "<null>"

    :goto_c
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "stackBody"

    .line 267
    iget-object v2, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;->stackBody:Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;->stackBody:Ljava/lang/String;

    goto :goto_d

    :cond_d
    const-string v2, "<null>"

    :goto_d
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "stackCount"

    .line 268
    iget v2, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;->stackCount:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "stackClick"

    .line 269
    iget-object v2, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;->stackClick:Ljava/lang/String;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;->stackClick:Ljava/lang/String;

    goto :goto_e

    :cond_e
    const-string v2, "<null>"

    :goto_e
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "imageURL"

    .line 270
    iget-object v2, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;->imageUrl:Ljava/lang/String;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;->imageUrl:Ljava/lang/String;

    goto :goto_f

    :cond_f
    const-string v2, "<null>"

    :goto_f
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "soundBucket"

    .line 271
    iget-object v2, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;->soundBucket:Ljava/lang/String;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;->soundBucket:Ljava/lang/String;

    goto :goto_10

    :cond_10
    const-string v2, "<null>"

    :goto_10
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 274
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
