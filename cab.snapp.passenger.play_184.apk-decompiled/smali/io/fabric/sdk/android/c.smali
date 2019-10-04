.class public Lio/fabric/sdk/android/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/fabric/sdk/android/c$a;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Fabric"

.field static volatile a:Lio/fabric/sdk/android/c;

.field static final b:Lio/fabric/sdk/android/l;


# instance fields
.field final c:Lio/fabric/sdk/android/l;

.field final d:Z

.field private final e:Landroid/content/Context;

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lio/fabric/sdk/android/i;",
            ">;",
            "Lio/fabric/sdk/android/i;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/concurrent/ExecutorService;

.field private final h:Landroid/os/Handler;

.field private final i:Lio/fabric/sdk/android/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/f<",
            "Lio/fabric/sdk/android/c;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lio/fabric/sdk/android/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/f<",
            "*>;"
        }
    .end annotation
.end field

.field private final k:Lio/fabric/sdk/android/services/common/IdManager;

.field private l:Lio/fabric/sdk/android/a;

.field private m:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    new-instance v0, Lio/fabric/sdk/android/b;

    invoke-direct {v0}, Lio/fabric/sdk/android/b;-><init>()V

    sput-object v0, Lio/fabric/sdk/android/c;->b:Lio/fabric/sdk/android/l;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/Map;Lio/fabric/sdk/android/services/concurrency/i;Landroid/os/Handler;Lio/fabric/sdk/android/l;ZLio/fabric/sdk/android/f;Lio/fabric/sdk/android/services/common/IdManager;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lio/fabric/sdk/android/i;",
            ">;",
            "Lio/fabric/sdk/android/i;",
            ">;",
            "Lio/fabric/sdk/android/services/concurrency/i;",
            "Landroid/os/Handler;",
            "Lio/fabric/sdk/android/l;",
            "Z",
            "Lio/fabric/sdk/android/f;",
            "Lio/fabric/sdk/android/services/common/IdManager;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    iput-object p1, p0, Lio/fabric/sdk/android/c;->e:Landroid/content/Context;

    .line 286
    iput-object p2, p0, Lio/fabric/sdk/android/c;->f:Ljava/util/Map;

    .line 287
    iput-object p3, p0, Lio/fabric/sdk/android/c;->g:Ljava/util/concurrent/ExecutorService;

    .line 288
    iput-object p4, p0, Lio/fabric/sdk/android/c;->h:Landroid/os/Handler;

    .line 289
    iput-object p5, p0, Lio/fabric/sdk/android/c;->c:Lio/fabric/sdk/android/l;

    .line 290
    iput-boolean p6, p0, Lio/fabric/sdk/android/c;->d:Z

    .line 291
    iput-object p7, p0, Lio/fabric/sdk/android/c;->i:Lio/fabric/sdk/android/f;

    .line 292
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x0

    invoke-direct {p1, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/fabric/sdk/android/c;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 293
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p1

    .line 1591
    new-instance p2, Lio/fabric/sdk/android/c$2;

    invoke-direct {p2, p0, p1}, Lio/fabric/sdk/android/c$2;-><init>(Lio/fabric/sdk/android/c;I)V

    .line 293
    iput-object p2, p0, Lio/fabric/sdk/android/c;->j:Lio/fabric/sdk/android/f;

    .line 294
    iput-object p8, p0, Lio/fabric/sdk/android/c;->k:Lio/fabric/sdk/android/services/common/IdManager;

    .line 295
    invoke-virtual {p0, p9}, Lio/fabric/sdk/android/c;->setCurrentActivity(Landroid/app/Activity;)Lio/fabric/sdk/android/c;

    return-void
.end method

.method static synthetic a(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1

    .line 3489
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 3490
    check-cast p0, Landroid/app/Activity;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic a(Ljava/util/Collection;)Ljava/util/Map;
    .locals 2

    .line 2570
    new-instance v0, Ljava/util/HashMap;

    .line 2571
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2573
    invoke-static {v0, p0}, Lio/fabric/sdk/android/c;->a(Ljava/util/Map;Ljava/util/Collection;)V

    return-object v0
.end method

.method static synthetic a(Lio/fabric/sdk/android/c;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 48
    iget-object p0, p0, Lio/fabric/sdk/android/c;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private a()V
    .locals 2

    .line 365
    new-instance v0, Lio/fabric/sdk/android/a;

    iget-object v1, p0, Lio/fabric/sdk/android/c;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/fabric/sdk/android/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/fabric/sdk/android/c;->l:Lio/fabric/sdk/android/a;

    .line 366
    iget-object v0, p0, Lio/fabric/sdk/android/c;->l:Lio/fabric/sdk/android/a;

    new-instance v1, Lio/fabric/sdk/android/c$1;

    invoke-direct {v1, p0}, Lio/fabric/sdk/android/c$1;-><init>(Lio/fabric/sdk/android/c;)V

    invoke-virtual {v0, v1}, Lio/fabric/sdk/android/a;->registerCallbacks(Lio/fabric/sdk/android/a$b;)Z

    .line 384
    iget-object v0, p0, Lio/fabric/sdk/android/c;->e:Landroid/content/Context;

    invoke-direct {p0, v0}, Lio/fabric/sdk/android/c;->b(Landroid/content/Context;)V

    return-void
.end method

.method private static a(Ljava/util/Map;Lio/fabric/sdk/android/i;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lio/fabric/sdk/android/i;",
            ">;",
            "Lio/fabric/sdk/android/i;",
            ">;",
            "Lio/fabric/sdk/android/i;",
            ")V"
        }
    .end annotation

    .line 461
    iget-object v0, p1, Lio/fabric/sdk/android/i;->h:Lio/fabric/sdk/android/services/concurrency/c;

    if-eqz v0, :cond_4

    .line 463
    invoke-interface {v0}, Lio/fabric/sdk/android/services/concurrency/c;->value()[Ljava/lang/Class;

    move-result-object v0

    .line 464
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 465
    invoke-virtual {v3}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 467
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/fabric/sdk/android/i;

    .line 468
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 469
    iget-object v6, p1, Lio/fabric/sdk/android/i;->d:Lio/fabric/sdk/android/h;

    iget-object v5, v5, Lio/fabric/sdk/android/i;->d:Lio/fabric/sdk/android/h;

    invoke-virtual {v6, v5}, Lio/fabric/sdk/android/h;->addDependency(Lio/fabric/sdk/android/services/concurrency/j;)V

    goto :goto_1

    .line 475
    :cond_1
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/fabric/sdk/android/i;

    if-eqz v4, :cond_3

    .line 481
    iget-object v4, p1, Lio/fabric/sdk/android/i;->d:Lio/fabric/sdk/android/h;

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/fabric/sdk/android/i;

    iget-object v3, v3, Lio/fabric/sdk/android/i;->d:Lio/fabric/sdk/android/h;

    invoke-virtual {v4, v3}, Lio/fabric/sdk/android/h;->addDependency(Lio/fabric/sdk/android/services/concurrency/j;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 477
    :cond_3
    new-instance p0, Lio/fabric/sdk/android/services/concurrency/k;

    const-string p1, "Referenced Kit was null, does the kit exist?"

    invoke-direct {p0, p1}, Lio/fabric/sdk/android/services/concurrency/k;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return-void
.end method

.method private static a(Ljava/util/Map;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lio/fabric/sdk/android/i;",
            ">;",
            "Lio/fabric/sdk/android/i;",
            ">;",
            "Ljava/util/Collection<",
            "+",
            "Lio/fabric/sdk/android/i;",
            ">;)V"
        }
    .end annotation

    .line 581
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/i;

    .line 582
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    instance-of v1, v0, Lio/fabric/sdk/android/j;

    if-eqz v1, :cond_0

    .line 585
    check-cast v0, Lio/fabric/sdk/android/j;

    invoke-interface {v0}, Lio/fabric/sdk/android/j;->getKits()Ljava/util/Collection;

    move-result-object v0

    invoke-static {p0, v0}, Lio/fabric/sdk/android/c;->a(Ljava/util/Map;Ljava/util/Collection;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic b(Lio/fabric/sdk/android/c;)Lio/fabric/sdk/android/f;
    .locals 0

    .line 48
    iget-object p0, p0, Lio/fabric/sdk/android/c;->i:Lio/fabric/sdk/android/f;

    return-object p0
.end method

.method private b(Landroid/content/Context;)V
    .locals 7

    .line 405
    invoke-direct {p0, p1}, Lio/fabric/sdk/android/c;->c(Landroid/content/Context;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 407
    invoke-virtual {p0}, Lio/fabric/sdk/android/c;->getKits()Ljava/util/Collection;

    move-result-object v1

    .line 408
    new-instance v2, Lio/fabric/sdk/android/m;

    invoke-direct {v2, v0, v1}, Lio/fabric/sdk/android/m;-><init>(Ljava/util/concurrent/Future;Ljava/util/Collection;)V

    .line 409
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 410
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 414
    sget-object v1, Lio/fabric/sdk/android/f;->EMPTY:Lio/fabric/sdk/android/f;

    iget-object v3, p0, Lio/fabric/sdk/android/c;->k:Lio/fabric/sdk/android/services/common/IdManager;

    invoke-virtual {v2, p1, p0, v1, v3}, Lio/fabric/sdk/android/m;->a(Landroid/content/Context;Lio/fabric/sdk/android/c;Lio/fabric/sdk/android/f;Lio/fabric/sdk/android/services/common/IdManager;)V

    .line 415
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/fabric/sdk/android/i;

    .line 416
    iget-object v4, p0, Lio/fabric/sdk/android/c;->j:Lio/fabric/sdk/android/f;

    iget-object v5, p0, Lio/fabric/sdk/android/c;->k:Lio/fabric/sdk/android/services/common/IdManager;

    invoke-virtual {v3, p1, p0, v4, v5}, Lio/fabric/sdk/android/i;->a(Landroid/content/Context;Lio/fabric/sdk/android/c;Lio/fabric/sdk/android/f;Lio/fabric/sdk/android/services/common/IdManager;)V

    goto :goto_0

    .line 421
    :cond_0
    invoke-virtual {v2}, Lio/fabric/sdk/android/m;->e()V

    .line 425
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object p1

    const/4 v1, 0x3

    const-string v3, "Fabric"

    invoke-interface {p1, v3, v1}, Lio/fabric/sdk/android/l;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    const-string v1, " [Version: "

    if-eqz p1, :cond_1

    .line 426
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "Initializing "

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 427
    invoke-virtual {p0}, Lio/fabric/sdk/android/c;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    invoke-virtual {p0}, Lio/fabric/sdk/android/c;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "], with the following kits:\n"

    .line 430
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 435
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/fabric/sdk/android/i;

    .line 436
    iget-object v5, v4, Lio/fabric/sdk/android/i;->d:Lio/fabric/sdk/android/h;

    iget-object v6, v2, Lio/fabric/sdk/android/m;->d:Lio/fabric/sdk/android/h;

    invoke-virtual {v5, v6}, Lio/fabric/sdk/android/h;->addDependency(Lio/fabric/sdk/android/services/concurrency/j;)V

    .line 438
    iget-object v5, p0, Lio/fabric/sdk/android/c;->f:Ljava/util/Map;

    invoke-static {v5, v4}, Lio/fabric/sdk/android/c;->a(Ljava/util/Map;Lio/fabric/sdk/android/i;)V

    .line 440
    invoke-virtual {v4}, Lio/fabric/sdk/android/i;->e()V

    if-eqz p1, :cond_2

    .line 443
    invoke-virtual {v4}, Lio/fabric/sdk/android/i;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    invoke-virtual {v4}, Lio/fabric/sdk/android/i;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]\n"

    .line 446
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_4

    .line 451
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v3, p1}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private c(Landroid/content/Context;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/fabric/sdk/android/k;",
            ">;>;"
        }
    .end annotation

    .line 614
    new-instance v0, Lio/fabric/sdk/android/e;

    .line 615
    invoke-virtual {p1}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/fabric/sdk/android/e;-><init>(Ljava/lang/String;)V

    .line 616
    invoke-virtual {p0}, Lio/fabric/sdk/android/c;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    .line 617
    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method private static c(Lio/fabric/sdk/android/c;)V
    .locals 0

    .line 341
    sput-object p0, Lio/fabric/sdk/android/c;->a:Lio/fabric/sdk/android/c;

    .line 342
    invoke-direct {p0}, Lio/fabric/sdk/android/c;->a()V

    return-void
.end method

.method public static getKit(Ljava/lang/Class;)Lio/fabric/sdk/android/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/fabric/sdk/android/i;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 2274
    sget-object v0, Lio/fabric/sdk/android/c;->a:Lio/fabric/sdk/android/c;

    if-eqz v0, :cond_0

    .line 2277
    sget-object v0, Lio/fabric/sdk/android/c;->a:Lio/fabric/sdk/android/c;

    .line 525
    iget-object v0, v0, Lio/fabric/sdk/android/c;->f:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/fabric/sdk/android/i;

    return-object p0

    .line 2275
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Must Initialize Fabric before using singleton()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getLogger()Lio/fabric/sdk/android/l;
    .locals 1

    .line 532
    sget-object v0, Lio/fabric/sdk/android/c;->a:Lio/fabric/sdk/android/c;

    if-nez v0, :cond_0

    .line 533
    sget-object v0, Lio/fabric/sdk/android/c;->b:Lio/fabric/sdk/android/l;

    return-object v0

    .line 535
    :cond_0
    sget-object v0, Lio/fabric/sdk/android/c;->a:Lio/fabric/sdk/android/c;

    iget-object v0, v0, Lio/fabric/sdk/android/c;->c:Lio/fabric/sdk/android/l;

    return-object v0
.end method

.method public static isDebuggable()Z
    .locals 1

    .line 542
    sget-object v0, Lio/fabric/sdk/android/c;->a:Lio/fabric/sdk/android/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 545
    :cond_0
    sget-object v0, Lio/fabric/sdk/android/c;->a:Lio/fabric/sdk/android/c;

    iget-boolean v0, v0, Lio/fabric/sdk/android/c;->d:Z

    return v0
.end method

.method public static isInitialized()Z
    .locals 1

    .line 552
    sget-object v0, Lio/fabric/sdk/android/c;->a:Lio/fabric/sdk/android/c;

    if-eqz v0, :cond_0

    sget-object v0, Lio/fabric/sdk/android/c;->a:Lio/fabric/sdk/android/c;

    iget-object v0, v0, Lio/fabric/sdk/android/c;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static varargs with(Landroid/content/Context;[Lio/fabric/sdk/android/i;)Lio/fabric/sdk/android/c;
    .locals 2

    .line 310
    sget-object v0, Lio/fabric/sdk/android/c;->a:Lio/fabric/sdk/android/c;

    if-nez v0, :cond_1

    .line 311
    const-class v0, Lio/fabric/sdk/android/c;

    monitor-enter v0

    .line 312
    :try_start_0
    sget-object v1, Lio/fabric/sdk/android/c;->a:Lio/fabric/sdk/android/c;

    if-nez v1, :cond_0

    .line 313
    new-instance v1, Lio/fabric/sdk/android/c$a;

    invoke-direct {v1, p0}, Lio/fabric/sdk/android/c$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lio/fabric/sdk/android/c$a;->kits([Lio/fabric/sdk/android/i;)Lio/fabric/sdk/android/c$a;

    move-result-object p0

    invoke-virtual {p0}, Lio/fabric/sdk/android/c$a;->build()Lio/fabric/sdk/android/c;

    move-result-object p0

    invoke-static {p0}, Lio/fabric/sdk/android/c;->c(Lio/fabric/sdk/android/c;)V

    .line 315
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 317
    :cond_1
    :goto_0
    sget-object p0, Lio/fabric/sdk/android/c;->a:Lio/fabric/sdk/android/c;

    return-object p0
.end method

.method public static with(Lio/fabric/sdk/android/c;)Lio/fabric/sdk/android/c;
    .locals 2

    .line 330
    sget-object v0, Lio/fabric/sdk/android/c;->a:Lio/fabric/sdk/android/c;

    if-nez v0, :cond_1

    .line 331
    const-class v0, Lio/fabric/sdk/android/c;

    monitor-enter v0

    .line 332
    :try_start_0
    sget-object v1, Lio/fabric/sdk/android/c;->a:Lio/fabric/sdk/android/c;

    if-nez v1, :cond_0

    .line 333
    invoke-static {p0}, Lio/fabric/sdk/android/c;->c(Lio/fabric/sdk/android/c;)V

    .line 335
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 337
    :cond_1
    :goto_0
    sget-object p0, Lio/fabric/sdk/android/c;->a:Lio/fabric/sdk/android/c;

    return-object p0
.end method


# virtual methods
.method public getActivityLifecycleManager()Lio/fabric/sdk/android/a;
    .locals 1

    .line 497
    iget-object v0, p0, Lio/fabric/sdk/android/c;->l:Lio/fabric/sdk/android/a;

    return-object v0
.end method

.method public getAppIdentifier()Ljava/lang/String;
    .locals 1

    .line 559
    iget-object v0, p0, Lio/fabric/sdk/android/c;->k:Lio/fabric/sdk/android/services/common/IdManager;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/IdManager;->getAppIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppInstallIdentifier()Ljava/lang/String;
    .locals 1

    .line 566
    iget-object v0, p0, Lio/fabric/sdk/android/c;->k:Lio/fabric/sdk/android/services/common/IdManager;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/IdManager;->getAppInstallIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .line 358
    iget-object v0, p0, Lio/fabric/sdk/android/c;->m:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 359
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 501
    iget-object v0, p0, Lio/fabric/sdk/android/c;->g:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    const-string v0, "io.fabric.sdk.android:fabric"

    return-object v0
.end method

.method public getKits()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lio/fabric/sdk/android/i;",
            ">;"
        }
    .end annotation

    .line 512
    iget-object v0, p0, Lio/fabric/sdk/android/c;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getMainHandler()Landroid/os/Handler;
    .locals 1

    .line 505
    iget-object v0, p0, Lio/fabric/sdk/android/c;->h:Landroid/os/Handler;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.3.17.dev"

    return-object v0
.end method

.method public setCurrentActivity(Landroid/app/Activity;)Lio/fabric/sdk/android/c;
    .locals 1

    .line 349
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/fabric/sdk/android/c;->m:Ljava/lang/ref/WeakReference;

    return-object p0
.end method
