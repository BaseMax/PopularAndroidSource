.class Lcom/yandex/metrica/impl/ay$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# static fields
.field private static final s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/yandex/metrica/impl/s$a;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/yandex/metrica/impl/s$a;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:I

.field protected d:J

.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/String;

.field protected h:Ljava/lang/Integer;

.field protected i:Ljava/lang/Integer;

.field protected j:Ljava/lang/String;

.field protected k:Ljava/lang/String;

.field protected l:I

.field protected m:I

.field protected n:Ljava/lang/String;

.field protected o:Ljava/lang/String;

.field protected p:Ljava/lang/String;

.field protected q:Lcom/yandex/metrica/impl/ob/oe;

.field protected r:Lcom/yandex/metrica/impl/t;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 439
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 440
    sget-object v1, Lcom/yandex/metrica/impl/s$a;->c:Lcom/yandex/metrica/impl/s$a;

    const-class v2, Lcom/yandex/metrica/impl/ay$e;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    sget-object v1, Lcom/yandex/metrica/impl/s$a;->v:Lcom/yandex/metrica/impl/s$a;

    const-class v2, Lcom/yandex/metrica/impl/ay$j;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    sget-object v1, Lcom/yandex/metrica/impl/s$a;->f:Lcom/yandex/metrica/impl/s$a;

    const-class v2, Lcom/yandex/metrica/impl/ay$f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    sget-object v1, Lcom/yandex/metrica/impl/s$a;->n:Lcom/yandex/metrica/impl/s$a;

    const-class v2, Lcom/yandex/metrica/impl/ay$i;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    sget-object v1, Lcom/yandex/metrica/impl/s$a;->e:Lcom/yandex/metrica/impl/s$a;

    const-class v2, Lcom/yandex/metrica/impl/ay$e;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    sget-object v1, Lcom/yandex/metrica/impl/s$a;->p:Lcom/yandex/metrica/impl/s$a;

    const-class v2, Lcom/yandex/metrica/impl/ay$h;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    sget-object v1, Lcom/yandex/metrica/impl/s$a;->t:Lcom/yandex/metrica/impl/s$a;

    const-class v2, Lcom/yandex/metrica/impl/ay$e;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    sget-object v1, Lcom/yandex/metrica/impl/s$a;->h:Lcom/yandex/metrica/impl/s$a;

    const-class v2, Lcom/yandex/metrica/impl/ay$e;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    sget-object v1, Lcom/yandex/metrica/impl/s$a;->i:Lcom/yandex/metrica/impl/s$a;

    const-class v2, Lcom/yandex/metrica/impl/ay$e;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    sget-object v1, Lcom/yandex/metrica/impl/s$a;->z:Lcom/yandex/metrica/impl/s$a;

    const-class v2, Lcom/yandex/metrica/impl/ay$e;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    sget-object v1, Lcom/yandex/metrica/impl/s$a;->C:Lcom/yandex/metrica/impl/s$a;

    const-class v2, Lcom/yandex/metrica/impl/ay$f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    sget-object v1, Lcom/yandex/metrica/impl/s$a;->D:Lcom/yandex/metrica/impl/s$a;

    const-class v2, Lcom/yandex/metrica/impl/ay$d;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    sget-object v1, Lcom/yandex/metrica/impl/s$a;->E:Lcom/yandex/metrica/impl/s$a;

    const-class v2, Lcom/yandex/metrica/impl/ay$e;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    sget-object v1, Lcom/yandex/metrica/impl/s$a;->G:Lcom/yandex/metrica/impl/s$a;

    const-class v2, Lcom/yandex/metrica/impl/ay$a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    sget-object v1, Lcom/yandex/metrica/impl/s$a;->H:Lcom/yandex/metrica/impl/s$a;

    const-class v2, Lcom/yandex/metrica/impl/ay$a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    sget-object v1, Lcom/yandex/metrica/impl/s$a;->j:Lcom/yandex/metrica/impl/s$a;

    const-class v2, Lcom/yandex/metrica/impl/ay$b;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    sget-object v1, Lcom/yandex/metrica/impl/s$a;->l:Lcom/yandex/metrica/impl/s$a;

    const-class v2, Lcom/yandex/metrica/impl/ay$b;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/ay$c;->s:Ljava/util/Map;

    .line 459
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 460
    sget-object v1, Lcom/yandex/metrica/impl/s$a;->b:Lcom/yandex/metrica/impl/s$a;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    sget-object v1, Lcom/yandex/metrica/impl/s$a;->c:Lcom/yandex/metrica/impl/s$a;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    sget-object v1, Lcom/yandex/metrica/impl/s$a;->v:Lcom/yandex/metrica/impl/s$a;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    sget-object v1, Lcom/yandex/metrica/impl/s$a;->f:Lcom/yandex/metrica/impl/s$a;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    sget-object v1, Lcom/yandex/metrica/impl/s$a;->z:Lcom/yandex/metrica/impl/s$a;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    sget-object v1, Lcom/yandex/metrica/impl/s$a;->n:Lcom/yandex/metrica/impl/s$a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    sget-object v1, Lcom/yandex/metrica/impl/s$a;->e:Lcom/yandex/metrica/impl/s$a;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    sget-object v1, Lcom/yandex/metrica/impl/s$a;->p:Lcom/yandex/metrica/impl/s$a;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    sget-object v1, Lcom/yandex/metrica/impl/s$a;->t:Lcom/yandex/metrica/impl/s$a;

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    sget-object v1, Lcom/yandex/metrica/impl/s$a;->h:Lcom/yandex/metrica/impl/s$a;

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    sget-object v1, Lcom/yandex/metrica/impl/s$a;->i:Lcom/yandex/metrica/impl/s$a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    sget-object v1, Lcom/yandex/metrica/impl/s$a;->B:Lcom/yandex/metrica/impl/s$a;

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    sget-object v1, Lcom/yandex/metrica/impl/s$a;->C:Lcom/yandex/metrica/impl/s$a;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    sget-object v1, Lcom/yandex/metrica/impl/s$a;->E:Lcom/yandex/metrica/impl/s$a;

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    sget-object v1, Lcom/yandex/metrica/impl/s$a;->F:Lcom/yandex/metrica/impl/s$a;

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    sget-object v1, Lcom/yandex/metrica/impl/s$a;->G:Lcom/yandex/metrica/impl/s$a;

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    sget-object v1, Lcom/yandex/metrica/impl/s$a;->H:Lcom/yandex/metrica/impl/s$a;

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    sget-object v1, Lcom/yandex/metrica/impl/s$a;->j:Lcom/yandex/metrica/impl/s$a;

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    sget-object v1, Lcom/yandex/metrica/impl/s$a;->l:Lcom/yandex/metrica/impl/s$a;

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/ay$c;->t:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(IZ)Lcom/yandex/metrica/impl/ay$c;
    .locals 2

    .line 484
    invoke-static {p0}, Lcom/yandex/metrica/impl/s$a;->a(I)Lcom/yandex/metrica/impl/s$a;

    move-result-object p0

    .line 1501
    sget-object v0, Lcom/yandex/metrica/impl/ay$1;->a:[I

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/s$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1512
    sget-object p1, Lcom/yandex/metrica/impl/ay$c;->s:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 1506
    const-class p1, Lcom/yandex/metrica/impl/ay$e;

    goto :goto_0

    .line 1508
    :cond_1
    const-class p1, Lcom/yandex/metrica/impl/ay$g;

    .line 486
    :goto_0
    sget-object v0, Lcom/yandex/metrica/impl/ay$c;->t:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    const/4 v0, 0x0

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    .line 490
    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ay$c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 492
    :catch_0
    new-instance p1, Lcom/yandex/metrica/impl/ay$c;

    invoke-direct {p1}, Lcom/yandex/metrica/impl/ay$c;-><init>()V

    .line 495
    :goto_1
    invoke-virtual {p1, p0}, Lcom/yandex/metrica/impl/ay$c;->a(Ljava/lang/Integer;)Lcom/yandex/metrica/impl/ay$c;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method a(I)Lcom/yandex/metrica/impl/ay$c;
    .locals 0

    .line 550
    iput p1, p0, Lcom/yandex/metrica/impl/ay$c;->c:I

    return-object p0
.end method

.method a(J)Lcom/yandex/metrica/impl/ay$c;
    .locals 0

    .line 555
    iput-wide p1, p0, Lcom/yandex/metrica/impl/ay$c;->d:J

    return-object p0
.end method

.method a(Lcom/yandex/metrica/impl/ob/oe;)Lcom/yandex/metrica/impl/ay$c;
    .locals 0

    .line 620
    iput-object p1, p0, Lcom/yandex/metrica/impl/ay$c;->q:Lcom/yandex/metrica/impl/ob/oe;

    return-object p0
.end method

.method a(Lcom/yandex/metrica/impl/t;)Lcom/yandex/metrica/impl/ay$c;
    .locals 0

    .line 626
    iput-object p1, p0, Lcom/yandex/metrica/impl/ay$c;->r:Lcom/yandex/metrica/impl/t;

    return-object p0
.end method

.method a(Ljava/lang/Integer;)Lcom/yandex/metrica/impl/ay$c;
    .locals 0

    .line 575
    iput-object p1, p0, Lcom/yandex/metrica/impl/ay$c;->h:Ljava/lang/Integer;

    return-object p0
.end method

.method a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ay$c;
    .locals 0

    .line 540
    iput-object p1, p0, Lcom/yandex/metrica/impl/ay$c;->a:Ljava/lang/String;

    return-object p0
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    .line 631
    iget-object v0, p0, Lcom/yandex/metrica/impl/ay$c;->a:Ljava/lang/String;

    return-object v0
.end method

.method b(I)Lcom/yandex/metrica/impl/ay$c;
    .locals 0

    .line 600
    iput p1, p0, Lcom/yandex/metrica/impl/ay$c;->l:I

    return-object p0
.end method

.method b(Ljava/lang/Integer;)Lcom/yandex/metrica/impl/ay$c;
    .locals 0

    .line 585
    iput-object p1, p0, Lcom/yandex/metrica/impl/ay$c;->i:Ljava/lang/Integer;

    return-object p0
.end method

.method b(Ljava/lang/String;)Lcom/yandex/metrica/impl/ay$c;
    .locals 0

    .line 545
    iput-object p1, p0, Lcom/yandex/metrica/impl/ay$c;->b:Ljava/lang/String;

    return-object p0
.end method

.method protected b()[B
    .locals 1

    .line 635
    iget-object v0, p0, Lcom/yandex/metrica/impl/ay$c;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/yandex/metrica/impl/bt;->c(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method c(I)Lcom/yandex/metrica/impl/ay$c;
    .locals 0

    .line 605
    iput p1, p0, Lcom/yandex/metrica/impl/ay$c;->m:I

    return-object p0
.end method

.method c(Ljava/lang/String;)Lcom/yandex/metrica/impl/ay$c;
    .locals 0

    .line 560
    iput-object p1, p0, Lcom/yandex/metrica/impl/ay$c;->e:Ljava/lang/String;

    return-object p0
.end method

.method protected c()Ljava/lang/Integer;
    .locals 1

    .line 639
    iget-object v0, p0, Lcom/yandex/metrica/impl/ay$c;->h:Ljava/lang/Integer;

    return-object v0
.end method

.method d(Ljava/lang/String;)Lcom/yandex/metrica/impl/ay$c;
    .locals 0

    .line 565
    iput-object p1, p0, Lcom/yandex/metrica/impl/ay$c;->g:Ljava/lang/String;

    return-object p0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    .line 647
    iget-object v0, p0, Lcom/yandex/metrica/impl/ay$c;->j:Ljava/lang/String;

    return-object v0
.end method

.method e(Ljava/lang/String;)Lcom/yandex/metrica/impl/ay$c;
    .locals 0

    .line 570
    iput-object p1, p0, Lcom/yandex/metrica/impl/ay$c;->f:Ljava/lang/String;

    return-object p0
.end method

.method e()Lcom/yandex/metrica/impl/ob/ka$c$e$a;
    .locals 6

    .line 651
    new-instance v0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/ka$c$e$a;-><init>()V

    .line 653
    iget v1, p0, Lcom/yandex/metrica/impl/ay$c;->m:I

    iget-object v2, p0, Lcom/yandex/metrica/impl/ay$c;->n:Ljava/lang/String;

    iget-object v3, p0, Lcom/yandex/metrica/impl/ay$c;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/yandex/metrica/impl/ay$c;->f:Ljava/lang/String;

    iget-object v5, p0, Lcom/yandex/metrica/impl/ay$c;->o:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/yandex/metrica/impl/ay;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ka$c$e$a$b;

    move-result-object v1

    .line 655
    iget-object v2, p0, Lcom/yandex/metrica/impl/ay$c;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/yandex/metrica/impl/ay;->d(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ka$c$b;

    move-result-object v2

    .line 656
    iget-object v3, p0, Lcom/yandex/metrica/impl/ay$c;->k:Ljava/lang/String;

    invoke-static {v3}, Lcom/yandex/metrica/impl/ay;->f(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ka$c$e$a$a;

    move-result-object v3

    if-eqz v1, :cond_0

    .line 660
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->h:Lcom/yandex/metrica/impl/ob/ka$c$e$a$b;

    :cond_0
    if-eqz v2, :cond_1

    .line 663
    iput-object v2, v0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->g:Lcom/yandex/metrica/impl/ob/ka$c$b;

    .line 665
    :cond_1
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ay$c;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 666
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ay$c;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->e:Ljava/lang/String;

    .line 668
    :cond_2
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ay$c;->b()[B

    move-result-object v1

    if-eqz v1, :cond_3

    .line 669
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ay$c;->b()[B

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->f:[B

    .line 671
    :cond_3
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ay$c;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 672
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ay$c;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->i:Ljava/lang/String;

    :cond_4
    if-eqz v3, :cond_5

    .line 675
    iput-object v3, v0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->j:Lcom/yandex/metrica/impl/ob/ka$c$e$a$a;

    .line 678
    :cond_5
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ay$c;->c()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->d:I

    .line 679
    iget v1, p0, Lcom/yandex/metrica/impl/ay$c;->c:I

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->b:J

    .line 680
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ay$c;->d:J

    iput-wide v1, v0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->c:J

    .line 681
    iget v1, p0, Lcom/yandex/metrica/impl/ay$c;->l:I

    iput v1, v0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->k:I

    .line 682
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ay$c;->f()I

    move-result v1

    iput v1, v0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->l:I

    .line 683
    iget-object v1, p0, Lcom/yandex/metrica/impl/ay$c;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/yandex/metrica/impl/ay;->e(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->m:I

    .line 684
    iget-object v1, p0, Lcom/yandex/metrica/impl/ay$c;->p:Ljava/lang/String;

    if-nez v1, :cond_6

    const/4 v1, 0x0

    new-array v1, v1, [B

    goto :goto_0

    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->n:[B

    .line 685
    invoke-static {}, Lcom/yandex/metrica/impl/ay;->b()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/metrica/impl/ay$c;->r:Lcom/yandex/metrica/impl/t;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_7

    .line 687
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->o:I

    :cond_7
    return-object v0
.end method

.method protected f()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method f(Ljava/lang/String;)Lcom/yandex/metrica/impl/ay$c;
    .locals 0

    .line 580
    iput-object p1, p0, Lcom/yandex/metrica/impl/ay$c;->o:Ljava/lang/String;

    return-object p0
.end method

.method g(Ljava/lang/String;)Lcom/yandex/metrica/impl/ay$c;
    .locals 0

    .line 590
    iput-object p1, p0, Lcom/yandex/metrica/impl/ay$c;->j:Ljava/lang/String;

    return-object p0
.end method

.method h(Ljava/lang/String;)Lcom/yandex/metrica/impl/ay$c;
    .locals 0

    .line 595
    iput-object p1, p0, Lcom/yandex/metrica/impl/ay$c;->k:Ljava/lang/String;

    return-object p0
.end method

.method i(Ljava/lang/String;)Lcom/yandex/metrica/impl/ay$c;
    .locals 0

    .line 610
    iput-object p1, p0, Lcom/yandex/metrica/impl/ay$c;->n:Ljava/lang/String;

    return-object p0
.end method

.method public j(Ljava/lang/String;)Lcom/yandex/metrica/impl/ay$c;
    .locals 0

    .line 615
    iput-object p1, p0, Lcom/yandex/metrica/impl/ay$c;->p:Ljava/lang/String;

    return-object p0
.end method
