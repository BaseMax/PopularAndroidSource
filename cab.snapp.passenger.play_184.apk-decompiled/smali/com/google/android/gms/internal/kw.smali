.class abstract Lcom/google/android/gms/internal/kw;
.super Lcom/google/android/gms/internal/kv;


# instance fields
.field private a:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/jx;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/kv;-><init>(Lcom/google/android/gms/internal/jx;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/kw;->e:Lcom/google/android/gms/internal/jx;

    .line 1000
    iget v0, p1, Lcom/google/android/gms/internal/jx;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/google/android/gms/internal/jx;->c:I

    return-void
.end method


# virtual methods
.method protected abstract a()Z
.end method

.method protected a_()V
    .locals 0

    return-void
.end method

.method public final initialize()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/kw;->a:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/kw;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/kw;->e:Lcom/google/android/gms/internal/jx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jx;->e()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/kw;->a:Z

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t initialize twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/kw;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final k()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/kw;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzazw()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/kw;->a:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/kw;->a_()V

    iget-object v0, p0, Lcom/google/android/gms/internal/kw;->e:Lcom/google/android/gms/internal/jx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jx;->e()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/kw;->a:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t initialize twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
