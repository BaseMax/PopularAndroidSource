.class final Lcom/google/android/gms/analytics/h$a;
.super Lcom/google/android/gms/internal/x;

# interfaces
.implements Lcom/google/android/gms/analytics/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field private c:J

.field private d:Z

.field private e:J

.field private synthetic f:Lcom/google/android/gms/analytics/h;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/analytics/h;Lcom/google/android/gms/internal/z;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/h$a;->f:Lcom/google/android/gms/analytics/h;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/x;-><init>(Lcom/google/android/gms/internal/z;)V

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/google/android/gms/analytics/h$a;->c:J

    return-void
.end method

.method private final a()V
    .locals 5

    iget-wide v0, p0, Lcom/google/android/gms/analytics/h$a;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/h$a;->a:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1000
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/w;->zzww()Lcom/google/android/gms/analytics/d;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/h$a;->f:Lcom/google/android/gms/analytics/h;

    .line 2000
    iget-object v1, v1, Lcom/google/android/gms/analytics/h;->b:Lcom/google/android/gms/analytics/h$a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/d;->b(Lcom/google/android/gms/analytics/d$a;)V

    return-void

    .line 0
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/w;->zzww()Lcom/google/android/gms/analytics/d;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/h$a;->f:Lcom/google/android/gms/analytics/h;

    .line 1000
    iget-object v1, v1, Lcom/google/android/gms/analytics/h;->b:Lcom/google/android/gms/analytics/h$a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/d;->a(Lcom/google/android/gms/analytics/d$a;)V

    return-void
.end method


# virtual methods
.method public final enableAutoActivityTracking(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/analytics/h$a;->a:Z

    invoke-direct {p0}, Lcom/google/android/gms/analytics/h$a;->a()V

    return-void
.end method

.method public final setSessionTimeout(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/analytics/h$a;->c:J

    invoke-direct {p0}, Lcom/google/android/gms/analytics/h$a;->a()V

    return-void
.end method

.method public final zzl(Landroid/app/Activity;)V
    .locals 10

    iget v0, p0, Lcom/google/android/gms/analytics/h$a;->b:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 3000
    iget-object v0, p0, Lcom/google/android/gms/internal/w;->zzdta:Lcom/google/android/gms/internal/z;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/z;->zzws()Lcom/google/android/gms/common/util/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/analytics/h$a;->e:J

    const-wide/16 v6, 0x3e8

    iget-wide v8, p0, Lcom/google/android/gms/analytics/h$a;->c:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    add-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/google/android/gms/analytics/h$a;->d:Z

    :cond_1
    iget v0, p0, Lcom/google/android/gms/analytics/h$a;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/analytics/h$a;->b:I

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/h$a;->a:Z

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/analytics/h$a;->f:Lcom/google/android/gms/analytics/h;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/h;->setCampaignParamsOnNextHit(Landroid/net/Uri;)V

    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "&t"

    const-string v2, "screenview"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/analytics/h$a;->f:Lcom/google/android/gms/analytics/h;

    .line 4000
    iget-object v2, v1, Lcom/google/android/gms/analytics/h;->c:Lcom/google/android/gms/internal/cd;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/analytics/h$a;->f:Lcom/google/android/gms/analytics/h;

    .line 5000
    iget-object v2, v2, Lcom/google/android/gms/analytics/h;->c:Lcom/google/android/gms/internal/cd;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    iget-object v2, v2, Lcom/google/android/gms/internal/cd;->zzdzi:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_4

    move-object v3, v2

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    :cond_4
    :goto_1
    const-string v2, "&cd"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/analytics/h;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "&dr"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v2, 0x0

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    const-string v3, "android.intent.extra.REFERRER_NAME"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_2

    :cond_6
    move-object v2, p1

    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object p1, p0, Lcom/google/android/gms/analytics/h$a;->f:Lcom/google/android/gms/analytics/h;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/h;->send(Ljava/util/Map;)V

    :cond_8
    return-void
.end method

.method public final zzm(Landroid/app/Activity;)V
    .locals 2

    iget p1, p0, Lcom/google/android/gms/analytics/h$a;->b:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/analytics/h$a;->b:I

    iget p1, p0, Lcom/google/android/gms/analytics/h$a;->b:I

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/analytics/h$a;->b:I

    iget p1, p0, Lcom/google/android/gms/analytics/h$a;->b:I

    if-nez p1, :cond_0

    .line 6000
    iget-object p1, p0, Lcom/google/android/gms/internal/w;->zzdta:Lcom/google/android/gms/internal/z;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/z;->zzws()Lcom/google/android/gms/common/util/d;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/d;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/analytics/h$a;->e:J

    :cond_0
    return-void
.end method

.method public final zzvf()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized zzvg()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/h$a;->d:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/analytics/h$a;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
