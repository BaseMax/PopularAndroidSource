.class public final enum Lcom/adyen/threeds2/internal/c/a/c$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adyen/threeds2/internal/c/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/adyen/threeds2/internal/c/a/c$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adyen/threeds2/internal/c/a/c$a;

.field public static final enum MARKET_OR_REGIONAL_RESTRICTION:Lcom/adyen/threeds2/internal/c/a/c$a;

.field public static final enum MISSING_PERMISSION:Lcom/adyen/threeds2/internal/c/a/c$a;

.field public static final enum UNSUPPORTED_BY_PLATFORM_OR_DEPRECATED:Lcom/adyen/threeds2/internal/c/a/c$a;


# instance fields
.field private final mCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 44
    new-instance v0, Lcom/adyen/threeds2/internal/c/a/c$a;

    const/16 v1, 0x184

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x185

    invoke-static {v2}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/adyen/threeds2/internal/c/a/c$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adyen/threeds2/internal/c/a/c$a;->MARKET_OR_REGIONAL_RESTRICTION:Lcom/adyen/threeds2/internal/c/a/c$a;

    .line 45
    new-instance v0, Lcom/adyen/threeds2/internal/c/a/c$a;

    const/16 v1, 0x186

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x187

    invoke-static {v2}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/adyen/threeds2/internal/c/a/c$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adyen/threeds2/internal/c/a/c$a;->UNSUPPORTED_BY_PLATFORM_OR_DEPRECATED:Lcom/adyen/threeds2/internal/c/a/c$a;

    .line 46
    new-instance v0, Lcom/adyen/threeds2/internal/c/a/c$a;

    const/16 v1, 0x188

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x189

    invoke-static {v2}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/adyen/threeds2/internal/c/a/c$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adyen/threeds2/internal/c/a/c$a;->MISSING_PERMISSION:Lcom/adyen/threeds2/internal/c/a/c$a;

    const/4 v0, 0x3

    .line 43
    new-array v0, v0, [Lcom/adyen/threeds2/internal/c/a/c$a;

    sget-object v1, Lcom/adyen/threeds2/internal/c/a/c$a;->MARKET_OR_REGIONAL_RESTRICTION:Lcom/adyen/threeds2/internal/c/a/c$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adyen/threeds2/internal/c/a/c$a;->UNSUPPORTED_BY_PLATFORM_OR_DEPRECATED:Lcom/adyen/threeds2/internal/c/a/c$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adyen/threeds2/internal/c/a/c$a;->MISSING_PERMISSION:Lcom/adyen/threeds2/internal/c/a/c$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/adyen/threeds2/internal/c/a/c$a;->$VALUES:[Lcom/adyen/threeds2/internal/c/a/c$a;

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

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iput-object p3, p0, Lcom/adyen/threeds2/internal/c/a/c$a;->mCode:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adyen/threeds2/internal/c/a/c$a;
    .locals 1

    .line 43
    const-class v0, Lcom/adyen/threeds2/internal/c/a/c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/adyen/threeds2/internal/c/a/c$a;

    return-object p0
.end method

.method public static values()[Lcom/adyen/threeds2/internal/c/a/c$a;
    .locals 1

    .line 43
    sget-object v0, Lcom/adyen/threeds2/internal/c/a/c$a;->$VALUES:[Lcom/adyen/threeds2/internal/c/a/c$a;

    invoke-virtual {v0}, [Lcom/adyen/threeds2/internal/c/a/c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adyen/threeds2/internal/c/a/c$a;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/adyen/threeds2/internal/c/a/c$a;->mCode:Ljava/lang/String;

    return-object v0
.end method
