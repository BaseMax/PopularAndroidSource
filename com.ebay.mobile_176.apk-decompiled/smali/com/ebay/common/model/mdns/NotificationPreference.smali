.class public Lcom/ebay/common/model/mdns/NotificationPreference;
.super Ljava/lang/Object;
.source "NotificationPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/model/mdns/NotificationPreference$PropertyType;,
        Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;,
        Lcom/ebay/common/model/mdns/NotificationPreference$EventType;,
        Lcom/ebay/common/model/mdns/NotificationPreference$DeliveryPolicyType;
    }
.end annotation


# static fields
.field public static final EVENT_ID_BESTOFR:I = 0x3

.field public static final EVENT_ID_BIDDING_ITEMS_ENDING_SOON:I = 0x11

.field public static final EVENT_ID_BIDRCVD:I = 0xa

.field public static final EVENT_ID_BOACCPTD:I = 0x1d

.field public static final EVENT_ID_BODECLND:I = 0x4

.field public static final EVENT_ID_BOPIS_BUYER_NO_SHOW:I = 0x17

.field public static final EVENT_ID_BOPIS_OUT_OF_STOCK:I = 0x16

.field public static final EVENT_ID_BOPIS_READY_FOR_PICKUP:I = 0x15

.field public static final EVENT_ID_BUCKS_EXPIRING:I = 0x14

.field public static final EVENT_ID_BidPlaced:I = 0xe

.field public static final EVENT_ID_CARTONSALE:I = 0x27

.field public static final EVENT_ID_CNTROFFR:I = 0x5

.field public static final EVENT_ID_COACCPTED:I = 0x1e

.field public static final EVENT_ID_COCMPLT:I = 0xd

.field public static final EVENT_ID_CODECLND:I = 0x1f

.field public static final EVENT_ID_COUPON_AVAILABLE:I = 0x12

.field public static final EVENT_ID_DAILYDEALS:I = 0x24

.field public static final EVENT_ID_DEALSFRENZY:I = 0x25

.field public static final EVENT_ID_EBN_ORDER_CANCELED:I = 0x1a

.field public static final EVENT_ID_EBN_ORDER_PICKED_UP:I = 0x19

.field public static final EVENT_ID_GENERIC:I = 0x28

.field public static final EVENT_ID_INTERNAL_BADGE:I = 0x1c

.field public static final EVENT_ID_ITMPAID:I = 0x8

.field public static final EVENT_ID_ITMSHPD:I = 0x9

.field public static final EVENT_ID_ITMSOLD:I = 0x7

.field public static final EVENT_ID_ITMWON:I = 0x6

.field public static final EVENT_ID_ItemAddedToWatchList:I = 0xf

.field public static final EVENT_ID_ItemRemovedFromWatchList:I = 0x10

.field public static final EVENT_ID_MSGEBAYMSGHDR:I = 0xb

.field public static final EVENT_ID_MSGM2MMSGHDR:I = 0xc

.field public static final EVENT_ID_OFRDCLNDACPT:I = 0x20

.field public static final EVENT_ID_OFREXPIRED:I = 0x21

.field public static final EVENT_ID_OFRRETRACTED:I = 0x22

.field public static final EVENT_ID_OTHER:I = -0x1

.field public static final EVENT_ID_OUTBID:I = 0x0

.field public static final EVENT_ID_PAYMENT_REMINDER:I = 0x18

.field public static final EVENT_ID_PHOTO_SYNC:I = 0x13

.field public static final EVENT_ID_PING:I = 0x1b

.field public static final EVENT_ID_SHOPCARTITM:I = 0x23

.field public static final EVENT_ID_SVDSRCH:I = 0x2

.field public static final EVENT_ID_WATCHITM:I = 0x1

.field public static final EVENT_ID_WATCHONSALE:I = 0x26

.field public static final EVENT_NAME_OTHER:Ljava/lang/String; = "OTHER"

.field public static final USERLOGOUT:Ljava/lang/String; = "USERLOGOUT"

.field protected static supportedPollEventNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static supportedPushEventNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public deliveryPolicyType:Lcom/ebay/common/model/mdns/NotificationPreference$DeliveryPolicyType;

.field public eventType:Ljava/lang/String;

.field public isEnabled:Z

.field public properties:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ebay/nautilus/domain/data/NameValue;",
            ">;"
        }
    .end annotation
.end field

.field public savedSearchSettings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ebay/nautilus/domain/data/NameValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ebay/common/model/mdns/NotificationPreference;->supportedPushEventNames:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ebay/common/model/mdns/NotificationPreference;->supportedPollEventNames:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    sget-object v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->WATCHITM:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    invoke-virtual {v0}, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/mdns/NotificationPreference;->eventType:Ljava/lang/String;

    .line 352
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/model/mdns/NotificationPreference;->properties:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 353
    iput-object v0, p0, Lcom/ebay/common/model/mdns/NotificationPreference;->savedSearchSettings:Ljava/util/ArrayList;

    return-void
.end method

