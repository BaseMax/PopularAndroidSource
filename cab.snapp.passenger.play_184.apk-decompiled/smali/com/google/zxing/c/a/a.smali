.class public abstract Lcom/google/zxing/c/a/a;
.super Lcom/google/zxing/c/k;
.source "SourceFile"


# instance fields
.field protected final a:[I

.field protected final b:[I

.field protected final c:[F

.field protected final d:[F

.field protected final e:[I

.field protected final f:[I


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Lcom/google/zxing/c/k;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 43
    iput-object v1, p0, Lcom/google/zxing/c/a/a;->a:[I

    const/16 v1, 0x8

    new-array v1, v1, [I

    .line 44
    iput-object v1, p0, Lcom/google/zxing/c/a/a;->b:[I

    new-array v1, v0, [F

    .line 45
    iput-object v1, p0, Lcom/google/zxing/c/a/a;->c:[F

    new-array v0, v0, [F

    .line 46
    iput-object v0, p0, Lcom/google/zxing/c/a/a;->d:[F

    .line 47
    iget-object v0, p0, Lcom/google/zxing/c/a/a;->b:[I

    array-length v1, v0

    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/google/zxing/c/a/a;->e:[I

    .line 48
    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/c/a/a;->f:[I

    return-void
.end method

.method protected static a([I[[I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;
        }
    .end annotation

    const/4 v0, 0x0

    .line 77
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 78
    aget-object v1, p1, v0

    const v2, 0x3ee66666    # 0.45f

    invoke-static {p0, v1, v2}, Lcom/google/zxing/c/a/a;->patternMatchVariance([I[IF)F

    move-result v1

    const v2, 0x3e4ccccd    # 0.2f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_1
    invoke-static {}, Lcom/google/zxing/h;->getNotFoundInstance()Lcom/google/zxing/h;

    move-result-object p0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method protected static a([I[F)V
    .locals 5

    const/4 v0, 0x0

    .line 98
    aget v1, p1, v0

    const/4 v2, 0x1

    move v3, v1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 99
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_1

    .line 100
    aget v4, p1, v0

    cmpl-float v4, v4, v3

    if-lez v4, :cond_0

    .line 101
    aget v1, p1, v0

    move v3, v1

    move v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_1
    aget p1, p0, v1

    add-int/2addr p1, v2

    aput p1, p0, v1

    return-void
.end method

.method protected static a([I)Z
    .locals 7

    const/4 v0, 0x0

    .line 121
    aget v1, p0, v0

    const/4 v2, 0x1

    aget v3, p0, v2

    add-int/2addr v1, v3

    const/4 v3, 0x2

    .line 122
    aget v3, p0, v3

    add-int/2addr v3, v1

    const/4 v4, 0x3

    aget v4, p0, v4

    add-int/2addr v3, v4

    int-to-float v1, v1

    int-to-float v3, v3

    div-float/2addr v1, v3

    const v3, 0x3f4aaaab

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_3

    const v3, 0x3f649249

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_3

    const v1, 0x7fffffff

    const/high16 v3, -0x80000000

    .line 128
    array-length v4, p0

    const/4 v1, 0x0

    const v5, 0x7fffffff

    :goto_0
    if-ge v1, v4, :cond_2

    aget v6, p0, v1

    if-le v6, v3, :cond_0

    move v3, v6

    :cond_0
    if-ge v6, v5, :cond_1

    move v5, v6

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    mul-int/lit8 v5, v5, 0xa

    if-ge v3, v5, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method protected static b([I[F)V
    .locals 5

    const/4 v0, 0x0

    .line 110
    aget v1, p1, v0

    const/4 v2, 0x1

    move v3, v1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 111
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_1

    .line 112
    aget v4, p1, v0

    cmpg-float v4, v4, v3

    if-gez v4, :cond_0

    .line 113
    aget v1, p1, v0

    move v3, v1

    move v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    :cond_1
    aget p1, p0, v1

    sub-int/2addr p1, v2

    aput p1, p0, v1

    return-void
.end method
