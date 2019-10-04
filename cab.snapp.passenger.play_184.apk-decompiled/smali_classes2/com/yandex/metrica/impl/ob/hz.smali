.class Lcom/yandex/metrica/impl/ob/hz;
.super Lcom/yandex/metrica/impl/ar;
.source "SourceFile"


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/ig;

.field private final b:Lcom/yandex/metrica/impl/bs;

.field private c:Lcom/yandex/metrica/impl/ob/hq;

.field private l:Lcom/yandex/metrica/impl/ob/ft;

.field private m:Lcom/yandex/metrica/impl/ob/fs;

.field private n:Lcom/yandex/metrica/impl/ob/hp;

.field private o:Lcom/yandex/metrica/impl/ob/gf;

.field private p:J

.field private q:J

.field private r:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/ig;Lcom/yandex/metrica/impl/bs;)V
    .locals 8

    .line 71
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/fq;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/fq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/fq;->g()Lcom/yandex/metrica/impl/ob/ft;

    move-result-object v4

    .line 72
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/fq;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/fq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/fq;->h()Lcom/yandex/metrica/impl/ob/fs;

    move-result-object v5

    new-instance v6, Lcom/yandex/metrica/impl/ob/hp;

    invoke-direct {v6, p1}, Lcom/yandex/metrica/impl/ob/hp;-><init>(Landroid/content/Context;)V

    new-instance v7, Lcom/yandex/metrica/impl/ob/gf;

    .line 74
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/fq;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/fq;

    move-result-object p1

    .line 75
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/fq;->c()Lcom/yandex/metrica/impl/ob/fr;

    move-result-object p1

    invoke-direct {v7, p1}, Lcom/yandex/metrica/impl/ob/gf;-><init>(Lcom/yandex/metrica/impl/ob/fr;)V

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    .line 67
    invoke-direct/range {v1 .. v7}, Lcom/yandex/metrica/impl/ob/hz;-><init>(Lcom/yandex/metrica/impl/ob/ig;Lcom/yandex/metrica/impl/bs;Lcom/yandex/metrica/impl/ob/ft;Lcom/yandex/metrica/impl/ob/fs;Lcom/yandex/metrica/impl/ob/hp;Lcom/yandex/metrica/impl/ob/gf;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/ig;Lcom/yandex/metrica/impl/bs;Lcom/yandex/metrica/impl/ob/ft;Lcom/yandex/metrica/impl/ob/fs;Lcom/yandex/metrica/impl/ob/hp;Lcom/yandex/metrica/impl/ob/gf;)V
    .locals 2

    .line 334
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ar;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    .line 61
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/hz;->q:J

    .line 62
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/hz;->r:J

    .line 336
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/hz;->a:Lcom/yandex/metrica/impl/ob/ig;

    .line 337
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/hz;->b:Lcom/yandex/metrica/impl/bs;

    .line 338
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/hz;->a:Lcom/yandex/metrica/impl/ob/ig;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ig;->a()Lcom/yandex/metrica/impl/ob/hq;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/hz;->c:Lcom/yandex/metrica/impl/ob/hq;

    .line 339
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/hz;->l:Lcom/yandex/metrica/impl/ob/ft;

    .line 340
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/hz;->m:Lcom/yandex/metrica/impl/ob/fs;

    .line 341
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/hz;->n:Lcom/yandex/metrica/impl/ob/hp;

    .line 342
    iput-object p6, p0, Lcom/yandex/metrica/impl/ob/hz;->o:Lcom/yandex/metrica/impl/ob/gf;

    .line 3312
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/hz;->o:Lcom/yandex/metrica/impl/ob/gf;

    const-wide/16 p2, -0x1

    invoke-virtual {p1, p2, p3}, Lcom/yandex/metrica/impl/ob/gf;->b(J)J

    move-result-wide p1

    const-wide/16 p3, 0x1

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/yandex/metrica/impl/ob/hz;->p:J

    .line 344
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/hz;->a:Lcom/yandex/metrica/impl/ob/ig;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ig;->b()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/hz;->a(Ljava/util/List;)V

    return-void
.end method

