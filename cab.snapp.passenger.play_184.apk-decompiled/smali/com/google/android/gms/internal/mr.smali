.class final Lcom/google/android/gms/internal/mr;
.super Lcom/google/android/gms/internal/ih;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/mq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mq;Lcom/google/android/gms/internal/jx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mr;->a:Lcom/google/android/gms/internal/mq;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ih;-><init>(Lcom/google/android/gms/internal/jx;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/mr;->a:Lcom/google/android/gms/internal/mq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzve()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzws()Lcom/google/android/gms/common/util/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/d;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/iz;->zzazj()Lcom/google/android/gms/internal/jb;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Session started, time"

    invoke-virtual {v3, v2, v1}, Lcom/google/android/gms/internal/jb;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzawz()Lcom/google/android/gms/internal/jj;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/jj;->zzjdg:Lcom/google/android/gms/internal/jk;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/jk;->set(Z)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzawm()Lcom/google/android/gms/internal/ky;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "auto"

    const-string v4, "_s"

    invoke-virtual {v1, v3, v4, v2}, Lcom/google/android/gms/internal/ky;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzawz()Lcom/google/android/gms/internal/jj;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/jj;->zzjdh:Lcom/google/android/gms/internal/jl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzws()Lcom/google/android/gms/common/util/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/jl;->set(J)V

    return-void
.end method
