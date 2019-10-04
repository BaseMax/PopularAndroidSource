.class final Lcom/koushikdutta/async/http/spdy/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_INITIAL_WINDOW_SIZE:I = 0x10000

.field public static final INITIAL_WINDOW_SIZE:I = 0x7


# instance fields
.field a:I

.field final b:[I

.field private c:I

.field private d:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 78
    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/m;->b:[I

    return-void
.end method


# virtual methods
.method final a()I
    .locals 2

    .line 140
    iget v0, p0, Lcom/koushikdutta/async/http/spdy/m;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/m;->b:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method final a(I)Z
    .locals 2

    const/4 v0, 0x1

    shl-int p1, v0, p1

    .line 110
    iget v1, p0, Lcom/koushikdutta/async/http/spdy/m;->a:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method final b(I)I
    .locals 4

    const/4 v0, 0x1

    shl-int p1, v0, p1

    .line 1210
    iget v1, p0, Lcom/koushikdutta/async/http/spdy/m;->d:I

    and-int/2addr v1, p1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 2204
    :goto_1
    iget v3, p0, Lcom/koushikdutta/async/http/spdy/m;->c:I

    and-int/2addr p1, v3

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_3

    or-int/lit8 v1, v1, 0x1

    :cond_3
    return v1
.end method

.method public final clear()V
    .locals 2

    const/4 v0, 0x0

    .line 81
    iput v0, p0, Lcom/koushikdutta/async/http/spdy/m;->d:I

    iput v0, p0, Lcom/koushikdutta/async/http/spdy/m;->c:I

    iput v0, p0, Lcom/koushikdutta/async/http/spdy/m;->a:I

    .line 82
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/m;->b:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method public final getInitialWindowSize(I)I
    .locals 1

    .line 182
    iget v0, p0, Lcom/koushikdutta/async/http/spdy/m;->a:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/m;->b:[I

    const/4 v0, 0x7

    aget p1, p1, v0

    :cond_0
    return p1
.end method

.method public final merge(Lcom/koushikdutta/async/http/spdy/m;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 219
    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/spdy/m;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/spdy/m;->b(I)I

    move-result v1

    .line 3115
    iget-object v2, p1, Lcom/koushikdutta/async/http/spdy/m;->b:[I

    aget v2, v2, v0

    .line 220
    invoke-virtual {p0, v0, v1, v2}, Lcom/koushikdutta/async/http/spdy/m;->set(III)Lcom/koushikdutta/async/http/spdy/m;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final set(III)Lcom/koushikdutta/async/http/spdy/m;
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/m;->b:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    .line 91
    iget v1, p0, Lcom/koushikdutta/async/http/spdy/m;->a:I

    or-int/2addr v1, v0

    iput v1, p0, Lcom/koushikdutta/async/http/spdy/m;->a:I

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_1

    .line 93
    iget v1, p0, Lcom/koushikdutta/async/http/spdy/m;->c:I

    or-int/2addr v1, v0

    iput v1, p0, Lcom/koushikdutta/async/http/spdy/m;->c:I

    goto :goto_0

    .line 95
    :cond_1
    iget v1, p0, Lcom/koushikdutta/async/http/spdy/m;->c:I

    xor-int/lit8 v2, v0, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/koushikdutta/async/http/spdy/m;->c:I

    :goto_0
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_2

    .line 98
    iget p2, p0, Lcom/koushikdutta/async/http/spdy/m;->d:I

    or-int/2addr p2, v0

    iput p2, p0, Lcom/koushikdutta/async/http/spdy/m;->d:I

    goto :goto_1

    .line 100
    :cond_2
    iget p2, p0, Lcom/koushikdutta/async/http/spdy/m;->d:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr p2, v0

    iput p2, p0, Lcom/koushikdutta/async/http/spdy/m;->d:I

    .line 103
    :goto_1
    iget-object p2, p0, Lcom/koushikdutta/async/http/spdy/m;->b:[I

    aput p3, p2, p1

    return-object p0
.end method
