.class Lcom/yandex/metrica/impl/ob/ab$a;
.super Lcom/yandex/metrica/impl/ob/ab$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/iz;

.field private final b:Lcom/yandex/metrica/impl/ob/gd;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/ac;)V
    .locals 3

    .line 212
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/ab$f;-><init>(Lcom/yandex/metrica/impl/ob/ac;)V

    .line 213
    new-instance v0, Lcom/yandex/metrica/impl/ob/iz;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ac;->c()Landroid/content/Context;

    move-result-object v1

    .line 214
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ac;->b()Lcom/yandex/metrica/impl/ob/z;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/z;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/iz;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ab$a;->a:Lcom/yandex/metrica/impl/ob/iz;

    .line 215
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ac;->C()Lcom/yandex/metrica/impl/ob/gd;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ab$a;->b:Lcom/yandex/metrica/impl/ob/gd;

    return-void
.end method


# virtual methods
.method protected a()Z
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ab$a;->a:Lcom/yandex/metrica/impl/ob/iz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/iz;->e()Z

    move-result v0

    return v0
.end method

.method protected b()V
    .locals 7

    .line 226
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ab$a;->d()V

    .line 227
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ab$a;->c()V

    .line 1233
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ab$a;->a:Lcom/yandex/metrica/impl/ob/iz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/iz;->a()Lcom/yandex/metrica/impl/b$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1235
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ab$a;->b:Lcom/yandex/metrica/impl/ob/gd;

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/gd;->a(Lcom/yandex/metrica/impl/b$a;)Lcom/yandex/metrica/impl/ob/gd;

    .line 1237
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ab$a;->a:Lcom/yandex/metrica/impl/ob/iz;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/iz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1238
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ab$a;->b:Lcom/yandex/metrica/impl/ob/gd;

    .line 1239
    invoke-virtual {v2, v1}, Lcom/yandex/metrica/impl/ob/gd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1240
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ab$a;->b:Lcom/yandex/metrica/impl/ob/gd;

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/gd;->b(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/gd;

    .line 1242
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ab$a;->a:Lcom/yandex/metrica/impl/ob/iz;

    .line 1243
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/iz;->b()Lcom/yandex/metrica/CounterConfiguration$a;

    move-result-object v0

    .line 1244
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ab$a;->b:Lcom/yandex/metrica/impl/ob/gd;

    .line 1245
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/gd;->c()Lcom/yandex/metrica/CounterConfiguration$a;

    move-result-object v1

    .line 1246
    sget-object v2, Lcom/yandex/metrica/CounterConfiguration$a;->a:Lcom/yandex/metrica/CounterConfiguration$a;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/yandex/metrica/CounterConfiguration$a;->a:Lcom/yandex/metrica/CounterConfiguration$a;

    if-ne v1, v2, :cond_2

    .line 1248
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ab$a;->b:Lcom/yandex/metrica/impl/ob/gd;

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/gd;->a(Lcom/yandex/metrica/CounterConfiguration$a;)Lcom/yandex/metrica/impl/ob/gd;

    .line 1250
    :cond_2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ab$a;->a:Lcom/yandex/metrica/impl/ob/iz;

    const-wide/high16 v1, -0x8000000000000000L

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/iz;->c(J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_3

    .line 1251
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ab$a;->b:Lcom/yandex/metrica/impl/ob/gd;

    .line 1252
    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/gd;->a(J)J

    move-result-wide v5

    cmp-long v0, v5, v1

    if-nez v0, :cond_3

    .line 1253
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ab$a;->b:Lcom/yandex/metrica/impl/ob/gd;

    invoke-virtual {v0, v3, v4}, Lcom/yandex/metrica/impl/ob/gd;->c(J)Lcom/yandex/metrica/impl/ob/gd;

    .line 1256
    :cond_3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ab$a;->b:Lcom/yandex/metrica/impl/ob/gd;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/gd;->i()V

    .line 229
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ab$a;->a:Lcom/yandex/metrica/impl/ob/iz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/iz;->g()V

    return-void
.end method

.method c()V
    .locals 6

    .line 261
    new-instance v0, Lcom/yandex/metrica/impl/ob/em;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ab$a;->b:Lcom/yandex/metrica/impl/ob/gd;

    const-string v2, "foreground"

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/em;-><init>(Lcom/yandex/metrica/impl/ob/gd;Ljava/lang/String;)V

    .line 263
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/em;->i()Z

    move-result v1

    if-nez v1, :cond_5

    .line 264
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ab$a;->a:Lcom/yandex/metrica/impl/ob/iz;

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/yandex/metrica/impl/ob/iz;->d(J)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 266
    invoke-virtual {v0, v4, v5}, Lcom/yandex/metrica/impl/ob/em;->d(J)Lcom/yandex/metrica/impl/ob/em;

    .line 268
    :cond_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ab$a;->a:Lcom/yandex/metrica/impl/ob/iz;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/iz;->a(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 270
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/em;->a(Z)Lcom/yandex/metrica/impl/ob/em;

    .line 272
    :cond_1
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ab$a;->a:Lcom/yandex/metrica/impl/ob/iz;

    const-wide/high16 v2, -0x8000000000000000L

    invoke-virtual {v1, v2, v3}, Lcom/yandex/metrica/impl/ob/iz;->a(J)J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-eqz v1, :cond_2

    .line 274
    invoke-virtual {v0, v4, v5}, Lcom/yandex/metrica/impl/ob/em;->e(J)Lcom/yandex/metrica/impl/ob/em;

    .line 276
    :cond_2
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ab$a;->a:Lcom/yandex/metrica/impl/ob/iz;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/yandex/metrica/impl/ob/iz;->f(J)J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-eqz v1, :cond_3

    .line 278
    invoke-virtual {v0, v4, v5}, Lcom/yandex/metrica/impl/ob/em;->a(J)Lcom/yandex/metrica/impl/ob/em;

    .line 280
    :cond_3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ab$a;->a:Lcom/yandex/metrica/impl/ob/iz;

    invoke-virtual {v1, v2, v3}, Lcom/yandex/metrica/impl/ob/iz;->h(J)J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-eqz v1, :cond_4

    .line 282
    invoke-virtual {v0, v4, v5}, Lcom/yandex/metrica/impl/ob/em;->b(J)Lcom/yandex/metrica/impl/ob/em;

    .line 284
    :cond_4
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/em;->h()V

    :cond_5
    return-void
.end method

.method d()V
    .locals 6

    .line 290
    new-instance v0, Lcom/yandex/metrica/impl/ob/em;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ab$a;->b:Lcom/yandex/metrica/impl/ob/gd;

    const-string v2, "background"

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/em;-><init>(Lcom/yandex/metrica/impl/ob/gd;Ljava/lang/String;)V

    .line 292
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/em;->i()Z

    move-result v1

    if-nez v1, :cond_4

    .line 293
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ab$a;->a:Lcom/yandex/metrica/impl/ob/iz;

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/yandex/metrica/impl/ob/iz;->e(J)J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-eqz v1, :cond_0

    .line 295
    invoke-virtual {v0, v4, v5}, Lcom/yandex/metrica/impl/ob/em;->d(J)Lcom/yandex/metrica/impl/ob/em;

    .line 297
    :cond_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ab$a;->a:Lcom/yandex/metrica/impl/ob/iz;

    const-wide/high16 v2, -0x8000000000000000L

    invoke-virtual {v1, v2, v3}, Lcom/yandex/metrica/impl/ob/iz;->b(J)J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-eqz v1, :cond_1

    .line 299
    invoke-virtual {v0, v4, v5}, Lcom/yandex/metrica/impl/ob/em;->e(J)Lcom/yandex/metrica/impl/ob/em;

    .line 301
    :cond_1
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ab$a;->a:Lcom/yandex/metrica/impl/ob/iz;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/yandex/metrica/impl/ob/iz;->g(J)J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-eqz v1, :cond_2

    .line 303
    invoke-virtual {v0, v4, v5}, Lcom/yandex/metrica/impl/ob/em;->a(J)Lcom/yandex/metrica/impl/ob/em;

    .line 305
    :cond_2
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ab$a;->a:Lcom/yandex/metrica/impl/ob/iz;

    invoke-virtual {v1, v2, v3}, Lcom/yandex/metrica/impl/ob/iz;->i(J)J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-eqz v1, :cond_3

    .line 307
    invoke-virtual {v0, v4, v5}, Lcom/yandex/metrica/impl/ob/em;->b(J)Lcom/yandex/metrica/impl/ob/em;

    .line 309
    :cond_3
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/em;->h()V

    :cond_4
    return-void
.end method
