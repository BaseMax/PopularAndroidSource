.class public final enum Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewritePromoteType;
.super Ljava/lang/Enum;
.source "AnswerResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RewritePromoteType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewritePromoteType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewritePromoteType;

.field public static final enum FULL:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewritePromoteType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "full"
    .end annotation
.end field

.field public static final enum NONE:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewritePromoteType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "none"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 321
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewritePromoteType;

    const-string v1, "FULL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewritePromoteType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewritePromoteType;->FULL:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewritePromoteType;

    .line 323
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewritePromoteType;

    const-string v1, "NONE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewritePromoteType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewritePromoteType;->NONE:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewritePromoteType;

    const/4 v0, 0x2

    .line 319
    new-array v0, v0, [Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewritePromoteType;

    sget-object v1, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewritePromoteType;->FULL:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewritePromoteType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewritePromoteType;->NONE:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewritePromoteType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewritePromoteType;->$VALUES:[Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewritePromoteType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 319
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewritePromoteType;
    .locals 1

    .line 319
    const-class v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewritePromoteType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewritePromoteType;

    return-object p0
.end method

.method public static values()[Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewritePromoteType;
    .locals 1

    .line 319
    sget-object v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewritePromoteType;->$VALUES:[Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewritePromoteType;

    invoke-virtual {v0}, [Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewritePromoteType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewritePromoteType;

    return-object v0
.end method
