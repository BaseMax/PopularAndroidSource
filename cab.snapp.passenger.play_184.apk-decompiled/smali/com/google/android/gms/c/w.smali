.class final Lcom/google/android/gms/c/w;
.super Lcom/google/android/gms/c/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/c/w$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/c/f<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Lcom/google/android/gms/c/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/c/u<",
            "TTResult;>;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTResult;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/Exception;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/c/f;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/c/w;->a:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/c/u;

    invoke-direct {v0}, Lcom/google/android/gms/c/u;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/c/w;->b:Lcom/google/android/gms/c/u;

    return-void
.end method

.method private final a()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/c/w;->c:Z

    const-string v1, "Task is not yet complete"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/ap;->zza(ZLjava/lang/Object;)V

    return-void
.end method

.method private final b()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/c/w;->c:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Task is already complete"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/ap;->zza(ZLjava/lang/Object;)V

    return-void
.end method

.method private final c()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/c/w;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/c/w;->c:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/c/w;->b:Lcom/google/android/gms/c/u;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/c/u;->zzb(Lcom/google/android/gms/c/f;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public final addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/c/b;)Lcom/google/android/gms/c/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/c/b<",
            "TTResult;>;)",
            "Lcom/google/android/gms/c/f<",
            "TTResult;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/c/n;

    sget-object v1, Lcom/google/android/gms/c/h;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/c/n;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/c/b;)V

    iget-object p2, p0, Lcom/google/android/gms/c/w;->b:Lcom/google/android/gms/c/u;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/c/u;->zza(Lcom/google/android/gms/c/t;)V

    invoke-static {p1}, Lcom/google/android/gms/c/w$a;->zzr(Landroid/app/Activity;)Lcom/google/android/gms/c/w$a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/c/w$a;->zzb(Lcom/google/android/gms/c/t;)V

    invoke-direct {p0}, Lcom/google/android/gms/c/w;->c()V

    return-object p0
.end method

.method public final addOnCompleteListener(Lcom/google/android/gms/c/b;)Lcom/google/android/gms/c/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/c/b<",
            "TTResult;>;)",
            "Lcom/google/android/gms/c/f<",
            "TTResult;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/c/h;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/c/f;->addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/c/b;)Lcom/google/android/gms/c/f;

    move-result-object p1

    return-object p1
.end method

.method public final addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/c/b;)Lcom/google/android/gms/c/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/c/b<",
            "TTResult;>;)",
            "Lcom/google/android/gms/c/f<",
            "TTResult;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/c/w;->b:Lcom/google/android/gms/c/u;

    new-instance v1, Lcom/google/android/gms/c/n;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/c/n;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/c/b;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/c/u;->zza(Lcom/google/android/gms/c/t;)V

    invoke-direct {p0}, Lcom/google/android/gms/c/w;->c()V

    return-object p0
.end method

.method public final addOnFailureListener(Landroid/app/Activity;Lcom/google/android/gms/c/c;)Lcom/google/android/gms/c/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/c/c;",
            ")",
            "Lcom/google/android/gms/c/f<",
            "TTResult;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/c/p;

    sget-object v1, Lcom/google/android/gms/c/h;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/c/p;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/c/c;)V

    iget-object p2, p0, Lcom/google/android/gms/c/w;->b:Lcom/google/android/gms/c/u;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/c/u;->zza(Lcom/google/android/gms/c/t;)V

    invoke-static {p1}, Lcom/google/android/gms/c/w$a;->zzr(Landroid/app/Activity;)Lcom/google/android/gms/c/w$a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/c/w$a;->zzb(Lcom/google/android/gms/c/t;)V

    invoke-direct {p0}, Lcom/google/android/gms/c/w;->c()V

    return-object p0
.end method

.method public final addOnFailureListener(Lcom/google/android/gms/c/c;)Lcom/google/android/gms/c/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/c/c;",
            ")",
            "Lcom/google/android/gms/c/f<",
            "TTResult;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/c/h;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/c/f;->addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/c/c;)Lcom/google/android/gms/c/f;

    move-result-object p1

    return-object p1
