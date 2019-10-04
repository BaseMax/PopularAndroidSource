.class public final enum Lcom/adyen/threeds2/internal/a/f;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/adyen/threeds2/internal/a/f;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adyen/threeds2/internal/a/f;

.field public static final enum GET:Lcom/adyen/threeds2/internal/a/f;

.field public static final enum POST:Lcom/adyen/threeds2/internal/a/f;


# instance fields
.field private mDoOutput:Z

.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 26
    new-instance v0, Lcom/adyen/threeds2/internal/a/f;

    const/16 v1, 0x22

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x23

    invoke-static {v2}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/adyen/threeds2/internal/a/f;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/adyen/threeds2/internal/a/f;->GET:Lcom/adyen/threeds2/internal/a/f;

    .line 27
    new-instance v0, Lcom/adyen/threeds2/internal/a/f;

    const/16 v1, 0x24

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x25

    invoke-static {v2}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/adyen/threeds2/internal/a/f;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/adyen/threeds2/internal/a/f;->POST:Lcom/adyen/threeds2/internal/a/f;

    const/4 v0, 0x2

    .line 24
    new-array v0, v0, [Lcom/adyen/threeds2/internal/a/f;

    sget-object v1, Lcom/adyen/threeds2/internal/a/f;->GET:Lcom/adyen/threeds2/internal/a/f;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adyen/threeds2/internal/a/f;->POST:Lcom/adyen/threeds2/internal/a/f;

    aput-object v1, v0, v4

    sput-object v0, Lcom/adyen/threeds2/internal/a/f;->$VALUES:[Lcom/adyen/threeds2/internal/a/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput-object p3, p0, Lcom/adyen/threeds2/internal/a/f;->mValue:Ljava/lang/String;

    .line 43
    iput-boolean p4, p0, Lcom/adyen/threeds2/internal/a/f;->mDoOutput:Z

    return-void
.end method

.method public static a(Lcom/adyen/threeds2/internal/a/f;)Z
    .locals 1

    .line 34
    sget-object v0, Lcom/adyen/threeds2/internal/a/f;->GET:Lcom/adyen/threeds2/internal/a/f;

    invoke-virtual {p0, v0}, Lcom/adyen/threeds2/internal/a/f;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static b(Lcom/adyen/threeds2/internal/a/f;)Z
    .locals 1

    .line 38
    sget-object v0, Lcom/adyen/threeds2/internal/a/f;->POST:Lcom/adyen/threeds2/internal/a/f;

    invoke-virtual {p0, v0}, Lcom/adyen/threeds2/internal/a/f;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adyen/threeds2/internal/a/f;
    .locals 1

    .line 24
    const-class v0, Lcom/adyen/threeds2/internal/a/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/adyen/threeds2/internal/a/f;

    return-object p0
.end method

.method public static values()[Lcom/adyen/threeds2/internal/a/f;
    .locals 1

    .line 24
    sget-object v0, Lcom/adyen/threeds2/internal/a/f;->$VALUES:[Lcom/adyen/threeds2/internal/a/f;

    invoke-virtual {v0}, [Lcom/adyen/threeds2/internal/a/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adyen/threeds2/internal/a/f;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/f;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public b()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lcom/adyen/threeds2/internal/a/f;->mDoOutput:Z

    return v0
.end method
