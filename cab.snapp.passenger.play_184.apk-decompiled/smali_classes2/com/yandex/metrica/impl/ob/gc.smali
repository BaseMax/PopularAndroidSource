.class public Lcom/yandex/metrica/impl/ob/gc;
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

.field static final m:Lcom/yandex/metrica/impl/ob/je;

.field static final n:Lcom/yandex/metrica/impl/ob/je;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "UUID"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/gc;->a:Lcom/yandex/metrica/impl/ob/je;

    .line 23
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "DEVICE_ID_POSSIBLE"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/gc;->b:Lcom/yandex/metrica/impl/ob/je;

    .line 24
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "DEVICE_ID"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/gc;->c:Lcom/yandex/metrica/impl/ob/je;

    .line 25
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "DEVICE_ID_HASH"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/gc;->d:Lcom/yandex/metrica/impl/ob/je;

    .line 26
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "AD_URL_GET"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/gc;->e:Lcom/yandex/metrica/impl/ob/je;

    .line 27
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "AD_URL_REPORT"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/gc;->f:Lcom/yandex/metrica/impl/ob/je;

    .line 28
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "CUSTOM_HOSTS"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/gc;->g:Lcom/yandex/metrica/impl/ob/je;

    .line 29
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "SERVER_TIME_OFFSET"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/gc;->h:Lcom/yandex/metrica/impl/ob/je;

    .line 30
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "STARTUP_REQUEST_TIME"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/gc;->i:Lcom/yandex/metrica/impl/ob/je;

    .line 31
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "CLIDS"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/gc;->j:Lcom/yandex/metrica/impl/ob/je;

    .line 32
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "REFERRER"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/gc;->k:Lcom/yandex/metrica/impl/ob/je;

    .line 33
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "DEFERRED_DEEP_LINK_WAS_CHECKED"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/gc;->l:Lcom/yandex/metrica/impl/ob/je;

    .line 34
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "REFERRER_FROM_PLAY_SERVICES_WAS_CHECKED"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/gc;->m:Lcom/yandex/metrica/impl/ob/je;

    .line 37
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "API_LEVEL"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/gc;->n:Lcom/yandex/metrica/impl/ob/je;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/impl/ob/fr;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/ge;-><init>(Lcom/yandex/metrica/impl/ob/fr;)V

    return-void
.end method


# virtual methods
.method public a(J)J
    .locals 1

    .line 74
    sget-object v0, Lcom/yandex/metrica/impl/ob/gc;->h:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/gc;->b(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public a(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/gc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/yandex/metrica/impl/ob/gc;"
        }
    .end annotation

    .line 118
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/ne;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    .line 119
    sget-object v0, Lcom/yandex/metrica/impl/ob/gc;->g:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/gc;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ge;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/gc;

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 2

    .line 56
    sget-object v0, Lcom/yandex/metrica/impl/ob/gc;->b:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/gc;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 44
    sget-object v0, Lcom/yandex/metrica/impl/ob/gc;->a:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/gc;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(J)J
    .locals 1

    .line 78
    sget-object v0, Lcom/yandex/metrica/impl/ob/gc;->i:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/gc;->b(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 48
    sget-object v0, Lcom/yandex/metrica/impl/ob/gc;->c:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/gc;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 68
    sget-object v0, Lcom/yandex/metrica/impl/ob/gc;->g:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/gc;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/ne;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c(J)J
    .locals 1

    .line 86
    sget-object v0, Lcom/yandex/metrica/impl/ob/gc;->n:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/gc;->b(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .line 90
    sget-object v0, Lcom/yandex/metrica/impl/ob/gc;->k:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/gc;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 52
    sget-object v0, Lcom/yandex/metrica/impl/ob/gc;->d:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/gc;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d(J)Lcom/yandex/metrica/impl/ob/gc;
    .locals 1

    .line 127
    sget-object v0, Lcom/yandex/metrica/impl/ob/gc;->h:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/gc;->a(Ljava/lang/String;J)Lcom/yandex/metrica/impl/ob/ge;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/gc;

    return-object p1
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 60
    sget-object v0, Lcom/yandex/metrica/impl/ob/gc;->e:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/gc;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d()Z
    .locals 2

    .line 94
    sget-object v0, Lcom/yandex/metrica/impl/ob/gc;->l:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/gc;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public e(J)Lcom/yandex/metrica/impl/ob/gc;
    .locals 1

    .line 131
    sget-object v0, Lcom/yandex/metrica/impl/ob/gc;->i:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/gc;->a(Ljava/lang/String;J)Lcom/yandex/metrica/impl/ob/ge;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/gc;

    return-object p1
.end method

.method public e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 64
    sget-object v0, Lcom/yandex/metrica/impl/ob/gc;->f:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/gc;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public e()Z
    .locals 2

    .line 98
    sget-object v0, Lcom/yandex/metrica/impl/ob/gc;->l:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/gc;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public f()Lcom/yandex/metrica/impl/ob/gc;
    .locals 2

    .line 151
    sget-object v0, Lcom/yandex/metrica/impl/ob/gc;->l:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/gc;->a(Ljava/lang/String;Z)Lcom/yandex/metrica/impl/ob/ge;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/gc;

    return-object v0
.end method

.method public f(J)Lcom/yandex/metrica/impl/ob/gc;
    .locals 1

    .line 139
    sget-object v0, Lcom/yandex/metrica/impl/ob/gc;->n:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/gc;->a(Ljava/lang/String;J)Lcom/yandex/metrica/impl/ob/ge;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/gc;

    return-object p1
.end method

.method public f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 82
    sget-object v0, Lcom/yandex/metrica/impl/ob/gc;->j:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/gc;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public g()Lcom/yandex/metrica/impl/ob/gc;
    .locals 2

    .line 155
    sget-object v0, Lcom/yandex/metrica/impl/ob/gc;->m:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/gc;->a(Ljava/lang/String;Z)Lcom/yandex/metrica/impl/ob/ge;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/gc;

    return-object v0
.end method

.method public g(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/gc;
    .locals 1

    .line 102
    sget-object v0, Lcom/yandex/metrica/impl/ob/gc;->a:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/gc;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ge;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/gc;

    return-object p1
.end method

.method public h(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/gc;
    .locals 1

    .line 106
    sget-object v0, Lcom/yandex/metrica/impl/ob/gc;->c:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/gc;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ge;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/gc;

    return-object p1
.end method

.method public i(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/gc;
    .locals 1

    .line 110
    sget-object v0, Lcom/yandex/metrica/impl/ob/gc;->d:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/gc;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ge;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/gc;

    return-object p1
.end method

.method public j(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/gc;
    .locals 1

    .line 114
    sget-object v0, Lcom/yandex/metrica/impl/ob/gc;->e:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/gc;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ge;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/gc;

    return-object p1
.end method

.method public k(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/gc;
    .locals 1

    .line 123
    sget-object v0, Lcom/yandex/metrica/impl/ob/gc;->f:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/gc;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ge;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/gc;

    return-object p1
.end method

.method public l(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/gc;
    .locals 1

    .line 135
    sget-object v0, Lcom/yandex/metrica/impl/ob/gc;->j:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/gc;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ge;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/gc;

    return-object p1
.end method

.method public m(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/gc;
    .locals 1

    .line 143
    sget-object v0, Lcom/yandex/metrica/impl/ob/gc;->b:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/gc;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ge;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/gc;

    return-object p1
.end method

.method public n(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/gc;
    .locals 1

    .line 147
    sget-object v0, Lcom/yandex/metrica/impl/ob/gc;->k:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/gc;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ge;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/gc;

    return-object p1
.end method
