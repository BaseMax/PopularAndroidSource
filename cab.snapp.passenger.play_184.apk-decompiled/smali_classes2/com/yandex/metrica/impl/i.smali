.class public Lcom/yandex/metrica/impl/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/i$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:I

.field d:I

.field e:I

.field private f:Lcom/yandex/metrica/impl/i$a;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:I

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:J

.field private o:J

.field private p:Lcom/yandex/metrica/impl/t;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, ""

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0, v0, v1}, Lcom/yandex/metrica/impl/i;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/impl/i;)V
    .locals 2

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/yandex/metrica/impl/i$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/i$a;-><init>(B)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/i;->f:Lcom/yandex/metrica/impl/i$a;

    const/4 v0, 0x2

    .line 58
    iput v0, p0, Lcom/yandex/metrica/impl/i;->k:I

    .line 63
    sget-object v0, Lcom/yandex/metrica/impl/t;->a:Lcom/yandex/metrica/impl/t;

    iput-object v0, p0, Lcom/yandex/metrica/impl/i;->p:Lcom/yandex/metrica/impl/t;

    if-eqz p1, :cond_0

    .line 72
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/i;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/i;->a:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/i;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/i;->b:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/i;->e()I

    move-result v0

    iput v0, p0, Lcom/yandex/metrica/impl/i;->c:I

    .line 75
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/i;->f()I

    move-result v0

    iput v0, p0, Lcom/yandex/metrica/impl/i;->d:I

    .line 76
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/i;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/i;->g:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/i;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/i;->i:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/i;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/i;->h:Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lcom/yandex/metrica/impl/i;->f:Lcom/yandex/metrica/impl/i$a;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/i;->g()Landroid/location/Location;

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/metrica/impl/i$a;->a:Landroid/location/Location;

    .line 80
    iget-object v0, p0, Lcom/yandex/metrica/impl/i;->f:Lcom/yandex/metrica/impl/i$a;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/i;->h()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/metrica/impl/i$a;->b:Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/yandex/metrica/impl/i;->f:Lcom/yandex/metrica/impl/i$a;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/i;->j()Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/metrica/impl/i$a;->c:Ljava/lang/Integer;

    .line 82
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/i;->l()Landroid/util/Pair;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/i;->j:Landroid/util/Pair;

    .line 83
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/i;->q()I

    move-result v0

    iput v0, p0, Lcom/yandex/metrica/impl/i;->e:I

    .line 84
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/i;->r()I

    move-result v0

    iput v0, p0, Lcom/yandex/metrica/impl/i;->k:I

    .line 85
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/i;->s()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/i;->l:Ljava/lang/String;

    .line 86
    iget-object v0, p1, Lcom/yandex/metrica/impl/i;->m:Ljava/lang/String;

    iput-object v0, p0, Lcom/yandex/metrica/impl/i;->m:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/i;->v()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/metrica/impl/i;->n:J

    .line 88
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/i;->w()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/metrica/impl/i;->o:J

    .line 89
    iget-object p1, p1, Lcom/yandex/metrica/impl/i;->p:Lcom/yandex/metrica/impl/t;

    iput-object p1, p0, Lcom/yandex/metrica/impl/i;->p:Lcom/yandex/metrica/impl/t;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const-string v0, ""

    .line 94
    invoke-direct {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/i;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 98
    new-instance v0, Lcom/yandex/metrica/impl/ob/np;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/np;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/yandex/metrica/impl/i;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/yandex/metrica/impl/ob/np;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/yandex/metrica/impl/ob/np;)V
    .locals 2

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/yandex/metrica/impl/i$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/i$a;-><init>(B)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/i;->f:Lcom/yandex/metrica/impl/i$a;

    const/4 v0, 0x2

    .line 58
    iput v0, p0, Lcom/yandex/metrica/impl/i;->k:I

    .line 63
    sget-object v0, Lcom/yandex/metrica/impl/t;->a:Lcom/yandex/metrica/impl/t;

    iput-object v0, p0, Lcom/yandex/metrica/impl/i;->p:Lcom/yandex/metrica/impl/t;

    .line 104
    iput-object p2, p0, Lcom/yandex/metrica/impl/i;->a:Ljava/lang/String;

    .line 105
    iput p3, p0, Lcom/yandex/metrica/impl/i;->c:I

    .line 106
    iput-object p1, p0, Lcom/yandex/metrica/impl/i;->b:Ljava/lang/String;

    .line 107
    invoke-virtual {p4}, Lcom/yandex/metrica/impl/ob/np;->c()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/yandex/metrica/impl/i;->n:J

    .line 108
    invoke-virtual {p4}, Lcom/yandex/metrica/impl/ob/np;->a()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/yandex/metrica/impl/i;->o:J

    return-void
