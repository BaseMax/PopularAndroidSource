.class public final Lcom/adyen/threeds2/internal/a/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adyen/threeds2/internal/a/i$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/adyen/threeds2/internal/a/f;

.field private final c:Ljava/util/Map;
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

.field private final d:[B


# direct methods
.method constructor <init>(Lcom/adyen/threeds2/internal/a/i$a;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iget-object v0, p1, Lcom/adyen/threeds2/internal/a/i$a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/adyen/threeds2/internal/a/i;->a:Ljava/lang/String;

    .line 42
    iget-object v0, p1, Lcom/adyen/threeds2/internal/a/i$a;->b:Lcom/adyen/threeds2/internal/a/f;

    iput-object v0, p0, Lcom/adyen/threeds2/internal/a/i;->b:Lcom/adyen/threeds2/internal/a/f;

    .line 43
    iget-object v0, p1, Lcom/adyen/threeds2/internal/a/i$a;->c:Ljava/util/Map;

    iput-object v0, p0, Lcom/adyen/threeds2/internal/a/i;->c:Ljava/util/Map;

    .line 44
    iget-object p1, p1, Lcom/adyen/threeds2/internal/a/i$a;->d:[B

    iput-object p1, p0, Lcom/adyen/threeds2/internal/a/i;->d:[B

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcom/adyen/threeds2/internal/a/f;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/i;->b:Lcom/adyen/threeds2/internal/a/f;

    return-object v0
.end method

.method public c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/i;->c:Ljava/util/Map;

    return-object v0
.end method

.method public d()[B
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/i;->d:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/i;->d:[B

    iget-object v1, p0, Lcom/adyen/threeds2/internal/a/i;->d:[B

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
