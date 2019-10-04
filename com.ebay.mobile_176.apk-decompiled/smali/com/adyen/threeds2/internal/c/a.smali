.class public final enum Lcom/adyen/threeds2/internal/c/a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/adyen/threeds2/internal/c/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adyen/threeds2/internal/c/a;

.field public static final enum V1_1:Lcom/adyen/threeds2/internal/c/a;


# instance fields
.field private final mActive:Z

.field private final mVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 29
    new-instance v0, Lcom/adyen/threeds2/internal/c/a;

    const/16 v1, 0x106

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x107

    invoke-static {v2}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/adyen/threeds2/internal/c/a;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/adyen/threeds2/internal/c/a;->V1_1:Lcom/adyen/threeds2/internal/c/a;

    .line 27
    new-array v0, v3, [Lcom/adyen/threeds2/internal/c/a;

    sget-object v1, Lcom/adyen/threeds2/internal/c/a;->V1_1:Lcom/adyen/threeds2/internal/c/a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/adyen/threeds2/internal/c/a;->$VALUES:[Lcom/adyen/threeds2/internal/c/a;

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

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput-object p3, p0, Lcom/adyen/threeds2/internal/c/a;->mVersion:Ljava/lang/String;

    .line 49
    iput-boolean p4, p0, Lcom/adyen/threeds2/internal/c/a;->mActive:Z

    return-void
.end method

.method public static a()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/adyen/threeds2/internal/c/a;",
            ">;"
        }
    .end annotation

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    invoke-static {}, Lcom/adyen/threeds2/internal/c/a;->values()[Lcom/adyen/threeds2/internal/c/a;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 39
    invoke-virtual {v4}, Lcom/adyen/threeds2/internal/c/a;->c()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 40
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adyen/threeds2/internal/c/a;
    .locals 1

    .line 27
    const-class v0, Lcom/adyen/threeds2/internal/c/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/adyen/threeds2/internal/c/a;

    return-object p0
.end method

.method public static values()[Lcom/adyen/threeds2/internal/c/a;
    .locals 1

    .line 27
    sget-object v0, Lcom/adyen/threeds2/internal/c/a;->$VALUES:[Lcom/adyen/threeds2/internal/c/a;

    invoke-virtual {v0}, [Lcom/adyen/threeds2/internal/c/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adyen/threeds2/internal/c/a;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/adyen/threeds2/internal/c/a;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcom/adyen/threeds2/internal/c/a;->mActive:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/adyen/threeds2/internal/c/a;->mVersion:Ljava/lang/String;

    return-object v0
.end method
