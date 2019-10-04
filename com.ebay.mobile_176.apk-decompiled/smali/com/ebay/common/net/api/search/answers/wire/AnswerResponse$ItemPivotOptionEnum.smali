.class public final enum Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionEnum;
.super Ljava/lang/Enum;
.source "AnswerResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ItemPivotOptionEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionEnum;

.field public static final enum MORE_IN_CATEGORY:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionEnum;

.field public static final enum TOP_ASPECTS:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionEnum;

.field public static final enum VISUALLY_SIMILAR:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionEnum;

.field public static final enum WATCH:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 109
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionEnum;

    const-string v1, "VISUALLY_SIMILAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionEnum;->VISUALLY_SIMILAR:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionEnum;

    .line 110
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionEnum;

    const-string v1, "WATCH"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionEnum;->WATCH:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionEnum;

    .line 111
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionEnum;

    const-string v1, "MORE_IN_CATEGORY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionEnum;->MORE_IN_CATEGORY:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionEnum;

    .line 112
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionEnum;

    const-string v1, "TOP_ASPECTS"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionEnum;->TOP_ASPECTS:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionEnum;

    const/4 v0, 0x4

    .line 107
    new-array v0, v0, [Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionEnum;

    sget-object v1, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionEnum;->VISUALLY_SIMILAR:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionEnum;->WATCH:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionEnum;->MORE_IN_CATEGORY:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionEnum;->TOP_ASPECTS:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionEnum;

    aput-object v1, v0, v5

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionEnum;->$VALUES:[Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 107
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionEnum;
    .locals 1

    .line 107
    const-class v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionEnum;

    return-object p0
.end method

.method public static values()[Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionEnum;
    .locals 1

    .line 107
    sget-object v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionEnum;->$VALUES:[Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionEnum;

    invoke-virtual {v0}, [Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionEnum;

    return-object v0
.end method
