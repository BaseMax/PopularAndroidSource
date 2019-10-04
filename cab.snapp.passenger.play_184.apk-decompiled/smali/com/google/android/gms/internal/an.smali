.class final Lcom/google/android/gms/internal/an;
.super Lcom/google/android/gms/internal/az;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/al;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/al;Lcom/google/android/gms/internal/z;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/an;->a:Lcom/google/android/gms/internal/al;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/az;-><init>(Lcom/google/android/gms/internal/z;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/an;->a:Lcom/google/android/gms/internal/al;

    .line 2000
    :try_start_0
    iget-object v1, v0, Lcom/google/android/gms/internal/al;->a:Lcom/google/android/gms/internal/ai;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ai;->zzxu()I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/al;->zzyf()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Failed to delete stale hits"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/w;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    iget-object v0, v0, Lcom/google/android/gms/internal/al;->b:Lcom/google/android/gms/internal/az;

    const-wide/32 v1, 0x5265c00

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/az;->zzs(J)V

    return-void
.end method
