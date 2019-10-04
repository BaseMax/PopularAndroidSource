.class final Lcom/google/android/gms/internal/jj;
.super Lcom/google/android/gms/internal/kw;


# static fields
.field static final a:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field b:Ljava/lang/String;

.field c:J

.field final d:Ljava/lang/Object;

.field private f:Landroid/content/SharedPreferences;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:J

.field public final zzjcq:Lcom/google/android/gms/internal/jm;

.field public final zzjcr:Lcom/google/android/gms/internal/jl;

.field public final zzjcs:Lcom/google/android/gms/internal/jl;

.field public final zzjct:Lcom/google/android/gms/internal/jl;

.field public final zzjcu:Lcom/google/android/gms/internal/jl;

.field public final zzjcv:Lcom/google/android/gms/internal/jl;

.field public final zzjcw:Lcom/google/android/gms/internal/jl;

.field public final zzjcx:Lcom/google/android/gms/internal/jn;

.field public final zzjde:Lcom/google/android/gms/internal/jl;

.field public final zzjdf:Lcom/google/android/gms/internal/jl;

.field public final zzjdg:Lcom/google/android/gms/internal/jk;

.field public final zzjdh:Lcom/google/android/gms/internal/jl;

.field public final zzjdi:Lcom/google/android/gms/internal/jl;

