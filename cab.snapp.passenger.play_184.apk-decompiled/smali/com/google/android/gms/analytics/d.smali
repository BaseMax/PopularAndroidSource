.class public final Lcom/google/android/gms/analytics/d;
.super Lcom/google/android/gms/analytics/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/analytics/d$b;,
        Lcom/google/android/gms/analytics/d$a;
    }
.end annotation


# static fields
.field private static d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private e:Z

.field private f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/analytics/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Z

.field private volatile i:Z

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/android/gms/analytics/d;->d:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/z;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/i;-><init>(Lcom/google/android/gms/internal/z;)V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/analytics/d;->f:Ljava/util/Set;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/d;
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/z;->zzbm(Landroid/content/Context;)Lcom/google/android/gms/internal/z;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/z;->zzxi()Lcom/google/android/gms/analytics/d;

    move-result-object p0

    return-object p0
.end method

.method public static zzur()V
    .locals 3

    const-class v0, Lcom/google/android/gms/analytics/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/analytics/d;->d:Ljava/util/List;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/google/android/gms/analytics/d;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    sput-object v1, Lcom/google/android/gms/analytics/d;->d:Ljava/util/List;

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method final a(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/d;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/analytics/d$a;

    invoke-interface {v1, p1}, Lcom/google/android/gms/analytics/d$a;->zzl(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method final a(Lcom/google/android/gms/analytics/d$a;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/d;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6000
    iget-object p1, p0, Lcom/google/android/gms/analytics/i;->a:Lcom/google/android/gms/internal/z;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/z;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/app/Application;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/analytics/d;->enableAutoActivityReports(Landroid/app/Application;)V

    :cond_0
    return-void
.end method

.method final b(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/d;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/analytics/d$a;

    invoke-interface {v1, p1}, Lcom/google/android/gms/analytics/d$a;->zzm(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method final b(Lcom/google/android/gms/analytics/d$a;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/d;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final dispatchLocalHits()V
    .locals 1

    .line 9000
    iget-object v0, p0, Lcom/google/android/gms/analytics/i;->a:Lcom/google/android/gms/internal/z;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/z;->zzwx()Lcom/google/android/gms/internal/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/o;->zzwn()V

    return-void
.end method

.method public final enableAutoActivityReports(Landroid/app/Application;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/d;->g:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/analytics/d$b;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/d$b;-><init>(Lcom/google/android/gms/analytics/d;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/analytics/d;->g:Z

    :cond_0
    return-void
.end method

.method public final getAppOptOut()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/d;->i:Z

    return v0
.end method

.method public final getLogger()Lcom/google/android/gms/analytics/f;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/bo;->getLogger()Lcom/google/android/gms/analytics/f;

    move-result-object v0

    return-object v0
.end method

.method public final initialize()V
    .locals 2

    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/analytics/i;->a:Lcom/google/android/gms/internal/z;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/z;->zzwz()Lcom/google/android/gms/internal/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cf;->zzaai()Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cf;->zzaaj()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cf;->zzaak()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/analytics/d;->setDryRun(Z)V

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cf;->zzaai()Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/d;->e:Z

    return-void
.end method

.method public final isDryRunEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/d;->h:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/d;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final newTracker(I)Lcom/google/android/gms/analytics/h;
    .locals 7

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/google/android/gms/analytics/h;

    .line 3000
    iget-object v1, p0, Lcom/google/android/gms/analytics/i;->a:Lcom/google/android/gms/internal/z;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/analytics/h;-><init>(Lcom/google/android/gms/internal/z;Ljava/lang/String;)V

    if-lez p1, :cond_c

    new-instance v1, Lcom/google/android/gms/internal/cb;

    .line 4000
    iget-object v2, p0, Lcom/google/android/gms/analytics/i;->a:Lcom/google/android/gms/internal/z;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/cb;-><init>(Lcom/google/android/gms/internal/z;)V

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/cb;->zzav(I)Lcom/google/android/gms/internal/au;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/cd;

    if-eqz p1, :cond_c

    const-string v1, "Loading Tracker config values"

    .line 5000
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/w;->zzdu(Ljava/lang/String;)V

    iput-object p1, v0, Lcom/google/android/gms/analytics/h;->c:Lcom/google/android/gms/internal/cd;

    iget-object p1, v0, Lcom/google/android/gms/analytics/h;->c:Lcom/google/android/gms/internal/cd;

    iget-object p1, p1, Lcom/google/android/gms/internal/cd;->zzdom:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget-object p1, v0, Lcom/google/android/gms/analytics/h;->c:Lcom/google/android/gms/internal/cd;

    iget-object p1, p1, Lcom/google/android/gms/internal/cd;->zzdom:Ljava/lang/String;

    const-string v3, "&tid"

    invoke-virtual {v0, v3, p1}, Lcom/google/android/gms/analytics/h;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "trackingId loaded"

    invoke-virtual {v0, v3, p1}, Lcom/google/android/gms/internal/w;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-object p1, v0, Lcom/google/android/gms/analytics/h;->c:Lcom/google/android/gms/internal/cd;

    iget-wide v3, p1, Lcom/google/android/gms/internal/cd;->zzdzd:D

    const-wide/16 v5, 0x0

    cmpl-double p1, v3, v5

    if-ltz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    iget-object p1, v0, Lcom/google/android/gms/analytics/h;->c:Lcom/google/android/gms/internal/cd;

    iget-wide v3, p1, Lcom/google/android/gms/internal/cd;->zzdzd:D

    invoke-static {v3, v4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    const-string v3, "&sf"

    invoke-virtual {v0, v3, p1}, Lcom/google/android/gms/analytics/h;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Sample frequency loaded"

    invoke-virtual {v0, v3, p1}, Lcom/google/android/gms/internal/w;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    iget-object p1, v0, Lcom/google/android/gms/analytics/h;->c:Lcom/google/android/gms/internal/cd;

    iget p1, p1, Lcom/google/android/gms/internal/cd;->zzdze:I

    if-ltz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_5

    iget-object p1, v0, Lcom/google/android/gms/analytics/h;->c:Lcom/google/android/gms/internal/cd;

    iget p1, p1, Lcom/google/android/gms/internal/cd;->zzdze:I

    int-to-long v3, p1

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/analytics/h;->setSessionTimeout(J)V

    const-string v3, "Session timeout loaded"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lcom/google/android/gms/internal/w;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    iget-object p1, v0, Lcom/google/android/gms/analytics/h;->c:Lcom/google/android/gms/internal/cd;

    iget p1, p1, Lcom/google/android/gms/internal/cd;->zzdzf:I

    const/4 v3, -0x1

    if-eq p1, v3, :cond_7

    iget-object p1, v0, Lcom/google/android/gms/analytics/h;->c:Lcom/google/android/gms/internal/cd;

    iget p1, p1, Lcom/google/android/gms/internal/cd;->zzdzf:I

    if-ne p1, v2, :cond_6

    const/4 p1, 0x1

    goto :goto_3

    :cond_6
    const/4 p1, 0x0

    :goto_3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/h;->enableAutoActivityTracking(Z)V

    const-string v4, "Auto activity tracking loaded"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v4, p1}, Lcom/google/android/gms/internal/w;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    iget-object p1, v0, Lcom/google/android/gms/analytics/h;->c:Lcom/google/android/gms/internal/cd;

    iget p1, p1, Lcom/google/android/gms/internal/cd;->zzdzg:I

    if-eq p1, v3, :cond_a

    iget-object p1, v0, Lcom/google/android/gms/analytics/h;->c:Lcom/google/android/gms/internal/cd;

    iget p1, p1, Lcom/google/android/gms/internal/cd;->zzdzg:I

    if-ne p1, v2, :cond_8

    const/4 p1, 0x1

    goto :goto_4

    :cond_8
    const/4 p1, 0x0

    :goto_4
    if-eqz p1, :cond_9

    const-string v3, "&aip"

    const-string v4, "1"

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/analytics/h;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const-string v3, "Anonymize ip loaded"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lcom/google/android/gms/internal/w;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_a
    iget-object p1, v0, Lcom/google/android/gms/analytics/h;->c:Lcom/google/android/gms/internal/cd;

    iget p1, p1, Lcom/google/android/gms/internal/cd;->zzdzh:I

    if-ne p1, v2, :cond_b

    const/4 v1, 0x1

    :cond_b
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/h;->enableExceptionReporting(Z)V

    :cond_c
    invoke-virtual {v0}, Lcom/google/android/gms/internal/x;->initialize()V

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final newTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/h;
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/google/android/gms/analytics/h;

    .line 2000
    iget-object v1, p0, Lcom/google/android/gms/analytics/i;->a:Lcom/google/android/gms/internal/z;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/analytics/h;-><init>(Lcom/google/android/gms/internal/z;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/x;->initialize()V

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final reportActivityStart(Landroid/app/Activity;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/d;->g:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/analytics/d;->a(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public final reportActivityStop(Landroid/app/Activity;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/d;->g:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/analytics/d;->b(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public final setAppOptOut(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/analytics/d;->i:Z

    iget-boolean p1, p0, Lcom/google/android/gms/analytics/d;->i:Z

    if-eqz p1, :cond_0

    .line 7000
    iget-object p1, p0, Lcom/google/android/gms/analytics/i;->a:Lcom/google/android/gms/internal/z;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/z;->zzwx()Lcom/google/android/gms/internal/o;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/o;->zzwm()V

    :cond_0
    return-void
.end method

.method public final setDryRun(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/analytics/d;->h:Z

    return-void
.end method

.method public final setLocalDispatchPeriod(I)V
    .locals 1

    .line 8000
    iget-object v0, p0, Lcom/google/android/gms/analytics/i;->a:Lcom/google/android/gms/internal/z;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/z;->zzwx()Lcom/google/android/gms/internal/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/o;->setLocalDispatchPeriod(I)V

    return-void
.end method

.method public final setLogger(Lcom/google/android/gms/analytics/f;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/bo;->setLogger(Lcom/google/android/gms/analytics/f;)V

    iget-boolean p1, p0, Lcom/google/android/gms/analytics/d;->j:Z

    if-nez p1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/bf;->zzdvy:Lcom/google/android/gms/internal/bg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/bg;->get()Ljava/lang/Object;

    sget-object p1, Lcom/google/android/gms/internal/bf;->zzdvy:Lcom/google/android/gms/internal/bg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/bg;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x70

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "GoogleAnalytics.setLogger() is deprecated. To enable debug logging, please run:\nadb shell setprop log.tag."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " DEBUG"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/analytics/d;->j:Z

    :cond_0
    return-void
.end method
