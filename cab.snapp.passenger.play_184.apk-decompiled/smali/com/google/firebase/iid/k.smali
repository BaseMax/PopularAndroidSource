.class public final Lcom/google/firebase/iid/k;
.super Ljava/lang/Object;


# static fields
.field private static c:Lcom/google/firebase/iid/k;


# instance fields
.field final a:Landroid/content/Context;

.field final b:Ljava/util/concurrent/ScheduledExecutorService;

.field private d:Lcom/google/firebase/iid/l;

.field private e:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/firebase/iid/l;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/iid/l;-><init>(Lcom/google/firebase/iid/k;B)V

    iput-object v0, p0, Lcom/google/firebase/iid/k;->d:Lcom/google/firebase/iid/l;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/firebase/iid/k;->e:I

    iput-object p2, p0, Lcom/google/firebase/iid/k;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/iid/k;->a:Landroid/content/Context;

    return-void
.end method

.method private final declared-synchronized a()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/firebase/iid/k;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/firebase/iid/k;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized a(Lcom/google/firebase/iid/s;)Lcom/google/android/gms/c/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/iid/s<",
            "TT;>;)",
            "Lcom/google/android/gms/c/f<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "MessengerIpcClient"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Queueing "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/iid/k;->d:Lcom/google/firebase/iid/l;

    invoke-virtual {v0, p1}, Lcom/google/firebase/iid/l;->a(Lcom/google/firebase/iid/s;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/firebase/iid/l;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/iid/l;-><init>(Lcom/google/firebase/iid/k;B)V

    iput-object v0, p0, Lcom/google/firebase/iid/k;->d:Lcom/google/firebase/iid/l;

    iget-object v0, p0, Lcom/google/firebase/iid/k;->d:Lcom/google/firebase/iid/l;

    invoke-virtual {v0, p1}, Lcom/google/firebase/iid/l;->a(Lcom/google/firebase/iid/s;)Z

    :cond_1
    iget-object p1, p1, Lcom/google/firebase/iid/s;->b:Lcom/google/android/gms/c/g;

    invoke-virtual {p1}, Lcom/google/android/gms/c/g;->getTask()Lcom/google/android/gms/c/f;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static declared-synchronized zzev(Landroid/content/Context;)Lcom/google/firebase/iid/k;
    .locals 3

    const-class v0, Lcom/google/firebase/iid/k;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/firebase/iid/k;->c:Lcom/google/firebase/iid/k;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/firebase/iid/k;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/firebase/iid/k;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)V

    sput-object v1, Lcom/google/firebase/iid/k;->c:Lcom/google/firebase/iid/k;

    :cond_0
    sget-object p0, Lcom/google/firebase/iid/k;->c:Lcom/google/firebase/iid/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final zzh(ILandroid/os/Bundle;)Lcom/google/android/gms/c/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/c/f<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/google/firebase/iid/r;

    invoke-direct {p0}, Lcom/google/firebase/iid/k;->a()I

    move-result v0

    invoke-direct {p1, v0, p2}, Lcom/google/firebase/iid/r;-><init>(ILandroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcom/google/firebase/iid/k;->a(Lcom/google/firebase/iid/s;)Lcom/google/android/gms/c/f;

    move-result-object p1

    return-object p1
.end method

.method public final zzi(ILandroid/os/Bundle;)Lcom/google/android/gms/c/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/c/f<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/google/firebase/iid/u;

    invoke-direct {p0}, Lcom/google/firebase/iid/k;->a()I

    move-result v0

    invoke-direct {p1, v0, p2}, Lcom/google/firebase/iid/u;-><init>(ILandroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcom/google/firebase/iid/k;->a(Lcom/google/firebase/iid/s;)Lcom/google/android/gms/c/f;

    move-result-object p1

    return-object p1
.end method
