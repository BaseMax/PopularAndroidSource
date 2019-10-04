.class public final Lcom/adyen/threeds2/internal/h/a/a/e;
.super Ljava/lang/Object;


# instance fields
.field private final a:[B

.field private final b:[B

.field private final c:[B


# direct methods
.method constructor <init>([B[B[B)V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 39
    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/adyen/threeds2/internal/h/a/a/e;->a:[B

    if-eqz p2, :cond_1

    .line 40
    array-length p1, p2

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    iput-object p1, p0, Lcom/adyen/threeds2/internal/h/a/a/e;->b:[B

    if-eqz p3, :cond_2

    .line 41
    array-length p1, p3

    invoke-static {p3, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    :cond_2
    iput-object v0, p0, Lcom/adyen/threeds2/internal/h/a/a/e;->c:[B

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/adyen/threeds2/internal/h/a/a/e;->b:[B

    iget-object v1, p0, Lcom/adyen/threeds2/internal/h/a/a/e;->b:[B

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public b()[B
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/adyen/threeds2/internal/h/a/a/e;->c:[B

    iget-object v1, p0, Lcom/adyen/threeds2/internal/h/a/a/e;->c:[B

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method