.method public static clientAlertNameToEventName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 311
    invoke-static {p0}, Lcom/ebay/common/model/mdns/NotificationPreference;->clientAlertNameToId(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/ebay/common/model/mdns/NotificationPreference;->idToName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static clientAlertNameToId(Ljava/lang/String;)I
    .locals 5

    .line 322
    invoke-static {}, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;->values()[Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 324
    invoke-virtual {v3}, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 325
    iget p0, v3, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;->id:I

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static getSupportedPollEventNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 252
    sget-object v0, Lcom/ebay/common/model/mdns/NotificationPreference;->supportedPollEventNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getSupportedPushEventNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 257
    sget-object v0, Lcom/ebay/common/model/mdns/NotificationPreference;->supportedPushEventNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static idToClientAlertName(I)Ljava/lang/String;
    .locals 5

    .line 338
    invoke-static {}, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;->values()[Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 340
    iget v4, v3, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;->id:I

    if-ne v4, p0, :cond_0

    .line 341
    invoke-virtual {v3}, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "OTHER"

    return-object p0
.end method

.method public static idToName(I)Ljava/lang/String;
    .locals 5

    .line 290
    invoke-static {}, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->values()[Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 292
    iget v4, v3, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->id:I

    if-ne v4, p0, :cond_0

    .line 293
    invoke-virtual {v3}, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x28

    if-ne p0, v0, :cond_2

    const-string p0, "GENERIC"

    return-object p0

    :cond_2
    const-string p0, "OTHER"

    return-object p0
.end method

.method public static nameToId(Ljava/lang/String;)I
    .locals 5

    .line 268
    invoke-static {}, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->values()[Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 270
    invoke-virtual {v3}, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 271
    iget p0, v3, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->id:I

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "M2MMSGHDR"

    .line 274
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p0, 0xc

    return p0

    :cond_2
    const-string v0, "GENERIC"

    .line 277
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/16 p0, 0x28

    return p0

    :cond_3
    const/4 p0, -0x1

    return p0
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

    .line 396
    :cond_0
    instance-of v1, p1, Lcom/ebay/common/model/mdns/NotificationPreference;

    if-nez v1, :cond_1

    return v0

    .line 399
    :cond_1
    check-cast p1, Lcom/ebay/common/model/mdns/NotificationPreference;

    .line 400
    iget-object v1, p0, Lcom/ebay/common/model/mdns/NotificationPreference;->eventType:Ljava/lang/String;

    iget-object v2, p1, Lcom/ebay/common/model/mdns/NotificationPreference;->eventType:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ebay/common/model/mdns/NotificationPreference;->deliveryPolicyType:Lcom/ebay/common/model/mdns/NotificationPreference$DeliveryPolicyType;

    iget-object v2, p1, Lcom/ebay/common/model/mdns/NotificationPreference;->deliveryPolicyType:Lcom/ebay/common/model/mdns/NotificationPreference$DeliveryPolicyType;

    .line 401
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/ebay/common/model/mdns/NotificationPreference;->isEnabled:Z

    .line 402
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p1, Lcom/ebay/common/model/mdns/NotificationPreference;->isEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ebay/common/model/mdns/NotificationPreference;->properties:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/ebay/common/model/mdns/NotificationPreference;->properties:Ljava/util/ArrayList;

    .line 403
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ebay/common/model/mdns/NotificationPreference;->savedSearchSettings:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/ebay/common/model/mdns/NotificationPreference;->savedSearchSettings:Ljava/util/ArrayList;

    .line 404
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public getSavedSearchSettings()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/NameValue;",
            ">;"
        }
    .end annotation

    .line 357
    iget-object v0, p0, Lcom/ebay/common/model/mdns/NotificationPreference;->eventType:Ljava/lang/String;

    sget-object v1, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->SVDSRCH:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    invoke-virtual {v1}, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    iget-object v0, p0, Lcom/ebay/common/model/mdns/NotificationPreference;->savedSearchSettings:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 361
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/model/mdns/NotificationPreference;->savedSearchSettings:Ljava/util/ArrayList;

    .line 362
    iget-object v0, p0, Lcom/ebay/common/model/mdns/NotificationPreference;->properties:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/data/NameValue;

    .line 366
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/NameValue;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 367
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 369
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "id"

    .line 370
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "enabled"

    .line 371
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 372
    iget-object v5, p0, Lcom/ebay/common/model/mdns/NotificationPreference;->savedSearchSettings:Ljava/util/ArrayList;

    new-instance v6, Lcom/ebay/nautilus/domain/data/NameValue;

    invoke-direct {v6, v4, v3}, Lcom/ebay/nautilus/domain/data/NameValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 377
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 382
    :cond_1
    iget-object v0, p0, Lcom/ebay/common/model/mdns/NotificationPreference;->savedSearchSettings:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    .line 410
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/ebay/common/model/mdns/NotificationPreference;->eventType:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/ebay/common/model/mdns/NotificationPreference;->deliveryPolicyType:Lcom/ebay/common/model/mdns/NotificationPreference$DeliveryPolicyType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/ebay/common/model/mdns/NotificationPreference;->isEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/ebay/common/model/mdns/NotificationPreference;->properties:Ljava/util/ArrayList;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/ebay/common/model/mdns/NotificationPreference;->savedSearchSettings:Ljava/util/ArrayList;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/ebay/common/model/mdns/NotificationPreference;->eventType:Ljava/lang/String;

    return-object v0
.end method