.end method

.method public final addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/c/c;)Lcom/google/android/gms/c/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/c/c;",
            ")",
            "Lcom/google/android/gms/c/f<",
            "TTResult;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/c/w;->b:Lcom/google/android/gms/c/u;

    new-instance v1, Lcom/google/android/gms/c/p;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/c/p;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/c/c;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/c/u;->zza(Lcom/google/android/gms/c/t;)V

    invoke-direct {p0}, Lcom/google/android/gms/c/w;->c()V

    return-object p0
.end method

.method public final addOnSuccessListener(Landroid/app/Activity;Lcom/google/android/gms/c/d;)Lcom/google/android/gms/c/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/c/d<",
            "-TTResult;>;)",
            "Lcom/google/android/gms/c/f<",
            "TTResult;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/c/r;

    sget-object v1, Lcom/google/android/gms/c/h;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/c/r;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/c/d;)V

    iget-object p2, p0, Lcom/google/android/gms/c/w;->b:Lcom/google/android/gms/c/u;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/c/u;->zza(Lcom/google/android/gms/c/t;)V

    invoke-static {p1}, Lcom/google/android/gms/c/w$a;->zzr(Landroid/app/Activity;)Lcom/google/android/gms/c/w$a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/c/w$a;->zzb(Lcom/google/android/gms/c/t;)V

    invoke-direct {p0}, Lcom/google/android/gms/c/w;->c()V

    return-object p0
.end method

.method public final addOnSuccessListener(Lcom/google/android/gms/c/d;)Lcom/google/android/gms/c/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/c/d<",
            "-TTResult;>;)",
            "Lcom/google/android/gms/c/f<",
            "TTResult;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/c/h;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/c/f;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/c/d;)Lcom/google/android/gms/c/f;

    move-result-object p1

    return-object p1
.end method

.method public final addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/c/d;)Lcom/google/android/gms/c/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/c/d<",
            "-TTResult;>;)",
            "Lcom/google/android/gms/c/f<",
            "TTResult;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/c/w;->b:Lcom/google/android/gms/c/u;

    new-instance v1, Lcom/google/android/gms/c/r;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/c/r;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/c/d;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/c/u;->zza(Lcom/google/android/gms/c/t;)V

    invoke-direct {p0}, Lcom/google/android/gms/c/w;->c()V

    return-object p0
.end method

.method public final continueWith(Lcom/google/android/gms/c/a;)Lcom/google/android/gms/c/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/c/a<",
            "TTResult;TTContinuationResult;>;)",
            "Lcom/google/android/gms/c/f<",
            "TTContinuationResult;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/c/h;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/c/f;->continueWith(Ljava/util/concurrent/Executor;Lcom/google/android/gms/c/a;)Lcom/google/android/gms/c/f;

    move-result-object p1

    return-object p1
.end method

.method public final continueWith(Ljava/util/concurrent/Executor;Lcom/google/android/gms/c/a;)Lcom/google/android/gms/c/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/c/a<",
            "TTResult;TTContinuationResult;>;)",
            "Lcom/google/android/gms/c/f<",
            "TTContinuationResult;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/c/w;

    invoke-direct {v0}, Lcom/google/android/gms/c/w;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/c/w;->b:Lcom/google/android/gms/c/u;

    new-instance v2, Lcom/google/android/gms/c/j;

    invoke-direct {v2, p1, p2, v0}, Lcom/google/android/gms/c/j;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/c/a;Lcom/google/android/gms/c/w;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/c/u;->zza(Lcom/google/android/gms/c/t;)V

    invoke-direct {p0}, Lcom/google/android/gms/c/w;->c()V

    return-object v0
.end method

