.class public Lcom/yandex/metrica/impl/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ai;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ak$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/Executor;

.field public static final b:Lcom/yandex/metrica/impl/ob/v;

.field private static final h:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private c:Lcom/yandex/metrica/impl/ob/ma;

.field private d:Z

.field private e:Landroid/content/Context;

.field private f:Lcom/yandex/metrica/MetricaService$d;

.field private g:Lcom/yandex/metrica/impl/ob/lo;

.field private final i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/Thread;

.field private k:Lcom/yandex/metrica/impl/ob/ba;

.field private l:Lcom/yandex/metrica/impl/ob/hw;

.field private m:Lcom/yandex/metrica/impl/ob/mw;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 78
    new-instance v0, Lcom/yandex/metrica/impl/ob/il;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/il;-><init>()V

    sput-object v0, Lcom/yandex/metrica/impl/ak;->a:Ljava/util/concurrent/Executor;

    .line 79
    new-instance v0, Lcom/yandex/metrica/impl/ob/ni;

    const-string v1, "YMM-MSTE"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/ni;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/ak;->h:Ljava/util/concurrent/ExecutorService;

    .line 82
    new-instance v0, Lcom/yandex/metrica/impl/ob/v;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/v;-><init>()V

    sput-object v0, Lcom/yandex/metrica/impl/ak;->b:Lcom/yandex/metrica/impl/ob/v;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/MetricaService$d;)V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ak;->d:Z

    .line 83
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ak;->i:Ljava/util/Set;

    .line 94
    iput-object p1, p0, Lcom/yandex/metrica/impl/ak;->e:Landroid/content/Context;

    .line 95
    iput-object p2, p0, Lcom/yandex/metrica/impl/ak;->f:Lcom/yandex/metrica/MetricaService$d;

    .line 96
    new-instance p1, Lcom/yandex/metrica/impl/ob/ba;

    iget-object p2, p0, Lcom/yandex/metrica/impl/ak;->e:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/yandex/metrica/impl/ob/ba;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ak;->k:Lcom/yandex/metrica/impl/ob/ba;

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ak;)Landroid/content/Context;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/yandex/metrica/impl/ak;->e:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ak;Lcom/yandex/metrica/impl/ob/ma;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ak;->d(Lcom/yandex/metrica/impl/ob/ma;)V

    return-void
.end method

.method private a(Lcom/yandex/metrica/impl/i;Landroid/os/Bundle;)V
    .locals 2

    .line 436
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/i;->p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 437
    new-instance v0, Lcom/yandex/metrica/impl/ak$a;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ak;->e:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/yandex/metrica/impl/ak$a;-><init>(Lcom/yandex/metrica/impl/ak;Landroid/content/Context;Lcom/yandex/metrica/impl/i;Landroid/os/Bundle;)V

    .line 438
    sget-object p1, Lcom/yandex/metrica/impl/ak;->h:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "com.yandex.metrica.ACTION_C_BG_L"

    .line 3479
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4329
    iget-object v1, p0, Lcom/yandex/metrica/impl/ak;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/hw;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/hw;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/metrica/impl/ak;->l:Lcom/yandex/metrica/impl/ob/hw;

    .line 4330
    iget-object v1, p0, Lcom/yandex/metrica/impl/ak;->l:Lcom/yandex/metrica/impl/ob/hw;

    invoke-virtual {v1, p0}, Lcom/yandex/metrica/impl/ob/hw;->a(Ljava/lang/Object;)V

    .line 4334
    iget-object v1, p0, Lcom/yandex/metrica/impl/ak;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/mw;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/mw;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/metrica/impl/ak;->m:Lcom/yandex/metrica/impl/ob/mw;

    .line 4335
    iget-object v1, p0, Lcom/yandex/metrica/impl/ak;->m:Lcom/yandex/metrica/impl/ob/mw;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/mw;->a()V

    .line 256
    :cond_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ak;->i:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 257
    :cond_1
    iget-object p1, p0, Lcom/yandex/metrica/impl/ak;->e:Landroid/content/Context;

    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/hw;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/hw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/hw;->a()V

    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/yandex/metrica/impl/ak;)Lcom/yandex/metrica/impl/ob/ba;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/yandex/metrica/impl/ak;->k:Lcom/yandex/metrica/impl/ob/ba;

    return-object p0
