.class final Lcom/google/android/gms/internal/mu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:J

.field private synthetic b:Lcom/google/android/gms/internal/mq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mq;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mu;->b:Lcom/google/android/gms/internal/mq;

    iput-wide p2, p0, Lcom/google/android/gms/internal/mu;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/mu;->b:Lcom/google/android/gms/internal/mq;

    iget-wide v1, p0, Lcom/google/android/gms/internal/mu;->a:J

    .line 2000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzve()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mq;->c()V

    iget-object v3, v0, Lcom/google/android/gms/internal/mq;->b:Lcom/google/android/gms/internal/ih;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ih;->cancel()V

    iget-object v3, v0, Lcom/google/android/gms/internal/mq;->c:Lcom/google/android/gms/internal/ih;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ih;->cancel()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/iz;->zzazj()Lcom/google/android/gms/internal/jb;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "Activity paused, time"

    invoke-virtual {v3, v5, v4}, Lcom/google/android/gms/internal/jb;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    iget-wide v3, v0, Lcom/google/android/gms/internal/mq;->a:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzawz()Lcom/google/android/gms/internal/jj;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/jj;->zzjdi:Lcom/google/android/gms/internal/jl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzawz()Lcom/google/android/gms/internal/jj;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/internal/jj;->zzjdi:Lcom/google/android/gms/internal/jl;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/jl;->get()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/google/android/gms/internal/mq;->a:J

    sub-long/2addr v1, v6

    add-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/jl;->set(J)V

    :cond_0
    return-void
.end method
