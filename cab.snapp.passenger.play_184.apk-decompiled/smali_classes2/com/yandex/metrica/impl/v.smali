.class public final Lcom/yandex/metrica/impl/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/yandex/metrica/impl/v;


# instance fields
.field private final b:Landroid/content/Context;

.field private c:Lcom/yandex/metrica/impl/ob/kv;

.field private d:Lcom/yandex/metrica/impl/ob/lk;

.field private e:Lcom/yandex/metrica/impl/ob/ki;

.field private f:Lcom/yandex/metrica/impl/bs;

.field private g:Lcom/yandex/metrica/impl/a;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/yandex/metrica/impl/v;->b:Landroid/content/Context;

    return-void
.end method

.method public static a()Lcom/yandex/metrica/impl/v;
    .locals 1

    .line 34
    sget-object v0, Lcom/yandex/metrica/impl/v;->a:Lcom/yandex/metrica/impl/v;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/yandex/metrica/impl/v;

    monitor-enter v0

    .line 28
    :try_start_0
    sget-object v1, Lcom/yandex/metrica/impl/v;->a:Lcom/yandex/metrica/impl/v;

    if-nez v1, :cond_0

    .line 29
    new-instance v1, Lcom/yandex/metrica/impl/v;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/v;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/yandex/metrica/impl/v;->a:Lcom/yandex/metrica/impl/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final b()Landroid/content/Context;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/yandex/metrica/impl/v;->b:Landroid/content/Context;

    return-object v0
.end method

.method public final declared-synchronized c()Lcom/yandex/metrica/impl/ob/kv;
    .locals 2

    monitor-enter p0

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/v;->c:Lcom/yandex/metrica/impl/ob/kv;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/yandex/metrica/impl/ob/kv;

    iget-object v1, p0, Lcom/yandex/metrica/impl/v;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/kv;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/v;->c:Lcom/yandex/metrica/impl/ob/kv;

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/v;->c:Lcom/yandex/metrica/impl/ob/kv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()Lcom/yandex/metrica/impl/ob/lk;
    .locals 2

    monitor-enter p0

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/v;->d:Lcom/yandex/metrica/impl/ob/lk;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/yandex/metrica/impl/ob/lk;

    iget-object v1, p0, Lcom/yandex/metrica/impl/v;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/lk;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/v;->d:Lcom/yandex/metrica/impl/ob/lk;

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/v;->d:Lcom/yandex/metrica/impl/ob/lk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()Lcom/yandex/metrica/impl/ob/ki;
    .locals 5

    monitor-enter p0

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/v;->e:Lcom/yandex/metrica/impl/ob/ki;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/yandex/metrica/impl/ob/ki;

    iget-object v1, p0, Lcom/yandex/metrica/impl/v;->b:Landroid/content/Context;

    const-class v2, Lcom/yandex/metrica/impl/ob/ki$a;

    .line 75
    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/ha$a;->a(Ljava/lang/Class;)Lcom/yandex/metrica/impl/ob/ha;

    move-result-object v2

    iget-object v3, p0, Lcom/yandex/metrica/impl/v;->b:Landroid/content/Context;

    invoke-interface {v2, v3}, Lcom/yandex/metrica/impl/ob/ha;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/gk;

    move-result-object v2

    .line 1034
    sget-object v3, Lcom/yandex/metrica/impl/v;->a:Lcom/yandex/metrica/impl/v;

    .line 76
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/v;->f()Lcom/yandex/metrica/impl/bs;

    move-result-object v3

    .line 77
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/v;->d()Lcom/yandex/metrica/impl/ob/lk;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yandex/metrica/impl/ob/ki;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/gk;Lcom/yandex/metrica/impl/bs;Lcom/yandex/metrica/impl/ob/lk;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/v;->e:Lcom/yandex/metrica/impl/ob/ki;

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/v;->e:Lcom/yandex/metrica/impl/ob/ki;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()Lcom/yandex/metrica/impl/bs;
    .locals 3

    monitor-enter p0

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/v;->f:Lcom/yandex/metrica/impl/bs;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/yandex/metrica/impl/bs;

    new-instance v1, Lcom/yandex/metrica/impl/ob/gf;

    iget-object v2, p0, Lcom/yandex/metrica/impl/v;->b:Landroid/content/Context;

    .line 88
    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/fq;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/fq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/fq;->c()Lcom/yandex/metrica/impl/ob/fr;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/gf;-><init>(Lcom/yandex/metrica/impl/ob/fr;)V

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/bs;-><init>(Lcom/yandex/metrica/impl/ob/gf;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/v;->f:Lcom/yandex/metrica/impl/bs;

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/v;->f:Lcom/yandex/metrica/impl/bs;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g()Lcom/yandex/metrica/impl/a;
    .locals 1

    monitor-enter p0

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/v;->g:Lcom/yandex/metrica/impl/a;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lcom/yandex/metrica/impl/a;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/a;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/v;->g:Lcom/yandex/metrica/impl/a;

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/v;->g:Lcom/yandex/metrica/impl/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
