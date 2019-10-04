.class public Lcom/yandex/metrica/impl/ob/bo;
.super Lcom/yandex/metrica/impl/at;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/br;

.field private final b:Lcom/yandex/metrica/impl/i;

.field private final c:Lcom/yandex/metrica/impl/ob/bs;

.field private final l:Lcom/yandex/metrica/impl/ob/bp$a;

.field private final m:Lcom/yandex/metrica/impl/ob/nq;

.field private n:Lcom/yandex/metrica/impl/ob/nd;

.field private final o:Ljava/lang/String;

.field private p:Lcom/yandex/metrica/impl/ob/bq;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/br;Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/ob/bs;)V
    .locals 7

    .line 41
    new-instance v4, Lcom/yandex/metrica/impl/ob/bp$a;

    invoke-direct {v4}, Lcom/yandex/metrica/impl/ob/bp$a;-><init>()V

    new-instance v5, Lcom/yandex/metrica/impl/ob/np;

    invoke-direct {v5}, Lcom/yandex/metrica/impl/ob/np;-><init>()V

    new-instance v6, Lcom/yandex/metrica/impl/ob/nd;

    invoke-direct {v6}, Lcom/yandex/metrica/impl/ob/nd;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/yandex/metrica/impl/ob/bo;-><init>(Lcom/yandex/metrica/impl/ob/br;Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/ob/bs;Lcom/yandex/metrica/impl/ob/bp$a;Lcom/yandex/metrica/impl/ob/nq;Lcom/yandex/metrica/impl/ob/nd;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/impl/ob/br;Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/ob/bs;Lcom/yandex/metrica/impl/ob/bp$a;Lcom/yandex/metrica/impl/ob/nq;Lcom/yandex/metrica/impl/ob/nd;)V
    .locals 1

    .line 57
    new-instance v0, Lcom/yandex/metrica/impl/p;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/p;-><init>()V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/at;-><init>(Lcom/yandex/metrica/impl/ap;)V

    .line 59
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/bo;->a:Lcom/yandex/metrica/impl/ob/br;

    .line 60
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/bo;->b:Lcom/yandex/metrica/impl/i;

    .line 61
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/bo;->c:Lcom/yandex/metrica/impl/ob/bs;

    .line 62
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/bo;->l:Lcom/yandex/metrica/impl/ob/bp$a;

    .line 63
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/bo;->m:Lcom/yandex/metrica/impl/ob/nq;

    .line 64
    iput-object p6, p0, Lcom/yandex/metrica/impl/ob/bo;->n:Lcom/yandex/metrica/impl/ob/nd;

    .line 66
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "@"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/bo;->o:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bo;->o:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/net/Uri$Builder;)V
    .locals 2

    const-string v0, "diagnostic"

    .line 116
    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 117
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bo;->p:Lcom/yandex/metrica/impl/ob/bq;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bq;->q()Ljava/lang/String;

    move-result-object v0

    const-string v1, "deviceid"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 118
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bo;->p:Lcom/yandex/metrica/impl/ob/bq;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bq;->r()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uuid"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 119
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bo;->p:Lcom/yandex/metrica/impl/ob/bq;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bq;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "app_platform"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 120
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bo;->p:Lcom/yandex/metrica/impl/ob/bq;

    .line 121
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bq;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "analytics_sdk_version_name"

    .line 120
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 122
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bo;->p:Lcom/yandex/metrica/impl/ob/bq;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bq;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "analytics_sdk_build_number"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 123
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bo;->p:Lcom/yandex/metrica/impl/ob/bq;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bq;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "analytics_sdk_build_type"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 124
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bo;->p:Lcom/yandex/metrica/impl/ob/bq;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bq;->p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "app_version_name"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 125
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bo;->p:Lcom/yandex/metrica/impl/ob/bq;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bq;->o()Ljava/lang/String;

    move-result-object v0

    const-string v1, "app_build_number"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 126
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bo;->p:Lcom/yandex/metrica/impl/ob/bq;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bq;->l()Ljava/lang/String;

    move-result-object v0

    const-string v1, "model"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 127
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bo;->p:Lcom/yandex/metrica/impl/ob/bq;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bq;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "manufacturer"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 128
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bo;->p:Lcom/yandex/metrica/impl/ob/bq;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bq;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "os_version"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 129
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bo;->p:Lcom/yandex/metrica/impl/ob/bq;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bq;->n()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "os_api_level"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 130
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bo;->p:Lcom/yandex/metrica/impl/ob/bq;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bq;->u()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "screen_width"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 131
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bo;->p:Lcom/yandex/metrica/impl/ob/bq;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bq;->v()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "screen_height"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 132
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bo;->p:Lcom/yandex/metrica/impl/ob/bq;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bq;->w()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "screen_dpi"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 133
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bo;->p:Lcom/yandex/metrica/impl/ob/bq;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bq;->x()F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const-string v1, "scalefactor"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 134
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bo;->p:Lcom/yandex/metrica/impl/ob/bq;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bq;->y()Ljava/lang/String;

    move-result-object v0

    const-string v1, "locale"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 135
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bo;->p:Lcom/yandex/metrica/impl/ob/bq;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bq;->A()Ljava/lang/String;

    move-result-object v0

    const-string v1, "device_type"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 136
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bo;->p:Lcom/yandex/metrica/impl/ob/bq;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bq;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "app_id"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 137
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bo;->p:Lcom/yandex/metrica/impl/ob/bq;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bq;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "api_key_128"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 138
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bo;->p:Lcom/yandex/metrica/impl/ob/bq;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bq;->C()Ljava/lang/String;

    move-result-object v0

    const-string v1, "app_debuggable"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 139
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bo;->p:Lcom/yandex/metrica/impl/ob/bq;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bq;->s()Ljava/lang/String;

    move-result-object v0

    const-string v1, "is_rooted"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 140
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bo;->p:Lcom/yandex/metrica/impl/ob/bq;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bq;->t()Ljava/lang/String;

    move-result-object v0

    const-string v1, "app_framework"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    return-void