.method public final continueWithTask(Lcom/google/android/gms/c/a;)Lcom/google/android/gms/c/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/c/a<",
            "TTResult;",
            "Lcom/google/android/gms/c/f<",
            "TTContinuationResult;>;>;)",
            "Lcom/google/android/gms/c/f<",
            "TTContinuationResult;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/c/h;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/c/f;->continueWithTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/c/a;)Lcom/google/android/gms/c/f;

    move-result-object p1

    return-object p1
.end method

.method public final continueWithTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/c/a;)Lcom/google/android/gms/c/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/c/a<",
            "TTResult;",
            "Lcom/google/android/gms/c/f<",
            "TTContinuationResult;>;>;)",
            "Lcom/google/android/gms/c/f<",
            "TTContinuationResult;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/c/w;

    invoke-direct {v0}, Lcom/google/android/gms/c/w;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/c/w;->b:Lcom/google/android/gms/c/u;

    new-instance v2, Lcom/google/android/gms/c/l;

    invoke-direct {v2, p1, p2, v0}, Lcom/google/android/gms/c/l;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/c/a;Lcom/google/android/gms/c/w;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/c/u;->zza(Lcom/google/android/gms/c/t;)V

    invoke-direct {p0}, Lcom/google/android/gms/c/w;->c()V

    return-object v0
.end method

.method public final getException()Ljava/lang/Exception;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/c/w;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/c/w;->e:Ljava/lang/Exception;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getResult()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/c/w;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/c/w;->a()V

    iget-object v1, p0, Lcom/google/android/gms/c/w;->e:Ljava/lang/Exception;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/c/w;->d:Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :cond_0
    new-instance v1, Lcom/google/android/gms/c/e;

    iget-object v2, p0, Lcom/google/android/gms/c/w;->e:Ljava/lang/Exception;

    invoke-direct {v1, v2}, Lcom/google/android/gms/c/e;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getResult(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TX;>;)TTResult;^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/c/w;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/c/w;->a()V

    iget-object v1, p0, Lcom/google/android/gms/c/w;->e:Ljava/lang/Exception;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/c/w;->e:Ljava/lang/Exception;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/c/w;->d:Ljava/lang/Object;

    monitor-exit v0

    return-object p1

    :cond_0
    new-instance p1, Lcom/google/android/gms/c/e;

    iget-object v1, p0, Lcom/google/android/gms/c/w;->e:Ljava/lang/Exception;

    invoke-direct {p1, v1}, Lcom/google/android/gms/c/e;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/c/w;->e:Ljava/lang/Exception;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final isComplete()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/c/w;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/c/w;->c:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final isSuccessful()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/c/w;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/c/w;->c:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/c/w;->e:Ljava/lang/Exception;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final setException(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "Exception must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/c/w;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/c/w;->b()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/c/w;->c:Z

    iput-object p1, p0, Lcom/google/android/gms/c/w;->e:Ljava/lang/Exception;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/c/w;->b:Lcom/google/android/gms/c/u;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/c/u;->zzb(Lcom/google/android/gms/c/f;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final setResult(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/c/w;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/c/w;->b()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/c/w;->c:Z

    iput-object p1, p0, Lcom/google/android/gms/c/w;->d:Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/c/w;->b:Lcom/google/android/gms/c/u;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/c/u;->zzb(Lcom/google/android/gms/c/f;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final trySetException(Ljava/lang/Exception;)Z
    .locals 2

    const-string v0, "Exception must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/c/w;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/c/w;->c:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    monitor-exit v0

    return p1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/c/w;->c:Z

    iput-object p1, p0, Lcom/google/android/gms/c/w;->e:Ljava/lang/Exception;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/c/w;->b:Lcom/google/android/gms/c/u;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/c/u;->zzb(Lcom/google/android/gms/c/f;)V

    return v1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final trySetResult(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/c/w;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/c/w;->c:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    monitor-exit v0

    return p1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/c/w;->c:Z

    iput-object p1, p0, Lcom/google/android/gms/c/w;->d:Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/c/w;->b:Lcom/google/android/gms/c/u;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/c/u;->zzb(Lcom/google/android/gms/c/f;)V

    return v1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
