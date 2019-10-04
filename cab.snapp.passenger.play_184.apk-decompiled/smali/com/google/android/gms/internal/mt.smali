.class final Lcom/google/android/gms/internal/mt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:J

.field private synthetic b:Lcom/google/android/gms/internal/mq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mq;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mt;->b:Lcom/google/android/gms/internal/mq;

    iput-wide p2, p0, Lcom/google/android/gms/internal/mt;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/mt;->b:Lcom/google/android/gms/internal/mq;

    iget-wide v1, p0, Lcom/google/android/gms/internal/mt;->a:J

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

    const-string v5, "Activity resumed, time"

    invoke-virtual {v3, v5, v4}, Lcom/google/android/gms/internal/jb;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    iput-wide v1, v0, Lcom/google/android/gms/internal/mq;->a:J

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzws()Lcom/google/android/gms/common/util/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/d;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzawz()Lcom/google/android/gms/internal/jj;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/jj;->zzjdf:Lcom/google/android/gms/internal/jl;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/jl;->get()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzawz()Lcom/google/android/gms/internal/jj;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/jj;->zzjdh:Lcom/google/android/gms/internal/jl;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/jl;->get()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v3

    if-lez v7, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzawz()Lcom/google/android/gms/internal/jj;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/jj;->zzjdg:Lcom/google/android/gms/internal/jk;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/jk;->set(Z)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzawz()Lcom/google/android/gms/internal/jj;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/jj;->zzjdi:Lcom/google/android/gms/internal/jl;

    invoke-virtual {v1, v5, v6}, Lcom/google/android/gms/internal/jl;->set(J)V

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzawz()Lcom/google/android/gms/internal/jj;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/jj;->zzjdg:Lcom/google/android/gms/internal/jk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/jk;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/mq;->b:Lcom/google/android/gms/internal/ih;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzawz()Lcom/google/android/gms/internal/jj;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/jj;->zzjde:Lcom/google/android/gms/internal/jl;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/jl;->get()J

    move-result-wide v2

    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzawz()Lcom/google/android/gms/internal/jj;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/jj;->zzjdi:Lcom/google/android/gms/internal/jl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jl;->get()J

    move-result-wide v7

    sub-long/2addr v2, v7

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ih;->zzs(J)V

    return-void

    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/internal/mq;->c:Lcom/google/android/gms/internal/ih;

    const-wide/32 v2, 0x36ee80

    goto :goto_0
.end method