.end method

.method public static a(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/s$a;)Lcom/yandex/metrica/impl/i;
    .locals 1

    .line 413
    new-instance v0, Lcom/yandex/metrica/impl/i;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/i;-><init>(Lcom/yandex/metrica/impl/i;)V

    const-string p0, ""

    .line 414
    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/i;->b(Ljava/lang/String;)Lcom/yandex/metrica/impl/i;

    .line 415
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/s$a;->a()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/i;->a(I)Lcom/yandex/metrica/impl/i;

    return-object v0
.end method

.method public static a(Lcom/yandex/metrica/impl/i;Ljava/util/List;)Lcom/yandex/metrica/impl/i;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/i;",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/iq;",
            ">;)",
            "Lcom/yandex/metrica/impl/i;"
        }
    .end annotation

    .line 459
    new-instance v0, Lcom/yandex/metrica/impl/i;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/i;-><init>(Lcom/yandex/metrica/impl/i;)V

    .line 462
    :try_start_0
    new-instance p0, Lorg/a/a;

    invoke-direct {p0}, Lorg/a/a;-><init>()V

    .line 463
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/metrica/impl/ob/iq;

    .line 464
    new-instance v2, Lorg/a/c;

    invoke-direct {v2}, Lorg/a/c;-><init>()V

    const-string v3, "name"

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/iq;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/a/c;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    move-result-object v2

    const-string v3, "granted"

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/iq;->a()Z

    move-result v1

    invoke-virtual {v2, v3, v1}, Lorg/a/c;->put(Ljava/lang/String;Z)Lorg/a/c;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/a/a;->put(Ljava/lang/Object;)Lorg/a/a;

    goto :goto_0

    .line 466
    :cond_0
    new-instance p1, Lorg/a/c;

    invoke-direct {p1}, Lorg/a/c;-><init>()V

    const-string v1, "permissions"

    invoke-virtual {p1, v1, p0}, Lorg/a/c;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    move-result-object p0

    invoke-virtual {p0}, Lorg/a/c;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/a/b; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, ""

    .line 470
    :goto_1
    sget-object p1, Lcom/yandex/metrica/impl/s$a;->G:Lcom/yandex/metrica/impl/s$a;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/s$a;->a()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/i;->a(I)Lcom/yandex/metrica/impl/i;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/yandex/metrica/impl/i;->c(Ljava/lang/String;)Lcom/yandex/metrica/impl/i;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/yandex/metrica/impl/ob/ac;Lcom/yandex/metrica/impl/i;)Lcom/yandex/metrica/impl/i;
    .locals 3

    .line 432
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ac;->c()Landroid/content/Context;

    move-result-object v0

    .line 433
    new-instance v1, Lcom/yandex/metrica/impl/y;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/y;-><init>()V

    .line 434
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/y;->a()Lcom/yandex/metrica/impl/y;

    move-result-object v1

    .line 437
    :try_start_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ac;->D()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 438
    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/y;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/y;

    .line 440
    :cond_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ac;->k()Lcom/yandex/metrica/impl/ob/le;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/le;->E()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 443
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ac;->k()Lcom/yandex/metrica/impl/ob/le;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/le;->F()Z

    move-result p0

    .line 441
    invoke-virtual {v1, v0, p0}, Lcom/yandex/metrica/impl/y;->a(Landroid/content/Context;Z)Lcom/yandex/metrica/impl/y;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    :catch_0
    :cond_1
    new-instance p0, Lcom/yandex/metrica/impl/i;

    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/i;-><init>(Lcom/yandex/metrica/impl/i;)V

    .line 452
    sget-object p1, Lcom/yandex/metrica/impl/s$a;->p:Lcom/yandex/metrica/impl/s$a;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/s$a;->a()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/i;->a(I)Lcom/yandex/metrica/impl/i;

    move-result-object p1

    .line 453
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/y;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/i;->c(Ljava/lang/String;)Lcom/yandex/metrica/impl/i;

    return-object p0
