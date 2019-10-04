.class public final enum Lcom/adyen/threeds2/internal/d;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/adyen/threeds2/internal/d;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adyen/threeds2/internal/d;

.field public static final enum V2_1_0:Lcom/adyen/threeds2/internal/d;


# instance fields
.field private final mDataVersion:Lcom/adyen/threeds2/internal/c/a;

.field private final mVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 32
    new-instance v0, Lcom/adyen/threeds2/internal/d;

    const/4 v1, 0x2

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/adyen/threeds2/internal/c/a;->V1_1:Lcom/adyen/threeds2/internal/c/a;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/adyen/threeds2/internal/d;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/adyen/threeds2/internal/c/a;)V

    sput-object v0, Lcom/adyen/threeds2/internal/d;->V2_1_0:Lcom/adyen/threeds2/internal/d;

    const/4 v0, 0x1

    .line 30
    new-array v0, v0, [Lcom/adyen/threeds2/internal/d;

    sget-object v1, Lcom/adyen/threeds2/internal/d;->V2_1_0:Lcom/adyen/threeds2/internal/d;

    aput-object v1, v0, v4

    sput-object v0, Lcom/adyen/threeds2/internal/d;->$VALUES:[Lcom/adyen/threeds2/internal/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/adyen/threeds2/internal/c/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/adyen/threeds2/internal/c/a;",
            ")V"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 61
    iput-object p3, p0, Lcom/adyen/threeds2/internal/d;->mVersion:Ljava/lang/String;

    .line 62
    iput-object p4, p0, Lcom/adyen/threeds2/internal/d;->mDataVersion:Lcom/adyen/threeds2/internal/c/a;

    return-void
.end method

.method public static a()Lcom/adyen/threeds2/internal/d;
    .locals 1

    .line 39
    sget-object v0, Lcom/adyen/threeds2/internal/d;->V2_1_0:Lcom/adyen/threeds2/internal/d;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/adyen/threeds2/internal/d;
    .locals 5

    .line 47
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-static {}, Lcom/adyen/threeds2/internal/d;->a()Lcom/adyen/threeds2/internal/d;

    move-result-object p0

    return-object p0

    .line 50
    :cond_0
    invoke-static {}, Lcom/adyen/threeds2/internal/d;->values()[Lcom/adyen/threeds2/internal/d;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 51
    invoke-virtual {v3}, Lcom/adyen/threeds2/internal/d;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 56
    :cond_2
    sget-object p0, Lcom/adyen/threeds2/internal/e/a;->MESSAGE_VERSION:Lcom/adyen/threeds2/internal/e/a;

    invoke-virtual {p0}, Lcom/adyen/threeds2/internal/e/a;->a()Lcom/adyen/threeds2/exception/InvalidInputException;

    move-result-object p0

    throw p0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 79
    invoke-static {p1}, Lcom/adyen/threeds2/internal/l/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static b()[Lcom/adyen/threeds2/internal/d;
    .locals 1

    .line 43
    invoke-static {}, Lcom/adyen/threeds2/internal/d;->values()[Lcom/adyen/threeds2/internal/d;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adyen/threeds2/internal/d;
    .locals 1

    .line 30
    const-class v0, Lcom/adyen/threeds2/internal/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/adyen/threeds2/internal/d;

    return-object p0
.end method

.method public static values()[Lcom/adyen/threeds2/internal/d;
    .locals 1

    .line 30
    sget-object v0, Lcom/adyen/threeds2/internal/d;->$VALUES:[Lcom/adyen/threeds2/internal/d;

    invoke-virtual {v0}, [Lcom/adyen/threeds2/internal/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adyen/threeds2/internal/d;

    return-object v0
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/adyen/threeds2/internal/d;->mVersion:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/adyen/threeds2/internal/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/adyen/threeds2/internal/c/a;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/adyen/threeds2/internal/d;->mDataVersion:Lcom/adyen/threeds2/internal/c/a;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 75
    invoke-virtual {p0}, Lcom/adyen/threeds2/internal/d;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
