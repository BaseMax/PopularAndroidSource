.class public final enum Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;
.super Ljava/lang/Enum;
.source "SrpListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SrpListItemType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

.field public static final enum ADS:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

.field public static final enum COMPATIBILITY_ANSWER:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

.field public static final enum ICON_TOGGLE_MESSAGE:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

.field public static final enum IMAGE_SEARCH_ANSWER:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

.field public static final enum ITEMS_CAROUSEL:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

.field public static final enum LABELED_ANSWER:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

.field public static final enum LANDING_PAGE_ANSWER:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

.field public static final enum MESSAGE:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

.field public static final enum MOTOR_FINDER_CONFIRMATION_ANSWER:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

.field public static final enum MOTOR_FULL_FINDER_ANSWER:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

.field public static final enum QUERY_ANSWER:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

.field public static final enum REGULAR:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

.field public static final enum REWRITE:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

.field public static final enum SAVE_SEARCH:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

.field public static final enum TOGGLE_MESSAGE:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

.field public static final enum UNKNOWN:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 63
    new-instance v0, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;->UNKNOWN:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    .line 64
    new-instance v0, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    const-string v1, "REGULAR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;->REGULAR:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    .line 65
    new-instance v0, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    const-string v1, "LABELED_ANSWER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;->LABELED_ANSWER:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    .line 66
    new-instance v0, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    const-string v1, "LANDING_PAGE_ANSWER"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;->LANDING_PAGE_ANSWER:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    .line 67
    new-instance v0, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    const-string v1, "QUERY_ANSWER"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;->QUERY_ANSWER:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    .line 68
    new-instance v0, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    const-string v1, "REWRITE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;->REWRITE:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    .line 69
    new-instance v0, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    const-string v1, "COMPATIBILITY_ANSWER"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;->COMPATIBILITY_ANSWER:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    .line 70
    new-instance v0, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    const-string v1, "MOTOR_FULL_FINDER_ANSWER"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;->MOTOR_FULL_FINDER_ANSWER:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    .line 71
    new-instance v0, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    const-string v1, "MOTOR_FINDER_CONFIRMATION_ANSWER"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;->MOTOR_FINDER_CONFIRMATION_ANSWER:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    .line 72
    new-instance v0, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    const-string v1, "ADS"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;->ADS:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    .line 73
    new-instance v0, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    const-string v1, "MESSAGE"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;->MESSAGE:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    .line 74
    new-instance v0, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    const-string v1, "TOGGLE_MESSAGE"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;->TOGGLE_MESSAGE:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    .line 75
    new-instance v0, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    const-string v1, "ICON_TOGGLE_MESSAGE"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;->ICON_TOGGLE_MESSAGE:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    .line 76
    new-instance v0, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    const-string v1, "ITEMS_CAROUSEL"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;->ITEMS_CAROUSEL:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    .line 77
    new-instance v0, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    const-string v1, "IMAGE_SEARCH_ANSWER"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;->IMAGE_SEARCH_ANSWER:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    .line 78
    new-instance v0, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    const-string v1, "SAVE_SEARCH"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;->SAVE_SEARCH:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    const/16 v0, 0x10

    .line 61
    new-array v0, v0, [Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    sget-object v1, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;->UNKNOWN:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;->REGULAR:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;->LABELED_ANSWER:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;->LANDING_PAGE_ANSWER:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;->QUERY_ANSWER:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;->REWRITE:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;->COMPATIBILITY_ANSWER:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;->MOTOR_FULL_FINDER_ANSWER:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;->MOTOR_FINDER_CONFIRMATION_ANSWER:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;->ADS:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;->MESSAGE:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;->TOGGLE_MESSAGE:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    aput-object v1, v0, v13

    sget-object v1, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;->ICON_TOGGLE_MESSAGE:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    aput-object v1, v0, v14

    sget-object v1, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;->ITEMS_CAROUSEL:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;->IMAGE_SEARCH_ANSWER:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;->SAVE_SEARCH:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;->$VALUES:[Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;
    .locals 1

    .line 61
    const-class v0, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    return-object p0
.end method

.method public static values()[Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;
    .locals 1

    .line 61
    sget-object v0, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;->$VALUES:[Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    invoke-virtual {v0}, [Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    return-object v0
.end method
