.class public final enum Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;
.super Ljava/lang/Enum;
.source "ViewHolderItem.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

.field public static final enum ADD_REVIEW:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

.field public static final enum CINEMA_INFO:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

.field public static final enum CREWS:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

.field public static final enum CREW_ITEM:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

.field public static final enum DESCRIPTION:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

.field public static final enum DIVIDER:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

.field public static final enum EPISODE_DETAIL_ACTIONS:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

.field public static final enum EPISODE_DETAIL_DESCRIPTION:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

.field public static final enum EPISODE_DETAIL_EPISODES:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

.field public static final enum EPISODE_DETAIL_EPISODE_ITEM:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

.field public static final enum EPISODE_DETAIL_INFO:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

.field public static final enum GENRE:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

.field public static final enum LOADING_ITEM:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

.field public static final enum OTHER_INFO_ITEM:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

.field public static final enum OTHER_INFO_TITLE_ITEM:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

.field public static final enum PAGE_ROW_VIDEO:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

.field public static final enum RETRY_ITEM:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

.field public static final enum REVIEW_ACTION:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

.field public static final enum REVIEW_ITEM:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

.field public static final enum REVIEW_TITLE:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

.field public static final enum SCREEN_SHOT:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

.field public static final enum SEASON_EPISODE_ITEM:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

.field public static final enum SERIES_EPISODE_ITEM:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

.field public static final enum SERIES_EPISODE_SEE_MORE_ITEM:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

.field public static final enum SERIES_SEASON_ITEM:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

.field public static final enum SERIES_SEASON_LIST__ITEM:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

.field public static final enum SERIES_SINGLE_SEASON_ITEM:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

.field public static final enum VIDEO_ACTIONS:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x1c

    new-array v0, v0, [Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    new-instance v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    const/4 v2, 0x0

    const-string v3, "CINEMA_INFO"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->CINEMA_INFO:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    const/4 v2, 0x1

    const-string v3, "VIDEO_ACTIONS"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->VIDEO_ACTIONS:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    const/4 v2, 0x2

    const-string v3, "GENRE"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->GENRE:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    const/4 v2, 0x3

    const-string v3, "DESCRIPTION"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->DESCRIPTION:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    const/4 v2, 0x4

    const-string v3, "CREWS"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->CREWS:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    const/4 v2, 0x5

    const-string v3, "CREW_ITEM"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->CREW_ITEM:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    const/4 v2, 0x6

    const-string v3, "PAGE_ROW_VIDEO"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->PAGE_ROW_VIDEO:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    const/4 v2, 0x7

    const-string v3, "OTHER_INFO_TITLE_ITEM"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->OTHER_INFO_TITLE_ITEM:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    const/16 v2, 0x8

    const-string v3, "OTHER_INFO_ITEM"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->OTHER_INFO_ITEM:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    const/16 v2, 0x9

    const-string v3, "SCREEN_SHOT"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->SCREEN_SHOT:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    const/16 v2, 0xa

    const-string v3, "REVIEW_TITLE"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->REVIEW_TITLE:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    const/16 v2, 0xb

    const-string v3, "REVIEW_ITEM"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->REVIEW_ITEM:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    const/16 v2, 0xc

    const-string v3, "REVIEW_ACTION"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->REVIEW_ACTION:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    const/16 v2, 0xd

    const-string v3, "LOADING_ITEM"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->LOADING_ITEM:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    const/16 v2, 0xe

    const-string v3, "ADD_REVIEW"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->ADD_REVIEW:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    const-string v2, "SERIES_SINGLE_SEASON_ITEM"

    const/16 v3, 0xf

    invoke-direct {v1, v2, v3}, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->SERIES_SINGLE_SEASON_ITEM:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    const-string v2, "SERIES_SEASON_ITEM"

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3}, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->SERIES_SEASON_ITEM:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    const-string v2, "SERIES_SEASON_LIST__ITEM"

    const/16 v3, 0x11

    invoke-direct {v1, v2, v3}, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->SERIES_SEASON_LIST__ITEM:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    const-string v2, "RETRY_ITEM"

    const/16 v3, 0x12

    invoke-direct {v1, v2, v3}, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->RETRY_ITEM:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    const-string v2, "SERIES_EPISODE_ITEM"

    const/16 v3, 0x13

    invoke-direct {v1, v2, v3}, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->SERIES_EPISODE_ITEM:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    const-string v2, "SEASON_EPISODE_ITEM"

    const/16 v3, 0x14

    invoke-direct {v1, v2, v3}, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->SEASON_EPISODE_ITEM:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    const-string v2, "SERIES_EPISODE_SEE_MORE_ITEM"

    const/16 v3, 0x15

    invoke-direct {v1, v2, v3}, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->SERIES_EPISODE_SEE_MORE_ITEM:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    const-string v2, "DIVIDER"

    const/16 v3, 0x16

    invoke-direct {v1, v2, v3}, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->DIVIDER:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    const-string v2, "EPISODE_DETAIL_INFO"

    const/16 v3, 0x17

    invoke-direct {v1, v2, v3}, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->EPISODE_DETAIL_INFO:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    const-string v2, "EPISODE_DETAIL_ACTIONS"

    const/16 v3, 0x18

    invoke-direct {v1, v2, v3}, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->EPISODE_DETAIL_ACTIONS:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    const-string v2, "EPISODE_DETAIL_DESCRIPTION"

    const/16 v3, 0x19

    invoke-direct {v1, v2, v3}, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->EPISODE_DETAIL_DESCRIPTION:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    const-string v2, "EPISODE_DETAIL_EPISODES"

    const/16 v3, 0x1a

    invoke-direct {v1, v2, v3}, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->EPISODE_DETAIL_EPISODES:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    const-string v2, "EPISODE_DETAIL_EPISODE_ITEM"

    const/16 v3, 0x1b

    invoke-direct {v1, v2, v3}, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->EPISODE_DETAIL_EPISODE_ITEM:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sput-object v0, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->$VALUES:[Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;
    .locals 1

    const-class v0, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    return-object p0
.end method

.method public static values()[Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;
    .locals 1

    sget-object v0, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->$VALUES:[Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {v0}, [Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    return-object v0
.end method
