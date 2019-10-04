.class public final Lc/e/a/b/g/f/La;
.super Lc/e/a/b/g/f/Na;


# instance fields
.field public a:I

.field public final b:I

.field public final synthetic c:Lcom/google/android/gms/internal/measurement/zzdp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzdp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/g/f/La;->c:Lcom/google/android/gms/internal/measurement/zzdp;

    invoke-direct {p0}, Lc/e/a/b/g/f/Na;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lc/e/a/b/g/f/La;->a:I

    .line 3
    iget-object p1, p0, Lc/e/a/b/g/f/La;->c:Lcom/google/android/gms/internal/measurement/zzdp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzdp;->size()I

    move-result p1

    iput p1, p0, Lc/e/a/b/g/f/La;->b:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, Lc/e/a/b/g/f/La;->a:I

    iget v1, p0, Lc/e/a/b/g/f/La;->b:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final nextByte()B
    .locals 2

    .line 1
    iget v0, p0, Lc/e/a/b/g/f/La;->a:I

    .line 2
    iget v1, p0, Lc/e/a/b/g/f/La;->b:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 3
    iput v1, p0, Lc/e/a/b/g/f/La;->a:I

    .line 4
    iget-object v1, p0, Lc/e/a/b/g/f/La;->c:Lcom/google/android/gms/internal/measurement/zzdp;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzdp;->e(I)B

    move-result v0

    return v0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
