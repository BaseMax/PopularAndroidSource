.class final Lcom/google/android/gms/internal/mi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/ir;

.field private synthetic b:Lcom/google/android/gms/internal/mf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mf;Lcom/google/android/gms/internal/ir;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mi;->b:Lcom/google/android/gms/internal/mf;

    iput-object p2, p0, Lcom/google/android/gms/internal/mi;->a:Lcom/google/android/gms/internal/ir;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mi;->b:Lcom/google/android/gms/internal/mf;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/mi;->b:Lcom/google/android/gms/internal/mf;

    invoke-static {v1}, Lcom/google/android/gms/internal/mf;->a(Lcom/google/android/gms/internal/mf;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/mi;->b:Lcom/google/android/gms/internal/mf;

    iget-object v1, v1, Lcom/google/android/gms/internal/mf;->a:Lcom/google/android/gms/internal/lr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/lr;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/mi;->b:Lcom/google/android/gms/internal/mf;

    iget-object v1, v1, Lcom/google/android/gms/internal/mf;->a:Lcom/google/android/gms/internal/lr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/kv;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/iz;->zzazi()Lcom/google/android/gms/internal/jb;

    move-result-object v1

    const-string v2, "Connected to remote service"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/jb;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mi;->b:Lcom/google/android/gms/internal/mf;

    iget-object v1, v1, Lcom/google/android/gms/internal/mf;->a:Lcom/google/android/gms/internal/lr;

    iget-object v2, p0, Lcom/google/android/gms/internal/mi;->a:Lcom/google/android/gms/internal/ir;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/lr;->a(Lcom/google/android/gms/internal/ir;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
