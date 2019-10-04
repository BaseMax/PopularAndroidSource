.class public final enum Lcom/adyen/threeds2/internal/a/a/b/a/a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/adyen/threeds2/internal/a/a/b/a/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adyen/threeds2/internal/a/a/b/a/a;

.field public static final enum N:Lcom/adyen/threeds2/internal/a/a/b/a/a;

.field public static final enum Y:Lcom/adyen/threeds2/internal/a/a/b/a/a;


# instance fields
.field private final mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 28
    new-instance v0, Lcom/adyen/threeds2/internal/a/a/b/a/a;

    const/16 v1, 0xa4

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa5

    invoke-static {v2}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/adyen/threeds2/internal/a/a/b/a/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adyen/threeds2/internal/a/a/b/a/a;->Y:Lcom/adyen/threeds2/internal/a/a/b/a/a;

    new-instance v0, Lcom/adyen/threeds2/internal/a/a/b/a/a;

    const/16 v1, 0xa6

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa7

    invoke-static {v2}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/adyen/threeds2/internal/a/a/b/a/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adyen/threeds2/internal/a/a/b/a/a;->N:Lcom/adyen/threeds2/internal/a/a/b/a/a;

    const/4 v0, 0x2

    .line 26
    new-array v0, v0, [Lcom/adyen/threeds2/internal/a/a/b/a/a;

    sget-object v1, Lcom/adyen/threeds2/internal/a/a/b/a/a;->Y:Lcom/adyen/threeds2/internal/a/a/b/a/a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adyen/threeds2/internal/a/a/b/a/a;->N:Lcom/adyen/threeds2/internal/a/a/b/a/a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/adyen/threeds2/internal/a/a/b/a/a;->$VALUES:[Lcom/adyen/threeds2/internal/a/a/b/a/a;

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

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput-object p3, p0, Lcom/adyen/threeds2/internal/a/a/b/a/a;->mValue:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/adyen/threeds2/internal/a/a/b/a/a;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/internal/g/a;
        }
    .end annotation

    if-nez p0, :cond_0

    .line 34
    sget-object p0, Lcom/adyen/threeds2/internal/a/a/b/a/a;->N:Lcom/adyen/threeds2/internal/a/a/b/a/a;

    return-object p0

    .line 37
    :cond_0
    invoke-static {}, Lcom/adyen/threeds2/internal/a/a/b/a/a;->values()[Lcom/adyen/threeds2/internal/a/a/b/a/a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 38
    iget-object v4, v3, Lcom/adyen/threeds2/internal/a/a/b/a/a;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 43
    :cond_2
    new-instance p0, Lcom/adyen/threeds2/internal/g/a;

    const/16 v0, 0xa1

    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/adyen/threeds2/internal/a/a/b/a/c;->DATA_ELEMENT_INVALID_FORMAT:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    invoke-direct {p0, v0, v1}, Lcom/adyen/threeds2/internal/g/a;-><init>(Ljava/lang/String;Lcom/adyen/threeds2/internal/a/a/b/a/c;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adyen/threeds2/internal/a/a/b/a/a;
    .locals 1

    .line 26
    const-class v0, Lcom/adyen/threeds2/internal/a/a/b/a/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/adyen/threeds2/internal/a/a/b/a/a;

    return-object p0
.end method

.method public static values()[Lcom/adyen/threeds2/internal/a/a/b/a/a;
    .locals 1

    .line 26
    sget-object v0, Lcom/adyen/threeds2/internal/a/a/b/a/a;->$VALUES:[Lcom/adyen/threeds2/internal/a/a/b/a/a;

    invoke-virtual {v0}, [Lcom/adyen/threeds2/internal/a/a/b/a/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adyen/threeds2/internal/a/a/b/a/a;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 2

    const/16 v0, 0xa2

    .line 51
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adyen/threeds2/internal/a/a/b/a/a;->mValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 2

    const/16 v0, 0xa3

    .line 55
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adyen/threeds2/internal/a/a/b/a/a;->mValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
