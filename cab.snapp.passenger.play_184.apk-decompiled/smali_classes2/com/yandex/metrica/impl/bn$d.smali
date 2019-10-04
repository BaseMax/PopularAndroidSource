.class Lcom/yandex/metrica/impl/bn$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/am$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/bn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 7

    .line 206
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/fq;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/fq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/fq;->c()Lcom/yandex/metrica/impl/ob/fr;

    move-result-object v0

    .line 207
    new-instance v1, Lcom/yandex/metrica/impl/ob/gf;

    invoke-direct {v1, v0}, Lcom/yandex/metrica/impl/ob/gf;-><init>(Lcom/yandex/metrica/impl/ob/fr;)V

    .line 1267
    new-instance v0, Lcom/yandex/metrica/impl/ob/jd;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/jd;-><init>(Landroid/content/Context;)V

    .line 1268
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/jd;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 1269
    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/gf;->a(Z)V

    .line 1270
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/jd;->b()V

    .line 2257
    :cond_0
    new-instance v0, Lcom/yandex/metrica/impl/ob/jb;

    .line 2258
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Lcom/yandex/metrica/impl/ob/jb;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 2259
    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/ob/jb;->a(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    .line 2261
    invoke-virtual {v1, v2, v3}, Lcom/yandex/metrica/impl/ob/gf;->a(J)Lcom/yandex/metrica/impl/ob/gf;

    .line 2263
    :cond_1
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/jb;->a()V

    .line 3239
    new-instance v0, Lcom/yandex/metrica/impl/ob/ap;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/yandex/metrica/impl/ob/ap;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3240
    new-instance v2, Lcom/yandex/metrica/impl/ob/iz;

    .line 3241
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/z;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p1, v0}, Lcom/yandex/metrica/impl/ob/iz;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 3243
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/iz;->b()Lcom/yandex/metrica/CounterConfiguration$a;

    move-result-object v0

    .line 3244
    sget-object v4, Lcom/yandex/metrica/CounterConfiguration$a;->a:Lcom/yandex/metrica/CounterConfiguration$a;

    if-eq v0, v4, :cond_2

    .line 3245
    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/gf;->a(Lcom/yandex/metrica/CounterConfiguration$a;)Lcom/yandex/metrica/impl/ob/gf;

    .line 3248
    :cond_2
    invoke-virtual {v2, v3}, Lcom/yandex/metrica/impl/ob/iz;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3249
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 3250
    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/gf;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/gf;

    .line 3253
    :cond_3
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/iz;->d()Lcom/yandex/metrica/impl/ob/iz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/iz;->c()Lcom/yandex/metrica/impl/ob/iz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/iz;->j()V

    .line 213
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/gf;->i()V

    .line 215
    new-instance v0, Lcom/yandex/metrica/impl/ob/iu;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/iu;-><init>(Landroid/content/Context;)V

    .line 216
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/iu;->a()V

    .line 217
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/iu;->b()V

    .line 4223
    new-instance v0, Lcom/yandex/metrica/impl/ob/gg;

    .line 4224
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/fq;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/fq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/fq;->e()Lcom/yandex/metrica/impl/ob/fr;

    move-result-object v1

    .line 4225
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/gg;-><init>(Lcom/yandex/metrica/impl/ob/fr;Ljava/lang/String;)V

    .line 4227
    invoke-static {}, Lcom/yandex/metrica/impl/ob/hg;->a()Lcom/yandex/metrica/impl/ob/hg;

    move-result-object v1

    new-instance v2, Lcom/yandex/metrica/impl/ob/hb;

    .line 4230
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/gg;->a()Lcom/yandex/metrica/impl/ob/ma;

    move-result-object v0

    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/ma;->b:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v0, v4}, Lcom/yandex/metrica/impl/ob/nt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v3}, Lcom/yandex/metrica/impl/ob/hb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4227
    invoke-virtual {v1, p1, v2}, Lcom/yandex/metrica/impl/ob/hg;->a(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/hb;)Lcom/yandex/metrica/impl/ob/hb;

    return-void
.end method