.end method

.method public b()Z
    .locals 6

    .line 71
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bo;->a:Lcom/yandex/metrica/impl/ob/br;

    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/br;->g()Lcom/yandex/metrica/impl/ob/bq;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bo;->p:Lcom/yandex/metrica/impl/ob/bq;

    .line 72
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bo;->p:Lcom/yandex/metrica/impl/ob/bq;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bq;->e()Z

    move-result v0

    .line 73
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bo;->p:Lcom/yandex/metrica/impl/ob/bq;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bq;->a()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/yandex/metrica/impl/bv;->a(Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return v3

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bo;->p:Lcom/yandex/metrica/impl/ob/bq;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bq;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/bo;->a(Ljava/util/List;)V

    .line 85
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bo;->l:Lcom/yandex/metrica/impl/ob/bp$a;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bo;->b:Lcom/yandex/metrica/impl/i;

    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/bo;->p:Lcom/yandex/metrica/impl/ob/bq;

    iget-object v5, p0, Lcom/yandex/metrica/impl/ob/bo;->c:Lcom/yandex/metrica/impl/ob/bs;

    invoke-virtual {v0, v1, v4, v5}, Lcom/yandex/metrica/impl/ob/bp$a;->a(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/ob/bq;Lcom/yandex/metrica/impl/ob/bs;)Lcom/yandex/metrica/impl/ob/bp;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bp;->a()[B

    move-result-object v0

    const/4 v1, 0x0

    .line 93
    :try_start_0
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/bo;->n:Lcom/yandex/metrica/impl/ob/nd;

    invoke-virtual {v4, v0}, Lcom/yandex/metrica/impl/ob/nd;->a([B)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 99
    :goto_1
    invoke-static {v1}, Lcom/yandex/metrica/impl/bv;->a([B)Z

    move-result v4

    if-nez v4, :cond_2

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "gzip"

    aput-object v4, v0, v3

    const-string v3, "Content-Encoding"

    .line 101
    invoke-virtual {p0, v3, v0}, Lcom/yandex/metrica/impl/ob/bo;->a(Ljava/lang/String;[Ljava/lang/String;)V

    move-object v0, v1

    .line 103
    :cond_2
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/bo;->a([B)V

    return v2
.end method

.method public e()V
    .locals 2

    .line 110
    invoke-super {p0}, Lcom/yandex/metrica/impl/at;->e()V

    .line 111
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bo;->m:Lcom/yandex/metrica/impl/ob/nq;

    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/nq;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/bo;->a(Ljava/lang/Long;)V

    return-void
.end method
