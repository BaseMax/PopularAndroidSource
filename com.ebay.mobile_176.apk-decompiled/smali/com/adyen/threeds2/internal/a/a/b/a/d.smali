.class public final enum Lcom/adyen/threeds2/internal/a/a/b/a/d;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/adyen/threeds2/internal/a/a/b/a/d;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adyen/threeds2/internal/a/a/b/a/d;

.field public static final enum CHALLENGE_REQUEST:Lcom/adyen/threeds2/internal/a/a/b/a/d;

.field public static final enum CHALLENGE_RESPONSE:Lcom/adyen/threeds2/internal/a/a/b/a/d;

.field public static final enum ERROR:Lcom/adyen/threeds2/internal/a/a/b/a/d;


# instance fields
.field private final mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 30
    new-instance v0, Lcom/adyen/threeds2/internal/a/a/b/a/d;

    const/16 v1, 0xf4

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf5

    invoke-static {v2}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/adyen/threeds2/internal/a/a/b/a/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adyen/threeds2/internal/a/a/b/a/d;->CHALLENGE_REQUEST:Lcom/adyen/threeds2/internal/a/a/b/a/d;

    .line 31
    new-instance v0, Lcom/adyen/threeds2/internal/a/a/b/a/d;

    const/16 v1, 0xf6

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf7

    invoke-static {v2}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/adyen/threeds2/internal/a/a/b/a/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adyen/threeds2/internal/a/a/b/a/d;->CHALLENGE_RESPONSE:Lcom/adyen/threeds2/internal/a/a/b/a/d;

    .line 32
    new-instance v0, Lcom/adyen/threeds2/internal/a/a/b/a/d;

    const/16 v1, 0xf8

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf9

    invoke-static {v2}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/adyen/threeds2/internal/a/a/b/a/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adyen/threeds2/internal/a/a/b/a/d;->ERROR:Lcom/adyen/threeds2/internal/a/a/b/a/d;

    const/4 v0, 0x3

    .line 28
    new-array v0, v0, [Lcom/adyen/threeds2/internal/a/a/b/a/d;

    sget-object v1, Lcom/adyen/threeds2/internal/a/a/b/a/d;->CHALLENGE_REQUEST:Lcom/adyen/threeds2/internal/a/a/b/a/d;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adyen/threeds2/internal/a/a/b/a/d;->CHALLENGE_RESPONSE:Lcom/adyen/threeds2/internal/a/a/b/a/d;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adyen/threeds2/internal/a/a/b/a/d;->ERROR:Lcom/adyen/threeds2/internal/a/a/b/a/d;

    aput-object v1, v0, v5

    sput-object v0, Lcom/adyen/threeds2/internal/a/a/b/a/d;->$VALUES:[Lcom/adyen/threeds2/internal/a/a/b/a/d;

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

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput-object p3, p0, Lcom/adyen/threeds2/internal/a/a/b/a/d;->mValue:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/adyen/threeds2/internal/a/a/b/a/d;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/internal/g/a;
        }
    .end annotation

    .line 37
    const-class v0, Lcom/adyen/threeds2/internal/a/a/b/a/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adyen/threeds2/internal/a/a/b/a/d;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 38
    invoke-virtual {v4}, Lcom/adyen/threeds2/internal/a/a/b/a/d;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 43
    :cond_1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/16 v1, 0xf3

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 44
    new-instance v0, Lcom/adyen/threeds2/internal/g/a;

    sget-object v1, Lcom/adyen/threeds2/internal/a/a/b/a/c;->MESSAGE_RECEIVED_INVALID:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    invoke-direct {v0, p0, v1}, Lcom/adyen/threeds2/internal/g/a;-><init>(Ljava/lang/String;Lcom/adyen/threeds2/internal/a/a/b/a/c;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adyen/threeds2/internal/a/a/b/a/d;
    .locals 1

    .line 28
    const-class v0, Lcom/adyen/threeds2/internal/a/a/b/a/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/adyen/threeds2/internal/a/a/b/a/d;

    return-object p0
.end method

.method public static values()[Lcom/adyen/threeds2/internal/a/a/b/a/d;
    .locals 1

    .line 28
    sget-object v0, Lcom/adyen/threeds2/internal/a/a/b/a/d;->$VALUES:[Lcom/adyen/threeds2/internal/a/a/b/a/d;

    invoke-virtual {v0}, [Lcom/adyen/threeds2/internal/a/a/b/a/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adyen/threeds2/internal/a/a/b/a/d;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/a/d;->mValue:Ljava/lang/String;

    return-object v0
.end method
