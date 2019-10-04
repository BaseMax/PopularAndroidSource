.class public final enum Lcom/ebay/common/ConstantsCommon$ItemKind;
.super Ljava/lang/Enum;
.source "ConstantsCommon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/ConstantsCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ItemKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ebay/common/ConstantsCommon$ItemKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ebay/common/ConstantsCommon$ItemKind;

.field public static final enum Bidding:Lcom/ebay/common/ConstantsCommon$ItemKind;

.field public static final enum Deals:Lcom/ebay/common/ConstantsCommon$ItemKind;

.field public static final enum Found:Lcom/ebay/common/ConstantsCommon$ItemKind;

.field public static final enum Local:Lcom/ebay/common/ConstantsCommon$ItemKind;

.field public static final enum Lost:Lcom/ebay/common/ConstantsCommon$ItemKind;

.field public static final enum Preview:Lcom/ebay/common/ConstantsCommon$ItemKind;

.field public static final enum RecentlyViewed:Lcom/ebay/common/ConstantsCommon$ItemKind;

.field public static final enum Scheduled:Lcom/ebay/common/ConstantsCommon$ItemKind;

.field public static final enum SellersOther:Lcom/ebay/common/ConstantsCommon$ItemKind;

.field public static final enum Selling:Lcom/ebay/common/ConstantsCommon$ItemKind;

.field public static final enum Selling_Offers:Lcom/ebay/common/ConstantsCommon$ItemKind;

.field public static final enum Sold:Lcom/ebay/common/ConstantsCommon$ItemKind;

.field public static final enum Unknown:Lcom/ebay/common/ConstantsCommon$ItemKind;

.field public static final enum Unsold:Lcom/ebay/common/ConstantsCommon$ItemKind;

.field public static final enum Watched:Lcom/ebay/common/ConstantsCommon$ItemKind;

.field public static final enum WishList:Lcom/ebay/common/ConstantsCommon$ItemKind;

