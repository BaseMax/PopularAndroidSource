.class public final Lcom/google/android/gms/internal/o;
.super Lcom/google/android/gms/internal/x;


# instance fields
.field final a:Lcom/google/android/gms/internal/al;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/z;Lcom/google/android/gms/internal/ab;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/x;-><init>(Lcom/google/android/gms/internal/z;)V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/al;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/al;-><init>(Lcom/google/android/gms/internal/z;Lcom/google/android/gms/internal/ab;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/o;->a:Lcom/google/android/gms/internal/al;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/analytics/r;->zzve()V

    iget-object v0, p0, Lcom/google/android/gms/internal/o;->a:Lcom/google/android/gms/internal/al;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/al;->d()V

    return-void
.end method

.method final b()V
    .locals 3

    invoke-static {}, Lcom/google/android/gms/analytics/r;->zzve()V

    iget-object v0, p0, Lcom/google/android/gms/internal/o;->a:Lcom/google/android/gms/internal/al;

    .line 11000
    invoke-static {}, Lcom/google/android/gms/analytics/r;->zzve()V

    .line 12000
    iget-object v1, v0, Lcom/google/android/gms/internal/w;->zzdta:Lcom/google/android/gms/internal/z;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/z;->zzws()Lcom/google/android/gms/common/util/d;

    move-result-object v1

    .line 11000
    invoke-interface {v1}, Lcom/google/android/gms/common/util/d;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/al;->c:J

    return-void
.end method

.method public final setLocalDispatchPeriod(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/x;->c()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "setLocalDispatchPeriod (sec)"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/w;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/internal/w;->zzdta:Lcom/google/android/gms/internal/z;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/z;->zzwv()Lcom/google/android/gms/analytics/r;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/p;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/p;-><init>(Lcom/google/android/gms/internal/o;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/r;->zzc(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final start()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/o;->a:Lcom/google/android/gms/internal/al;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/al;->a()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ac;)J
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/x;->c()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/analytics/r;->zzve()V

    iget-object v0, p0, Lcom/google/android/gms/internal/o;->a:Lcom/google/android/gms/internal/al;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/al;->zza(Lcom/google/android/gms/internal/ac;Z)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/o;->a:Lcom/google/android/gms/internal/al;

    .line 2000
    invoke-static {}, Lcom/google/android/gms/analytics/r;->zzve()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ac;->zzxn()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Sending first hit to property"

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/internal/w;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3000
    iget-object v3, v2, Lcom/google/android/gms/internal/w;->zzdta:Lcom/google/android/gms/internal/z;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/z;->zzxa()Lcom/google/android/gms/internal/bt;

    move-result-object v3

    .line 2000
    invoke-virtual {v3}, Lcom/google/android/gms/internal/bt;->zzzx()Lcom/google/android/gms/internal/ca;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/ax;->zzza()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ca;->zzu(J)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4000
    iget-object v3, v2, Lcom/google/android/gms/internal/w;->zzdta:Lcom/google/android/gms/internal/z;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/z;->zzxa()Lcom/google/android/gms/internal/bt;

    move-result-object v3

    .line 2000
    invoke-virtual {v3}, Lcom/google/android/gms/internal/bt;->zzaaa()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 5000
    iget-object v4, v2, Lcom/google/android/gms/internal/w;->zzdta:Lcom/google/android/gms/internal/z;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/z;->zzwt()Lcom/google/android/gms/internal/bp;

    move-result-object v4

    .line 2000
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ce;->zza(Lcom/google/android/gms/internal/bp;Ljava/lang/String;)Lcom/google/android/gms/internal/b;

    move-result-object v3

    const-string v4, "Found relevant installation campaign"

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/internal/w;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, p1, v3}, Lcom/google/android/gms/internal/al;->a(Lcom/google/android/gms/internal/ac;Lcom/google/android/gms/internal/b;)V

    :cond_0
    return-wide v0
.end method

.method public final zza(Lcom/google/android/gms/internal/bd;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/x;->c()V

    .line 8000
    iget-object v0, p0, Lcom/google/android/gms/internal/w;->zzdta:Lcom/google/android/gms/internal/z;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/z;->zzwv()Lcom/google/android/gms/analytics/r;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/u;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/u;-><init>(Lcom/google/android/gms/internal/o;Lcom/google/android/gms/internal/bd;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/r;->zzc(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/bk;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/x;->c()V

    const-string v0, "Hit delivery requested"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/w;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6000
    iget-object v0, p0, Lcom/google/android/gms/internal/w;->zzdta:Lcom/google/android/gms/internal/z;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/z;->zzwv()Lcom/google/android/gms/analytics/r;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/s;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/s;-><init>(Lcom/google/android/gms/internal/o;Lcom/google/android/gms/internal/bk;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/r;->zzc(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2

    const-string v0, "campaign param can\'t be empty"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/ap;->zzh(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 13000
    iget-object v0, p0, Lcom/google/android/gms/internal/w;->zzdta:Lcom/google/android/gms/internal/z;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/z;->zzwv()Lcom/google/android/gms/analytics/r;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/r;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/r;-><init>(Lcom/google/android/gms/internal/o;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/r;->zzc(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final zzvf()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/o;->a:Lcom/google/android/gms/internal/al;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/x;->initialize()V

    return-void
.end method

.method public final zzwm()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/x;->c()V

    .line 7000
    iget-object v0, p0, Lcom/google/android/gms/internal/w;->zzdta:Lcom/google/android/gms/internal/z;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/z;->zzwv()Lcom/google/android/gms/analytics/r;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/t;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/t;-><init>(Lcom/google/android/gms/internal/o;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/r;->zzc(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzwn()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/x;->c()V

    .line 9000
    iget-object v0, p0, Lcom/google/android/gms/internal/w;->zzdta:Lcom/google/android/gms/internal/z;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/z;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/bv;->zzbk(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/bw;->zzbo(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.analytics.ANALYTICS_DISPATCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.google.android.gms.analytics.AnalyticsService"

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/o;->zza(Lcom/google/android/gms/internal/bd;)V

    return-void
.end method

.method public final zzwo()Z
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/x;->c()V

    .line 10000
    iget-object v0, p0, Lcom/google/android/gms/internal/w;->zzdta:Lcom/google/android/gms/internal/z;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/z;->zzwv()Lcom/google/android/gms/analytics/r;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/v;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/v;-><init>(Lcom/google/android/gms/internal/o;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/r;->zza(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    const-wide/16 v1, 0x4

    const/4 v3, 0x0

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v1, "syncDispatchLocalHits timed out"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/w;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    return v3

    :catch_1
    move-exception v0

    const-string v1, "syncDispatchLocalHits failed"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/w;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    return v3

    :catch_2
    move-exception v0

    const-string v1, "syncDispatchLocalHits interrupted"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/w;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    return v3
.end method

.method public final zzwp()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/x;->c()V

    invoke-static {}, Lcom/google/android/gms/analytics/r;->zzve()V

    iget-object v0, p0, Lcom/google/android/gms/internal/o;->a:Lcom/google/android/gms/internal/al;

    invoke-static {}, Lcom/google/android/gms/analytics/r;->zzve()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/x;->c()V

    const-string v1, "Service disconnected"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/w;->zzdu(Ljava/lang/String;)V

    return-void
.end method