.method private b(Ljava/util/List;)[Lcom/yandex/metrica/impl/ob/ka$b$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/hv;",
            ">;)[",
            "Lcom/yandex/metrica/impl/ob/ka$b$a;"
        }
    .end annotation

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 224
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/metrica/impl/ob/hv;

    .line 225
    invoke-virtual {p0, v1}, Lcom/yandex/metrica/impl/ob/hz;->a(Lcom/yandex/metrica/impl/ob/hv;)Lcom/yandex/metrica/impl/ob/ka$b$a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 227
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/yandex/metrica/impl/ob/ka$b$a;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/yandex/metrica/impl/ob/ka$b$a;

    return-object p1
.end method


# virtual methods
.method public C()V
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hz;->l:Lcom/yandex/metrica/impl/ob/ft;

    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/hz;->q:J

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/ft;->c(J)I

    .line 119
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hz;->m:Lcom/yandex/metrica/impl/ob/fs;

    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/hz;->r:J

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/fs;->c(J)I

    return-void
.end method

.method public D()V
    .locals 5

    .line 123
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/hz;->q:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 125
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/hz;->l:Lcom/yandex/metrica/impl/ob/ft;

    invoke-virtual {v2, v0, v1}, Lcom/yandex/metrica/impl/ob/ft;->c(J)I

    :cond_0
    return-void
.end method

