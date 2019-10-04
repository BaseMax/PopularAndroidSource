.class final Lcom/google/android/gms/internal/lj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/ky;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ky;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/lj;->a:Lcom/google/android/gms/internal/ky;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/lj;->a:Lcom/google/android/gms/internal/ky;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzawz()Lcom/google/android/gms/internal/jj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jj;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/lj;->a:Lcom/google/android/gms/internal/ky;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzawm()Lcom/google/android/gms/internal/ky;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzawx()Lcom/google/android/gms/internal/js;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/js;->zzazs()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iz;->zzazd()Lcom/google/android/gms/internal/jb;

    move-result-object v0

    const-string v1, "Cannot retrieve app instance id from analytics worker thread"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jb;->log(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzawx()Lcom/google/android/gms/internal/js;

    invoke-static {}, Lcom/google/android/gms/internal/js;->zzau()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iz;->zzazd()Lcom/google/android/gms/internal/jb;

    move-result-object v0

    const-string v1, "Cannot retrieve app instance id from main thread"

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzws()Lcom/google/android/gms/common/util/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/d;->elapsedRealtime()J

    move-result-wide v1

    const-wide/32 v3, 0x1d4c0

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ky;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzws()Lcom/google/android/gms/common/util/d;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/common/util/d;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v1

    if-nez v5, :cond_3

    cmp-long v1, v6, v3

    if-gez v1, :cond_3

    sub-long/2addr v3, v6

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ky;->a(J)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    :cond_3
    move-object v2, v5

    :goto_1
    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/lj;->a:Lcom/google/android/gms/internal/ky;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzawz()Lcom/google/android/gms/internal/jj;

    move-result-object v0

    .line 1000
    iget-object v1, v0, Lcom/google/android/gms/internal/jj;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object v2, v0, Lcom/google/android/gms/internal/jj;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzws()Lcom/google/android/gms/common/util/d;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/d;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/google/android/gms/internal/jj;->c:J

    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 0
    :cond_4
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method
