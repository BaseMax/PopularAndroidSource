.class public final enum Lcom/adyen/threeds2/internal/e/a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/adyen/threeds2/internal/e/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adyen/threeds2/internal/e/a;

.field public static final enum APPLICATION_CONTEXT:Lcom/adyen/threeds2/internal/e/a;

.field public static final enum CHALLENGE_PARAMETERS:Lcom/adyen/threeds2/internal/e/a;

.field public static final enum CHALLENGE_STATUS_RECEIVER:Lcom/adyen/threeds2/internal/e/a;

.field public static final enum CONFIG_PARAMETERS:Lcom/adyen/threeds2/internal/e/a;

.field public static final enum CURRENT_ACTIVITY:Lcom/adyen/threeds2/internal/e/a;

.field public static final enum DEVICE_DATA:Lcom/adyen/threeds2/internal/e/a;

.field public static final enum DIRECTORY_SERVER_ID:Lcom/adyen/threeds2/internal/e/a;

.field public static final enum LOCALE:Lcom/adyen/threeds2/internal/e/a;

.field public static final enum MESSAGE_VERSION:Lcom/adyen/threeds2/internal/e/a;

.field public static final enum SDK_APP_ID:Lcom/adyen/threeds2/internal/e/a;

.field public static final enum SDK_EPHEMERAL_PUBLIC_KEY:Lcom/adyen/threeds2/internal/e/a;

.field public static final enum SDK_REFERENCE_NUMBER:Lcom/adyen/threeds2/internal/e/a;

.field public static final enum SDK_TRANSACTION_ID:Lcom/adyen/threeds2/internal/e/a;

.field public static final enum TIMEOUT:Lcom/adyen/threeds2/internal/e/a;