.field public static final enum Won:Lcom/ebay/common/ConstantsCommon$ItemKind;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 17
    new-instance v0, Lcom/ebay/common/ConstantsCommon$ItemKind;

    const-string v1, "Found"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ebay/common/ConstantsCommon$ItemKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/ConstantsCommon$ItemKind;->Found:Lcom/ebay/common/ConstantsCommon$ItemKind;

    .line 18
    new-instance v0, Lcom/ebay/common/ConstantsCommon$ItemKind;

    const-string v1, "Deals"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ebay/common/ConstantsCommon$ItemKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/ConstantsCommon$ItemKind;->Deals:Lcom/ebay/common/ConstantsCommon$ItemKind;

    .line 19
    new-instance v0, Lcom/ebay/common/ConstantsCommon$ItemKind;

    const-string v1, "SellersOther"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/ebay/common/ConstantsCommon$ItemKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/ConstantsCommon$ItemKind;->SellersOther:Lcom/ebay/common/ConstantsCommon$ItemKind;

    .line 21
    new-instance v0, Lcom/ebay/common/ConstantsCommon$ItemKind;

    const-string v1, "Watched"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/ebay/common/ConstantsCommon$ItemKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/ConstantsCommon$ItemKind;->Watched:Lcom/ebay/common/ConstantsCommon$ItemKind;

    .line 22
    new-instance v0, Lcom/ebay/common/ConstantsCommon$ItemKind;

    const-string v1, "Bidding"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/ebay/common/ConstantsCommon$ItemKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/ConstantsCommon$ItemKind;->Bidding:Lcom/ebay/common/ConstantsCommon$ItemKind;

    .line 23
    new-instance v0, Lcom/ebay/common/ConstantsCommon$ItemKind;

    const-string v1, "Won"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/ebay/common/ConstantsCommon$ItemKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/ConstantsCommon$ItemKind;->Won:Lcom/ebay/common/ConstantsCommon$ItemKind;

    .line 24
    new-instance v0, Lcom/ebay/common/ConstantsCommon$ItemKind;

    const-string v1, "Lost"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/ebay/common/ConstantsCommon$ItemKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/ConstantsCommon$ItemKind;->Lost:Lcom/ebay/common/ConstantsCommon$ItemKind;

    .line 25
    new-instance v0, Lcom/ebay/common/ConstantsCommon$ItemKind;

    const-string v1, "Scheduled"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/ebay/common/ConstantsCommon$ItemKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/ConstantsCommon$ItemKind;->Scheduled:Lcom/ebay/common/ConstantsCommon$ItemKind;

    .line 26
    new-instance v0, Lcom/ebay/common/ConstantsCommon$ItemKind;

    const-string v1, "Selling"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/ebay/common/ConstantsCommon$ItemKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/ConstantsCommon$ItemKind;->Selling:Lcom/ebay/common/ConstantsCommon$ItemKind;

    .line 27
    new-instance v0, Lcom/ebay/common/ConstantsCommon$ItemKind;

    const-string v1, "Sold"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/ebay/common/ConstantsCommon$ItemKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/ConstantsCommon$ItemKind;->Sold:Lcom/ebay/common/ConstantsCommon$ItemKind;

    .line 28
    new-instance v0, Lcom/ebay/common/ConstantsCommon$ItemKind;

    const-string v1, "Unsold"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/ebay/common/ConstantsCommon$ItemKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/ConstantsCommon$ItemKind;->Unsold:Lcom/ebay/common/ConstantsCommon$ItemKind;

    .line 29
    new-instance v0, Lcom/ebay/common/ConstantsCommon$ItemKind;

    const-string v1, "Selling_Offers"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/ebay/common/ConstantsCommon$ItemKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/ConstantsCommon$ItemKind;->Selling_Offers:Lcom/ebay/common/ConstantsCommon$ItemKind;

    .line 30
    new-instance v0, Lcom/ebay/common/ConstantsCommon$ItemKind;

    const-string v1, "Local"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/ebay/common/ConstantsCommon$ItemKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/ConstantsCommon$ItemKind;->Local:Lcom/ebay/common/ConstantsCommon$ItemKind;

    .line 31
    new-instance v0, Lcom/ebay/common/ConstantsCommon$ItemKind;

    const-string v1, "WishList"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/ebay/common/ConstantsCommon$ItemKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/ConstantsCommon$ItemKind;->WishList:Lcom/ebay/common/ConstantsCommon$ItemKind;

    .line 32
    new-instance v0, Lcom/ebay/common/ConstantsCommon$ItemKind;

    const-string v1, "RecentlyViewed"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lcom/ebay/common/ConstantsCommon$ItemKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/ConstantsCommon$ItemKind;->RecentlyViewed:Lcom/ebay/common/ConstantsCommon$ItemKind;

    .line 34
    new-instance v0, Lcom/ebay/common/ConstantsCommon$ItemKind;

    const-string v1, "Preview"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lcom/ebay/common/ConstantsCommon$ItemKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/ConstantsCommon$ItemKind;->Preview:Lcom/ebay/common/ConstantsCommon$ItemKind;

    .line 36
    new-instance v0, Lcom/ebay/common/ConstantsCommon$ItemKind;

    const-string v1, "Unknown"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15}, Lcom/ebay/common/ConstantsCommon$ItemKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/ConstantsCommon$ItemKind;->Unknown:Lcom/ebay/common/ConstantsCommon$ItemKind;

    const/16 v0, 0x11

    .line 15
    new-array v0, v0, [Lcom/ebay/common/ConstantsCommon$ItemKind;

    sget-object v1, Lcom/ebay/common/ConstantsCommon$ItemKind;->Found:Lcom/ebay/common/ConstantsCommon$ItemKind;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/ConstantsCommon$ItemKind;->Deals:Lcom/ebay/common/ConstantsCommon$ItemKind;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ebay/common/ConstantsCommon$ItemKind;->SellersOther:Lcom/ebay/common/ConstantsCommon$ItemKind;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ebay/common/ConstantsCommon$ItemKind;->Watched:Lcom/ebay/common/ConstantsCommon$ItemKind;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ebay/common/ConstantsCommon$ItemKind;->Bidding:Lcom/ebay/common/ConstantsCommon$ItemKind;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ebay/common/ConstantsCommon$ItemKind;->Won:Lcom/ebay/common/ConstantsCommon$ItemKind;

    aput-object v1, v0, v7

    sget-object v1, Lcom/ebay/common/ConstantsCommon$ItemKind;->Lost:Lcom/ebay/common/ConstantsCommon$ItemKind;

    aput-object v1, v0, v8

    sget-object v1, Lcom/ebay/common/ConstantsCommon$ItemKind;->Scheduled:Lcom/ebay/common/ConstantsCommon$ItemKind;

    aput-object v1, v0, v9

    sget-object v1, Lcom/ebay/common/ConstantsCommon$ItemKind;->Selling:Lcom/ebay/common/ConstantsCommon$ItemKind;

    aput-object v1, v0, v10

    sget-object v1, Lcom/ebay/common/ConstantsCommon$ItemKind;->Sold:Lcom/ebay/common/ConstantsCommon$ItemKind;

    aput-object v1, v0, v11

    sget-object v1, Lcom/ebay/common/ConstantsCommon$ItemKind;->Unsold:Lcom/ebay/common/ConstantsCommon$ItemKind;

    aput-object v1, v0, v12

    sget-object v1, Lcom/ebay/common/ConstantsCommon$ItemKind;->Selling_Offers:Lcom/ebay/common/ConstantsCommon$ItemKind;

    aput-object v1, v0, v13

    sget-object v1, Lcom/ebay/common/ConstantsCommon$ItemKind;->Local:Lcom/ebay/common/ConstantsCommon$ItemKind;

    aput-object v1, v0, v14

    sget-object v1, Lcom/ebay/common/ConstantsCommon$ItemKind;->WishList:Lcom/ebay/common/ConstantsCommon$ItemKind;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/ConstantsCommon$ItemKind;->RecentlyViewed:Lcom/ebay/common/ConstantsCommon$ItemKind;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/ConstantsCommon$ItemKind;->Preview:Lcom/ebay/common/ConstantsCommon$ItemKind;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/ConstantsCommon$ItemKind;->Unknown:Lcom/ebay/common/ConstantsCommon$ItemKind;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sput-object v0, Lcom/ebay/common/ConstantsCommon$ItemKind;->$VALUES:[Lcom/ebay/common/ConstantsCommon$ItemKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ebay/common/ConstantsCommon$ItemKind;
    .locals 1

    .line 15
    const-class v0, Lcom/ebay/common/ConstantsCommon$ItemKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ebay/common/ConstantsCommon$ItemKind;

    return-object p0
.end method

.method public static values()[Lcom/ebay/common/ConstantsCommon$ItemKind;
    .locals 1

    .line 15
    sget-object v0, Lcom/ebay/common/ConstantsCommon$ItemKind;->$VALUES:[Lcom/ebay/common/ConstantsCommon$ItemKind;

    invoke-virtual {v0}, [Lcom/ebay/common/ConstantsCommon$ItemKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ebay/common/ConstantsCommon$ItemKind;

    return-object v0
.end method
