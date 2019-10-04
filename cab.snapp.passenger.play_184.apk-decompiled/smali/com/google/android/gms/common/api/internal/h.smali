.class public Lcom/google/android/gms/common/api/internal/h;
.super Lcom/google/android/gms/common/api/internal/cw;


# instance fields
.field final b:Landroidx/collection/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArraySet<",
            "Lcom/google/android/gms/common/api/internal/cp<",
            "*>;>;"
        }
    .end annotation
.end field

.field private f:Lcom/google/android/gms/common/api/internal/al;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/internal/bd;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/cw;-><init>(Lcom/google/android/gms/common/api/internal/bd;)V

    new-instance p1, Landroidx/collection/ArraySet;

    invoke-direct {p1}, Landroidx/collection/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/h;->b:Landroidx/collection/ArraySet;

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/h;->a:Lcom/google/android/gms/common/api/internal/bd;

    const-string v0, "ConnectionlessLifecycleHelper"

    invoke-interface {p1, v0, p0}, Lcom/google/android/gms/common/api/internal/bd;->zza(Ljava/lang/String;Lcom/google/android/gms/common/api/internal/LifecycleCallback;)V

    return-void
.end method

.method private final c()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/h;->b:Landroidx/collection/ArraySet;

    invoke-virtual {v0}, Landroidx/collection/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/h;->f:Lcom/google/android/gms/common/api/internal/al;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/al;->zza(Lcom/google/android/gms/common/api/internal/h;)V

    :cond_0
    return-void
.end method

.method public static zza(Landroid/app/Activity;Lcom/google/android/gms/common/api/internal/al;Lcom/google/android/gms/common/api/internal/cp;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/common/api/internal/al;",
            "Lcom/google/android/gms/common/api/internal/cp<",
            "*>;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/common/api/internal/h;->zzn(Landroid/app/Activity;)Lcom/google/android/gms/common/api/internal/bd;

    move-result-object p0

    const-class v0, Lcom/google/android/gms/common/api/internal/h;

    const-string v1, "ConnectionlessLifecycleHelper"

    invoke-interface {p0, v1, v0}, Lcom/google/android/gms/common/api/internal/bd;->zza(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/internal/h;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/h;-><init>(Lcom/google/android/gms/common/api/internal/bd;)V

    :cond_0
    iput-object p1, v0, Lcom/google/android/gms/common/api/internal/h;->f:Lcom/google/android/gms/common/api/internal/al;

    const-string p0, "ApiKey cannot be null"

    invoke-static {p2, p0}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, v0, Lcom/google/android/gms/common/api/internal/h;->b:Landroidx/collection/ArraySet;

    invoke-virtual {p0, p2}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/al;->zza(Lcom/google/android/gms/common/api/internal/h;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/h;->f:Lcom/google/android/gms/common/api/internal/al;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/al;->zzagz()V

    return-void
.end method

.method protected final a(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/h;->f:Lcom/google/android/gms/common/api/internal/al;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/common/api/internal/al;->zza(Lcom/google/android/gms/common/ConnectionResult;I)V

    return-void
.end method

.method public final onResume()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/common/api/internal/cw;->onResume()V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/h;->c()V

    return-void
.end method

.method public final onStart()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/common/api/internal/cw;->onStart()V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/h;->c()V

    return-void
.end method

.method public final onStop()V
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/common/api/internal/cw;->onStop()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/h;->f:Lcom/google/android/gms/common/api/internal/al;

    .line 1000
    sget-object v1, Lcom/google/android/gms/common/api/internal/al;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/google/android/gms/common/api/internal/al;->c:Lcom/google/android/gms/common/api/internal/h;

    if-ne v2, p0, :cond_0

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/gms/common/api/internal/al;->c:Lcom/google/android/gms/common/api/internal/h;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/al;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
