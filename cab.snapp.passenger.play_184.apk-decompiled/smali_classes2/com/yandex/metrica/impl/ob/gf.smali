.class public Lcom/yandex/metrica/impl/ob/gf;
.super Lcom/yandex/metrica/impl/ob/ge;
.source "SourceFile"


# static fields
.field static final a:Lcom/yandex/metrica/impl/ob/je;

.field static final b:Lcom/yandex/metrica/impl/ob/je;

.field static final c:Lcom/yandex/metrica/impl/ob/je;

.field static final d:Lcom/yandex/metrica/impl/ob/je;

.field static final e:Lcom/yandex/metrica/impl/ob/je;

.field static final f:Lcom/yandex/metrica/impl/ob/je;

.field static final g:Lcom/yandex/metrica/impl/ob/je;

.field static final h:Lcom/yandex/metrica/impl/ob/je;

.field static final i:Lcom/yandex/metrica/impl/ob/je;

.field static final j:Lcom/yandex/metrica/impl/ob/je;

.field static final k:Lcom/yandex/metrica/impl/ob/je;

.field static final l:Lcom/yandex/metrica/impl/ob/je;

.field private static final m:Lcom/yandex/metrica/impl/ob/je;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "LOCATION_TRACKING_ENABLED"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/gf;->a:Lcom/yandex/metrica/impl/ob/je;

    .line 24
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "COLLECT_INSTALLED_APPS"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/gf;->b:Lcom/yandex/metrica/impl/ob/je;

    .line 25
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "REFERRER"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/gf;->c:Lcom/yandex/metrica/impl/ob/je;

    .line 26
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "REFERRER_FROM_PLAY_SERVICES"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/gf;->d:Lcom/yandex/metrica/impl/ob/je;

    .line 27
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "REFERRER_HANDLED"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/gf;->e:Lcom/yandex/metrica/impl/ob/je;

    .line 28
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "REFERRER_HOLDER_STATE"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/gf;->f:Lcom/yandex/metrica/impl/ob/je;

    .line 29
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "PREF_KEY_OFFSET"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/gf;->g:Lcom/yandex/metrica/impl/ob/je;

    .line 30
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "UNCHECKED_TIME"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/gf;->h:Lcom/yandex/metrica/impl/ob/je;

    .line 31
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "L_REQ_NUM"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/gf;->i:Lcom/yandex/metrica/impl/ob/je;

    .line 32
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "L_ID"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/gf;->j:Lcom/yandex/metrica/impl/ob/je;

    .line 33
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "LBS_ID"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/gf;->k:Lcom/yandex/metrica/impl/ob/je;

    .line 34
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "STATISTICS_RESTRICTED_IN_MAIN"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/gf;->l:Lcom/yandex/metrica/impl/ob/je;

    .line 37
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "LAST_MIGRATION_VERSION"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/gf;->m:Lcom/yandex/metrica/impl/ob/je;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/impl/ob/fr;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/ge;-><init>(Lcom/yandex/metrica/impl/ob/fr;)V

    return-void
.end method

