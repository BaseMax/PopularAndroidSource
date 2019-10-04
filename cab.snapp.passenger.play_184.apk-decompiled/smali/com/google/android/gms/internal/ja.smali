.class final Lcom/google/android/gms/internal/ja;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/google/android/gms/internal/iz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/iz;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/iz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ja;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/iz;

    iget-object v0, v0, Lcom/google/android/gms/internal/iz;->e:Lcom/google/android/gms/internal/jx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jx;->zzawz()Lcom/google/android/gms/internal/jj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kw;->j()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/iz;

    const/4 v1, 0x6

    const-string v2, "Persisted config not initialized. Not logging error/warn"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/iz;->a(ILjava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/jj;->zzjcq:Lcom/google/android/gms/internal/jm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ja;->a:Ljava/lang/String;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/jm;->zzf(Ljava/lang/String;J)V

    return-void
.end method
