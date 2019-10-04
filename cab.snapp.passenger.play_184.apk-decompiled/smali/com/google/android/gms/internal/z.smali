.class public Lcom/google/android/gms/internal/z;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/google/android/gms/internal/z;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/google/android/gms/common/util/d;

.field private final e:Lcom/google/android/gms/internal/ax;

.field private final f:Lcom/google/android/gms/internal/bp;

.field private final g:Lcom/google/android/gms/analytics/r;

.field private final h:Lcom/google/android/gms/internal/o;

.field private final i:Lcom/google/android/gms/internal/bc;

.field private final j:Lcom/google/android/gms/internal/cf;

.field private final k:Lcom/google/android/gms/internal/bt;

.field private final l:Lcom/google/android/gms/analytics/d;

.field private final m:Lcom/google/android/gms/internal/aq;

.field private final n:Lcom/google/android/gms/internal/n;

.field private final o:Lcom/google/android/gms/internal/ak;

.field private final p:Lcom/google/android/gms/internal/bb;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ab;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ab;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Application context can\'t be null"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ab;->zzxg()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/z;->b:Landroid/content/Context;

    iput-object v1, p0, Lcom/google/android/gms/internal/z;->c:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/common/util/e;->zzamg()Lcom/google/android/gms/common/util/d;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/z;->d:Lcom/google/android/gms/common/util/d;

    new-instance v1, Lcom/google/android/gms/internal/ax;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ax;-><init>(Lcom/google/android/gms/internal/z;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/z;->e:Lcom/google/android/gms/internal/ax;

    new-instance v1, Lcom/google/android/gms/internal/bp;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/bp;-><init>(Lcom/google/android/gms/internal/z;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/x;->initialize()V

    iput-object v1, p0, Lcom/google/android/gms/internal/z;->f:Lcom/google/android/gms/internal/bp;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/z;->zzwt()Lcom/google/android/gms/internal/bp;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/y;->VERSION:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit16 v3, v3, 0x86

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Google Analytics "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is starting up. To enable debug logging on a device run:\n  adb shell setprop log.tag.GAv4 DEBUG\n  adb logcat -s GAv4"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/w;->zzdw(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/bt;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/bt;-><init>(Lcom/google/android/gms/internal/z;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/x;->initialize()V

    iput-object v1, p0, Lcom/google/android/gms/internal/z;->k:Lcom/google/android/gms/internal/bt;

    new-instance v1, Lcom/google/android/gms/internal/cf;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/cf;-><init>(Lcom/google/android/gms/internal/z;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/x;->initialize()V

    iput-object v1, p0, Lcom/google/android/gms/internal/z;->j:Lcom/google/android/gms/internal/cf;

    new-instance v1, Lcom/google/android/gms/internal/o;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/o;-><init>(Lcom/google/android/gms/internal/z;Lcom/google/android/gms/internal/ab;)V

    new-instance p1, Lcom/google/android/gms/internal/aq;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/aq;-><init>(Lcom/google/android/gms/internal/z;)V

    new-instance v2, Lcom/google/android/gms/internal/n;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/n;-><init>(Lcom/google/android/gms/internal/z;)V

    new-instance v3, Lcom/google/android/gms/internal/ak;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ak;-><init>(Lcom/google/android/gms/internal/z;)V

    new-instance v4, Lcom/google/android/gms/internal/bb;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/bb;-><init>(Lcom/google/android/gms/internal/z;)V

    invoke-static {v0}, Lcom/google/android/gms/analytics/r;->zzbl(Landroid/content/Context;)Lcom/google/android/gms/analytics/r;

    move-result-object v0

    new-instance v5, Lcom/google/android/gms/internal/aa;

    invoke-direct {v5, p0}, Lcom/google/android/gms/internal/aa;-><init>(Lcom/google/android/gms/internal/z;)V

    invoke-virtual {v0, v5}, Lcom/google/android/gms/analytics/r;->zza(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/z;->g:Lcom/google/android/gms/analytics/r;

    new-instance v0, Lcom/google/android/gms/analytics/d;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/d;-><init>(Lcom/google/android/gms/internal/z;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/x;->initialize()V

    iput-object p1, p0, Lcom/google/android/gms/internal/z;->m:Lcom/google/android/gms/internal/aq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/x;->initialize()V

    iput-object v2, p0, Lcom/google/android/gms/internal/z;->n:Lcom/google/android/gms/internal/n;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/x;->initialize()V

    iput-object v3, p0, Lcom/google/android/gms/internal/z;->o:Lcom/google/android/gms/internal/ak;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/x;->initialize()V

    iput-object v4, p0, Lcom/google/android/gms/internal/z;->p:Lcom/google/android/gms/internal/bb;

    new-instance p1, Lcom/google/android/gms/internal/bc;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/bc;-><init>(Lcom/google/android/gms/internal/z;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/x;->initialize()V

    iput-object p1, p0, Lcom/google/android/gms/internal/z;->i:Lcom/google/android/gms/internal/bc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/x;->initialize()V

    iput-object v1, p0, Lcom/google/android/gms/internal/z;->h:Lcom/google/android/gms/internal/o;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/d;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/z;->l:Lcom/google/android/gms/analytics/d;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/o;->start()V

    return-void
.end method

.method private static a(Lcom/google/android/gms/internal/x;)V
    .locals 1

    const-string v0, "Analytics service not created/initialized"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/x;->isInitialized()Z

    move-result p0

    const-string v0, "Analytics service not initialized"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/ap;->checkArgument(ZLjava/lang/Object;)V

    return-void
.end method

.method public static zzbm(Landroid/content/Context;)Lcom/google/android/gms/internal/z;
    .locals 6

    invoke-static {p0}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/z;->a:Lcom/google/android/gms/internal/z;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/android/gms/internal/z;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/z;->a:Lcom/google/android/gms/internal/z;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/common/util/e;->zzamg()Lcom/google/android/gms/common/util/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/d;->elapsedRealtime()J

    move-result-wide v2

    new-instance v4, Lcom/google/android/gms/internal/ab;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/ab;-><init>(Landroid/content/Context;)V

    new-instance p0, Lcom/google/android/gms/internal/z;

    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/z;-><init>(Lcom/google/android/gms/internal/ab;)V

    sput-object p0, Lcom/google/android/gms/internal/z;->a:Lcom/google/android/gms/internal/z;

    invoke-static {}, Lcom/google/android/gms/analytics/d;->zzur()V

    invoke-interface {v1}, Lcom/google/android/gms/common/util/d;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    sget-object v1, Lcom/google/android/gms/internal/bf;->zzdxm:Lcom/google/android/gms/internal/bg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/bg;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v3, v4, v1

    if-lez v3, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/z;->zzwt()Lcom/google/android/gms/internal/bp;

    move-result-object p0

    const-string v3, "Slow initialization (ms)"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v3, v4, v1}, Lcom/google/android/gms/internal/w;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/google/android/gms/internal/z;->a:Lcom/google/android/gms/internal/z;

    return-object p0
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/z;->b:Landroid/content/Context;

    return-object v0
.end method

.method public final zzws()Lcom/google/android/gms/common/util/d;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/z;->d:Lcom/google/android/gms/common/util/d;

    return-object v0
.end method

.method public final zzwt()Lcom/google/android/gms/internal/bp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/z;->f:Lcom/google/android/gms/internal/bp;

    invoke-static {v0}, Lcom/google/android/gms/internal/z;->a(Lcom/google/android/gms/internal/x;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/z;->f:Lcom/google/android/gms/internal/bp;

    return-object v0
.end method

.method public final zzwu()Lcom/google/android/gms/internal/ax;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/z;->e:Lcom/google/android/gms/internal/ax;

    return-object v0
.end method

.method public final zzwv()Lcom/google/android/gms/analytics/r;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/z;->g:Lcom/google/android/gms/analytics/r;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/z;->g:Lcom/google/android/gms/analytics/r;

    return-object v0
.end method

.method public final zzwx()Lcom/google/android/gms/internal/o;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/z;->h:Lcom/google/android/gms/internal/o;

    invoke-static {v0}, Lcom/google/android/gms/internal/z;->a(Lcom/google/android/gms/internal/x;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/z;->h:Lcom/google/android/gms/internal/o;

    return-object v0
.end method

.method public final zzwy()Lcom/google/android/gms/internal/bc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/z;->i:Lcom/google/android/gms/internal/bc;

    invoke-static {v0}, Lcom/google/android/gms/internal/z;->a(Lcom/google/android/gms/internal/x;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/z;->i:Lcom/google/android/gms/internal/bc;

    return-object v0
.end method

.method public final zzwz()Lcom/google/android/gms/internal/cf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/z;->j:Lcom/google/android/gms/internal/cf;

    invoke-static {v0}, Lcom/google/android/gms/internal/z;->a(Lcom/google/android/gms/internal/x;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/z;->j:Lcom/google/android/gms/internal/cf;

    return-object v0
.end method

.method public final zzxa()Lcom/google/android/gms/internal/bt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/z;->k:Lcom/google/android/gms/internal/bt;

    invoke-static {v0}, Lcom/google/android/gms/internal/z;->a(Lcom/google/android/gms/internal/x;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/z;->k:Lcom/google/android/gms/internal/bt;

    return-object v0
.end method

.method public final zzxd()Lcom/google/android/gms/internal/ak;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/z;->o:Lcom/google/android/gms/internal/ak;

    invoke-static {v0}, Lcom/google/android/gms/internal/z;->a(Lcom/google/android/gms/internal/x;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/z;->o:Lcom/google/android/gms/internal/ak;

    return-object v0
.end method

.method public final zzxe()Lcom/google/android/gms/internal/bb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/z;->p:Lcom/google/android/gms/internal/bb;

    return-object v0
.end method

.method public final zzxg()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/z;->c:Landroid/content/Context;

    return-object v0
.end method

.method public final zzxh()Lcom/google/android/gms/internal/bp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/z;->f:Lcom/google/android/gms/internal/bp;

    return-object v0
.end method

.method public final zzxi()Lcom/google/android/gms/analytics/d;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/z;->l:Lcom/google/android/gms/analytics/d;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/z;->l:Lcom/google/android/gms/analytics/d;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/d;->isInitialized()Z

    move-result v0

    const-string v1, "Analytics instance not initialized"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/ap;->checkArgument(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/z;->l:Lcom/google/android/gms/analytics/d;

    return-object v0
.end method

.method public final zzxj()Lcom/google/android/gms/internal/bt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/z;->k:Lcom/google/android/gms/internal/bt;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/x;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/z;->k:Lcom/google/android/gms/internal/bt;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzxk()Lcom/google/android/gms/internal/n;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/z;->n:Lcom/google/android/gms/internal/n;

    invoke-static {v0}, Lcom/google/android/gms/internal/z;->a(Lcom/google/android/gms/internal/x;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/z;->n:Lcom/google/android/gms/internal/n;

    return-object v0
.end method

.method public final zzxl()Lcom/google/android/gms/internal/aq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/z;->m:Lcom/google/android/gms/internal/aq;

    invoke-static {v0}, Lcom/google/android/gms/internal/z;->a(Lcom/google/android/gms/internal/x;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/z;->m:Lcom/google/android/gms/internal/aq;

    return-object v0
.end method