.end method

.method public static b(Landroid/os/Bundle;)Lcom/yandex/metrica/impl/i;
    .locals 4

    const-string v0, "CounterReport.Object"

    .line 385
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 386
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 388
    :goto_0
    new-instance v0, Lcom/yandex/metrica/impl/i;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/i;-><init>()V

    sget-object v1, Lcom/yandex/metrica/impl/s$a;->a:Lcom/yandex/metrica/impl/s$a;

    .line 389
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/s$a;->a()I

    move-result v1

    const-string v2, "CounterReport.Type"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/i;->a(I)Lcom/yandex/metrica/impl/i;

    move-result-object v0

    const-string v1, "CounterReport.CustomType"

    .line 390
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/i;->b(I)Lcom/yandex/metrica/impl/i;

    move-result-object v0

    const-string v1, "CounterReport.GeoLocation"

    .line 391
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/hw;->a([B)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/i;->a(Landroid/location/Location;)Lcom/yandex/metrica/impl/i;

    move-result-object v0

    const-string v1, "CounterReport.Value"

    .line 392
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/bt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/i;->c(Ljava/lang/String;)Lcom/yandex/metrica/impl/i;

    move-result-object v0

    const-string v1, "CounterReport.UserInfo"

    .line 393
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/i;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/i;

    move-result-object v0

    const-string v1, "CounterReport.Environment"

    .line 394
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/i;->f(Ljava/lang/String;)Lcom/yandex/metrica/impl/i;

    move-result-object v0

    const-string v1, "CounterReport.Wifi"

    .line 395
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/i;->e(Ljava/lang/String;)Lcom/yandex/metrica/impl/i;

    move-result-object v0

    const-string v1, "CounterReport.CellId"

    .line 396
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/i;->a(Ljava/lang/Integer;)Lcom/yandex/metrica/impl/i;

    move-result-object v0

    const-string v1, "CounterReport.Event"

    .line 397
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/i;->b(Ljava/lang/String;)Lcom/yandex/metrica/impl/i;

    move-result-object v0

    const-string v1, "CounterReport.PackageName"

    .line 398
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/i;->g(Ljava/lang/String;)Lcom/yandex/metrica/impl/i;

    move-result-object v0

    const-string v1, "CounterReport.AppEnvironmentDiffKey"

    .line 1374
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "CounterReport.AppEnvironmentDiffValue"

    .line 1375
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1376
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1377
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1378
    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 2216
    :goto_1
    iput-object v3, v0, Lcom/yandex/metrica/impl/i;->j:Landroid/util/Pair;

    const-string v1, "CounterReport.TRUNCATED"

    .line 400
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/i;->c(I)Lcom/yandex/metrica/impl/i;

    move-result-object v0

    const-string v1, "CounterReport.ConnectionType"

    .line 401
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/i;->d(I)Lcom/yandex/metrica/impl/i;

    move-result-object v0

    const-string v1, "CounterReport.CellularConnectionType"

    .line 402
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/i;->h(Ljava/lang/String;)Lcom/yandex/metrica/impl/i;

    move-result-object v0

    const-string v1, "CounterReport.ProfileID"

    .line 403
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/i;->d(Ljava/lang/String;)Lcom/yandex/metrica/impl/i;

    move-result-object v0

    const-string v1, "CounterReport.CreationElapsedRealtime"

    .line 404
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/i;->a(J)Lcom/yandex/metrica/impl/i;

    move-result-object v0

    const-string v1, "CounterReport.CreationTimestamp"

    .line 405
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/i;->b(J)Lcom/yandex/metrica/impl/i;

    move-result-object v0

    const-string v1, "CounterReport.UniquenessStatus"

    .line 407
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 406
    invoke-static {p0}, Lcom/yandex/metrica/impl/t;->a(Ljava/lang/Integer;)Lcom/yandex/metrica/impl/t;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/i;->a(Lcom/yandex/metrica/impl/t;)Lcom/yandex/metrica/impl/i;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    .line 313
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 315
    iget-object v1, p0, Lcom/yandex/metrica/impl/i;->a:Ljava/lang/String;

    const-string v2, "CounterReport.Event"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v1, p0, Lcom/yandex/metrica/impl/i;->b:Ljava/lang/String;

    const-string v2, "CounterReport.Value"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iget v1, p0, Lcom/yandex/metrica/impl/i;->c:I

    const-string v2, "CounterReport.Type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 318
    iget v1, p0, Lcom/yandex/metrica/impl/i;->d:I

    const-string v2, "CounterReport.CustomType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 319
    iget-object v1, p0, Lcom/yandex/metrica/impl/i;->f:Lcom/yandex/metrica/impl/i$a;

    iget-object v1, v1, Lcom/yandex/metrica/impl/i$a;->b:Ljava/lang/String;

    const-string v2, "CounterReport.Wifi"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget v1, p0, Lcom/yandex/metrica/impl/i;->e:I

    const-string v2, "CounterReport.TRUNCATED"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 321
    iget v1, p0, Lcom/yandex/metrica/impl/i;->k:I

    const-string v2, "CounterReport.ConnectionType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 322
    iget-object v1, p0, Lcom/yandex/metrica/impl/i;->l:Ljava/lang/String;

    const-string v2, "CounterReport.CellularConnectionType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v1, p0, Lcom/yandex/metrica/impl/i;->m:Ljava/lang/String;

    const-string v2, "CounterReport.ProfileID"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v1, p0, Lcom/yandex/metrica/impl/i;->p:Lcom/yandex/metrica/impl/t;

    iget v1, v1, Lcom/yandex/metrica/impl/t;->d:I

    const-string v2, "CounterReport.UniquenessStatus"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 326
    iget-object v1, p0, Lcom/yandex/metrica/impl/i;->f:Lcom/yandex/metrica/impl/i$a;

    iget-object v1, v1, Lcom/yandex/metrica/impl/i$a;->a:Landroid/location/Location;

    if-eqz v1, :cond_0

    .line 327
    iget-object v1, p0, Lcom/yandex/metrica/impl/i;->f:Lcom/yandex/metrica/impl/i$a;

    iget-object v1, v1, Lcom/yandex/metrica/impl/i$a;->a:Landroid/location/Location;

    .line 328
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/hw;->a(Landroid/location/Location;)[B

    move-result-object v1

    const-string v2, "CounterReport.GeoLocation"

    .line 327
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 331
    :cond_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/i;->f:Lcom/yandex/metrica/impl/i$a;

    iget-object v1, v1, Lcom/yandex/metrica/impl/i$a;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 332
    iget-object v1, p0, Lcom/yandex/metrica/impl/i;->f:Lcom/yandex/metrica/impl/i$a;

    iget-object v1, v1, Lcom/yandex/metrica/impl/i$a;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "CounterReport.CellId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 334
    :cond_1
    iget-object v1, p0, Lcom/yandex/metrica/impl/i;->h:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v2, "CounterReport.Environment"

    .line 335
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    :cond_2
    iget-object v1, p0, Lcom/yandex/metrica/impl/i;->g:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v2, "CounterReport.UserInfo"

    .line 338
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    :cond_3
    iget-object v1, p0, Lcom/yandex/metrica/impl/i;->i:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v2, "CounterReport.PackageName"

    .line 341
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    :cond_4
    iget-object v1, p0, Lcom/yandex/metrica/impl/i;->j:Landroid/util/Pair;

    if-eqz v1, :cond_5

    .line 1368
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const-string v3, "CounterReport.AppEnvironmentDiffKey"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "CounterReport.AppEnvironmentDiffValue"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    :cond_5
    iget-wide v1, p0, Lcom/yandex/metrica/impl/i;->n:J

    const-string v3, "CounterReport.CreationElapsedRealtime"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 347
    iget-wide v1, p0, Lcom/yandex/metrica/impl/i;->o:J

    const-string v3, "CounterReport.CreationTimestamp"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    if-eqz p1, :cond_6

    goto :goto_0

    .line 349
    :cond_6
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :goto_0
    const-string v1, "CounterReport.Object"

    .line 350
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p1
.end method

.method public a(I)Lcom/yandex/metrica/impl/i;
    .locals 0

    .line 143
    iput p1, p0, Lcom/yandex/metrica/impl/i;->c:I

    return-object p0
.end method

.method protected a(J)Lcom/yandex/metrica/impl/i;
    .locals 0

    .line 254
    iput-wide p1, p0, Lcom/yandex/metrica/impl/i;->n:J

    return-object p0
.end method

.method a(Landroid/location/Location;)Lcom/yandex/metrica/impl/i;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/yandex/metrica/impl/i;->f:Lcom/yandex/metrica/impl/i$a;

    iput-object p1, v0, Lcom/yandex/metrica/impl/i$a;->a:Landroid/location/Location;

    return-object p0
.end method

.method public a(Lcom/yandex/metrica/impl/t;)Lcom/yandex/metrica/impl/i;
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/yandex/metrica/impl/i;->p:Lcom/yandex/metrica/impl/t;

    return-object p0
.end method

.method a(Ljava/lang/Integer;)Lcom/yandex/metrica/impl/i;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/yandex/metrica/impl/i;->f:Lcom/yandex/metrica/impl/i$a;

    iput-object p1, v0, Lcom/yandex/metrica/impl/i$a;->c:Ljava/lang/Integer;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/yandex/metrica/impl/i;
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/yandex/metrica/impl/i;->g:Ljava/lang/String;

    return-object p0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/i;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/yandex/metrica/impl/i;->j:Landroid/util/Pair;

    if-nez v0, :cond_0

    .line 210
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/i;->j:Landroid/util/Pair;

    :cond_0
    return-object p0
.end method

.method public a([B)Lcom/yandex/metrica/impl/i;
    .locals 2

    .line 134
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/i;->b:Ljava/lang/String;

    return-object p0
.end method

.method public b(I)Lcom/yandex/metrica/impl/i;
    .locals 0

    .line 152
    iput p1, p0, Lcom/yandex/metrica/impl/i;->d:I

    return-object p0
.end method

.method protected b(J)Lcom/yandex/metrica/impl/i;
    .locals 0

    .line 259
    iput-wide p1, p0, Lcom/yandex/metrica/impl/i;->o:J

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/yandex/metrica/impl/i;
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/yandex/metrica/impl/i;->a:Ljava/lang/String;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/yandex/metrica/impl/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected c(I)Lcom/yandex/metrica/impl/i;
    .locals 0

    .line 239
    iput p1, p0, Lcom/yandex/metrica/impl/i;->e:I

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/yandex/metrica/impl/i;
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/yandex/metrica/impl/i;->b:Ljava/lang/String;

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/yandex/metrica/impl/i;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected d(I)Lcom/yandex/metrica/impl/i;
    .locals 0

    .line 244
    iput p1, p0, Lcom/yandex/metrica/impl/i;->k:I

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/yandex/metrica/impl/i;
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/yandex/metrica/impl/i;->m:Ljava/lang/String;

    return-object p0
.end method

.method public d()[B
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/yandex/metrica/impl/i;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public e()I
    .locals 1

    .line 139
    iget v0, p0, Lcom/yandex/metrica/impl/i;->c:I

    return v0
.end method

.method e(Ljava/lang/String;)Lcom/yandex/metrica/impl/i;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/yandex/metrica/impl/i;->f:Lcom/yandex/metrica/impl/i$a;

    iput-object p1, v0, Lcom/yandex/metrica/impl/i$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public f()I
    .locals 1

    .line 148
    iget v0, p0, Lcom/yandex/metrica/impl/i;->d:I

    return v0
.end method

.method f(Ljava/lang/String;)Lcom/yandex/metrica/impl/i;
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/yandex/metrica/impl/i;->h:Ljava/lang/String;

    return-object p0
.end method

.method public g()Landroid/location/Location;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/yandex/metrica/impl/i;->f:Lcom/yandex/metrica/impl/i$a;

    iget-object v0, v0, Lcom/yandex/metrica/impl/i$a;->a:Landroid/location/Location;

    return-object v0
.end method

.method public g(Ljava/lang/String;)Lcom/yandex/metrica/impl/i;
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/yandex/metrica/impl/i;->i:Ljava/lang/String;

    return-object p0
.end method

.method protected h(Ljava/lang/String;)Lcom/yandex/metrica/impl/i;
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/yandex/metrica/impl/i;->l:Ljava/lang/String;

    return-object p0
.end method

.method h()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/yandex/metrica/impl/i;->f:Lcom/yandex/metrica/impl/i$a;

    iget-object v0, v0, Lcom/yandex/metrica/impl/i$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method i()Lorg/a/a;
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/yandex/metrica/impl/i;->f:Lcom/yandex/metrica/impl/i$a;

    iget-object v0, v0, Lcom/yandex/metrica/impl/i$a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    :try_start_0
    new-instance v0, Lorg/a/a;

    iget-object v1, p0, Lcom/yandex/metrica/impl/i;->f:Lcom/yandex/metrica/impl/i$a;

    iget-object v1, v1, Lcom/yandex/metrica/impl/i$a;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/a/a;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 178
    :catch_0
    :cond_0
    new-instance v0, Lorg/a/a;

    invoke-direct {v0}, Lorg/a/a;-><init>()V

    return-object v0
.end method

.method j()Ljava/lang/Integer;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/yandex/metrica/impl/i;->f:Lcom/yandex/metrica/impl/i$a;

    iget-object v0, v0, Lcom/yandex/metrica/impl/i$a;->c:Ljava/lang/Integer;

    return-object v0
.end method

.method k()Ljava/lang/String;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/yandex/metrica/impl/i;->h:Ljava/lang/String;

    return-object v0
.end method

.method public l()Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/yandex/metrica/impl/i;->j:Landroid/util/Pair;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/yandex/metrica/impl/i;->g:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/yandex/metrica/impl/i;->i:Ljava/lang/String;

    return-object v0
.end method

.method public o()Z
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/yandex/metrica/impl/i;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public p()Z
    .locals 2

    .line 268
    sget-object v0, Lcom/yandex/metrica/impl/s$a;->a:Lcom/yandex/metrica/impl/s$a;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/s$a;->a()I

    move-result v0

    iget v1, p0, Lcom/yandex/metrica/impl/i;->c:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public q()I
    .locals 1

    .line 272
    iget v0, p0, Lcom/yandex/metrica/impl/i;->e:I

    return v0
.end method

.method public r()I
    .locals 1

    .line 276
    iget v0, p0, Lcom/yandex/metrica/impl/i;->k:I

    return v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/yandex/metrica/impl/i;->l:Ljava/lang/String;

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/yandex/metrica/impl/i;->m:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 356
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/yandex/metrica/impl/i;->a:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/yandex/metrica/impl/i;->c:I

    .line 360
    invoke-static {v2}, Lcom/yandex/metrica/impl/s$a;->a(I)Lcom/yandex/metrica/impl/s$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/s$a;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/yandex/metrica/impl/i;->b:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "[event: %s, type: %s, value: %s]"

    .line 356
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Lcom/yandex/metrica/impl/t;
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/yandex/metrica/impl/i;->p:Lcom/yandex/metrica/impl/t;

    return-object v0
.end method

.method public v()J
    .locals 2

    .line 305
    iget-wide v0, p0, Lcom/yandex/metrica/impl/i;->n:J

    return-wide v0
.end method

.method public w()J
    .locals 2

    .line 309
    iget-wide v0, p0, Lcom/yandex/metrica/impl/i;->o:J

    return-wide v0
.end method