.end method

.method private b(Landroid/content/Intent;I)V
    .locals 3

    if-eqz p1, :cond_2

    .line 303
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-class v1, Lcom/yandex/metrica/CounterConfiguration;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    if-eqz p1, :cond_1

    .line 5387
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    .line 4403
    new-instance v0, Lcom/yandex/metrica/impl/ob/t;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/t;-><init>(Landroid/os/Bundle;)V

    .line 4404
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ak;->a(Lcom/yandex/metrica/impl/ob/t;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4408
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Lcom/yandex/metrica/impl/i;->b(Landroid/os/Bundle;)Lcom/yandex/metrica/impl/i;

    move-result-object p1

    .line 4410
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/i;->o()Z

    move-result v1

    .line 4411
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/i;->p()Z

    move-result v2

    or-int/2addr v1, v2

    if-nez v1, :cond_2

    .line 4421
    :try_start_0
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/az;->a(Lcom/yandex/metrica/impl/ob/t;)Lcom/yandex/metrica/impl/ob/az;

    move-result-object v1

    .line 4422
    iget-object v2, p0, Lcom/yandex/metrica/impl/ak;->k:Lcom/yandex/metrica/impl/ob/ba;

    invoke-virtual {v2, v1, v0}, Lcom/yandex/metrica/impl/ob/ba;->a(Lcom/yandex/metrica/impl/ob/az;Lcom/yandex/metrica/impl/ob/t;)Lcom/yandex/metrica/impl/ob/bb;

    move-result-object v2

    .line 4426
    invoke-interface {v2, p1, v0}, Lcom/yandex/metrica/impl/ob/bb;->a(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/ob/t;)V

    .line 4427
    iget-object p1, p0, Lcom/yandex/metrica/impl/ak;->k:Lcom/yandex/metrica/impl/ob/ba;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/az;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/az;->d()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 4428
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/az;->e()Ljava/lang/String;

    move-result-object v1

    .line 4427
    invoke-virtual {p1, v0, v2, v1}, Lcom/yandex/metrica/impl/ob/ba;->a(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :catch_0
    :cond_2
    iget-object p1, p0, Lcom/yandex/metrica/impl/ak;->f:Lcom/yandex/metrica/MetricaService$d;

    invoke-interface {p1, p2}, Lcom/yandex/metrica/MetricaService$d;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/yandex/metrica/impl/ak;Lcom/yandex/metrica/impl/ob/ma;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ak;->c(Lcom/yandex/metrica/impl/ob/ma;)V

    return-void
.end method

.method private c()V
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/yandex/metrica/impl/ak;->l:Lcom/yandex/metrica/impl/ob/hw;

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/ob/hw;->b(Ljava/lang/Object;)V

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ak;->m:Lcom/yandex/metrica/impl/ob/mw;

    if-eqz v0, :cond_1

    .line 318
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/mw;->b()V

    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/yandex/metrica/impl/ak;)V
    .locals 1

    const/4 v0, 0x0

    .line 6199
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ak;->d:Z

    .line 6200
    iget-object v0, p0, Lcom/yandex/metrica/impl/ak;->c:Lcom/yandex/metrica/impl/ob/ma;

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ak;->c(Lcom/yandex/metrica/impl/ob/ma;)V

    return-void
.end method

.method private c(Lcom/yandex/metrica/impl/ob/ma;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 444
    iget-object v0, p0, Lcom/yandex/metrica/impl/ak;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/hw;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/hw;

    move-result-object v0

    .line 5471
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ak;->d:Z

    if-eqz v1, :cond_0

    .line 444
    iget-object v1, p0, Lcom/yandex/metrica/impl/ak;->c:Lcom/yandex/metrica/impl/ob/ma;

    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/ma;->o:Lcom/yandex/metrica/impl/ob/hl;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ak;->c:Lcom/yandex/metrica/impl/ob/ma;

    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/ma;->n:Lcom/yandex/metrica/impl/ob/hq;

    :goto_0
    invoke-virtual {v0, p1, v1}, Lcom/yandex/metrica/impl/ob/hw;->a(Lcom/yandex/metrica/impl/ob/ma;Lcom/yandex/metrica/impl/ob/hq;)V

    :cond_1
    return-void
.end method

.method static synthetic d(Lcom/yandex/metrica/impl/ak;)V
    .locals 0

    .line 6205
    iget-object p0, p0, Lcom/yandex/metrica/impl/ak;->g:Lcom/yandex/metrica/impl/ob/lo;

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/lo;->b()V

    return-void
.end method

.method private d(Lcom/yandex/metrica/impl/ob/ma;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 454
    new-instance v0, Lcom/yandex/metrica/impl/ob/eq;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ak;->e:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/yandex/metrica/impl/ob/eq;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/ma;)V

    .line 457
    new-instance p1, Lcom/yandex/metrica/impl/ak$5;

    invoke-direct {p1, v0}, Lcom/yandex/metrica/impl/ak$5;-><init>(Lcom/yandex/metrica/impl/ob/eq;)V

    const-string v0, "YMM-CSL"

    .line 458
    invoke-static {v0, p1}, Lcom/yandex/metrica/impl/ob/ni;->a(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ak;->j:Ljava/lang/Thread;

    .line 465
    iget-object p1, p0, Lcom/yandex/metrica/impl/ak;->j:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 107
    new-instance v0, Lcom/yandex/metrica/impl/bn;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ak;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/bn;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/yandex/metrica/impl/ak;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/bn;->a(Landroid/content/Context;)V

    .line 109
    invoke-static {}, Lcom/yandex/metrica/impl/ob/nn;->a()Lcom/yandex/metrica/impl/ob/nn;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ak;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/nn;->a(Landroid/content/Context;)V

    .line 110
    new-instance v0, Lcom/yandex/metrica/impl/ob/lo;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ak;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/lo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ak;->g:Lcom/yandex/metrica/impl/ob/lo;

    .line 111
    invoke-static {}, Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter;->a()Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ak;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter;->b(Landroid/content/Context;)V

    .line 113
    new-instance v0, Lcom/yandex/metrica/impl/ak$2;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/ak$2;-><init>(Lcom/yandex/metrica/impl/ak;)V

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/l;->a(Lcom/yandex/metrica/impl/ob/k;)Lcom/yandex/metrica/impl/ob/l$a;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ak$1;

    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/ak$1;-><init>(Lcom/yandex/metrica/impl/ak;)V

    .line 117
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/l$a;->a(Lcom/yandex/metrica/impl/ob/i;)Lcom/yandex/metrica/impl/ob/l$a;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/l$a;->a()Lcom/yandex/metrica/impl/ob/l;

    move-result-object v0

    .line 122
    invoke-static {}, Lcom/yandex/metrica/impl/ob/h;->a()Lcom/yandex/metrica/impl/ob/h;

    move-result-object v1

    const-class v2, Lcom/yandex/metrica/impl/ob/r;

    invoke-virtual {v1, p0, v2, v0}, Lcom/yandex/metrica/impl/ob/h;->a(Ljava/lang/Object;Ljava/lang/Class;Lcom/yandex/metrica/impl/ob/l;)V

    .line 124
    invoke-static {}, Lcom/yandex/metrica/impl/ob/hg;->a()Lcom/yandex/metrica/impl/ob/hg;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ak;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/hg;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/hb;

    .line 125
    iget-object v0, p0, Lcom/yandex/metrica/impl/ak;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/fq;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/fq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/fq;->e()Lcom/yandex/metrica/impl/ob/fr;

    move-result-object v0

    .line 126
    new-instance v1, Lcom/yandex/metrica/impl/ob/gg;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ak;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/yandex/metrica/impl/ob/gg;-><init>(Lcom/yandex/metrica/impl/ob/fr;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/gg;->a()Lcom/yandex/metrica/impl/ob/ma;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ak;->c:Lcom/yandex/metrica/impl/ob/ma;

    .line 1262
    iget-object v0, p0, Lcom/yandex/metrica/impl/ak;->c:Lcom/yandex/metrica/impl/ob/ma;

    if-eqz v0, :cond_0

    .line 1263
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ak;->b(Lcom/yandex/metrica/impl/ob/ma;)V

    .line 1264
    iget-object v0, p0, Lcom/yandex/metrica/impl/ak;->c:Lcom/yandex/metrica/impl/ob/ma;

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ak;->d(Lcom/yandex/metrica/impl/ob/ma;)V

    .line 1267
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ak;->c:Lcom/yandex/metrica/impl/ob/ma;

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ak;->c(Lcom/yandex/metrica/impl/ob/ma;)V

    .line 1273
    invoke-static {}, Lcom/yandex/metrica/impl/ob/h;->a()Lcom/yandex/metrica/impl/ob/h;

    move-result-object v0

    const-class v1, Lcom/yandex/metrica/impl/ob/r;

    new-instance v2, Lcom/yandex/metrica/impl/ak$4;

    invoke-direct {v2, p0}, Lcom/yandex/metrica/impl/ak$4;-><init>(Lcom/yandex/metrica/impl/ak;)V

    .line 1274
    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/l;->a(Lcom/yandex/metrica/impl/ob/k;)Lcom/yandex/metrica/impl/ob/l$a;

    move-result-object v2

    new-instance v3, Lcom/yandex/metrica/impl/ak$3;

    invoke-direct {v3, p0}, Lcom/yandex/metrica/impl/ak$3;-><init>(Lcom/yandex/metrica/impl/ak;)V

    .line 1282
    invoke-virtual {v2, v3}, Lcom/yandex/metrica/impl/ob/l$a;->a(Lcom/yandex/metrica/impl/ob/i;)Lcom/yandex/metrica/impl/ob/l$a;

    move-result-object v2

    .line 1286
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/l$a;->a()Lcom/yandex/metrica/impl/ob/l;

    move-result-object v2

    .line 1273
    invoke-virtual {v0, p0, v1, v2}, Lcom/yandex/metrica/impl/ob/h;->a(Ljava/lang/Object;Ljava/lang/Class;Lcom/yandex/metrica/impl/ob/l;)V

    .line 130
    invoke-static {}, Lcom/yandex/metrica/impl/ob/hg;->a()Lcom/yandex/metrica/impl/ob/hg;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ak;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/hg;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/hb;

    .line 131
    invoke-static {}, Lcom/yandex/metrica/impl/v;->a()Lcom/yandex/metrica/impl/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/v;->e()Lcom/yandex/metrica/impl/ob/ki;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ki;->a()V

    .line 132
    invoke-static {}, Lcom/yandex/metrica/impl/v;->a()Lcom/yandex/metrica/impl/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/v;->g()Lcom/yandex/metrica/impl/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/a;->a()V

    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 1

    .line 150
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 151
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/yandex/metrica/impl/ak;->i:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_0
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ak;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/Intent;I)V
    .locals 0

    .line 138
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ak;->b(Landroid/content/Intent;I)V

    return-void
.end method

.method public a(Landroid/content/Intent;II)V
    .locals 0

    .line 144
    invoke-direct {p0, p1, p3}, Lcom/yandex/metrica/impl/ak;->b(Landroid/content/Intent;I)V

    return-void
.end method

.method a(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 217
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/client"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "pid"

    .line 218
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "psid"

    .line 219
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 221
    iget-object v1, p0, Lcom/yandex/metrica/impl/ak;->k:Lcom/yandex/metrica/impl/ob/ba;

    invoke-virtual {v1, p2, v0, p1}, Lcom/yandex/metrica/impl/ob/ba;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 224
    :cond_0
    iget-object p1, p0, Lcom/yandex/metrica/impl/ak;->k:Lcom/yandex/metrica/impl/ob/ba;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ba;->a()I

    move-result p1

    if-gtz p1, :cond_1

    const/4 p1, 0x1

    .line 3209
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ak;->d:Z

    .line 3210
    iget-object p1, p0, Lcom/yandex/metrica/impl/ak;->c:Lcom/yandex/metrica/impl/ob/ma;

    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ak;->c(Lcom/yandex/metrica/impl/ob/ma;)V

    .line 3212
    iget-object p1, p0, Lcom/yandex/metrica/impl/ak;->g:Lcom/yandex/metrica/impl/ob/lo;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/lo;->a()V

    :cond_1
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 246
    const-class v0, Lcom/yandex/metrica/CounterConfiguration;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 247
    invoke-static {p1}, Lcom/yandex/metrica/impl/i;->b(Landroid/os/Bundle;)Lcom/yandex/metrica/impl/i;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/yandex/metrica/impl/ak;->a(Lcom/yandex/metrica/impl/i;Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ob/ma;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/yandex/metrica/impl/ak;->c:Lcom/yandex/metrica/impl/ob/ma;

    .line 66
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ak;->d(Lcom/yandex/metrica/impl/ob/ma;)V

    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 239
    const-class v0, Lcom/yandex/metrica/CounterConfiguration;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 240
    new-instance v0, Lcom/yandex/metrica/impl/i;

    invoke-direct {v0, p3, p1, p2}, Lcom/yandex/metrica/impl/i;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v0, p4}, Lcom/yandex/metrica/impl/ak;->a(Lcom/yandex/metrica/impl/i;Landroid/os/Bundle;)V

    return-void
.end method

.method a(Lcom/yandex/metrica/impl/ob/t;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 393
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/t;->a()Lcom/yandex/metrica/impl/ob/u;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yandex/metrica/impl/ak;->e:Landroid/content/Context;

    .line 394
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/t;->a()Lcom/yandex/metrica/impl/ob/u;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/u;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 395
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/t;->a()Lcom/yandex/metrica/impl/ob/u;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/u;->g()I

    move-result p1

    const/16 v0, 0x46

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public b()V
    .locals 1

    .line 232
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ak;->c()V

    .line 233
    invoke-static {}, Lcom/yandex/metrica/impl/ob/h;->a()Lcom/yandex/metrica/impl/ob/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/ob/h;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Landroid/content/Intent;)V
    .locals 1

    .line 162
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 163
    invoke-static {p1}, Lcom/yandex/metrica/impl/bt;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/yandex/metrica/impl/ak;->i:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 169
    :cond_0
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ak;->a(Ljava/lang/String;)V

    return-void
.end method

.method b(Lcom/yandex/metrica/impl/ob/ma;)V
    .locals 2

    .line 290
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/ma;->p:Lcom/yandex/metrica/impl/ob/lr;

    if-nez p1, :cond_0

    .line 292
    invoke-static {}, Lcom/yandex/metrica/impl/ob/h;->a()Lcom/yandex/metrica/impl/ob/h;

    move-result-object p1

    const-class v0, Lcom/yandex/metrica/impl/ob/q;

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/h;->a(Ljava/lang/Class;)V

    return-void

    .line 294
    :cond_0
    invoke-static {}, Lcom/yandex/metrica/impl/ob/h;->a()Lcom/yandex/metrica/impl/ob/h;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ob/q;

    invoke-direct {v1, p1}, Lcom/yandex/metrica/impl/ob/q;-><init>(Lcom/yandex/metrica/impl/ob/lr;)V

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/h;->b(Lcom/yandex/metrica/impl/ob/j;)V

    return-void
.end method

.method public c(Landroid/content/Intent;)V
    .locals 3

    if-eqz p1, :cond_3

    .line 176
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 178
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v1

    .line 182
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 183
    iget-object v2, p0, Lcom/yandex/metrica/impl/ak;->i:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_1
    const-string v2, "com.yandex.metrica.ACTION_C_BG_L"

    .line 1479
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 189
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ak;->c()V

    .line 2475
    :cond_2
    sget-object v2, Lcom/yandex/metrica/MetricaService$a;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 193
    invoke-virtual {p0, p1, v1}, Lcom/yandex/metrica/impl/ak;->a(Landroid/net/Uri;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
