.class public final enum Lcom/adyen/threeds2/internal/e/b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/adyen/threeds2/internal/e/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adyen/threeds2/internal/e/b;

.field public static final enum ACTIVITY_REFERENCE_MISSING:Lcom/adyen/threeds2/internal/e/b;

.field public static final enum ACTIVITY_WEAK_REFERENCE_MISSING:Lcom/adyen/threeds2/internal/e/b;

.field public static final enum MESSAGE_INDICES_MISMATCH:Lcom/adyen/threeds2/internal/e/b;

.field public static final enum MESSAGE_VERSIONS_MISMATCH:Lcom/adyen/threeds2/internal/e/b;

.field public static final enum UNKNOWN:Lcom/adyen/threeds2/internal/e/b;


# instance fields
.field private final mErrorCode:Ljava/lang/String;

.field private final mErrorMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 36
    new-instance v0, Lcom/adyen/threeds2/internal/e/b;

    const/16 v1, 0x263

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x264

    invoke-static {v2}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x265

    invoke-static {v3}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/adyen/threeds2/internal/e/b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/adyen/threeds2/internal/e/b;->UNKNOWN:Lcom/adyen/threeds2/internal/e/b;

    .line 37
    new-instance v0, Lcom/adyen/threeds2/internal/e/b;

    const/16 v1, 0x266

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x267

    invoke-static {v2}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x268

    invoke-static {v3}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/adyen/threeds2/internal/e/b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/adyen/threeds2/internal/e/b;->MESSAGE_VERSIONS_MISMATCH:Lcom/adyen/threeds2/internal/e/b;

    .line 38
    new-instance v0, Lcom/adyen/threeds2/internal/e/b;

    const/16 v1, 0x269

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x26a

    invoke-static {v2}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x26b

    invoke-static {v3}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/adyen/threeds2/internal/e/b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/adyen/threeds2/internal/e/b;->MESSAGE_INDICES_MISMATCH:Lcom/adyen/threeds2/internal/e/b;

    .line 39
    new-instance v0, Lcom/adyen/threeds2/internal/e/b;

    const/16 v1, 0x26c

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x26d

    invoke-static {v2}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x26e

    invoke-static {v3}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x3

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/adyen/threeds2/internal/e/b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/adyen/threeds2/internal/e/b;->ACTIVITY_WEAK_REFERENCE_MISSING:Lcom/adyen/threeds2/internal/e/b;

    .line 40
    new-instance v0, Lcom/adyen/threeds2/internal/e/b;

    const/16 v1, 0x26f

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x270

    invoke-static {v2}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x271

    invoke-static {v3}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x4

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/adyen/threeds2/internal/e/b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/adyen/threeds2/internal/e/b;->ACTIVITY_REFERENCE_MISSING:Lcom/adyen/threeds2/internal/e/b;

    const/4 v0, 0x5

    .line 34
    new-array v0, v0, [Lcom/adyen/threeds2/internal/e/b;

    sget-object v1, Lcom/adyen/threeds2/internal/e/b;->UNKNOWN:Lcom/adyen/threeds2/internal/e/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adyen/threeds2/internal/e/b;->MESSAGE_VERSIONS_MISMATCH:Lcom/adyen/threeds2/internal/e/b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/adyen/threeds2/internal/e/b;->MESSAGE_INDICES_MISMATCH:Lcom/adyen/threeds2/internal/e/b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/adyen/threeds2/internal/e/b;->ACTIVITY_WEAK_REFERENCE_MISSING:Lcom/adyen/threeds2/internal/e/b;

    aput-object v1, v0, v7

    sget-object v1, Lcom/adyen/threeds2/internal/e/b;->ACTIVITY_REFERENCE_MISSING:Lcom/adyen/threeds2/internal/e/b;

    aput-object v1, v0, v8

    sput-object v0, Lcom/adyen/threeds2/internal/e/b;->$VALUES:[Lcom/adyen/threeds2/internal/e/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput-object p3, p0, Lcom/adyen/threeds2/internal/e/b;->mErrorCode:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lcom/adyen/threeds2/internal/e/b;->mErrorMessage:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adyen/threeds2/internal/e/b;
    .locals 1

    .line 34
    const-class v0, Lcom/adyen/threeds2/internal/e/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/adyen/threeds2/internal/e/b;

    return-object p0
.end method

.method public static values()[Lcom/adyen/threeds2/internal/e/b;
    .locals 1

    .line 34
    sget-object v0, Lcom/adyen/threeds2/internal/e/b;->$VALUES:[Lcom/adyen/threeds2/internal/e/b;

    invoke-virtual {v0}, [Lcom/adyen/threeds2/internal/e/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adyen/threeds2/internal/e/b;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/adyen/threeds2/RuntimeErrorEvent;
    .locals 3

    .line 51
    new-instance v0, Lcom/adyen/threeds2/internal/f/d;

    iget-object v1, p0, Lcom/adyen/threeds2/internal/e/b;->mErrorCode:Ljava/lang/String;

    iget-object v2, p0, Lcom/adyen/threeds2/internal/e/b;->mErrorMessage:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/adyen/threeds2/internal/f/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/adyen/threeds2/RuntimeErrorEvent;
    .locals 2

    .line 55
    new-instance p1, Lcom/adyen/threeds2/internal/f/d;

    iget-object v0, p0, Lcom/adyen/threeds2/internal/e/b;->mErrorCode:Ljava/lang/String;

    iget-object v1, p0, Lcom/adyen/threeds2/internal/e/b;->mErrorMessage:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Lcom/adyen/threeds2/internal/f/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method
