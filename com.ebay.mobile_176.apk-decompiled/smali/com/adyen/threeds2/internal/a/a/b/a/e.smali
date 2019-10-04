.class public final enum Lcom/adyen/threeds2/internal/a/a/b/a/e;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/adyen/threeds2/internal/a/a/b/a/e;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adyen/threeds2/internal/a/a/b/a/e;

.field public static final enum N:Lcom/adyen/threeds2/internal/a/a/b/a/e;

.field public static final enum Y:Lcom/adyen/threeds2/internal/a/a/b/a/e;


# instance fields
.field private final mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 30
    new-instance v0, Lcom/adyen/threeds2/internal/a/a/b/a/e;

    const/16 v1, 0xfb

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xfc

    invoke-static {v2}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/adyen/threeds2/internal/a/a/b/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adyen/threeds2/internal/a/a/b/a/e;->Y:Lcom/adyen/threeds2/internal/a/a/b/a/e;

    new-instance v0, Lcom/adyen/threeds2/internal/a/a/b/a/e;

    const/16 v1, 0xfd

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xfe

    invoke-static {v2}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/adyen/threeds2/internal/a/a/b/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adyen/threeds2/internal/a/a/b/a/e;->N:Lcom/adyen/threeds2/internal/a/a/b/a/e;

    const/4 v0, 0x2

    .line 28
    new-array v0, v0, [Lcom/adyen/threeds2/internal/a/a/b/a/e;

    sget-object v1, Lcom/adyen/threeds2/internal/a/a/b/a/e;->Y:Lcom/adyen/threeds2/internal/a/a/b/a/e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adyen/threeds2/internal/a/a/b/a/e;->N:Lcom/adyen/threeds2/internal/a/a/b/a/e;

    aput-object v1, v0, v4

    sput-object v0, Lcom/adyen/threeds2/internal/a/a/b/a/e;->$VALUES:[Lcom/adyen/threeds2/internal/a/a/b/a/e;

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

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50
    iput-object p3, p0, Lcom/adyen/threeds2/internal/a/a/b/a/e;->mValue:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/adyen/threeds2/internal/a/a/b/a/e;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/internal/g/a;
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 35
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 39
    :cond_0
    invoke-static {}, Lcom/adyen/threeds2/internal/a/a/b/a/e;->values()[Lcom/adyen/threeds2/internal/a/a/b/a/e;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 40
    iget-object v5, v4, Lcom/adyen/threeds2/internal/a/a/b/a/e;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 45
    :cond_2
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/16 v1, 0xfa

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 46
    new-instance v0, Lcom/adyen/threeds2/internal/g/a;

    sget-object v1, Lcom/adyen/threeds2/internal/a/a/b/a/c;->DATA_ELEMENT_INVALID_FORMAT:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    invoke-direct {v0, p0, v1}, Lcom/adyen/threeds2/internal/g/a;-><init>(Ljava/lang/String;Lcom/adyen/threeds2/internal/a/a/b/a/c;)V

    throw v0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adyen/threeds2/internal/a/a/b/a/e;
    .locals 1

    .line 28
    const-class v0, Lcom/adyen/threeds2/internal/a/a/b/a/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/adyen/threeds2/internal/a/a/b/a/e;

    return-object p0
.end method

.method public static values()[Lcom/adyen/threeds2/internal/a/a/b/a/e;
    .locals 1

    .line 28
    sget-object v0, Lcom/adyen/threeds2/internal/a/a/b/a/e;->$VALUES:[Lcom/adyen/threeds2/internal/a/a/b/a/e;

    invoke-virtual {v0}, [Lcom/adyen/threeds2/internal/a/a/b/a/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adyen/threeds2/internal/a/a/b/a/e;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/a/e;->mValue:Ljava/lang/String;

    return-object v0
.end method
