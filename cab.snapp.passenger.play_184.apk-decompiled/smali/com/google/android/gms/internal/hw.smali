.class final Lcom/google/android/gms/internal/hw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:J

.field private synthetic c:Lcom/google/android/gms/internal/hu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/hu;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/hw;->c:Lcom/google/android/gms/internal/hu;

    iput-object p2, p0, Lcom/google/android/gms/internal/hw;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/hw;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/internal/hw;->c:Lcom/google/android/gms/internal/hu;

    iget-object v1, p0, Lcom/google/android/gms/internal/hw;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/internal/hw;->b:J

    .line 2000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzve()V

    invoke-static {v1}, Lcom/google/android/gms/common/internal/ap;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/internal/hu;->b:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzawq()Lcom/google/android/gms/internal/ln;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ln;->zzbao()Lcom/google/android/gms/internal/lq;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-nez v4, :cond_3

    iget-object v4, v0, Lcom/google/android/gms/internal/hu;->b:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v0, Lcom/google/android/gms/internal/hu;->a:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/iz;->zzazd()Lcom/google/android/gms/internal/jb;

    move-result-object v1

    const-string v4, "First ad unit exposure time was never set"

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/jb;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v6, v2, v6

    iget-object v4, v0, Lcom/google/android/gms/internal/hu;->a:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1, v6, v7, v5}, Lcom/google/android/gms/internal/hu;->a(Ljava/lang/String;JLcom/google/android/gms/measurement/AppMeasurement$g;)V

    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/hu;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v6, v0, Lcom/google/android/gms/internal/hu;->c:J

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iz;->zzazd()Lcom/google/android/gms/internal/jb;

    move-result-object v0

    const-string v1, "First ad exposure time was never set"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jb;->log(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-wide v6, v0, Lcom/google/android/gms/internal/hu;->c:J

    sub-long/2addr v2, v6

    invoke-virtual {v0, v2, v3, v5}, Lcom/google/android/gms/internal/hu;->a(JLcom/google/android/gms/measurement/AppMeasurement$g;)V

    iput-wide v8, v0, Lcom/google/android/gms/internal/hu;->c:J

    :cond_2
    return-void

    :cond_3
    iget-object v0, v0, Lcom/google/android/gms/internal/hu;->b:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iz;->zzazd()Lcom/google/android/gms/internal/jb;

    move-result-object v0

    const-string v2, "Call to endAdUnitExposure for unknown ad unit id"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/jb;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