.method a(Lcom/yandex/metrica/impl/ob/hv;)Lcom/yandex/metrica/impl/ob/ka$b$a;
    .locals 3

    .line 250
    new-instance v0, Lcom/yandex/metrica/impl/ob/ka$b$a;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/ka$b$a;-><init>()V

    .line 251
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/hv;->a()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/yandex/metrica/impl/ob/ka$b$a;->b:J

    .line 252
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/hv;->b()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/yandex/metrica/impl/ob/ka$b$a;->c:J

    .line 253
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/hv;->d()Lorg/a/a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 255
    invoke-static {v1}, Lcom/yandex/metrica/impl/ay;->b(Lorg/a/a;)[Lcom/yandex/metrica/impl/ob/ka$a;

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/ka$b$a;->d:[Lcom/yandex/metrica/impl/ob/ka$a;

    .line 257
    :cond_0
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/hv;->c()Lorg/a/a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 259
    invoke-static {p1}, Lcom/yandex/metrica/impl/ay;->a(Lorg/a/a;)[Lcom/yandex/metrica/impl/ob/ka$d;

    move-result-object p1

    iput-object p1, v0, Lcom/yandex/metrica/impl/ob/ka$b$a;->e:[Lcom/yandex/metrica/impl/ob/ka$d;

    :cond_1
    return-object v0
.end method

.method a(Lcom/yandex/metrica/impl/ob/ic;)Lcom/yandex/metrica/impl/ob/ka$b$b;
    .locals 8

    .line 232
    new-instance v0, Lcom/yandex/metrica/impl/ob/ka$b$b;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/ka$b$b;-><init>()V

    .line 233
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ic;->c()Landroid/location/Location;

    move-result-object v1

    .line 234
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ic;->a()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/yandex/metrica/impl/ob/ka$b$b;->b:J

    .line 235
    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/yandex/metrica/impl/ob/ka$b$b;->d:J

    .line 236
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/ic;->a:Lcom/yandex/metrica/impl/ob/hq$a;

    .line 2275
    sget-object v3, Lcom/yandex/metrica/impl/ob/hz$1;->a:[I

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/hq$a;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v5, :cond_0

    if-eq v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    .line 236
    :goto_0
    iput v2, v0, Lcom/yandex/metrica/impl/ob/ka$b$b;->l:I

    .line 237
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ic;->b()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/yandex/metrica/impl/ob/ka$b$b;->c:J

    .line 238
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    iput-wide v6, v0, Lcom/yandex/metrica/impl/ob/ka$b$b;->e:D

    .line 239
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    iput-wide v6, v0, Lcom/yandex/metrica/impl/ob/ka$b$b;->f:D

    .line 240
    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, v0, Lcom/yandex/metrica/impl/ob/ka$b$b;->g:I

    .line 241
    invoke-virtual {v1}, Landroid/location/Location;->getBearing()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, v0, Lcom/yandex/metrica/impl/ob/ka$b$b;->h:I

    .line 242
    invoke-virtual {v1}, Landroid/location/Location;->getSpeed()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, v0, Lcom/yandex/metrica/impl/ob/ka$b$b;->i:I

    .line 243
    invoke-virtual {v1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int p1, v6

    iput p1, v0, Lcom/yandex/metrica/impl/ob/ka$b$b;->j:I

    .line 244
    invoke-virtual {v1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object p1

    const-string v1, "gps"

    .line 3266
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const-string v1, "network"

    .line 3268
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    .line 244
    :goto_1
    iput v3, v0, Lcom/yandex/metrica/impl/ob/ka$b$b;->k:I

    return-object v0
.end method

.method a(Ljava/util/List;Ljava/util/List;)Lcom/yandex/metrica/impl/ob/ka$b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/ic;",
            ">;",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/hv;",
            ">;)",
            "Lcom/yandex/metrica/impl/ob/ka$b;"
        }
    .end annotation

    .line 202
    new-instance v0, Lcom/yandex/metrica/impl/ob/ka$b;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/ka$b;-><init>()V

    .line 204
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 2215
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2216
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/metrica/impl/ob/ic;

    .line 2217
    invoke-virtual {p0, v2}, Lcom/yandex/metrica/impl/ob/hz;->a(Lcom/yandex/metrica/impl/ob/ic;)Lcom/yandex/metrica/impl/ob/ka$b$b;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2219
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/yandex/metrica/impl/ob/ka$b$b;

    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/yandex/metrica/impl/ob/ka$b$b;

    .line 205
    iput-object p1, v0, Lcom/yandex/metrica/impl/ob/ka$b;->b:[Lcom/yandex/metrica/impl/ob/ka$b$b;

    .line 207
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 208
    invoke-direct {p0, p2}, Lcom/yandex/metrica/impl/ob/hz;->b(Ljava/util/List;)[Lcom/yandex/metrica/impl/ob/ka$b$a;

    move-result-object p1

    iput-object p1, v0, Lcom/yandex/metrica/impl/ob/ka$b;->c:[Lcom/yandex/metrica/impl/ob/ka$b$a;

    :cond_2
    return-object v0
.end method

.method public a(Landroid/net/Uri$Builder;)V
    .locals 4

    .line 285
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/ar;->a(Landroid/net/Uri$Builder;)V

    const-string v0, "location"

    .line 286
    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 287
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hz;->a:Lcom/yandex/metrica/impl/ob/ig;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ig;->q()Ljava/lang/String;

    move-result-object v0

    const-string v1, "deviceid"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 288
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hz;->a:Lcom/yandex/metrica/impl/ob/ig;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ig;->A()Ljava/lang/String;

    move-result-object v0

    const-string v1, "device_type"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 289
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hz;->a:Lcom/yandex/metrica/impl/ob/ig;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ig;->r()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uuid"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 290
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hz;->a:Lcom/yandex/metrica/impl/ob/ig;

    .line 291
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ig;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "analytics_sdk_version_name"

    .line 290
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 292
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hz;->a:Lcom/yandex/metrica/impl/ob/ig;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ig;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "analytics_sdk_build_number"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 293
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hz;->a:Lcom/yandex/metrica/impl/ob/ig;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ig;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "analytics_sdk_build_type"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 294
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hz;->a:Lcom/yandex/metrica/impl/ob/ig;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ig;->p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "app_version_name"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 295
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hz;->a:Lcom/yandex/metrica/impl/ob/ig;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ig;->o()Ljava/lang/String;

    move-result-object v0

    const-string v1, "app_build_number"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 296
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hz;->a:Lcom/yandex/metrica/impl/ob/ig;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ig;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "os_version"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 297
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hz;->a:Lcom/yandex/metrica/impl/ob/ig;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ig;->n()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "os_api_level"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 298
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hz;->a:Lcom/yandex/metrica/impl/ob/ig;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ig;->s()Ljava/lang/String;

    move-result-object v0

    const-string v1, "is_rooted"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 299
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hz;->a:Lcom/yandex/metrica/impl/ob/ig;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ig;->t()Ljava/lang/String;

    move-result-object v0

    const-string v1, "app_framework"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 300
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hz;->a:Lcom/yandex/metrica/impl/ob/ig;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ig;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "app_id"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 301
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hz;->a:Lcom/yandex/metrica/impl/ob/ig;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ig;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "app_platform"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 302
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hz;->a:Lcom/yandex/metrica/impl/ob/ig;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ig;->z()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android_id"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 303
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/hz;->p:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "request_id"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 304
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hz;->a:Lcom/yandex/metrica/impl/ob/ig;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ig;->B()Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter$b;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    .line 305
    :cond_0
    iget-object v2, v0, Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter$b;->a:Ljava/lang/String;

    :goto_0
    if-nez v2, :cond_1

    move-object v2, v1

    :cond_1
    const-string v3, "adv_id"

    .line 306
    invoke-virtual {p1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    if-nez v0, :cond_2

    goto :goto_1

    .line 307
    :cond_2
    iget-object v0, v0, Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter$b;->b:Ljava/lang/Boolean;

    .line 308
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/hz;->a(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    const-string v0, "limit_ad_tracking"

    .line 307
    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    return-void
.end method

.method b(Ljava/util/Map;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/ic;",
            ">;"
        }
    .end annotation

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 172
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 173
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 174
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    .line 175
    :cond_1
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/hz;->n:Lcom/yandex/metrica/impl/ob/hp;

    .line 176
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v1}, Lcom/yandex/metrica/impl/ob/hp;->a(JLjava/lang/String;)Lcom/yandex/metrica/impl/ob/ic;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_0

    .line 178
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public b()Z
    .locals 7

    .line 81
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hz;->b:Lcom/yandex/metrica/impl/bs;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/bs;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hz;->a:Lcom/yandex/metrica/impl/ob/ig;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ig;->q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hz;->a:Lcom/yandex/metrica/impl/ob/ig;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ig;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 94
    :cond_2
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/hz;->t()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/metrica/impl/bv;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 1138
    :cond_3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hz;->l:Lcom/yandex/metrica/impl/ob/ft;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/hz;->c:Lcom/yandex/metrica/impl/ob/hq;

    iget v2, v2, Lcom/yandex/metrica/impl/ob/hq;->f:I

    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/ob/ft;->b(I)Ljava/util/Map;

    move-result-object v0

    .line 1139
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/hz;->m:Lcom/yandex/metrica/impl/ob/fs;

    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/hz;->c:Lcom/yandex/metrica/impl/ob/hq;

    iget v3, v3, Lcom/yandex/metrica/impl/ob/hq;->f:I

    invoke-virtual {v2, v3}, Lcom/yandex/metrica/impl/ob/fs;->b(I)Ljava/util/Map;

    move-result-object v2

    .line 1140
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1141
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1143
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 1144
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/yandex/metrica/impl/ob/hz;->q:J

    .line 1147
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/hz;->b(Ljava/util/Map;)Ljava/util/List;

    move-result-object v3

    .line 1151
    :cond_4
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 1152
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/yandex/metrica/impl/ob/hz;->r:J

    .line 1155
    invoke-virtual {p0, v2}, Lcom/yandex/metrica/impl/ob/hz;->c(Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    .line 1159
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_6

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_7

    .line 1160
    :cond_6
    invoke-virtual {p0, v3, v4}, Lcom/yandex/metrica/impl/ob/hz;->a(Ljava/util/List;Ljava/util/List;)Lcom/yandex/metrica/impl/ob/ka$b;

    move-result-object v0

    .line 1161
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/e;->a(Lcom/yandex/metrica/impl/ob/e;)[B

    move-result-object v0

    .line 1163
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/hz;->c([B)Z

    move-result v1

    :cond_7
    return v1
.end method

.method c(Ljava/util/Map;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/hv;",
            ">;"
        }
    .end annotation

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 187
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 188
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 189
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    .line 190
    :cond_1
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/hz;->n:Lcom/yandex/metrica/impl/ob/hp;

    .line 191
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v1}, Lcom/yandex/metrica/impl/ob/hp;->b(JLjava/lang/String;)Lcom/yandex/metrica/impl/ob/hv;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_0

    .line 193
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public c()Z
    .locals 4

    .line 105
    invoke-super {p0}, Lcom/yandex/metrica/impl/ar;->c()Z

    move-result v0

    .line 1317
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/hz;->o:Lcom/yandex/metrica/impl/ob/gf;

    iget-wide v2, p0, Lcom/yandex/metrica/impl/ob/hz;->p:J

    invoke-virtual {v1, v2, v3}, Lcom/yandex/metrica/impl/ob/gf;->c(J)Lcom/yandex/metrica/impl/ob/gf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/gf;->i()V

    return v0
.end method

.method public u()Z
    .locals 3

    .line 131
    invoke-super {p0}, Lcom/yandex/metrica/impl/ar;->u()Z

    move-result v0

    .line 132
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/hz;->l()I

    move-result v1

    const/16 v2, 0x190

    if-eq v2, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/2addr v0, v1

    return v0
.end method
