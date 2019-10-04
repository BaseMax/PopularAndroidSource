.class final Lcom/google/android/gms/internal/re;
.super Ljava/io/InputStream;


# instance fields
.field private a:Lcom/google/android/gms/internal/rd;

.field private b:Lcom/google/android/gms/internal/pa;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private synthetic g:Lcom/google/android/gms/internal/rb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/rb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/re;->g:Lcom/google/android/gms/internal/rb;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/re;->a()V

    return-void
.end method

.method private final a([BII)I
    .locals 4

    move v0, p2

    move p2, p3

    :goto_0
    if-lez p2, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/re;->b()V

    iget-object v1, p0, Lcom/google/android/gms/internal/re;->b:Lcom/google/android/gms/internal/pa;

    if-nez v1, :cond_0

    if-ne p2, p3, :cond_2

    const/4 p1, -0x1

    return p1

    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/re;->c:I

    iget v2, p0, Lcom/google/android/gms/internal/re;->d:I

    sub-int/2addr v1, v2

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/re;->b:Lcom/google/android/gms/internal/pa;

    iget v3, p0, Lcom/google/android/gms/internal/re;->d:I

    invoke-virtual {v2, p1, v3, v0, v1}, Lcom/google/android/gms/internal/ou;->zza([BIII)V

    add-int/2addr v0, v1

    :cond_1
    iget v2, p0, Lcom/google/android/gms/internal/re;->d:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/android/gms/internal/re;->d:I

    sub-int/2addr p2, v1

    goto :goto_0

    :cond_2
    sub-int/2addr p3, p2

    return p3
.end method

.method private final a()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/rd;

    iget-object v1, p0, Lcom/google/android/gms/internal/re;->g:Lcom/google/android/gms/internal/rb;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/rd;-><init>(Lcom/google/android/gms/internal/ou;B)V

    iput-object v0, p0, Lcom/google/android/gms/internal/re;->a:Lcom/google/android/gms/internal/rd;

    iget-object v0, p0, Lcom/google/android/gms/internal/re;->a:Lcom/google/android/gms/internal/rd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/rd;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/pa;

    iput-object v0, p0, Lcom/google/android/gms/internal/re;->b:Lcom/google/android/gms/internal/pa;

    iget-object v0, p0, Lcom/google/android/gms/internal/re;->b:Lcom/google/android/gms/internal/pa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ou;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/re;->c:I

    iput v2, p0, Lcom/google/android/gms/internal/re;->d:I

    iput v2, p0, Lcom/google/android/gms/internal/re;->e:I

    return-void
.end method

.method private final b()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/re;->b:Lcom/google/android/gms/internal/pa;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/re;->d:I

    iget v1, p0, Lcom/google/android/gms/internal/re;->c:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/re;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/re;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/re;->d:I

    iget-object v1, p0, Lcom/google/android/gms/internal/re;->a:Lcom/google/android/gms/internal/rd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/rd;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/re;->a:Lcom/google/android/gms/internal/rd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/rd;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/pa;

    iput-object v0, p0, Lcom/google/android/gms/internal/re;->b:Lcom/google/android/gms/internal/pa;

    iget-object v0, p0, Lcom/google/android/gms/internal/re;->b:Lcom/google/android/gms/internal/pa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ou;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/re;->c:I

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/re;->b:Lcom/google/android/gms/internal/pa;

    iput v0, p0, Lcom/google/android/gms/internal/re;->c:I

    :cond_1
    return-void
.end method


# virtual methods
.method public final available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/re;->e:I

    iget v1, p0, Lcom/google/android/gms/internal/re;->d:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/re;->g:Lcom/google/android/gms/internal/rb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ou;->size()I

    move-result v1

    sub-int/2addr v1, v0

    return v1
.end method

.method public final mark(I)V
    .locals 1

    iget p1, p0, Lcom/google/android/gms/internal/re;->e:I

    iget v0, p0, Lcom/google/android/gms/internal/re;->d:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/re;->f:I

    return-void
.end method

.method public final markSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/re;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/re;->b:Lcom/google/android/gms/internal/pa;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/re;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/re;->d:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ou;->zzkn(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final read([BII)I
    .locals 1

    if-eqz p1, :cond_1

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/re;->a([BII)I

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public final declared-synchronized reset()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/re;->a()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/re;->f:I

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/re;->a([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final skip(J)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    move-wide p1, v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    long-to-int p2, p1

    invoke-direct {p0, v0, v1, p2}, Lcom/google/android/gms/internal/re;->a([BII)I

    move-result p1

    int-to-long p1, p1

    return-wide p1

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
