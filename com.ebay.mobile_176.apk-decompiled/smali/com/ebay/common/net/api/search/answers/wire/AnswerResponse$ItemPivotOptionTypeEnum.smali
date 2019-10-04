.class public final enum Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionTypeEnum;
.super Ljava/lang/Enum;
.source "AnswerResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ItemPivotOptionTypeEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionTypeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionTypeEnum;

.field public static final enum QUERY:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionTypeEnum;

.field public static final enum STATEFUL_LABEL:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionTypeEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 123
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionTypeEnum;

    const-string v1, "QUERY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionTypeEnum;->QUERY:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionTypeEnum;

    .line 124
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionTypeEnum;

    const-string v1, "STATEFUL_LABEL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionTypeEnum;->STATEFUL_LABEL:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionTypeEnum;

    const/4 v0, 0x2

    .line 121
    new-array v0, v0, [Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionTypeEnum;

    sget-object v1, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionTypeEnum;->QUERY:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionTypeEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionTypeEnum;->STATEFUL_LABEL:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionTypeEnum;

    aput-object v1, v0, v3

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionTypeEnum;->$VALUES:[Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionTypeEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 121
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionTypeEnum;
    .locals 1

    .line 121
    const-class v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionTypeEnum;

    return-object p0
.end method

.method public static values()[Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionTypeEnum;
    .locals 1

    .line 121
    sget-object v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionTypeEnum;->$VALUES:[Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionTypeEnum;

    invoke-virtual {v0}, [Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionTypeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionTypeEnum;

    return-object v0
.end method