.method private static b(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/kw;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 61
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p0

    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/kw;->a([B)Lcom/yandex/metrica/impl/ob/kw;

    move-result-object p0
    :try_end_0
    .catch Lcom/yandex/metrica/impl/ob/d; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method


# virtual methods
.method public a(I)I
    .locals 1

    .line 97
    sget-object v0, Lcom/yandex/metrica/impl/ob/gf;->m:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/gf;->b(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public a()Lcom/yandex/metrica/CounterConfiguration$a;
    .locals 3

    .line 44
    sget-object v0, Lcom/yandex/metrica/impl/ob/gf;->b:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/yandex/metrica/CounterConfiguration$a;->a:Lcom/yandex/metrica/CounterConfiguration$a;

    iget v1, v1, Lcom/yandex/metrica/CounterConfiguration$a;->d:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/yandex/metrica/impl/ob/gf;->b(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/yandex/metrica/CounterConfiguration$a;->a(I)Lcom/yandex/metrica/CounterConfiguration$a;

    move-result-object v0

    return-object v0
.end method

.method public a(J)Lcom/yandex/metrica/impl/ob/gf;
    .locals 1

    .line 117
    sget-object v0, Lcom/yandex/metrica/impl/ob/gf;->g:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/gf;->a(Ljava/lang/String;J)Lcom/yandex/metrica/impl/ob/ge;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/gf;

    return-object p1
.end method

.method public a(Lcom/yandex/metrica/CounterConfiguration$a;)Lcom/yandex/metrica/impl/ob/gf;
    .locals 3

    .line 73
    sget-object v0, Lcom/yandex/metrica/impl/ob/gf;->b:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Lcom/yandex/metrica/CounterConfiguration$a;->d:I

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/yandex/metrica/impl/ob/gf;->a(Ljava/lang/String;J)Lcom/yandex/metrica/impl/ob/ge;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/gf;

    return-object p1
.end method

.method public a(Lcom/yandex/metrica/impl/ob/kw;)Lcom/yandex/metrica/impl/ob/gf;
    .locals 3

    .line 81
    sget-object v0, Lcom/yandex/metrica/impl/ob/gf;->d:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1085
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/kw;->a()[B

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {p1, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    move-object p1, v1

    .line 81
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/gf;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ge;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/gf;

    return-object p1
.end method

.method public a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/gf;
    .locals 1

    .line 77
    sget-object v0, Lcom/yandex/metrica/impl/ob/gf;->c:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/gf;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ge;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/gf;

    return-object p1
.end method

.method public a(Z)V
    .locals 1

    .line 105
    sget-object v0, Lcom/yandex/metrica/impl/ob/gf;->a:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/gf;->a(Ljava/lang/String;Z)Lcom/yandex/metrica/impl/ob/ge;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ge;->i()V

    return-void
.end method

.method public b(J)J
    .locals 1

    .line 121
    sget-object v0, Lcom/yandex/metrica/impl/ob/gf;->i:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/gf;->b(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public b(I)Lcom/yandex/metrica/impl/ob/gf;
    .locals 1

    .line 101
    sget-object v0, Lcom/yandex/metrica/impl/ob/gf;->m:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/gf;->a(Ljava/lang/String;I)Lcom/yandex/metrica/impl/ob/ge;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/gf;

    return-object p1
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .line 49
    sget-object v0, Lcom/yandex/metrica/impl/ob/gf;->c:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/gf;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Z)Z
    .locals 1

    .line 145
    sget-object v0, Lcom/yandex/metrica/impl/ob/gf;->h:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/gf;->b(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public c(I)J
    .locals 3

    .line 113
    sget-object v0, Lcom/yandex/metrica/impl/ob/gf;->g:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/yandex/metrica/impl/ob/gf;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public c(J)Lcom/yandex/metrica/impl/ob/gf;
    .locals 1

    .line 125
    sget-object v0, Lcom/yandex/metrica/impl/ob/gf;->i:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/gf;->a(Ljava/lang/String;J)Lcom/yandex/metrica/impl/ob/ge;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/gf;

    return-object p1
.end method

.method public c(Z)Lcom/yandex/metrica/impl/ob/gf;
    .locals 1

    .line 149
    sget-object v0, Lcom/yandex/metrica/impl/ob/gf;->h:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/gf;->a(Ljava/lang/String;Z)Lcom/yandex/metrica/impl/ob/ge;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/gf;

    return-object p1
.end method

.method public c()Lcom/yandex/metrica/impl/ob/kw;
    .locals 2

    .line 53
    sget-object v0, Lcom/yandex/metrica/impl/ob/gf;->d:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/gf;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/gf;->b(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/kw;

    move-result-object v0

    return-object v0
.end method

.method public d(I)I
    .locals 1

    .line 153
    sget-object v0, Lcom/yandex/metrica/impl/ob/gf;->f:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/gf;->b(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public d(J)J
    .locals 1

    .line 129
    sget-object v0, Lcom/yandex/metrica/impl/ob/gf;->j:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/gf;->b(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public d(Z)Lcom/yandex/metrica/impl/ob/gf;
    .locals 1

    .line 168
    sget-object v0, Lcom/yandex/metrica/impl/ob/gf;->l:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/gf;->a(Ljava/lang/String;Z)Lcom/yandex/metrica/impl/ob/ge;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/gf;

    return-object p1
.end method

.method public d()Z
    .locals 2

    .line 69
    sget-object v0, Lcom/yandex/metrica/impl/ob/gf;->e:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/gf;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public e()Lcom/yandex/metrica/impl/ob/gf;
    .locals 2

    .line 89
    sget-object v0, Lcom/yandex/metrica/impl/ob/gf;->e:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/gf;->a(Ljava/lang/String;Z)Lcom/yandex/metrica/impl/ob/ge;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/gf;

    return-object v0
.end method

.method public e(I)Lcom/yandex/metrica/impl/ob/gf;
    .locals 1

    .line 157
    sget-object v0, Lcom/yandex/metrica/impl/ob/gf;->f:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/gf;->a(Ljava/lang/String;I)Lcom/yandex/metrica/impl/ob/ge;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/gf;

    return-object p1
.end method

.method public e(J)Lcom/yandex/metrica/impl/ob/gf;
    .locals 1

    .line 133
    sget-object v0, Lcom/yandex/metrica/impl/ob/gf;->j:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/gf;->a(Ljava/lang/String;J)Lcom/yandex/metrica/impl/ob/ge;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/gf;

    return-object p1
.end method

.method public f(J)J
    .locals 1

    .line 137
    sget-object v0, Lcom/yandex/metrica/impl/ob/gf;->k:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/gf;->b(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public f()Lcom/yandex/metrica/impl/ob/gf;
    .locals 2

    .line 93
    sget-object v0, Lcom/yandex/metrica/impl/ob/gf;->c:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/gf;->p(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ge;

    move-result-object v0

    sget-object v1, Lcom/yandex/metrica/impl/ob/gf;->d:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ge;->p(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ge;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/gf;

    return-object v0
.end method

.method public g(J)Lcom/yandex/metrica/impl/ob/gf;
    .locals 1

    .line 141
    sget-object v0, Lcom/yandex/metrica/impl/ob/gf;->k:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/gf;->a(Ljava/lang/String;J)Lcom/yandex/metrica/impl/ob/ge;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/gf;

    return-object p1
.end method

.method public g()Z
    .locals 2

    .line 109
    sget-object v0, Lcom/yandex/metrica/impl/ob/gf;->a:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/gf;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public j()Ljava/lang/Boolean;
    .locals 2

    .line 162
    sget-object v0, Lcom/yandex/metrica/impl/ob/gf;->l:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/gf;->r(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/yandex/metrica/impl/ob/gf;->l:Lcom/yandex/metrica/impl/ob/je;

    .line 163
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/gf;->b(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
