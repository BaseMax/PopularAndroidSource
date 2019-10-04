.class public final Lcom/koushikdutta/async/e/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:I

.field b:I

.field c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/koushikdutta/async/e/a;->b:I

    const/16 v0, 0x1000

    .line 13
    iput v0, p0, Lcom/koushikdutta/async/e/a;->c:I

    .line 20
    sget v0, Lcom/koushikdutta/async/l;->MAX_ITEM_SIZE:I

    iput v0, p0, Lcom/koushikdutta/async/e/a;->a:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/koushikdutta/async/e/a;->b:I

    const/16 v0, 0x1000

    .line 13
    iput v0, p0, Lcom/koushikdutta/async/e/a;->c:I

    .line 16
    iput p1, p0, Lcom/koushikdutta/async/e/a;->a:I

    return-void
.end method


# virtual methods
.method public final allocate()Ljava/nio/ByteBuffer;
    .locals 1

    .line 24
    iget v0, p0, Lcom/koushikdutta/async/e/a;->b:I

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/e/a;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final allocate(I)Ljava/nio/ByteBuffer;
    .locals 1

    .line 28
    iget v0, p0, Lcom/koushikdutta/async/e/a;->c:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Lcom/koushikdutta/async/e/a;->a:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1}, Lcom/koushikdutta/async/l;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public final getMaxAlloc()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/koushikdutta/async/e/a;->a:I

    return v0
.end method

.method public final getMinAlloc()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/koushikdutta/async/e/a;->c:I

    return v0
.end method

.method public final setCurrentAlloc(I)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/koushikdutta/async/e/a;->b:I

    return-void
.end method

.method public final setMinAlloc(I)Lcom/koushikdutta/async/e/a;
    .locals 0

    .line 48
    iput p1, p0, Lcom/koushikdutta/async/e/a;->c:I

    return-object p0
.end method

.method public final track(J)V
    .locals 0

    long-to-int p2, p1

    mul-int/lit8 p2, p2, 0x2

    .line 32
    iput p2, p0, Lcom/koushikdutta/async/e/a;->b:I

    return-void
.end method
