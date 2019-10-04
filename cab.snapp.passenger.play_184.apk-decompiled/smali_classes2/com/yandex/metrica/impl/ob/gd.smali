.class public Lcom/yandex/metrica/impl/ob/gd;
.super Lcom/yandex/metrica/impl/ob/ge;
.source "SourceFile"


# static fields
.field private static final a:Lcom/yandex/metrica/impl/ob/je;

.field private static final b:Lcom/yandex/metrica/impl/ob/je;

.field private static final c:Lcom/yandex/metrica/impl/ob/je;

.field private static final d:Lcom/yandex/metrica/impl/ob/je;

.field private static final e:Lcom/yandex/metrica/impl/ob/je;

.field private static final f:Lcom/yandex/metrica/impl/ob/je;

.field private static final g:Lcom/yandex/metrica/impl/ob/je;

.field private static final h:Lcom/yandex/metrica/impl/ob/je;

.field private static final i:Lcom/yandex/metrica/impl/ob/je;

.field private static final j:Lcom/yandex/metrica/impl/ob/je;

.field private static final k:Lcom/yandex/metrica/impl/ob/je;

.field private static final l:Lcom/yandex/metrica/impl/ob/je;

.field private static final m:Lcom/yandex/metrica/impl/ob/je;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "COLLECT_INSTALLED_APPS"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/gd;->a:Lcom/yandex/metrica/impl/ob/je;

    .line 24
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "IDENTITY_SEND_TIME"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/gd;->b:Lcom/yandex/metrica/impl/ob/je;

    .line 25
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "PERMISSIONS_CHECK_TIME"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/gd;->c:Lcom/yandex/metrica/impl/ob/je;

    .line 26
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "USER_INFO"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/gd;->d:Lcom/yandex/metrica/impl/ob/je;

    .line 27
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "PROFILE_ID"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/gd;->e:Lcom/yandex/metrica/impl/ob/je;

    .line 29
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "APP_ENVIRONMENT"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/gd;->f:Lcom/yandex/metrica/impl/ob/je;

    .line 30
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "APP_ENVIRONMENT_REVISION"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/gd;->g:Lcom/yandex/metrica/impl/ob/je;

    .line 32
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "LAST_MIGRATION_VERSION"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/gd;->h:Lcom/yandex/metrica/impl/ob/je;

    .line 33
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "LAST_APP_VERSION_WITH_FEATURES"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/gd;->i:Lcom/yandex/metrica/impl/ob/je;

    .line 35
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "APPLICATION_FEATURES"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/gd;->j:Lcom/yandex/metrica/impl/ob/je;

    .line 36
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "CURRENT_SESSION_ID"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/gd;->k:Lcom/yandex/metrica/impl/ob/je;

    .line 37
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "ATTRIBUTION_ID"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/gd;->l:Lcom/yandex/metrica/impl/ob/je;

    .line 38
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "LAST_STAT_SENDING_DISABLED_REPORTING_TIMESTAMP"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/gd;->m:Lcom/yandex/metrica/impl/ob/je;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/impl/ob/fr;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/ge;-><init>(Lcom/yandex/metrica/impl/ob/fr;)V

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1

    .line 56
    sget-object v0, Lcom/yandex/metrica/impl/ob/gd;->i:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/gd;->b(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public a(J)J
    .locals 1

    .line 48
    sget-object v0, Lcom/yandex/metrica/impl/ob/gd;->b:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/gd;->b(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public a()Lcom/yandex/metrica/impl/b$a;
    .locals 5

    .line 60
    monitor-enter p0

    .line 61
    :try_start_0
    new-instance v0, Lcom/yandex/metrica/impl/b$a;

    sget-object v1, Lcom/yandex/metrica/impl/ob/gd;->f:Lcom/yandex/metrica/impl/ob/je;

    .line 62
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "{}"

    invoke-virtual {p0, v1, v2}, Lcom/yandex/metrica/impl/ob/gd;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/yandex/metrica/impl/ob/gd;->g:Lcom/yandex/metrica/impl/ob/je;

    .line 63
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/yandex/metrica/impl/ob/gd;->b(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/yandex/metrica/impl/b$a;-><init>(Ljava/lang/String;J)V

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 65
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/yandex/metrica/CounterConfiguration$a;)Lcom/yandex/metrica/impl/ob/gd;
    .locals 3

    .line 98
    sget-object v0, Lcom/yandex/metrica/impl/ob/gd;->a:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Lcom/yandex/metrica/CounterConfiguration$a;->d:I

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/yandex/metrica/impl/ob/gd;->a(Ljava/lang/String;J)Lcom/yandex/metrica/impl/ob/ge;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/gd;

    return-object p1
.end method

.method public a(Lcom/yandex/metrica/impl/b$a;)Lcom/yandex/metrica/impl/ob/gd;
    .locals 3

    .line 82
    monitor-enter p0

    .line 83
    :try_start_0
    sget-object v0, Lcom/yandex/metrica/impl/ob/gd;->f:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/yandex/metrica/impl/b$a;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/gd;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ge;

    .line 84
    sget-object v0, Lcom/yandex/metrica/impl/ob/gd;->g:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p1, Lcom/yandex/metrica/impl/b$a;->b:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/yandex/metrica/impl/ob/gd;->a(Ljava/lang/String;J)Lcom/yandex/metrica/impl/ob/ge;

    .line 85
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/gd;
    .locals 2

    .line 122
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "SESSION_"

    invoke-direct {v0, v1, p1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/gd;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ge;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/gd;

    return-object p1
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 78
    sget-object v0, Lcom/yandex/metrica/impl/ob/gd;->d:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/gd;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(J)J
    .locals 1

    .line 52
    sget-object v0, Lcom/yandex/metrica/impl/ob/gd;->c:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/gd;->b(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public b(I)Lcom/yandex/metrica/impl/ob/gd;
    .locals 1

    .line 114
    sget-object v0, Lcom/yandex/metrica/impl/ob/gd;->i:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/gd;->a(Ljava/lang/String;I)Lcom/yandex/metrica/impl/ob/ge;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/gd;

    return-object p1
.end method

.method public b(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/gd;
    .locals 1

    .line 102
    sget-object v0, Lcom/yandex/metrica/impl/ob/gd;->d:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/gd;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ge;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/gd;

    return-object p1
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .line 69
    sget-object v0, Lcom/yandex/metrica/impl/ob/gd;->j:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/gd;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/yandex/metrica/CounterConfiguration$a;
    .locals 3

    .line 73
    sget-object v0, Lcom/yandex/metrica/impl/ob/gd;->a:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/yandex/metrica/CounterConfiguration$a;->a:Lcom/yandex/metrica/CounterConfiguration$a;

    iget v1, v1, Lcom/yandex/metrica/CounterConfiguration$a;->d:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/yandex/metrica/impl/ob/gd;->b(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/yandex/metrica/CounterConfiguration$a;->a(I)Lcom/yandex/metrica/CounterConfiguration$a;

    move-result-object v0

    return-object v0
.end method

.method public c(I)Lcom/yandex/metrica/impl/ob/gd;
    .locals 1

    .line 140
    sget-object v0, Lcom/yandex/metrica/impl/ob/gd;->l:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/gd;->a(Ljava/lang/String;I)Lcom/yandex/metrica/impl/ob/ge;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/gd;

    return-object p1
.end method

.method public c(J)Lcom/yandex/metrica/impl/ob/gd;
    .locals 1

    .line 90
    sget-object v0, Lcom/yandex/metrica/impl/ob/gd;->b:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/gd;->a(Ljava/lang/String;J)Lcom/yandex/metrica/impl/ob/ge;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/gd;

    return-object p1
.end method

.method public c(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/gd;
    .locals 1

    .line 118
    sget-object v0, Lcom/yandex/metrica/impl/ob/gd;->j:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/gd;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ge;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/gd;

    return-object p1
.end method

.method public d(I)I
    .locals 1

    .line 144
    sget-object v0, Lcom/yandex/metrica/impl/ob/gd;->l:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/gd;->b(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public d()J
    .locals 3

    .line 106
    sget-object v0, Lcom/yandex/metrica/impl/ob/gd;->h:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/yandex/metrica/impl/ob/gd;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public d(J)Lcom/yandex/metrica/impl/ob/gd;
    .locals 1

    .line 94
    sget-object v0, Lcom/yandex/metrica/impl/ob/gd;->c:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/gd;->a(Ljava/lang/String;J)Lcom/yandex/metrica/impl/ob/ge;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/gd;

    return-object p1
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 126
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "SESSION_"

    invoke-direct {v0, v1, p1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/gd;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public e(J)Lcom/yandex/metrica/impl/ob/gd;
    .locals 1

    .line 110
    sget-object v0, Lcom/yandex/metrica/impl/ob/gd;->h:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/gd;->a(Ljava/lang/String;J)Lcom/yandex/metrica/impl/ob/ge;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/gd;

    return-object p1
.end method

.method public e(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/gd;
    .locals 1

    .line 135
    sget-object v0, Lcom/yandex/metrica/impl/ob/gd;->e:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/gd;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ge;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/gd;

    return-object p1
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 131
    sget-object v0, Lcom/yandex/metrica/impl/ob/gd;->e:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/gd;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f(J)J
    .locals 1

    .line 148
    sget-object v0, Lcom/yandex/metrica/impl/ob/gd;->k:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/gd;->b(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public g(J)Lcom/yandex/metrica/impl/ob/gd;
    .locals 1

    .line 153
    sget-object v0, Lcom/yandex/metrica/impl/ob/gd;->k:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/gd;->a(Ljava/lang/String;J)Lcom/yandex/metrica/impl/ob/ge;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/gd;

    return-object p1
.end method

.method public h(J)J
    .locals 1

    .line 157
    sget-object v0, Lcom/yandex/metrica/impl/ob/gd;->m:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/gd;->b(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public i(J)Lcom/yandex/metrica/impl/ob/gd;
    .locals 1

    .line 161
    sget-object v0, Lcom/yandex/metrica/impl/ob/gd;->m:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/gd;->a(Ljava/lang/String;J)Lcom/yandex/metrica/impl/ob/ge;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/gd;

    return-object p1
.end method
