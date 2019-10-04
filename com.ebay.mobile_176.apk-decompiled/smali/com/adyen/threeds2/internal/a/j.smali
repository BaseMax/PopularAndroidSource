.class public final Lcom/adyen/threeds2/internal/a/j;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adyen/threeds2/internal/a/j$a;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

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
.method constructor <init>(Lcom/adyen/threeds2/internal/a/j$a;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iget v0, p1, Lcom/adyen/threeds2/internal/a/j$a;->a:I

    iput v0, p0, Lcom/adyen/threeds2/internal/a/j;->a:I

    .line 41
    iget-object v0, p1, Lcom/adyen/threeds2/internal/a/j$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/adyen/threeds2/internal/a/j;->b:Ljava/lang/String;

    .line 42
    iget-object v0, p1, Lcom/adyen/threeds2/internal/a/j$a;->c:Ljava/util/Map;

    iput-object v0, p0, Lcom/adyen/threeds2/internal/a/j;->c:Ljava/util/Map;

    .line 43
    iget-object p1, p1, Lcom/adyen/threeds2/internal/a/j$a;->d:[B

    iput-object p1, p0, Lcom/adyen/threeds2/internal/a/j;->d:[B

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
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

    .line 59
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/j;->c:Ljava/util/Map;

    return-object v0
.end method

.method public b()[B
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/j;->d:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/j;->d:[B

    iget-object v1, p0, Lcom/adyen/threeds2/internal/a/j;->d:[B

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