# instance fields
.field private final mErrorMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 17
    new-instance v0, Lcom/adyen/threeds2/internal/e/a;

    const/16 v1, 0x247

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x248

    invoke-static {v2}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/adyen/threeds2/internal/e/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adyen/threeds2/internal/e/a;->APPLICATION_CONTEXT:Lcom/adyen/threeds2/internal/e/a;

    .line 18
    new-instance v0, Lcom/adyen/threeds2/internal/e/a;

    const/16 v1, 0x249

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x24a

    invoke-static {v2}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/adyen/threeds2/internal/e/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adyen/threeds2/internal/e/a;->CONFIG_PARAMETERS:Lcom/adyen/threeds2/internal/e/a;

    .line 19
    new-instance v0, Lcom/adyen/threeds2/internal/e/a;

    const/16 v1, 0x24b

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x24c

    invoke-static {v2}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/adyen/threeds2/internal/e/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adyen/threeds2/internal/e/a;->LOCALE:Lcom/adyen/threeds2/internal/e/a;

    .line 20
    new-instance v0, Lcom/adyen/threeds2/internal/e/a;

    const/16 v1, 0x24d

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x24e

    invoke-static {v2}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/adyen/threeds2/internal/e/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adyen/threeds2/internal/e/a;->DIRECTORY_SERVER_ID:Lcom/adyen/threeds2/internal/e/a;

    .line 21
    new-instance v0, Lcom/adyen/threeds2/internal/e/a;

    const/16 v1, 0x24f

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x250

    invoke-static {v2}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/adyen/threeds2/internal/e/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adyen/threeds2/internal/e/a;->MESSAGE_VERSION:Lcom/adyen/threeds2/internal/e/a;

    .line 22
    new-instance v0, Lcom/adyen/threeds2/internal/e/a;

    const/16 v1, 0x251

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x252

    invoke-static {v2}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/adyen/threeds2/internal/e/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adyen/threeds2/internal/e/a;->CURRENT_ACTIVITY:Lcom/adyen/threeds2/internal/e/a;

    .line 23
    new-instance v0, Lcom/adyen/threeds2/internal/e/a;

    const/16 v1, 0x253

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x254

    invoke-static {v2}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2}, Lcom/adyen/threeds2/internal/e/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adyen/threeds2/internal/e/a;->CHALLENGE_PARAMETERS:Lcom/adyen/threeds2/internal/e/a;

    .line 24
    new-instance v0, Lcom/adyen/threeds2/internal/e/a;

    const/16 v1, 0x255

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x256

    invoke-static {v2}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v2}, Lcom/adyen/threeds2/internal/e/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adyen/threeds2/internal/e/a;->CHALLENGE_STATUS_RECEIVER:Lcom/adyen/threeds2/internal/e/a;

    .line 25
    new-instance v0, Lcom/adyen/threeds2/internal/e/a;

    const/16 v1, 0x257

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x258

    invoke-static {v2}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v11, 0x8

    invoke-direct {v0, v1, v11, v2}, Lcom/adyen/threeds2/internal/e/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adyen/threeds2/internal/e/a;->TIMEOUT:Lcom/adyen/threeds2/internal/e/a;

    .line 26
    new-instance v0, Lcom/adyen/threeds2/internal/e/a;

    const/16 v1, 0x259

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x25a

    invoke-static {v2}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v12, 0x9

    invoke-direct {v0, v1, v12, v2}, Lcom/adyen/threeds2/internal/e/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adyen/threeds2/internal/e/a;->SDK_TRANSACTION_ID:Lcom/adyen/threeds2/internal/e/a;

    .line 27
    new-instance v0, Lcom/adyen/threeds2/internal/e/a;

    const/16 v1, 0x25b

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x25c

    invoke-static {v2}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v13, 0xa

    invoke-direct {v0, v1, v13, v2}, Lcom/adyen/threeds2/internal/e/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adyen/threeds2/internal/e/a;->DEVICE_DATA:Lcom/adyen/threeds2/internal/e/a;

    .line 28
    new-instance v0, Lcom/adyen/threeds2/internal/e/a;

    const/16 v1, 0x25d

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x25e

    invoke-static {v2}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v14, 0xb

    invoke-direct {v0, v1, v14, v2}, Lcom/adyen/threeds2/internal/e/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adyen/threeds2/internal/e/a;->SDK_EPHEMERAL_PUBLIC_KEY:Lcom/adyen/threeds2/internal/e/a;

    .line 29
    new-instance v0, Lcom/adyen/threeds2/internal/e/a;

    const/16 v1, 0x25f

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x260

    invoke-static {v2}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v15, 0xc

    invoke-direct {v0, v1, v15, v2}, Lcom/adyen/threeds2/internal/e/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adyen/threeds2/internal/e/a;->SDK_APP_ID:Lcom/adyen/threeds2/internal/e/a;

    .line 30
    new-instance v0, Lcom/adyen/threeds2/internal/e/a;

    const/16 v1, 0x261

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x262

    invoke-static {v2}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v2}, Lcom/adyen/threeds2/internal/e/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adyen/threeds2/internal/e/a;->SDK_REFERENCE_NUMBER:Lcom/adyen/threeds2/internal/e/a;

    const/16 v0, 0xe

    .line 15
    new-array v0, v0, [Lcom/adyen/threeds2/internal/e/a;

    sget-object v1, Lcom/adyen/threeds2/internal/e/a;->APPLICATION_CONTEXT:Lcom/adyen/threeds2/internal/e/a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adyen/threeds2/internal/e/a;->CONFIG_PARAMETERS:Lcom/adyen/threeds2/internal/e/a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adyen/threeds2/internal/e/a;->LOCALE:Lcom/adyen/threeds2/internal/e/a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/adyen/threeds2/internal/e/a;->DIRECTORY_SERVER_ID:Lcom/adyen/threeds2/internal/e/a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/adyen/threeds2/internal/e/a;->MESSAGE_VERSION:Lcom/adyen/threeds2/internal/e/a;

    aput-object v1, v0, v7

    sget-object v1, Lcom/adyen/threeds2/internal/e/a;->CURRENT_ACTIVITY:Lcom/adyen/threeds2/internal/e/a;

    aput-object v1, v0, v8

    sget-object v1, Lcom/adyen/threeds2/internal/e/a;->CHALLENGE_PARAMETERS:Lcom/adyen/threeds2/internal/e/a;

    aput-object v1, v0, v9

    sget-object v1, Lcom/adyen/threeds2/internal/e/a;->CHALLENGE_STATUS_RECEIVER:Lcom/adyen/threeds2/internal/e/a;

    aput-object v1, v0, v10

    sget-object v1, Lcom/adyen/threeds2/internal/e/a;->TIMEOUT:Lcom/adyen/threeds2/internal/e/a;

    aput-object v1, v0, v11

    sget-object v1, Lcom/adyen/threeds2/internal/e/a;->SDK_TRANSACTION_ID:Lcom/adyen/threeds2/internal/e/a;

    aput-object v1, v0, v12

    sget-object v1, Lcom/adyen/threeds2/internal/e/a;->DEVICE_DATA:Lcom/adyen/threeds2/internal/e/a;

    aput-object v1, v0, v13

    sget-object v1, Lcom/adyen/threeds2/internal/e/a;->SDK_EPHEMERAL_PUBLIC_KEY:Lcom/adyen/threeds2/internal/e/a;

    aput-object v1, v0, v14

    sget-object v1, Lcom/adyen/threeds2/internal/e/a;->SDK_APP_ID:Lcom/adyen/threeds2/internal/e/a;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/adyen/threeds2/internal/e/a;->SDK_REFERENCE_NUMBER:Lcom/adyen/threeds2/internal/e/a;

    aput-object v1, v0, v15

    sput-object v0, Lcom/adyen/threeds2/internal/e/a;->$VALUES:[Lcom/adyen/threeds2/internal/e/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput-object p3, p0, Lcom/adyen/threeds2/internal/e/a;->mErrorMessage:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adyen/threeds2/internal/e/a;
    .locals 1

    .line 15
    const-class v0, Lcom/adyen/threeds2/internal/e/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/adyen/threeds2/internal/e/a;

    return-object p0
.end method

.method public static values()[Lcom/adyen/threeds2/internal/e/a;
    .locals 1

    .line 15
    sget-object v0, Lcom/adyen/threeds2/internal/e/a;->$VALUES:[Lcom/adyen/threeds2/internal/e/a;

    invoke-virtual {v0}, [Lcom/adyen/threeds2/internal/e/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adyen/threeds2/internal/e/a;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/adyen/threeds2/exception/InvalidInputException;
    .locals 3

    .line 39
    new-instance v0, Lcom/adyen/threeds2/exception/InvalidInputException;

    iget-object v1, p0, Lcom/adyen/threeds2/internal/e/a;->mErrorMessage:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/adyen/threeds2/exception/InvalidInputException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method
