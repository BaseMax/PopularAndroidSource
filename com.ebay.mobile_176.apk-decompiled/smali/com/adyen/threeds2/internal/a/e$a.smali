.class public final enum Lcom/adyen/threeds2/internal/a/e$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adyen/threeds2/internal/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/adyen/threeds2/internal/a/e$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adyen/threeds2/internal/a/e$a;

.field public static final enum APPLICATION_JOSE:Lcom/adyen/threeds2/internal/a/e$a;

.field public static final enum APPLICATION_JSON:Lcom/adyen/threeds2/internal/a/e$a;


# instance fields
.field private final mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 126
    new-instance v0, Lcom/adyen/threeds2/internal/a/e$a;

    const/16 v1, 0x12

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x13

    invoke-static {v2}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/adyen/threeds2/internal/a/e$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adyen/threeds2/internal/a/e$a;->APPLICATION_JSON:Lcom/adyen/threeds2/internal/a/e$a;

    .line 127
    new-instance v0, Lcom/adyen/threeds2/internal/a/e$a;

    const/16 v1, 0x14

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x15

    invoke-static {v2}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/adyen/threeds2/internal/a/e$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adyen/threeds2/internal/a/e$a;->APPLICATION_JOSE:Lcom/adyen/threeds2/internal/a/e$a;

    const/4 v0, 0x2

    .line 125
    new-array v0, v0, [Lcom/adyen/threeds2/internal/a/e$a;

    sget-object v1, Lcom/adyen/threeds2/internal/a/e$a;->APPLICATION_JSON:Lcom/adyen/threeds2/internal/a/e$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adyen/threeds2/internal/a/e$a;->APPLICATION_JOSE:Lcom/adyen/threeds2/internal/a/e$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/adyen/threeds2/internal/a/e$a;->$VALUES:[Lcom/adyen/threeds2/internal/a/e$a;

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

    .line 142
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 143
    iput-object p3, p0, Lcom/adyen/threeds2/internal/a/e$a;->mValue:Ljava/lang/String;

    return-void
.end method

.method static a(Ljava/lang/String;)Lcom/adyen/threeds2/internal/a/e$a;
    .locals 5

    .line 133
    invoke-static {}, Lcom/adyen/threeds2/internal/a/e$a;->values()[Lcom/adyen/threeds2/internal/a/e$a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 134
    iget-object v4, v3, Lcom/adyen/threeds2/internal/a/e$a;->mValue:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adyen/threeds2/internal/a/e$a;
    .locals 1

    .line 125
    const-class v0, Lcom/adyen/threeds2/internal/a/e$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/adyen/threeds2/internal/a/e$a;

    return-object p0
.end method

.method public static values()[Lcom/adyen/threeds2/internal/a/e$a;
    .locals 1

    .line 125
    sget-object v0, Lcom/adyen/threeds2/internal/a/e$a;->$VALUES:[Lcom/adyen/threeds2/internal/a/e$a;

    invoke-virtual {v0}, [Lcom/adyen/threeds2/internal/a/e$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adyen/threeds2/internal/a/e$a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/nio/charset/Charset;)Lcom/adyen/threeds2/internal/a/e$b;
    .locals 1

    .line 156
    new-instance v0, Lcom/adyen/threeds2/internal/a/e$b;

    invoke-direct {v0, p0, p1}, Lcom/adyen/threeds2/internal/a/e$b;-><init>(Lcom/adyen/threeds2/internal/a/e$a;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/e$a;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/e$a;->mValue:Ljava/lang/String;

    return-object v0
.end method
