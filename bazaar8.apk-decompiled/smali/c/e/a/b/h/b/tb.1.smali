.class public final Lc/e/a/b/h/b/tb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/google/android/gms/measurement/internal/zzm;

.field public final synthetic f:Lc/e/a/b/h/b/gb;


# direct methods
.method public constructor <init>(Lc/e/a/b/h/b/gb;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/h/b/tb;->f:Lc/e/a/b/h/b/gb;

    iput-object p2, p0, Lc/e/a/b/h/b/tb;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lc/e/a/b/h/b/tb;->b:Ljava/lang/String;

    iput-object p4, p0, Lc/e/a/b/h/b/tb;->c:Ljava/lang/String;

    iput-object p5, p0, Lc/e/a/b/h/b/tb;->d:Ljava/lang/String;

    iput-object p6, p0, Lc/e/a/b/h/b/tb;->e:Lcom/google/android/gms/measurement/internal/zzm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/tb;->a:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lc/e/a/b/h/b/tb;->f:Lc/e/a/b/h/b/gb;

    invoke-static {v1}, Lc/e/a/b/h/b/gb;->d(Lc/e/a/b/h/b/gb;)Lc/e/a/b/h/b/l;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lc/e/a/b/h/b/tb;->f:Lc/e/a/b/h/b/gb;

    invoke-virtual {v1}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v1

    const-string v2, "Failed to get conditional properties"

    iget-object v3, p0, Lc/e/a/b/h/b/tb;->b:Ljava/lang/String;

    .line 5
    invoke-static {v3}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lc/e/a/b/h/b/tb;->c:Ljava/lang/String;

    iget-object v5, p0, Lc/e/a/b/h/b/tb;->d:Ljava/lang/String;

    .line 6
    invoke-virtual {v1, v2, v3, v4, v5}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    iget-object v1, p0, Lc/e/a/b/h/b/tb;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :try_start_1
    iget-object v1, p0, Lc/e/a/b/h/b/tb;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    .line 9
    :cond_0
    :try_start_2
    iget-object v2, p0, Lc/e/a/b/h/b/tb;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10
    iget-object v2, p0, Lc/e/a/b/h/b/tb;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Lc/e/a/b/h/b/tb;->c:Ljava/lang/String;

    iget-object v4, p0, Lc/e/a/b/h/b/tb;->d:Ljava/lang/String;

    iget-object v5, p0, Lc/e/a/b/h/b/tb;->e:Lcom/google/android/gms/measurement/internal/zzm;

    .line 11
    invoke-interface {v1, v3, v4, v5}, Lc/e/a/b/h/b/l;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzm;)Ljava/util/List;

    move-result-object v1

    .line 12
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 13
    :cond_1
    iget-object v2, p0, Lc/e/a/b/h/b/tb;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Lc/e/a/b/h/b/tb;->b:Ljava/lang/String;

    iget-object v4, p0, Lc/e/a/b/h/b/tb;->c:Ljava/lang/String;

    iget-object v5, p0, Lc/e/a/b/h/b/tb;->d:Ljava/lang/String;

    .line 14
    invoke-interface {v1, v3, v4, v5}, Lc/e/a/b/h/b/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 15
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 16
    :goto_0
    iget-object v1, p0, Lc/e/a/b/h/b/tb;->f:Lc/e/a/b/h/b/gb;

    invoke-static {v1}, Lc/e/a/b/h/b/gb;->e(Lc/e/a/b/h/b/gb;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    :try_start_3
    iget-object v1, p0, Lc/e/a/b/h/b/tb;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 18
    :try_start_4
    iget-object v2, p0, Lc/e/a/b/h/b/tb;->f:Lc/e/a/b/h/b/gb;

    invoke-virtual {v2}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v2

    .line 19
    invoke-virtual {v2}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v2

    const-string v3, "Failed to get conditional properties"

    iget-object v4, p0, Lc/e/a/b/h/b/tb;->b:Ljava/lang/String;

    .line 20
    invoke-static {v4}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lc/e/a/b/h/b/tb;->c:Ljava/lang/String;

    .line 21
    invoke-virtual {v2, v3, v4, v5, v1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 22
    iget-object v1, p0, Lc/e/a/b/h/b/tb;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 23
    :try_start_5
    iget-object v1, p0, Lc/e/a/b/h/b/tb;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 24
    :goto_1
    monitor-exit v0

    return-void

    .line 25
    :goto_2
    iget-object v2, p0, Lc/e/a/b/h/b/tb;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    throw v1

    :catchall_1
    move-exception v1

    .line 26
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1
.end method
