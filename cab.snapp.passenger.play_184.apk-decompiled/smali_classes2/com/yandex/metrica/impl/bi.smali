.class public Lcom/yandex/metrica/impl/bi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/x;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/yandex/metrica/impl/ah;

.field private final c:Lcom/yandex/metrica/impl/NativeCrashesHelper;

.field private final d:Ljava/util/concurrent/ExecutorService;

.field private e:Lcom/yandex/metrica/impl/ad;

.field private final f:Lcom/yandex/metrica/impl/g;

.field private g:Lcom/yandex/metrica/impl/ob/lw;

.field private final h:Lcom/yandex/metrica/impl/bj;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/u;Ljava/util/concurrent/ExecutorService;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/yandex/metrica/impl/ah;

    invoke-direct {v0, p3, p4}, Lcom/yandex/metrica/impl/ah;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/bi;->b:Lcom/yandex/metrica/impl/ah;

    .line 57
    iput-object p2, p0, Lcom/yandex/metrica/impl/bi;->d:Ljava/util/concurrent/ExecutorService;

    .line 59
    iput-object p3, p0, Lcom/yandex/metrica/impl/bi;->a:Landroid/content/Context;

    .line 60
    new-instance p2, Lcom/yandex/metrica/impl/NativeCrashesHelper;

    invoke-direct {p2, p3}, Lcom/yandex/metrica/impl/NativeCrashesHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/yandex/metrica/impl/bi;->c:Lcom/yandex/metrica/impl/NativeCrashesHelper;

    .line 63
    new-instance p2, Lcom/yandex/metrica/impl/g;

    invoke-direct {p2, p1}, Lcom/yandex/metrica/impl/g;-><init>(Lcom/yandex/metrica/impl/ob/u;)V

    iput-object p2, p0, Lcom/yandex/metrica/impl/bi;->f:Lcom/yandex/metrica/impl/g;

    .line 65
    new-instance p1, Lcom/yandex/metrica/impl/bj;

    invoke-direct {p1, p0}, Lcom/yandex/metrica/impl/bj;-><init>(Lcom/yandex/metrica/impl/x;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/bi;->h:Lcom/yandex/metrica/impl/bj;

    return-void
.end method

.method private a(Lcom/yandex/metrica/impl/bj$d;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/bj$d;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 314
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/bj$d;->a()Lcom/yandex/metrica/impl/bf;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/bi;->g:Lcom/yandex/metrica/impl/ob/lw;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/bf;->a(Lcom/yandex/metrica/impl/ob/lw;)V

    .line 316
    iget-object v0, p0, Lcom/yandex/metrica/impl/bi;->h:Lcom/yandex/metrica/impl/bj;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/bj;->a(Lcom/yandex/metrica/impl/bj$d;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method static synthetic b(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/bf;)Lcom/yandex/metrica/impl/i;
    .locals 0

    .line 36
    invoke-static {p0, p1}, Lcom/yandex/metrica/impl/bi;->c(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/bf;)Lcom/yandex/metrica/impl/i;

    move-result-object p0

    return-object p0
.end method

.method private static c(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/bf;)Lcom/yandex/metrica/impl/i;
    .locals 2

    .line 124
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/i;->e()I

    move-result v0

    sget-object v1, Lcom/yandex/metrica/impl/s$a;->e:Lcom/yandex/metrica/impl/s$a;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/s$a;->a()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 125
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/bf;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/i;->f(Ljava/lang/String;)Lcom/yandex/metrica/impl/i;

    :cond_0
    return-object p0
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ah;
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/yandex/metrica/impl/bi;->b:Lcom/yandex/metrica/impl/ah;

    return-object v0
.end method

.method public a(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/bf;Ljava/util/Map;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/i;",
            "Lcom/yandex/metrica/impl/bf;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/yandex/metrica/impl/bi;->b:Lcom/yandex/metrica/impl/ah;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ah;->c()V

    .line 138
    new-instance v0, Lcom/yandex/metrica/impl/bj$d;

    invoke-direct {v0, p1, p2}, Lcom/yandex/metrica/impl/bj$d;-><init>(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/bf;)V

    .line 139
    invoke-static {p3}, Lcom/yandex/metrica/impl/bv;->a(Ljava/util/Map;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 140
    new-instance p1, Lcom/yandex/metrica/impl/bi$1;

    invoke-direct {p1, p3, p2}, Lcom/yandex/metrica/impl/bi$1;-><init>(Ljava/util/Map;Lcom/yandex/metrica/impl/bf;)V

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/bj$d;->a(Lcom/yandex/metrica/impl/bj$c;)Lcom/yandex/metrica/impl/bj$d;

    .line 146
    :cond_0
    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/bi;->a(Lcom/yandex/metrica/impl/bj$d;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/yandex/metrica/IMetricaService;Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/bf;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 224
    invoke-virtual {p0, p3}, Lcom/yandex/metrica/impl/bi;->c(Lcom/yandex/metrica/impl/bf;)V

    .line 229
    iget-object v0, p0, Lcom/yandex/metrica/impl/bi;->c:Lcom/yandex/metrica/impl/NativeCrashesHelper;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/NativeCrashesHelper;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/yandex/metrica/impl/bi;->c:Lcom/yandex/metrica/impl/NativeCrashesHelper;

    iget-object v1, p0, Lcom/yandex/metrica/impl/bi;->d:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, p0, v1}, Lcom/yandex/metrica/impl/NativeCrashesHelper;->a(Lcom/yandex/metrica/impl/bi;Ljava/util/concurrent/ExecutorService;)V

    .line 2309
    :cond_0
    invoke-virtual {p3}, Lcom/yandex/metrica/impl/bf;->c()Landroid/os/Bundle;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/yandex/metrica/impl/i;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/yandex/metrica/IMetricaService;->reportData(Landroid/os/Bundle;)V

    .line 3299
    iget-object p1, p0, Lcom/yandex/metrica/impl/bi;->e:Lcom/yandex/metrica/impl/ad;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ad;->e()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3300
    :cond_1
    iget-object p1, p0, Lcom/yandex/metrica/impl/bi;->b:Lcom/yandex/metrica/impl/ah;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ah;->b()V

    :cond_2
    return-void
.end method

.method a(Lcom/yandex/metrica/impl/ad;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/yandex/metrica/impl/bi;->e:Lcom/yandex/metrica/impl/ad;

    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/bf;)V
    .locals 1

    .line 165
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/bf;->g()Lcom/yandex/metrica/impl/aw;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/metrica/impl/s;->a(Lcom/yandex/metrica/impl/aw;)Lcom/yandex/metrica/impl/i;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/bi;->a(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/bf;)V

    return-void
.end method

.method a(Lcom/yandex/metrica/impl/bk;Lcom/yandex/metrica/impl/bf;)V
    .locals 3

    .line 277
    new-instance v0, Lcom/yandex/metrica/impl/bj$d;

    .line 4166
    new-instance v1, Lcom/yandex/metrica/impl/e;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/e;-><init>()V

    sget-object v2, Lcom/yandex/metrica/impl/s$a;->l:Lcom/yandex/metrica/impl/s$a;

    .line 4167
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/s$a;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/e;->a(I)Lcom/yandex/metrica/impl/i;

    move-result-object v1

    .line 278
    invoke-direct {v0, v1, p2}, Lcom/yandex/metrica/impl/bj$d;-><init>(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/bf;)V

    new-instance p2, Lcom/yandex/metrica/impl/bi$4;

    invoke-direct {p2, p1}, Lcom/yandex/metrica/impl/bi$4;-><init>(Lcom/yandex/metrica/impl/bk;)V

    .line 279
    invoke-virtual {v0, p2}, Lcom/yandex/metrica/impl/bj$d;->a(Lcom/yandex/metrica/impl/bj$c;)Lcom/yandex/metrica/impl/bj$d;

    move-result-object p1

    .line 277
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/bi;->a(Lcom/yandex/metrica/impl/bj$d;)Ljava/util/concurrent/Future;

    return-void
.end method

.method a(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/bf;)V
    .locals 1

    .line 131
    invoke-static {p1, p2}, Lcom/yandex/metrica/impl/bi;->c(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/bf;)Lcom/yandex/metrica/impl/i;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/yandex/metrica/impl/bi;->a(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/bf;Ljava/util/Map;)Ljava/util/concurrent/Future;

    return-void
.end method

.method a(Lcom/yandex/metrica/impl/k;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/yandex/metrica/impl/bi;->f:Lcom/yandex/metrica/impl/g;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/g;->a(Lcom/yandex/metrica/impl/k;)V

    return-void
.end method

.method a(Lcom/yandex/metrica/impl/o;)V
    .locals 2

    .line 92
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/o;->b()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/yandex/metrica/impl/bi;->f:Lcom/yandex/metrica/impl/g;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/g;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    .line 94
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/o;->b()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 93
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/CounterConfiguration;->a(Z)V

    .line 97
    :cond_0
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/o;->c()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/yandex/metrica/impl/bi;->f:Lcom/yandex/metrica/impl/g;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/g;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    .line 99
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/o;->c()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 98
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/CounterConfiguration;->f(Z)V

    .line 1488
    :cond_1
    new-instance p1, Lcom/yandex/metrica/impl/i;

    invoke-direct {p1}, Lcom/yandex/metrica/impl/i;-><init>()V

    sget-object v0, Lcom/yandex/metrica/impl/s$a;->I:Lcom/yandex/metrica/impl/s$a;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/s$a;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/i;->a(I)Lcom/yandex/metrica/impl/i;

    move-result-object p1

    .line 102
    iget-object v0, p0, Lcom/yandex/metrica/impl/bi;->f:Lcom/yandex/metrica/impl/g;

    invoke-virtual {p0, p1, v0}, Lcom/yandex/metrica/impl/bi;->a(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/bf;)V

    return-void
.end method

.method a(Lcom/yandex/metrica/impl/ob/ke$a;Lcom/yandex/metrica/impl/bf;)V
    .locals 2

    .line 252
    new-instance v0, Lcom/yandex/metrica/impl/bj$d;

    invoke-static {}, Lcom/yandex/metrica/impl/e;->a()Lcom/yandex/metrica/impl/i;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/yandex/metrica/impl/bj$d;-><init>(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/bf;)V

    new-instance p2, Lcom/yandex/metrica/impl/bi$2;

    invoke-direct {p2, p1}, Lcom/yandex/metrica/impl/bi$2;-><init>(Lcom/yandex/metrica/impl/ob/ke$a;)V

    .line 253
    invoke-virtual {v0, p2}, Lcom/yandex/metrica/impl/bj$d;->a(Lcom/yandex/metrica/impl/bj$c;)Lcom/yandex/metrica/impl/bj$d;

    move-result-object p1

    .line 252
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/bi;->a(Lcom/yandex/metrica/impl/bj$d;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ob/kw;)V
    .locals 1

    .line 161
    invoke-static {p1}, Lcom/yandex/metrica/impl/s;->a(Lcom/yandex/metrica/impl/ob/kw;)Lcom/yandex/metrica/impl/i;

    move-result-object p1

    iget-object v0, p0, Lcom/yandex/metrica/impl/bi;->f:Lcom/yandex/metrica/impl/g;

    invoke-virtual {p0, p1, v0}, Lcom/yandex/metrica/impl/bi;->a(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/bf;)V

    return-void
.end method

.method a(Lcom/yandex/metrica/impl/ob/lw;)V
    .locals 1

    .line 77
    iput-object p1, p0, Lcom/yandex/metrica/impl/bi;->g:Lcom/yandex/metrica/impl/ob/lw;

    .line 80
    iget-object v0, p0, Lcom/yandex/metrica/impl/bi;->f:Lcom/yandex/metrica/impl/g;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/g;->b(Lcom/yandex/metrica/impl/ob/lw;)V

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/yandex/metrica/impl/bi;->e:Lcom/yandex/metrica/impl/ad;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ad;->d()Lcom/yandex/metrica/impl/bf;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/yandex/metrica/impl/bi;->a(Ljava/lang/String;Lcom/yandex/metrica/impl/bf;)V

    return-void
.end method

.method a(Ljava/lang/String;Lcom/yandex/metrica/impl/bf;)V
    .locals 2

    .line 110
    invoke-static {}, Lcom/yandex/metrica/impl/ob/nk;->f()Lcom/yandex/metrica/impl/ob/nk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/nk;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-static {}, Lcom/yandex/metrica/impl/ob/nk;->f()Lcom/yandex/metrica/impl/ob/nk;

    move-result-object v0

    const-string v1, "Error received: native"

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/nk;->a(Ljava/lang/String;)V

    .line 114
    :cond_0
    sget-object v0, Lcom/yandex/metrica/impl/s$a;->n:Lcom/yandex/metrica/impl/s$a;

    invoke-static {v0, p1}, Lcom/yandex/metrica/impl/s;->a(Lcom/yandex/metrica/impl/s$a;Ljava/lang/String;)Lcom/yandex/metrica/impl/i;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/yandex/metrica/impl/bi;->a(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/bf;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/yandex/metrica/impl/bf;)V
    .locals 3

    .line 241
    new-instance v0, Lcom/yandex/metrica/impl/bj$d;

    .line 4142
    new-instance v1, Lcom/yandex/metrica/impl/i;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/i;-><init>()V

    sget-object v2, Lcom/yandex/metrica/impl/s$a;->x:Lcom/yandex/metrica/impl/s$a;

    .line 4143
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/s$a;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/i;->a(I)Lcom/yandex/metrica/impl/i;

    move-result-object v1

    .line 4144
    invoke-virtual {v1, p1, p2}, Lcom/yandex/metrica/impl/i;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/i;

    move-result-object p1

    .line 242
    invoke-direct {v0, p1, p3}, Lcom/yandex/metrica/impl/bj$d;-><init>(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/bf;)V

    .line 241
    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/bi;->a(Lcom/yandex/metrica/impl/bj$d;)Ljava/util/concurrent/Future;

    return-void
.end method

.method a(Ljava/lang/Throwable;Lcom/yandex/metrica/impl/bf;)V
    .locals 2

    .line 185
    invoke-static {}, Lcom/yandex/metrica/impl/ob/nk;->f()Lcom/yandex/metrica/impl/ob/nk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/nk;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/bf;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    invoke-static {}, Lcom/yandex/metrica/impl/ob/nk;->f()Lcom/yandex/metrica/impl/ob/nk;

    move-result-object v0

    const-string v1, "Error received: uncaught"

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/nk;->a(Ljava/lang/String;)V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/bi;->b:Lcom/yandex/metrica/impl/ah;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ah;->c()V

    const/4 v0, 0x0

    .line 194
    invoke-static {v0, p1}, Lcom/yandex/metrica/impl/bv;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_1

    const-string p1, ""

    goto :goto_0

    .line 196
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 195
    :goto_0
    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/s;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/i;

    move-result-object p1

    .line 198
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/bf;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/i;->f(Ljava/lang/String;)Lcom/yandex/metrica/impl/i;

    .line 200
    :try_start_0
    new-instance v0, Lcom/yandex/metrica/impl/bj$d;

    invoke-direct {v0, p1, p2}, Lcom/yandex/metrica/impl/bj$d;-><init>(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/bf;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/bj$d;->a(Z)Lcom/yandex/metrica/impl/bj$d;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/bi;->a(Lcom/yandex/metrica/impl/bj$d;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/yandex/metrica/impl/bi;->f:Lcom/yandex/metrica/impl/g;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/g;->h()Lcom/yandex/metrica/impl/ob/u;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/u;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/yandex/metrica/impl/bi;->f:Lcom/yandex/metrica/impl/g;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/g;->h()Lcom/yandex/metrica/impl/ob/u;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/u;->a(Ljava/util/Map;)V

    return-void
.end method

.method a(Z)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/yandex/metrica/impl/bi;->c:Lcom/yandex/metrica/impl/NativeCrashesHelper;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/NativeCrashesHelper;->a(Z)V

    return-void
.end method

.method public b()Landroid/content/Context;
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/yandex/metrica/impl/bi;->a:Landroid/content/Context;

    return-object v0
.end method

.method public b(Lcom/yandex/metrica/impl/bf;)V
    .locals 3

    .line 246
    new-instance v0, Lcom/yandex/metrica/impl/bj$d;

    .line 4148
    new-instance v1, Lcom/yandex/metrica/impl/i;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/i;-><init>()V

    sget-object v2, Lcom/yandex/metrica/impl/s$a;->y:Lcom/yandex/metrica/impl/s$a;

    .line 4149
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/s$a;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/i;->a(I)Lcom/yandex/metrica/impl/i;

    move-result-object v1

    .line 247
    invoke-direct {v0, v1, p1}, Lcom/yandex/metrica/impl/bj$d;-><init>(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/bf;)V

    .line 246
    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/bi;->a(Lcom/yandex/metrica/impl/bj$d;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 157
    invoke-static {p1}, Lcom/yandex/metrica/impl/s;->d(Ljava/lang/String;)Lcom/yandex/metrica/impl/i;

    move-result-object p1

    iget-object v0, p0, Lcom/yandex/metrica/impl/bi;->f:Lcom/yandex/metrica/impl/g;

    invoke-virtual {p0, p1, v0}, Lcom/yandex/metrica/impl/bi;->a(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/bf;)V

    return-void
.end method

.method b(Ljava/lang/String;Lcom/yandex/metrica/impl/bf;)V
    .locals 3

    .line 264
    new-instance v0, Lcom/yandex/metrica/impl/bj$d;

    .line 4159
    new-instance v1, Lcom/yandex/metrica/impl/e;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/e;-><init>()V

    sget-object v2, Lcom/yandex/metrica/impl/s$a;->k:Lcom/yandex/metrica/impl/s$a;

    .line 4160
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/s$a;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/e;->a(I)Lcom/yandex/metrica/impl/i;

    move-result-object v1

    .line 4161
    invoke-virtual {v1, p1}, Lcom/yandex/metrica/impl/i;->d(Ljava/lang/String;)Lcom/yandex/metrica/impl/i;

    move-result-object v1

    .line 265
    invoke-direct {v0, v1, p2}, Lcom/yandex/metrica/impl/bj$d;-><init>(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/bf;)V

    new-instance p2, Lcom/yandex/metrica/impl/bi$3;

    invoke-direct {p2, p1}, Lcom/yandex/metrica/impl/bi$3;-><init>(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v0, p2}, Lcom/yandex/metrica/impl/bj$d;->a(Lcom/yandex/metrica/impl/bj$c;)Lcom/yandex/metrica/impl/bj$d;

    move-result-object p1

    .line 264
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/bi;->a(Lcom/yandex/metrica/impl/bj$d;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public c()V
    .locals 2

    .line 150
    sget-object v0, Lcom/yandex/metrica/impl/s$a;->o:Lcom/yandex/metrica/impl/s$a;

    .line 151
    invoke-static {v0}, Lcom/yandex/metrica/impl/s;->c(Lcom/yandex/metrica/impl/s$a;)Lcom/yandex/metrica/impl/i;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/bi;->f:Lcom/yandex/metrica/impl/g;

    .line 150
    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/bi;->a(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/bf;)V

    return-void
.end method

.method c(Lcom/yandex/metrica/impl/bf;)V
    .locals 1

    .line 292
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/bf;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/bf;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object p1

    invoke-static {}, Lcom/yandex/metrica/impl/ob/nk;->f()Lcom/yandex/metrica/impl/ob/nk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/nk;->b()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/CounterConfiguration;->c(Z)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/yandex/metrica/impl/bi;->f:Lcom/yandex/metrica/impl/g;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/g;->h()Lcom/yandex/metrica/impl/ob/u;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/u;->a(Ljava/lang/String;)V

    return-void
.end method

.method d()V
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/yandex/metrica/impl/bi;->b:Lcom/yandex/metrica/impl/ah;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ah;->c()V

    return-void
.end method

.method e()V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/yandex/metrica/impl/bi;->b:Lcom/yandex/metrica/impl/ah;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ah;->b()V

    return-void
.end method
