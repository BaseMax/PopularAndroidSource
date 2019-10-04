.class public final Lcom/google/android/gms/internal/bb;
.super Lcom/google/android/gms/internal/x;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/z;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/x;-><init>(Lcom/google/android/gms/internal/z;)V

    return-void
.end method


# virtual methods
.method protected final zzvf()V
    .locals 0

    return-void
.end method

.method public final zzzc()Lcom/google/android/gms/internal/f;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/x;->c()V

    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/internal/w;->zzdta:Lcom/google/android/gms/internal/z;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/z;->zzwv()Lcom/google/android/gms/analytics/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/r;->zzvd()Lcom/google/android/gms/internal/f;

    move-result-object v0

    return-object v0
.end method

.method public final zzzd()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/x;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bb;->zzzc()Lcom/google/android/gms/internal/f;

    move-result-object v0

    iget v1, v0, Lcom/google/android/gms/internal/f;->zzchl:I

    iget v0, v0, Lcom/google/android/gms/internal/f;->zzchm:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x17

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
