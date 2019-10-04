.class public Lcom/yandex/metrica/impl/ob/ee;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/ee$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/ac;

.field private final b:Lcom/yandex/metrica/impl/ob/el;

.field private final c:Lcom/yandex/metrica/impl/ob/eg;

.field private d:J

.field private e:J

.field private f:Ljava/util/concurrent/atomic/AtomicLong;

.field private g:Z

.field private volatile h:Lcom/yandex/metrica/impl/ob/ee$a;

.field private i:J

.field private j:J

.field private k:Lcom/yandex/metrica/impl/ob/np;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/ac;Lcom/yandex/metrica/impl/ob/el;Lcom/yandex/metrica/impl/ob/eg;)V
    .locals 1

    .line 45
    new-instance v0, Lcom/yandex/metrica/impl/ob/np;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/np;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/yandex/metrica/impl/ob/ee;-><init>(Lcom/yandex/metrica/impl/ob/ac;Lcom/yandex/metrica/impl/ob/el;Lcom/yandex/metrica/impl/ob/eg;Lcom/yandex/metrica/impl/ob/np;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/ac;Lcom/yandex/metrica/impl/ob/el;Lcom/yandex/metrica/impl/ob/eg;Lcom/yandex/metrica/impl/ob/np;)V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ee;->a:Lcom/yandex/metrica/impl/ob/ac;

    .line 51
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/ee;->b:Lcom/yandex/metrica/impl/ob/el;

    .line 52
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/ee;->c:Lcom/yandex/metrica/impl/ob/eg;

    .line 53
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/ee;->k:Lcom/yandex/metrica/impl/ob/np;

    .line 1058
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/ee;->c:Lcom/yandex/metrica/impl/ob/eg;

    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/ee;->k:Lcom/yandex/metrica/impl/ob/np;

    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/np;->c()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/yandex/metrica/impl/ob/eg;->b(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/yandex/metrica/impl/ob/ee;->e:J

    .line 1059
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/ee;->c:Lcom/yandex/metrica/impl/ob/eg;

    const-wide/16 p2, -0x1

    invoke-virtual {p1, p2, p3}, Lcom/yandex/metrica/impl/ob/eg;->a(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/yandex/metrica/impl/ob/ee;->d:J

    .line 1060
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/ee;->c:Lcom/yandex/metrica/impl/ob/eg;

    const-wide/16 p3, 0x0

    invoke-virtual {p2, p3, p4}, Lcom/yandex/metrica/impl/ob/eg;->c(J)J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ee;->f:Ljava/util/concurrent/atomic/AtomicLong;

    .line 1061
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/ee;->c:Lcom/yandex/metrica/impl/ob/eg;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/eg;->a(Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ob/ee;->g:Z

    .line 1062
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/ee;->c:Lcom/yandex/metrica/impl/ob/eg;

    invoke-virtual {p1, p3, p4}, Lcom/yandex/metrica/impl/ob/eg;->d(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/yandex/metrica/impl/ob/ee;->i:J

    .line 1063
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/ee;->c:Lcom/yandex/metrica/impl/ob/eg;

    iget-wide p2, p0, Lcom/yandex/metrica/impl/ob/ee;->i:J

    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/ee;->e:J

    sub-long/2addr p2, v0

    invoke-virtual {p1, p2, p3}, Lcom/yandex/metrica/impl/ob/eg;->e(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/yandex/metrica/impl/ob/ee;->j:J

    return-void
.end method

.method private d(J)J
    .locals 3

    .line 105
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/ee;->e:J

    sub-long/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p1

    return-wide p1
.end method

.method private h()Lcom/yandex/metrica/impl/ob/ee$a;
    .locals 4

    .line 152
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ee;->h:Lcom/yandex/metrica/impl/ob/ee$a;

    if-nez v0, :cond_1

    .line 153
    monitor-enter p0

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ee;->h:Lcom/yandex/metrica/impl/ob/ee$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 156
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ee;->a:Lcom/yandex/metrica/impl/ob/ac;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ac;->l()Lcom/yandex/metrica/impl/ob/fo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ee;->c()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ee;->a()Lcom/yandex/metrica/impl/ob/en;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/yandex/metrica/impl/ob/fo;->b(JLcom/yandex/metrica/impl/ob/en;)Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "report_request_parameters"

    .line 157
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 162
    new-instance v1, Lorg/a/c;

    invoke-direct {v1, v0}, Lorg/a/c;-><init>(Ljava/lang/String;)V

    .line 163
    new-instance v0, Lcom/yandex/metrica/impl/ob/ee$a;

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/ee$a;-><init>(Lorg/a/c;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ee;->h:Lcom/yandex/metrica/impl/ob/ee$a;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    :catch_0
    :cond_0
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 174
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ee;->h:Lcom/yandex/metrica/impl/ob/ee$a;

    return-object v0
.end method


# virtual methods
.method protected a()Lcom/yandex/metrica/impl/ob/en;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ee;->c:Lcom/yandex/metrica/impl/ob/eg;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/eg;->a()Lcom/yandex/metrica/impl/ob/en;

    move-result-object v0

    return-object v0
.end method

.method public a(Z)V
    .locals 1

    .line 145
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/ee;->g:Z

    if-eq v0, p1, :cond_0

    .line 146
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ob/ee;->g:Z

    .line 147
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/ee;->b:Lcom/yandex/metrica/impl/ob/el;

    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/ee;->g:Z

    invoke-interface {p1, v0}, Lcom/yandex/metrica/impl/ob/el;->a(Z)Lcom/yandex/metrica/impl/ob/em;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/em;->h()V

    :cond_0
    return-void
.end method

.method a(J)Z
    .locals 10

    .line 83
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/ee;->d:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-ltz v6, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1092
    :goto_0
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/ee;->h()Lcom/yandex/metrica/impl/ob/ee$a;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1095
    iget-object v6, p0, Lcom/yandex/metrica/impl/ob/ee;->a:Lcom/yandex/metrica/impl/ob/ac;

    invoke-virtual {v6}, Lcom/yandex/metrica/impl/ob/ac;->k()Lcom/yandex/metrica/impl/ob/le;

    move-result-object v6

    .line 1096
    invoke-virtual {v1, v6}, Lcom/yandex/metrica/impl/ob/ee$a;->a(Lcom/yandex/metrica/impl/ob/le;)Z

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 1109
    :goto_1
    iget-wide v6, p0, Lcom/yandex/metrica/impl/ob/ee;->i:J

    .line 1110
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, p1, p2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v8

    sub-long/2addr v8, v6

    .line 1111
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/ee;->d(J)J

    move-result-wide p1

    cmp-long v6, v8, v2

    if-ltz v6, :cond_3

    .line 1117
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ee;->b()I

    move-result v2

    int-to-long v2, v2

    cmp-long v6, v8, v2

    if-gez v6, :cond_3

    sget-wide v2, Lcom/yandex/metrica/impl/ob/eh;->c:J

    cmp-long v6, p1, v2

    if-ltz v6, :cond_2

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p1, 0x1

    :goto_3
    xor-int/2addr p1, v4

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    return v4

    :cond_4
    return v5
.end method

.method protected b()I
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ee;->c:Lcom/yandex/metrica/impl/ob/eg;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ee;->a:Lcom/yandex/metrica/impl/ob/ac;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/ac;->k()Lcom/yandex/metrica/impl/ob/le;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/le;->O()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/eg;->a(I)I

    move-result v0

    return v0
.end method

.method b(J)V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ee;->b:Lcom/yandex/metrica/impl/ob/el;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/yandex/metrica/impl/ob/ee;->i:J

    invoke-interface {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/el;->b(J)Lcom/yandex/metrica/impl/ob/em;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/em;->h()V

    return-void
.end method

.method public c()J
    .locals 2

    .line 75
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/ee;->d:J

    return-wide v0
.end method

.method c(J)J
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ee;->b:Lcom/yandex/metrica/impl/ob/el;

    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/ee;->d(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/yandex/metrica/impl/ob/ee;->j:J

    invoke-interface {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/el;->c(J)Lcom/yandex/metrica/impl/ob/em;

    .line 131
    iget-wide p1, p0, Lcom/yandex/metrica/impl/ob/ee;->j:J

    return-wide p1
.end method

.method d()J
    .locals 5

    .line 79
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/ee;->i:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v3, p0, Lcom/yandex/metrica/impl/ob/ee;->e:J

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/yandex/metrica/impl/ob/ee;->j:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method declared-synchronized e()V
    .locals 1

    monitor-enter p0

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ee;->b:Lcom/yandex/metrica/impl/ob/el;

    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/el;->a()V

    const/4 v0, 0x0

    .line 122
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ee;->h:Lcom/yandex/metrica/impl/ob/ee$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method f()J
    .locals 5

    .line 135
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ee;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    .line 136
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ee;->b:Lcom/yandex/metrica/impl/ob/el;

    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/ee;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lcom/yandex/metrica/impl/ob/el;->a(J)Lcom/yandex/metrica/impl/ob/em;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/em;->h()V

    return-wide v0
.end method

.method g()Z
    .locals 5

    .line 141
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/ee;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ee;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Session{mId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/ee;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mInitTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/ee;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentReportId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ee;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSessionRequestParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ee;->h:Lcom/yandex/metrica/impl/ob/ee$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSleepStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/ee;->i:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
