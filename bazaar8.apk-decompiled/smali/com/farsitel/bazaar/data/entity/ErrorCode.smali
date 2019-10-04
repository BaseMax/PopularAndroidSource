.class public final enum Lcom/farsitel/bazaar/data/entity/ErrorCode;
.super Ljava/lang/Enum;
.source "ErrorModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/farsitel/bazaar/data/entity/ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/farsitel/bazaar/data/entity/ErrorCode;

.field public static final enum INTERNAL_SERVER_ERROR:Lcom/farsitel/bazaar/data/entity/ErrorCode;

.field public static final enum NOT_FOUND:Lcom/farsitel/bazaar/data/entity/ErrorCode;

.field public static final enum PHONE_NUMBER_WAS_ALREADY_THIS:Lcom/farsitel/bazaar/data/entity/ErrorCode;

.field public static final enum RATE_LIMIT_EXCEEDED:Lcom/farsitel/bazaar/data/entity/ErrorCode;

.field public static final enum TOO_MANY_DEVICES:Lcom/farsitel/bazaar/data/entity/ErrorCode;

.field public static final enum UNKNOWN:Lcom/farsitel/bazaar/data/entity/ErrorCode;

.field public static final enum UNVERIFIED_ACCOUNT:Lcom/farsitel/bazaar/data/entity/ErrorCode;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/farsitel/bazaar/data/entity/ErrorCode;

    new-instance v1, Lcom/farsitel/bazaar/data/entity/ErrorCode;

    const/4 v2, 0x0

    const-string v3, "NOT_FOUND"

    const/16 v4, 0x194

    .line 1
    invoke-direct {v1, v3, v2, v4}, Lcom/farsitel/bazaar/data/entity/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/farsitel/bazaar/data/entity/ErrorCode;->NOT_FOUND:Lcom/farsitel/bazaar/data/entity/ErrorCode;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/data/entity/ErrorCode;

    const/4 v3, 0x1

    const-string v4, "RATE_LIMIT_EXCEEDED"

    const/16 v5, 0x1ad

    .line 2
    invoke-direct {v1, v4, v3, v5}, Lcom/farsitel/bazaar/data/entity/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/farsitel/bazaar/data/entity/ErrorCode;->RATE_LIMIT_EXCEEDED:Lcom/farsitel/bazaar/data/entity/ErrorCode;

    aput-object v1, v0, v3

    new-instance v1, Lcom/farsitel/bazaar/data/entity/ErrorCode;

    const/4 v3, 0x2

    const-string v4, "INTERNAL_SERVER_ERROR"

    const/16 v5, 0x1f4

    .line 3
    invoke-direct {v1, v4, v3, v5}, Lcom/farsitel/bazaar/data/entity/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/farsitel/bazaar/data/entity/ErrorCode;->INTERNAL_SERVER_ERROR:Lcom/farsitel/bazaar/data/entity/ErrorCode;

    aput-object v1, v0, v3

    new-instance v1, Lcom/farsitel/bazaar/data/entity/ErrorCode;

    const/4 v3, 0x3

    const-string v4, "UNVERIFIED_ACCOUNT"

    const/16 v5, 0x259

    .line 4
    invoke-direct {v1, v4, v3, v5}, Lcom/farsitel/bazaar/data/entity/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/farsitel/bazaar/data/entity/ErrorCode;->UNVERIFIED_ACCOUNT:Lcom/farsitel/bazaar/data/entity/ErrorCode;

    aput-object v1, v0, v3

    new-instance v1, Lcom/farsitel/bazaar/data/entity/ErrorCode;

    const/4 v3, 0x4

    const-string v4, "TOO_MANY_DEVICES"

    const/16 v5, 0x25a

    .line 5
    invoke-direct {v1, v4, v3, v5}, Lcom/farsitel/bazaar/data/entity/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/farsitel/bazaar/data/entity/ErrorCode;->TOO_MANY_DEVICES:Lcom/farsitel/bazaar/data/entity/ErrorCode;

    aput-object v1, v0, v3

    new-instance v1, Lcom/farsitel/bazaar/data/entity/ErrorCode;

    const/4 v3, 0x5

    const-string v4, "PHONE_NUMBER_WAS_ALREADY_THIS"

    const/16 v5, 0x3e8

    .line 6
    invoke-direct {v1, v4, v3, v5}, Lcom/farsitel/bazaar/data/entity/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/farsitel/bazaar/data/entity/ErrorCode;->PHONE_NUMBER_WAS_ALREADY_THIS:Lcom/farsitel/bazaar/data/entity/ErrorCode;

    aput-object v1, v0, v3

    new-instance v1, Lcom/farsitel/bazaar/data/entity/ErrorCode;

    const/4 v3, 0x6

    const-string v4, "UNKNOWN"

    .line 7
    invoke-direct {v1, v4, v3, v2}, Lcom/farsitel/bazaar/data/entity/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/farsitel/bazaar/data/entity/ErrorCode;->UNKNOWN:Lcom/farsitel/bazaar/data/entity/ErrorCode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/farsitel/bazaar/data/entity/ErrorCode;->$VALUES:[Lcom/farsitel/bazaar/data/entity/ErrorCode;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/farsitel/bazaar/data/entity/ErrorCode;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/farsitel/bazaar/data/entity/ErrorCode;
    .locals 1

    const-class v0, Lcom/farsitel/bazaar/data/entity/ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/farsitel/bazaar/data/entity/ErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/farsitel/bazaar/data/entity/ErrorCode;
    .locals 1

    sget-object v0, Lcom/farsitel/bazaar/data/entity/ErrorCode;->$VALUES:[Lcom/farsitel/bazaar/data/entity/ErrorCode;

    invoke-virtual {v0}, [Lcom/farsitel/bazaar/data/entity/ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/farsitel/bazaar/data/entity/ErrorCode;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/data/entity/ErrorCode;->value:I

    return v0
.end method
