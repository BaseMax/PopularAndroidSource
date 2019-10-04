.class public final enum Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;
.super Ljava/lang/Enum;
.source "Position.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/search/answers/wire/Position;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LayoutType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

.field public static final enum COMPATIBLE_PRODUCT_ANSWER:Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

.field public static final enum ICON_MESSAGE_ANSWER:Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

.field public static final enum ICON_TOGGLE:Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

.field public static final enum ITEM:Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

.field public static final enum ITEMS_LIST:Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

.field public static final enum LABELED_ITEM_ANSWER:Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

.field public static final enum LANDING_PAGE_ANSWER:Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

.field public static final enum LISTING:Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

.field public static final enum MESSAGE:Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

.field public static final enum MOTORS_TIRE_ANSWER:Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

.field public static final enum PRODUCT:Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

.field public static final enum QUERY_ANSWER:Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

.field public static final enum QUERY_IMAGE_ANSWER:Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

.field public static final enum REWRITE_START:Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

.field public static final enum SAVE_SEARCH:Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

.field public static final enum TOGGLE:Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

.field public static final enum TRACKABLE_LISTING:Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

.field public static final enum TRACKABLE_REWRITE_START:Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

.field public static final enum UNKNOWN:Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

.field public static final enum USER_MESSAGE:Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 18
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;->UNKNOWN:Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

    .line 19
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

    const-string v1, "TRACKABLE_LISTING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;->TRACKABLE_LISTING:Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

    .line 20
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

    const-string v1, "LISTING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;->LISTING:Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

    .line 21
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

    const-string v1, "PRODUCT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;->PRODUCT:Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

    .line 22
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

    const-string v1, "LABELED_ITEM_ANSWER"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;->LABELED_ITEM_ANSWER:Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

    .line 23
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

    const-string v1, "QUERY_ANSWER"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;->QUERY_ANSWER:Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

    .line 24
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

    const-string v1, "QUERY_IMAGE_ANSWER"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;->QUERY_IMAGE_ANSWER:Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

    .line 25
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

    const-string v1, "ICON_MESSAGE_ANSWER"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;->ICON_MESSAGE_ANSWER:Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

    .line 26
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

    const-string v1, "REWRITE_START"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;->REWRITE_START:Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

    .line 27
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

    const-string v1, "TRACKABLE_REWRITE_START"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;->TRACKABLE_REWRITE_START:Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

    .line 28
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

    const-string v1, "LANDING_PAGE_ANSWER"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;->LANDING_PAGE_ANSWER:Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

    .line 29
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

    const-string v1, "ITEM"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;->ITEM:Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

    .line 30
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

    const-string v1, "COMPATIBLE_PRODUCT_ANSWER"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;->COMPATIBLE_PRODUCT_ANSWER:Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

    .line 31
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

    const-string v1, "MOTORS_TIRE_ANSWER"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;->MOTORS_TIRE_ANSWER:Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

    .line 32
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

    const-string v1, "USER_MESSAGE"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;->USER_MESSAGE:Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

    .line 33
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

    const-string v1, "MESSAGE"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;->MESSAGE:Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

    .line 34
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

    const-string v1, "TOGGLE"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15}, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;->TOGGLE:Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

    .line 35
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

    const-string v1, "ICON_TOGGLE"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15}, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;->ICON_TOGGLE:Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

    .line 36
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

    const-string v1, "ITEMS_LIST"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15}, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;->ITEMS_LIST:Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

    .line 37
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

    const-string v1, "SAVE_SEARCH"

    const/16 v15, 0x13

    invoke-direct {v0, v1, v15}, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;->SAVE_SEARCH:Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

    const/16 v0, 0x14

    .line 16
    new-array v0, v0, [Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

    sget-object v1, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;->UNKNOWN:Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;->TRACKABLE_LISTING:Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;->LISTING:Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;->PRODUCT:Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;->LABELED_ITEM_ANSWER:Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;->QUERY_ANSWER:Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;->QUERY_IMAGE_ANSWER:Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;->ICON_MESSAGE_ANSWER:Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;->REWRITE_START:Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;->TRACKABLE_REWRITE_START:Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;->LANDING_PAGE_ANSWER:Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;->ITEM:Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

    aput-object v1, v0, v13

    sget-object v1, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;->COMPATIBLE_PRODUCT_ANSWER:Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

    aput-object v1, v0, v14

    sget-object v1, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;->MOTORS_TIRE_ANSWER:Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;->USER_MESSAGE:Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;->MESSAGE:Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;->TOGGLE:Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;->ICON_TOGGLE:Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;->ITEMS_LIST:Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;->SAVE_SEARCH:Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;->$VALUES:[Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;
    .locals 1

    .line 16
    const-class v0, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

    return-object p0
.end method

.method public static values()[Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;
    .locals 1

    .line 16
    sget-object v0, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;->$VALUES:[Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

    invoke-virtual {v0}, [Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

    return-object v0
.end method
