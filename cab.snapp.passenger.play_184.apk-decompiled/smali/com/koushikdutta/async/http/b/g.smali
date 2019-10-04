.class final enum Lcom/koushikdutta/async/http/b/g;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/koushikdutta/async/http/b/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CACHE:Lcom/koushikdutta/async/http/b/g;

.field public static final enum CONDITIONAL_CACHE:Lcom/koushikdutta/async/http/b/g;

.field public static final enum NETWORK:Lcom/koushikdutta/async/http/b/g;

.field private static final synthetic a:[Lcom/koushikdutta/async/http/b/g;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 24
    new-instance v0, Lcom/koushikdutta/async/http/b/g;

    const/4 v1, 0x0

    const-string v2, "CACHE"

    invoke-direct {v0, v2, v1}, Lcom/koushikdutta/async/http/b/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/koushikdutta/async/http/b/g;->CACHE:Lcom/koushikdutta/async/http/b/g;

    .line 30
    new-instance v0, Lcom/koushikdutta/async/http/b/g;

    const/4 v2, 0x1

    const-string v3, "CONDITIONAL_CACHE"

    invoke-direct {v0, v3, v2}, Lcom/koushikdutta/async/http/b/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/koushikdutta/async/http/b/g;->CONDITIONAL_CACHE:Lcom/koushikdutta/async/http/b/g;

    .line 35
    new-instance v0, Lcom/koushikdutta/async/http/b/g;

    const/4 v3, 0x2

    const-string v4, "NETWORK"

    invoke-direct {v0, v4, v3}, Lcom/koushikdutta/async/http/b/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/koushikdutta/async/http/b/g;->NETWORK:Lcom/koushikdutta/async/http/b/g;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/koushikdutta/async/http/b/g;

    .line 19
    sget-object v4, Lcom/koushikdutta/async/http/b/g;->CACHE:Lcom/koushikdutta/async/http/b/g;

    aput-object v4, v0, v1

    sget-object v1, Lcom/koushikdutta/async/http/b/g;->CONDITIONAL_CACHE:Lcom/koushikdutta/async/http/b/g;

    aput-object v1, v0, v2

    sget-object v1, Lcom/koushikdutta/async/http/b/g;->NETWORK:Lcom/koushikdutta/async/http/b/g;

    aput-object v1, v0, v3

    sput-object v0, Lcom/koushikdutta/async/http/b/g;->a:[Lcom/koushikdutta/async/http/b/g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/koushikdutta/async/http/b/g;
    .locals 1

    .line 19
    const-class v0, Lcom/koushikdutta/async/http/b/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/koushikdutta/async/http/b/g;

    return-object p0
.end method

.method public static values()[Lcom/koushikdutta/async/http/b/g;
    .locals 1

    .line 19
    sget-object v0, Lcom/koushikdutta/async/http/b/g;->a:[Lcom/koushikdutta/async/http/b/g;

    invoke-virtual {v0}, [Lcom/koushikdutta/async/http/b/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/koushikdutta/async/http/b/g;

    return-object v0
.end method


# virtual methods
.method public final requiresConnection()Z
    .locals 1

    .line 38
    sget-object v0, Lcom/koushikdutta/async/http/b/g;->CONDITIONAL_CACHE:Lcom/koushikdutta/async/http/b/g;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/koushikdutta/async/http/b/g;->NETWORK:Lcom/koushikdutta/async/http/b/g;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
