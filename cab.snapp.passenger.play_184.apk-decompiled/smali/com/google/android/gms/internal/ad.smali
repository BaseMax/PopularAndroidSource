.class public final Lcom/google/android/gms/internal/ad;
.super Lcom/google/android/gms/internal/x;


# instance fields
.field final a:Lcom/google/android/gms/internal/af;

.field b:Lcom/google/android/gms/internal/bl;

.field private final c:Lcom/google/android/gms/internal/az;

.field private final d:Lcom/google/android/gms/internal/ca;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/z;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/x;-><init>(Lcom/google/android/gms/internal/z;)V

    new-instance v0, Lcom/google/android/gms/internal/ca;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/z;->zzws()Lcom/google/android/gms/common/util/d;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ca;-><init>(Lcom/google/android/gms/common/util/d;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ad;->d:Lcom/google/android/gms/internal/ca;

    new-instance v0, Lcom/google/android/gms/internal/af;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/af;-><init>(Lcom/google/android/gms/internal/ad;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ad;->a:Lcom/google/android/gms/internal/af;

    new-instance v0, Lcom/google/android/gms/internal/ae;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ae;-><init>(Lcom/google/android/gms/internal/ad;Lcom/google/android/gms/internal/z;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ad;->c:Lcom/google/android/gms/internal/az;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ad;->d:Lcom/google/android/gms/internal/ca;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ca;->start()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ad;->c:Lcom/google/android/gms/internal/az;

    sget-object v1, Lcom/google/android/gms/internal/bf;->zzdxg:Lcom/google/android/gms/internal/bg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/bg;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/az;->zzs(J)V

    return-void
.end method

.method public final connect()Z
    .locals 2

    invoke-static {}, Lcom/google/android/gms/analytics/r;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/x;->c()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ad;->b:Lcom/google/android/gms/internal/bl;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ad;->a:Lcom/google/android/gms/internal/af;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/af;->zzxt()Lcom/google/android/gms/internal/bl;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/google/android/gms/internal/ad;->b:Lcom/google/android/gms/internal/bl;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ad;->a()V

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final disconnect()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/analytics/r;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/x;->c()V

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/stats/a;->zzamc()Lcom/google/android/gms/common/stats/a;

    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/internal/w;->zzdta:Lcom/google/android/gms/internal/z;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/z;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ad;->a:Lcom/google/android/gms/internal/af;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ad;->b:Lcom/google/android/gms/internal/bl;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ad;->b:Lcom/google/android/gms/internal/bl;

    .line 2000
    iget-object v0, p0, Lcom/google/android/gms/internal/w;->zzdta:Lcom/google/android/gms/internal/z;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/z;->zzwx()Lcom/google/android/gms/internal/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/o;->zzwp()V

    :cond_0
    return-void
.end method

.method public final isConnected()Z
    .locals 1

    invoke-static {}, Lcom/google/android/gms/analytics/r;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/x;->c()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ad;->b:Lcom/google/android/gms/internal/bl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/bk;)Z
    .locals 7

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/analytics/r;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/x;->c()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ad;->b:Lcom/google/android/gms/internal/bl;

    const/4 v6, 0x0

    if-nez v0, :cond_0

    return v6

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/bk;->zzzk()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/ax;->zzyw()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ax;->zzyx()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v4, v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/bk;->zzjh()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/bk;->zzzi()J

    move-result-wide v2

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/bl;->zza(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ad;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const-string p1, "Failed to send hits to AnalyticsService"

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/w;->zzdu(Ljava/lang/String;)V

    return v6
.end method

.method protected final zzvf()V
    .locals 0

    return-void
.end method

.method public final zzxq()Z
    .locals 2

    invoke-static {}, Lcom/google/android/gms/analytics/r;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/x;->c()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ad;->b:Lcom/google/android/gms/internal/bl;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/bl;->zzwm()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ad;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const-string v0, "Failed to clear hits from AnalyticsService"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/w;->zzdu(Ljava/lang/String;)V

    return v1
.end method
