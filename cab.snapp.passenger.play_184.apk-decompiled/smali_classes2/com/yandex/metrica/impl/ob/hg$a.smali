.class Lcom/yandex/metrica/impl/ob/hg$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/hg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Lcom/yandex/metrica/impl/ob/hg;

.field private b:Lcom/yandex/metrica/impl/ob/nf;


# direct methods
.method private constructor <init>(Lcom/yandex/metrica/impl/ob/hg;)V
    .locals 2

    .line 381
    new-instance v0, Lcom/yandex/metrica/impl/ob/nf;

    const-string v1, "com.yandex.metrica.synchronization.deviceid"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/nf;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/hg$a;-><init>(Lcom/yandex/metrica/impl/ob/hg;Lcom/yandex/metrica/impl/ob/nf;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yandex/metrica/impl/ob/hg;B)V
    .locals 0

    .line 373
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/hg$a;-><init>(Lcom/yandex/metrica/impl/ob/hg;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/hg;Lcom/yandex/metrica/impl/ob/nf;)V
    .locals 0

    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/hg$a;->a:Lcom/yandex/metrica/impl/ob/hg;

    .line 387
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/hg$a;->b:Lcom/yandex/metrica/impl/ob/nf;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/hb;)Lcom/yandex/metrica/impl/ob/hb;
    .locals 1

    .line 402
    iget-object v0, p2, Lcom/yandex/metrica/impl/ob/hb;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 407
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/hg$a;->a()Lcom/yandex/metrica/impl/ob/hg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/hg;->f()Lcom/yandex/metrica/impl/ob/hi;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/hi;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/hb;

    .line 413
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hg$a;->b:Lcom/yandex/metrica/impl/ob/nf;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/nf;->c()V

    .line 416
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/hg$a;->a()Lcom/yandex/metrica/impl/ob/hg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/hg;->f()Lcom/yandex/metrica/impl/ob/hi;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/hi;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/hb;

    move-result-object v0

    .line 419
    invoke-virtual {p0, p1, p2, v0}, Lcom/yandex/metrica/impl/ob/hg$a;->a(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/hb;Lcom/yandex/metrica/impl/ob/hb;)Lcom/yandex/metrica/impl/ob/hb;

    move-result-object p1
    :try_end_0
    .catch Lcom/yandex/metrica/impl/ob/nf$a; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    :try_start_1
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/hg$a;->b:Lcom/yandex/metrica/impl/ob/nf;

    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/nf;->b()V
    :try_end_1
    .catch Lcom/yandex/metrica/impl/ob/nf$a; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :catch_1
    :goto_0
    return-object p1
.end method

.method a(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/hb;Lcom/yandex/metrica/impl/ob/hb;)Lcom/yandex/metrica/impl/ob/hb;
    .locals 3

    .line 436
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/lm;->a(Landroid/content/Context;)Lcom/yandex/metrica/b;

    move-result-object v0

    if-eqz p2, :cond_4

    .line 437
    iget-object v1, p2, Lcom/yandex/metrica/impl/ob/hb;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 448
    :cond_0
    invoke-virtual {p2, p3}, Lcom/yandex/metrica/impl/ob/hb;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 449
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/hg$a;->a()Lcom/yandex/metrica/impl/ob/hg;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/yandex/metrica/impl/ob/hg;->c(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/hb;)V

    .line 450
    new-instance v1, Lcom/yandex/metrica/impl/ob/hg$c;

    iget-object p3, p3, Lcom/yandex/metrica/impl/ob/hb;->a:Ljava/lang/String;

    iget-object v2, p2, Lcom/yandex/metrica/impl/ob/hb;->a:Ljava/lang/String;

    invoke-direct {v1, p1, p3, v2}, Lcom/yandex/metrica/impl/ob/hg$c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "update_snapshot"

    invoke-interface {v0, p1, v1}, Lcom/yandex/metrica/IReporter;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-object p2

    :cond_1
    if-eqz p3, :cond_3

    .line 454
    iget-object v1, p3, Lcom/yandex/metrica/impl/ob/hb;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 465
    :cond_2
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/hg$a;->a()Lcom/yandex/metrica/impl/ob/hg;

    move-result-object v1

    invoke-virtual {v1, p1, p3}, Lcom/yandex/metrica/impl/ob/hg;->c(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/hb;)V

    .line 468
    new-instance v1, Lcom/yandex/metrica/impl/ob/hg$c;

    iget-object v2, p3, Lcom/yandex/metrica/impl/ob/hb;->a:Ljava/lang/String;

    iget-object p2, p2, Lcom/yandex/metrica/impl/ob/hb;->a:Ljava/lang/String;

    invoke-direct {v1, p1, v2, p2}, Lcom/yandex/metrica/impl/ob/hg$c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "overlapping_device_id"

    invoke-interface {v0, p1, v1}, Lcom/yandex/metrica/IReporter;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-object p3

    .line 456
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/hg$a;->a()Lcom/yandex/metrica/impl/ob/hg;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/yandex/metrica/impl/ob/hg;->c(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/hb;)V

    .line 459
    new-instance p3, Lcom/yandex/metrica/impl/ob/hg$c;

    iget-object v1, p2, Lcom/yandex/metrica/impl/ob/hb;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-direct {p3, p1, v2, v1}, Lcom/yandex/metrica/impl/ob/hg$c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "wtf_situation. App has id and elector hasn\'t"

    invoke-interface {v0, p1, p3}, Lcom/yandex/metrica/IReporter;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-object p2

    :cond_4
    :goto_1
    if-eqz p3, :cond_6

    .line 438
    iget-object p2, p3, Lcom/yandex/metrica/impl/ob/hb;->a:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_2

    .line 443
    :cond_5
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/hg$a;->a()Lcom/yandex/metrica/impl/ob/hg;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lcom/yandex/metrica/impl/ob/hg;->c(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/hb;)V

    return-object p3

    :cond_6
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method a()Lcom/yandex/metrica/impl/ob/hg;
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hg$a;->a:Lcom/yandex/metrica/impl/ob/hg;

    return-object v0
.end method
