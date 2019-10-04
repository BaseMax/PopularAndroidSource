.class public final enum Lcom/adyen/threeds2/internal/h/e/d;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adyen/threeds2/internal/h/e/d$b;,
        Lcom/adyen/threeds2/internal/h/e/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/adyen/threeds2/internal/h/e/d;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adyen/threeds2/internal/h/e/d;

.field public static final enum P256:Lcom/adyen/threeds2/internal/h/e/d;


# instance fields
.field private final mApiName:Ljava/lang/String;

.field private final mECParameterSpec:Ljava/security/spec/ECParameterSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 33
    new-instance v0, Lcom/adyen/threeds2/internal/h/e/d;

    const/16 v1, 0x2e7

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e8

    invoke-static {v2}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/adyen/threeds2/internal/h/e/d$b;

    invoke-direct {v3}, Lcom/adyen/threeds2/internal/h/e/d$b;-><init>()V

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/adyen/threeds2/internal/h/e/d;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/adyen/threeds2/internal/h/e/d$a;)V

    sput-object v0, Lcom/adyen/threeds2/internal/h/e/d;->P256:Lcom/adyen/threeds2/internal/h/e/d;

    const/4 v0, 0x1

    .line 31
    new-array v0, v0, [Lcom/adyen/threeds2/internal/h/e/d;

    sget-object v1, Lcom/adyen/threeds2/internal/h/e/d;->P256:Lcom/adyen/threeds2/internal/h/e/d;

    aput-object v1, v0, v4

    sput-object v0, Lcom/adyen/threeds2/internal/h/e/d;->$VALUES:[Lcom/adyen/threeds2/internal/h/e/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/adyen/threeds2/internal/h/e/d$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/adyen/threeds2/internal/h/e/d$a;",
            ")V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50
    iput-object p3, p0, Lcom/adyen/threeds2/internal/h/e/d;->mApiName:Ljava/lang/String;

    .line 51
    invoke-interface {p4}, Lcom/adyen/threeds2/internal/h/e/d$a;->a()Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lcom/adyen/threeds2/internal/h/e/d;->mECParameterSpec:Ljava/security/spec/ECParameterSpec;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/adyen/threeds2/internal/h/e/d;
    .locals 5

    .line 40
    invoke-static {}, Lcom/adyen/threeds2/internal/h/e/d;->values()[Lcom/adyen/threeds2/internal/h/e/d;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 41
    iget-object v4, v3, Lcom/adyen/threeds2/internal/h/e/d;->mApiName:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 46
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/16 v0, 0x2e6

    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adyen/threeds2/internal/h/e/d;
    .locals 1

    .line 31
    const-class v0, Lcom/adyen/threeds2/internal/h/e/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/adyen/threeds2/internal/h/e/d;

    return-object p0
.end method

.method public static values()[Lcom/adyen/threeds2/internal/h/e/d;
    .locals 1

    .line 31
    sget-object v0, Lcom/adyen/threeds2/internal/h/e/d;->$VALUES:[Lcom/adyen/threeds2/internal/h/e/d;

    invoke-virtual {v0}, [Lcom/adyen/threeds2/internal/h/e/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adyen/threeds2/internal/h/e/d;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/adyen/threeds2/internal/h/e/d;->mApiName:Ljava/lang/String;

    return-object v0
.end method

.method b()Ljava/security/spec/ECParameterSpec;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/adyen/threeds2/internal/h/e/d;->mECParameterSpec:Ljava/security/spec/ECParameterSpec;

    return-object v0
.end method
