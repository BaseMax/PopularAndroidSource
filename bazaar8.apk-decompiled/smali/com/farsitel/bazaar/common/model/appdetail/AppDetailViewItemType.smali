.class public final enum Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;
.super Ljava/lang/Enum;
.source "ViewHolderItem.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

.field public static final enum APP_DESCRIPTION:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

.field public static final enum APP_INFO:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

.field public static final enum APP_MORE_DESCRIPTION:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

.field public static final enum APP_MY_RATE:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

.field public static final enum ARTICLE:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

.field public static final enum ARTICLE_TITLE:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

.field public static final enum CHANGE_LOG:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

.field public static final enum DEVELOPER_INFO:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

.field public static final enum DIVIDER:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

.field public static final enum EDITOR_CHOICE:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

.field public static final enum MORE_ARTICLE:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

.field public static final enum MY_REVIEW:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

.field public static final enum REPORT:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

.field public static final enum REVIEW_ACTION:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

.field public static final enum REVIEW_INFO:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

.field public static final enum SCREEN_SHOT_ITEM:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

.field public static final enum SCREEN_SHOT_SECTION:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x11

    new-array v0, v0, [Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    new-instance v1, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    const/4 v2, 0x0

    const-string v3, "APP_INFO"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;->APP_INFO:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    const/4 v2, 0x1

    const-string v3, "EDITOR_CHOICE"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;->EDITOR_CHOICE:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    const/4 v2, 0x2

    const-string v3, "SCREEN_SHOT_ITEM"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;->SCREEN_SHOT_ITEM:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    const/4 v2, 0x3

    const-string v3, "SCREEN_SHOT_SECTION"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;->SCREEN_SHOT_SECTION:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    const/4 v2, 0x4

    const-string v3, "CHANGE_LOG"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;->CHANGE_LOG:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    const/4 v2, 0x5

    const-string v3, "APP_DESCRIPTION"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;->APP_DESCRIPTION:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    const/4 v2, 0x6

    const-string v3, "APP_MORE_DESCRIPTION"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;->APP_MORE_DESCRIPTION:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    const/4 v2, 0x7

    const-string v3, "APP_MY_RATE"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;->APP_MY_RATE:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    const/16 v2, 0x8

    const-string v3, "MY_REVIEW"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;->MY_REVIEW:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    const/16 v2, 0x9

    const-string v3, "REVIEW_INFO"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;->REVIEW_INFO:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    const/16 v2, 0xa

    const-string v3, "REVIEW_ACTION"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;->REVIEW_ACTION:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    const/16 v2, 0xb

    const-string v3, "DEVELOPER_INFO"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;->DEVELOPER_INFO:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    const/16 v2, 0xc

    const-string v3, "ARTICLE_TITLE"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;->ARTICLE_TITLE:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    const/16 v2, 0xd

    const-string v3, "ARTICLE"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;->ARTICLE:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    const/16 v2, 0xe

    const-string v3, "MORE_ARTICLE"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;->MORE_ARTICLE:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    const-string v2, "REPORT"

    const/16 v3, 0xf

    invoke-direct {v1, v2, v3}, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;->REPORT:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    const-string v2, "DIVIDER"

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3}, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;->DIVIDER:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sput-object v0, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;->$VALUES:[Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;
    .locals 1

    const-class v0, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    return-object p0
.end method

.method public static values()[Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;
    .locals 1

    sget-object v0, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;->$VALUES:[Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    invoke-virtual {v0}, [Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    return-object v0
.end method
