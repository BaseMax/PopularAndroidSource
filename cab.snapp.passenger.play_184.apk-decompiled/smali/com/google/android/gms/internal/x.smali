.class public abstract Lcom/google/android/gms/internal/x;
.super Lcom/google/android/gms/internal/w;


# instance fields
.field private a:Z


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/z;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/w;-><init>(Lcom/google/android/gms/internal/z;)V

    return-void
.end method


# virtual methods
.method protected final c()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/x;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final initialize()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/x;->zzvf()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/x;->a:Z

    return-void
.end method

.method public final isInitialized()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/x;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract zzvf()V
.end method
