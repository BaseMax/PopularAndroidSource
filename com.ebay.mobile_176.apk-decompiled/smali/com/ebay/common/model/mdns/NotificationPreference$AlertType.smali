.class public final enum Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;
.super Ljava/lang/Enum;
.source "NotificationPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/model/mdns/NotificationPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AlertType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;

.field public static final enum AskSellerQuestion:Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;

.field public static final enum AuctionCheckoutComplete:Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;

.field public static final enum BestOffer:Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;

.field public static final enum BestOfferDeclined:Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;

.field public static final enum BidItemEndingSoon:Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;

.field public static final enum BidReceived:Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;

.field public static final enum BucksExpiringSoon:Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;

.field public static final enum CounterOfferReceived:Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;

.field public static final enum CouponAvailable:Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;

.field public static final enum ItemMarkedPaid:Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;

.field public static final enum ItemMarkedShipped:Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;

.field public static final enum ItemSold:Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;

.field public static final enum ItemWon:Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;

.field public static final enum OutBid:Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;

.field public static final enum WatchedItemEndingSoon:Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;

.field public static final enum WebnextMobilePhotoSync:Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;


# instance fields
.field public final defaultValue:Z

.field public final id:I

.field public final supported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 217
    new-instance v6, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;

    const-string v1, "OutBid"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v6, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;->OutBid:Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;

    .line 218
    new-instance v0, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;

    const-string v8, "WatchedItemEndingSoon"

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;->WatchedItemEndingSoon:Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;

    .line 219
    new-instance v0, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;

    const-string v2, "BestOffer"

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v6, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;->BestOffer:Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;

    .line 220
    new-instance v0, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;

    const-string v8, "BestOfferDeclined"

    const/4 v9, 0x3

    const/4 v10, 0x4

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;->BestOfferDeclined:Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;

    .line 221
    new-instance v0, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;

    const-string v2, "CounterOfferReceived"

    const/4 v3, 0x4

    const/4 v4, 0x5

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;->CounterOfferReceived:Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;

    .line 222
    new-instance v0, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;

    const-string v8, "ItemWon"

    const/4 v9, 0x5

    const/4 v10, 0x6

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;->ItemWon:Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;

    .line 223
    new-instance v0, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;

    const-string v2, "ItemSold"

    const/4 v3, 0x6

    const/4 v4, 0x7

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;->ItemSold:Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;

    .line 224
    new-instance v0, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;

    const-string v8, "ItemMarkedPaid"

    const/4 v9, 0x7

    const/16 v10, 0x8

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;->ItemMarkedPaid:Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;

    .line 225
    new-instance v0, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;

    const-string v2, "ItemMarkedShipped"

    const/16 v3, 0x8

    const/16 v4, 0x9

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;->ItemMarkedShipped:Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;

    .line 226
    new-instance v0, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;

    const-string v8, "BidReceived"

    const/16 v9, 0x9

    const/16 v10, 0xa

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;->BidReceived:Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;

    .line 227
    new-instance v0, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;

    const-string v2, "AskSellerQuestion"

    const/16 v3, 0xa

    const/16 v4, 0xc

    const/4 v5, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;->AskSellerQuestion:Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;

    .line 228
    new-instance v0, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;

    const-string v8, "AuctionCheckoutComplete"

    const/16 v9, 0xb

    const/16 v10, 0xd

    const/4 v11, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;->AuctionCheckoutComplete:Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;

    .line 229
    new-instance v0, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;

    const-string v2, "BidItemEndingSoon"

    const/16 v3, 0xc

    const/16 v4, 0x11

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;->BidItemEndingSoon:Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;

    .line 230
    new-instance v0, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;

    const-string v8, "CouponAvailable"

    const/16 v9, 0xd

    const/16 v10, 0x12

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;->CouponAvailable:Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;

    .line 231
    new-instance v0, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;

    const-string v2, "WebnextMobilePhotoSync"

    const/16 v3, 0xe

    const/16 v4, 0x13

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;->WebnextMobilePhotoSync:Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;

    .line 232
    new-instance v0, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;

    const-string v8, "BucksExpiringSoon"

    const/16 v9, 0xf

    const/16 v10, 0x14

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;->BucksExpiringSoon:Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;

    const/16 v0, 0x10

    .line 215
    new-array v0, v0, [Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;

    sget-object v1, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;->OutBid:Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;->WatchedItemEndingSoon:Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;->BestOffer:Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;->BestOfferDeclined:Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;->CounterOfferReceived:Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;->ItemWon:Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;->ItemSold:Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;->ItemMarkedPaid:Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;->ItemMarkedShipped:Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;->BidReceived:Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;->AskSellerQuestion:Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;->AuctionCheckoutComplete:Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;->BidItemEndingSoon:Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;->CouponAvailable:Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;->WebnextMobilePhotoSync:Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;->BucksExpiringSoon:Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;->$VALUES:[Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ)V"
        }
    .end annotation

    .line 239
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 240
    iput p3, p0, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;->id:I

    .line 241
    iput-boolean p4, p0, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;->supported:Z

    .line 242
    iput-boolean p5, p0, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;->defaultValue:Z

    if-eqz p4, :cond_0

    .line 244
    sget-object p1, Lcom/ebay/common/model/mdns/NotificationPreference;->supportedPollEventNames:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;
    .locals 1

    .line 215
    const-class v0, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;

    return-object p0
.end method

.method public static values()[Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;
    .locals 1

    .line 215
    sget-object v0, Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;->$VALUES:[Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;

    invoke-virtual {v0}, [Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ebay/common/model/mdns/NotificationPreference$AlertType;

    return-object v0
.end method
