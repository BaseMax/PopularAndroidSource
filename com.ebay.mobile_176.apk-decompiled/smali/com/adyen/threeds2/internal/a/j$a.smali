.class public final Lcom/adyen/threeds2/internal/a/j$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adyen/threeds2/internal/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field d:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/adyen/threeds2/internal/a/j$a;
    .locals 0

    .line 79
    iput p1, p0, Lcom/adyen/threeds2/internal/a/j$a;->a:I

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/adyen/threeds2/internal/a/j$a;
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/adyen/threeds2/internal/a/j$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/Map;)Lcom/adyen/threeds2/internal/a/j$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/adyen/threeds2/internal/a/j$a;"
        }
    .end annotation

    .line 89
    iput-object p1, p0, Lcom/adyen/threeds2/internal/a/j$a;->c:Ljava/util/Map;

    return-object p0
.end method

.method public a([B)Lcom/adyen/threeds2/internal/a/j$a;
    .locals 1

    if-eqz p1, :cond_0

    .line 94
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/adyen/threeds2/internal/a/j$a;->d:[B

    return-object p0
.end method

.method public a()Lcom/adyen/threeds2/internal/a/j;
    .locals 1

    .line 99
    new-instance v0, Lcom/adyen/threeds2/internal/a/j;

    invoke-direct {v0, p0}, Lcom/adyen/threeds2/internal/a/j;-><init>(Lcom/adyen/threeds2/internal/a/j$a;)V

    return-object v0
.end method
