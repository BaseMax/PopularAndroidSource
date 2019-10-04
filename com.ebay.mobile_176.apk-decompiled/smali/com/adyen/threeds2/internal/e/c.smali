.class public final enum Lcom/adyen/threeds2/internal/e/c;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/adyen/threeds2/internal/e/c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adyen/threeds2/internal/e/c;

.field public static final enum CHALLENGE_PRESENTATION_FAILURE:Lcom/adyen/threeds2/internal/e/c;

.field public static final enum CRYPTO_FAILURE:Lcom/adyen/threeds2/internal/e/c;

.field public static final enum DEVICE_DATA_FAILURE:Lcom/adyen/threeds2/internal/e/c;

.field public static final enum SECURE_CHANNEL_SETUP_FAILURE:Lcom/adyen/threeds2/internal/e/c;

.field public static final enum UNKNOWN_DIRECTORY_SERVER:Lcom/adyen/threeds2/internal/e/c;


# instance fields
.field private final mErrorMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 35
    new-instance v0, Lcom/adyen/threeds2/internal/e/c;

    const/16 v1, 0x272

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x273

    invoke-static {v2}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/adyen/threeds2/internal/e/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adyen/threeds2/internal/e/c;->CHALLENGE_PRESENTATION_FAILURE:Lcom/adyen/threeds2/internal/e/c;

    .line 36
    new-instance v0, Lcom/adyen/threeds2/internal/e/c;

    const/16 v1, 0x274

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x275

    invoke-static {v2}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/adyen/threeds2/internal/e/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adyen/threeds2/internal/e/c;->CRYPTO_FAILURE:Lcom/adyen/threeds2/internal/e/c;

    .line 37
    new-instance v0, Lcom/adyen/threeds2/internal/e/c;

    const/16 v1, 0x276

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x277

    invoke-static {v2}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/adyen/threeds2/internal/e/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adyen/threeds2/internal/e/c;->DEVICE_DATA_FAILURE:Lcom/adyen/threeds2/internal/e/c;

    .line 38
    new-instance v0, Lcom/adyen/threeds2/internal/e/c;

    const/16 v1, 0x278

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x279

    invoke-static {v2}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/adyen/threeds2/internal/e/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adyen/threeds2/internal/e/c;->SECURE_CHANNEL_SETUP_FAILURE:Lcom/adyen/threeds2/internal/e/c;

    .line 39
    new-instance v0, Lcom/adyen/threeds2/internal/e/c;

    const/16 v1, 0x27a

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x27b

    invoke-static {v2}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/adyen/threeds2/internal/e/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adyen/threeds2/internal/e/c;->UNKNOWN_DIRECTORY_SERVER:Lcom/adyen/threeds2/internal/e/c;

    const/4 v0, 0x5

    .line 33
    new-array v0, v0, [Lcom/adyen/threeds2/internal/e/c;

    sget-object v1, Lcom/adyen/threeds2/internal/e/c;->CHALLENGE_PRESENTATION_FAILURE:Lcom/adyen/threeds2/internal/e/c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adyen/threeds2/internal/e/c;->CRYPTO_FAILURE:Lcom/adyen/threeds2/internal/e/c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adyen/threeds2/internal/e/c;->DEVICE_DATA_FAILURE:Lcom/adyen/threeds2/internal/e/c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/adyen/threeds2/internal/e/c;->SECURE_CHANNEL_SETUP_FAILURE:Lcom/adyen/threeds2/internal/e/c;

    aput-object v1, v0, v6

    sget-object v1, Lcom/adyen/threeds2/internal/e/c;->UNKNOWN_DIRECTORY_SERVER:Lcom/adyen/threeds2/internal/e/c;

    aput-object v1, v0, v7

    sput-object v0, Lcom/adyen/threeds2/internal/e/c;->$VALUES:[Lcom/adyen/threeds2/internal/e/c;

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

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput-object p3, p0, Lcom/adyen/threeds2/internal/e/c;->mErrorMessage:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adyen/threeds2/internal/e/c;
    .locals 1

    .line 33
    const-class v0, Lcom/adyen/threeds2/internal/e/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/adyen/threeds2/internal/e/c;

    return-object p0
.end method

.method public static values()[Lcom/adyen/threeds2/internal/e/c;
    .locals 1

    .line 33
    sget-object v0, Lcom/adyen/threeds2/internal/e/c;->$VALUES:[Lcom/adyen/threeds2/internal/e/c;

    invoke-virtual {v0}, [Lcom/adyen/threeds2/internal/e/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adyen/threeds2/internal/e/c;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/adyen/threeds2/exception/SDKRuntimeException;
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0, v0}, Lcom/adyen/threeds2/internal/e/c;->a(Ljava/lang/Throwable;)Lcom/adyen/threeds2/exception/SDKRuntimeException;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Throwable;)Lcom/adyen/threeds2/exception/SDKRuntimeException;
    .locals 2

    .line 52
    new-instance p1, Lcom/adyen/threeds2/exception/SDKRuntimeException;

    iget-object v0, p0, Lcom/adyen/threeds2/internal/e/c;->mErrorMessage:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, v1}, Lcom/adyen/threeds2/exception/SDKRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p1
.end method
