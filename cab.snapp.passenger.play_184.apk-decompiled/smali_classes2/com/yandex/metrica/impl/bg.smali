.class Lcom/yandex/metrica/impl/bg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/yandex/metrica/impl/ob/u;

.field private c:Lcom/yandex/metrica/impl/bi;

.field private d:Lcom/yandex/metrica/impl/k;

.field private e:Landroid/os/Handler;

.field private f:Lcom/yandex/metrica/impl/ob/lw;

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/yandex/metrica/b;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/yandex/metrica/impl/ob/pa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/pa<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/u;Lcom/yandex/metrica/impl/bi;Lcom/yandex/metrica/impl/k;Landroid/os/Handler;Lcom/yandex/metrica/impl/ob/lw;)V
    .locals 3

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/bg;->g:Ljava/util/Map;

    .line 38
    new-instance v0, Lcom/yandex/metrica/impl/ob/ow;

    new-instance v1, Lcom/yandex/metrica/impl/ob/pc;

    iget-object v2, p0, Lcom/yandex/metrica/impl/bg;->g:Ljava/util/Map;

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/pc;-><init>(Ljava/util/Map;)V

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/ow;-><init>(Lcom/yandex/metrica/impl/ob/pa;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/bg;->h:Lcom/yandex/metrica/impl/ob/pa;

    .line 48
    iput-object p1, p0, Lcom/yandex/metrica/impl/bg;->a:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/yandex/metrica/impl/bg;->b:Lcom/yandex/metrica/impl/ob/u;

    .line 50
    iput-object p3, p0, Lcom/yandex/metrica/impl/bg;->c:Lcom/yandex/metrica/impl/bi;

    .line 51
    iput-object p4, p0, Lcom/yandex/metrica/impl/bg;->d:Lcom/yandex/metrica/impl/k;

    .line 52
    iput-object p5, p0, Lcom/yandex/metrica/impl/bg;->e:Landroid/os/Handler;

    .line 53
    iput-object p6, p0, Lcom/yandex/metrica/impl/bg;->f:Lcom/yandex/metrica/impl/ob/lw;

    return-void
.end method

.method private a(Lcom/yandex/metrica/impl/c;)V
    .locals 2

    .line 102
    new-instance v0, Lcom/yandex/metrica/impl/aa;

    iget-object v1, p0, Lcom/yandex/metrica/impl/bg;->e:Landroid/os/Handler;

    invoke-direct {v0, v1, p1}, Lcom/yandex/metrica/impl/aa;-><init>(Landroid/os/Handler;Lcom/yandex/metrica/impl/c;)V

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/c;->a(Lcom/yandex/metrica/impl/aa;)V

    .line 103
    iget-object v0, p0, Lcom/yandex/metrica/impl/bg;->d:Lcom/yandex/metrica/impl/k;

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/c;->a(Lcom/yandex/metrica/impl/k;)V

    .line 104
    iget-object v0, p0, Lcom/yandex/metrica/impl/bg;->f:Lcom/yandex/metrica/impl/ob/lw;

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/c;->a(Lcom/yandex/metrica/impl/ob/lw;)V

    return-void
.end method


# virtual methods
.method a(Lcom/yandex/metrica/e;Z)Lcom/yandex/metrica/impl/ad;
    .locals 4

    .line 59
    iget-object v0, p0, Lcom/yandex/metrica/impl/bg;->h:Lcom/yandex/metrica/impl/ob/pa;

    iget-object v1, p1, Lcom/yandex/metrica/e;->apiKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/yandex/metrica/impl/ob/pa;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/oy;

    .line 61
    new-instance v0, Lcom/yandex/metrica/impl/ad;

    iget-object v1, p0, Lcom/yandex/metrica/impl/bg;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/yandex/metrica/impl/bg;->b:Lcom/yandex/metrica/impl/ob/u;

    iget-object v3, p0, Lcom/yandex/metrica/impl/bg;->c:Lcom/yandex/metrica/impl/bi;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/yandex/metrica/impl/ad;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/u;Lcom/yandex/metrica/e;Lcom/yandex/metrica/impl/bi;)V

    .line 62
    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/bg;->a(Lcom/yandex/metrica/impl/c;)V

    .line 63
    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ad;->a(Lcom/yandex/metrica/e;Z)V

    .line 64
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ad;->a()V

    .line 66
    iget-object p2, p0, Lcom/yandex/metrica/impl/bg;->c:Lcom/yandex/metrica/impl/bi;

    invoke-virtual {p2, v0}, Lcom/yandex/metrica/impl/bi;->a(Lcom/yandex/metrica/impl/ad;)V

    .line 68
    iget-object p2, p0, Lcom/yandex/metrica/impl/bg;->g:Ljava/util/Map;

    iget-object p1, p1, Lcom/yandex/metrica/e;->apiKey:Ljava/lang/String;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method declared-synchronized a(Lcom/yandex/metrica/c;)V
    .locals 4

    monitor-enter p0

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/bg;->g:Ljava/util/Map;

    iget-object v1, p1, Lcom/yandex/metrica/c;->apiKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-static {}, Lcom/yandex/metrica/impl/ob/nk;->f()Lcom/yandex/metrica/impl/ob/nk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/nk;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    invoke-static {}, Lcom/yandex/metrica/impl/ob/nk;->f()Lcom/yandex/metrica/impl/ob/nk;

    move-result-object v0

    const-string v1, "Reporter with apiKey=%s already exists."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object p1, p1, Lcom/yandex/metrica/c;->apiKey:Ljava/lang/String;

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/nk;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 79
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/bg;->b(Lcom/yandex/metrica/c;)Lcom/yandex/metrica/b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized b(Lcom/yandex/metrica/c;)Lcom/yandex/metrica/b;
    .locals 4

    monitor-enter p0

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/bg;->g:Ljava/util/Map;

    iget-object v1, p1, Lcom/yandex/metrica/c;->apiKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/b;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lcom/yandex/metrica/impl/ae;

    iget-object v1, p0, Lcom/yandex/metrica/impl/bg;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/yandex/metrica/impl/bg;->b:Lcom/yandex/metrica/impl/ob/u;

    iget-object v3, p0, Lcom/yandex/metrica/impl/bg;->c:Lcom/yandex/metrica/impl/bi;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/yandex/metrica/impl/ae;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/u;Lcom/yandex/metrica/c;Lcom/yandex/metrica/impl/bi;)V

    .line 92
    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/bg;->a(Lcom/yandex/metrica/impl/c;)V

    .line 93
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ae;->a()V

    .line 95
    iget-object v1, p0, Lcom/yandex/metrica/impl/bg;->g:Ljava/util/Map;

    iget-object p1, p1, Lcom/yandex/metrica/c;->apiKey:Ljava/lang/String;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