.field public zzjdj:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/Pair;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/jj;->a:Landroid/util/Pair;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/jx;)V
    .locals 8

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/kw;-><init>(Lcom/google/android/gms/internal/jx;)V

    new-instance p1, Lcom/google/android/gms/internal/jm;

    sget-object v0, Lcom/google/android/gms/internal/ip;->zzjaf:Lcom/google/android/gms/internal/iq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iq;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v6, 0x0

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    const-string v2, "health_monitor"

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/jm;-><init>(Lcom/google/android/gms/internal/jj;Ljava/lang/String;JB)V

    iput-object p1, p0, Lcom/google/android/gms/internal/jj;->zzjcq:Lcom/google/android/gms/internal/jm;

    new-instance p1, Lcom/google/android/gms/internal/jl;

    const-string v0, "last_upload"

    invoke-direct {p1, p0, v0, v6, v7}, Lcom/google/android/gms/internal/jl;-><init>(Lcom/google/android/gms/internal/jj;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/jj;->zzjcr:Lcom/google/android/gms/internal/jl;

    new-instance p1, Lcom/google/android/gms/internal/jl;

    const-string v0, "last_upload_attempt"

    invoke-direct {p1, p0, v0, v6, v7}, Lcom/google/android/gms/internal/jl;-><init>(Lcom/google/android/gms/internal/jj;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/jj;->zzjcs:Lcom/google/android/gms/internal/jl;

    new-instance p1, Lcom/google/android/gms/internal/jl;

    const-string v0, "backoff"

    invoke-direct {p1, p0, v0, v6, v7}, Lcom/google/android/gms/internal/jl;-><init>(Lcom/google/android/gms/internal/jj;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/jj;->zzjct:Lcom/google/android/gms/internal/jl;

    new-instance p1, Lcom/google/android/gms/internal/jl;

    const-string v0, "last_delete_stale"

    invoke-direct {p1, p0, v0, v6, v7}, Lcom/google/android/gms/internal/jl;-><init>(Lcom/google/android/gms/internal/jj;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/jj;->zzjcu:Lcom/google/android/gms/internal/jl;

    new-instance p1, Lcom/google/android/gms/internal/jl;

    const-string v0, "time_before_start"

    const-wide/16 v1, 0x2710

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/android/gms/internal/jl;-><init>(Lcom/google/android/gms/internal/jj;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/jj;->zzjde:Lcom/google/android/gms/internal/jl;

    new-instance p1, Lcom/google/android/gms/internal/jl;

    const-string v0, "session_timeout"

    const-wide/32 v1, 0x1b7740

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/android/gms/internal/jl;-><init>(Lcom/google/android/gms/internal/jj;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/jj;->zzjdf:Lcom/google/android/gms/internal/jl;

    new-instance p1, Lcom/google/android/gms/internal/jk;

    const-string v0, "start_new_session"

    const/4 v1, 0x1

    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/gms/internal/jk;-><init>(Lcom/google/android/gms/internal/jj;Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/jj;->zzjdg:Lcom/google/android/gms/internal/jk;

    new-instance p1, Lcom/google/android/gms/internal/jl;

    const-string v0, "last_pause_time"

    invoke-direct {p1, p0, v0, v6, v7}, Lcom/google/android/gms/internal/jl;-><init>(Lcom/google/android/gms/internal/jj;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/jj;->zzjdh:Lcom/google/android/gms/internal/jl;

    new-instance p1, Lcom/google/android/gms/internal/jl;

    const-string v0, "time_active"

    invoke-direct {p1, p0, v0, v6, v7}, Lcom/google/android/gms/internal/jl;-><init>(Lcom/google/android/gms/internal/jj;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/jj;->zzjdi:Lcom/google/android/gms/internal/jl;

    new-instance p1, Lcom/google/android/gms/internal/jl;

    const-string v0, "midnight_offset"

    invoke-direct {p1, p0, v0, v6, v7}, Lcom/google/android/gms/internal/jl;-><init>(Lcom/google/android/gms/internal/jj;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/jj;->zzjcv:Lcom/google/android/gms/internal/jl;

    new-instance p1, Lcom/google/android/gms/internal/jl;

    const-string v0, "first_open_time"

    invoke-direct {p1, p0, v0, v6, v7}, Lcom/google/android/gms/internal/jl;-><init>(Lcom/google/android/gms/internal/jj;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/jj;->zzjcw:Lcom/google/android/gms/internal/jl;

    new-instance p1, Lcom/google/android/gms/internal/jn;

    const-string v0, "app_instance_id"

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/gms/internal/jn;-><init>(Lcom/google/android/gms/internal/jj;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/jj;->zzjcx:Lcom/google/android/gms/internal/jn;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/jj;->d:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/jj;)Landroid/content/SharedPreferences;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/jj;->h()Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private final h()Landroid/content/SharedPreferences;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/kv;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/kw;->k()V

    iget-object v0, p0, Lcom/google/android/gms/internal/jj;->f:Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method final a(Ljava/lang/String;)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, ""

    invoke-virtual {p0}, Lcom/google/android/gms/internal/kv;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/kv;->zzws()Lcom/google/android/gms/common/util/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/d;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/jj;->g:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-wide v4, p0, Lcom/google/android/gms/internal/jj;->i:J

    cmp-long v6, v1, v4

    if-gez v6, :cond_0

    new-instance p1, Landroid/util/Pair;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/jj;->h:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/kv;->zzaxa()Lcom/google/android/gms/internal/ic;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/ip;->zzjae:Lcom/google/android/gms/internal/iq;

    invoke-virtual {v3, p1, v4}, Lcom/google/android/gms/internal/ic;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/iq;)J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/gms/internal/jj;->i:J

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->setShouldSkipGmsCoreVersionCheck(Z)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/kv;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/jj;->g:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/jj;->h:Z

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/jj;->g:Ljava/lang/String;

    if-nez p1, :cond_2

    iput-object v0, p0, Lcom/google/android/gms/internal/jj;->g:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/kv;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/iz;->zzazi()Lcom/google/android/gms/internal/jb;

    move-result-object v1

    const-string v2, "Unable to get advertising id"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/jb;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/jj;->g:Ljava/lang/String;

    :cond_2
    :goto_0
    const/4 p1, 0x0

    invoke-static {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->setShouldSkipGmsCoreVersionCheck(Z)V

    new-instance p1, Landroid/util/Pair;

    iget-object v0, p0, Lcom/google/android/gms/internal/jj;->g:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/jj;->h:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method final a(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/kv;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/kv;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iz;->zzazj()Lcom/google/android/gms/internal/jb;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "Setting useService"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/jb;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/jj;->h()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "use_service"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method protected final a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final a_()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/kv;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "com.google.android.gms.measurement.prefs"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/jj;->f:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/google/android/gms/internal/jj;->f:Landroid/content/SharedPreferences;

    const-string v2, "has_been_opened"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/jj;->zzjdj:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/jj;->zzjdj:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/jj;->f:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/kv;->zzve()V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/jj;->a(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const-string v0, "MD5"

    invoke-static {v0}, Lcom/google/android/gms/internal/na;->b(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    invoke-direct {v5, v2, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v5, v3, v4

    const-string p1, "%032X"

    invoke-static {v1, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final b(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/kv;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/kv;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iz;->zzazj()Lcom/google/android/gms/internal/jb;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "Setting measurementEnabled"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/jb;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/jj;->h()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "measurement_enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method final c()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/kv;->zzve()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/jj;->h()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "gmp_app_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final c(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/kv;->zzve()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/jj;->h()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "gmp_app_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method final c(Z)Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/kv;->zzve()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/jj;->h()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "measurement_enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method final d()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/jj;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/kv;->zzws()Lcom/google/android/gms/common/util/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/d;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/gms/internal/jj;->c:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/jj;->b:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final e()Ljava/lang/Boolean;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/kv;->zzve()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/jj;->h()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "use_service"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/jj;->h()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method final f()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/kv;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/kv;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iz;->zzazj()Lcom/google/android/gms/internal/jb;

    move-result-object v0

    const-string v1, "Clearing collection preferences."

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jb;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/jj;->h()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "measurement_enabled"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/jj;->c(Z)Z

    move-result v1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/jj;->h()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/jj;->b(Z)V

    :cond_1
    return-void
.end method

.method protected final g()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/kv;->zzve()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/jj;->h()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "previous_os_version"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/kv;->zzawo()Lcom/google/android/gms/internal/ij;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/kw;->k()V

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/jj;->h()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-object v0
.end method
