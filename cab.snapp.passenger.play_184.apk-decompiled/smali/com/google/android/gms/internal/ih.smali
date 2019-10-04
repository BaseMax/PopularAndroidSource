.class abstract Lcom/google/android/gms/internal/ih;
.super Ljava/lang/Object;


# static fields
.field private static volatile b:Landroid/os/Handler;


# instance fields
.field private final a:Lcom/google/android/gms/internal/jx;

.field private final c:Ljava/lang/Runnable;

.field private volatile d:J

.field private e:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/jx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ih;->a:Lcom/google/android/gms/internal/jx;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ih;->e:Z

    new-instance p1, Lcom/google/android/gms/internal/ii;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ii;-><init>(Lcom/google/android/gms/internal/ih;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ih;->c:Ljava/lang/Runnable;

    return-void
.end method

.method private final a()Landroid/os/Handler;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/ih;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ih;->b:Landroid/os/Handler;

    return-object v0

    :cond_0
    const-class v0, Lcom/google/android/gms/internal/ih;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ih;->b:Landroid/os/Handler;

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/ih;->a:Lcom/google/android/gms/internal/jx;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/jx;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/google/android/gms/internal/ih;->b:Landroid/os/Handler;

    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/ih;->b:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ih;)Lcom/google/android/gms/internal/jx;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ih;->a:Lcom/google/android/gms/internal/jx;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ih;)J
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ih;->d:J

    return-wide v0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ih;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ih;->e:Z

    return p0
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ih;->d:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/ih;->a()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ih;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public abstract run()V
.end method

.method public final zzdx()Z
    .locals 5

    iget-wide v0, p0, Lcom/google/android/gms/internal/ih;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzs(J)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ih;->cancel()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ih;->a:Lcom/google/android/gms/internal/jx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jx;->zzws()Lcom/google/android/gms/common/util/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ih;->d:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/ih;->a()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ih;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ih;->a:Lcom/google/android/gms/internal/jx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iz;->zzazd()Lcom/google/android/gms/internal/jb;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "Failed to schedule delayed post. time"

    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/internal/jb;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
