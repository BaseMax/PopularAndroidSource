.class public Lcom/yandex/metrica/impl/ba;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Z

.field private final b:Lcom/yandex/metrica/impl/bi;

.field private final c:Lcom/yandex/metrica/impl/ob/gc;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/yandex/metrica/DeferredDeeplinkParametersListener;

.field private g:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/bi;Lcom/yandex/metrica/impl/ob/gc;Lcom/yandex/metrica/impl/ob/ky;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/yandex/metrica/impl/ba;->b:Lcom/yandex/metrica/impl/bi;

    .line 62
    iput-object p2, p0, Lcom/yandex/metrica/impl/ba;->c:Lcom/yandex/metrica/impl/ob/gc;

    .line 63
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/gc;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ba;->d:Ljava/lang/String;

    .line 64
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/gc;->d()Z

    move-result p1

    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ba;->a:Z

    .line 66
    iget-boolean p1, p0, Lcom/yandex/metrica/impl/ba;->a:Z

    if-eqz p1, :cond_0

    .line 67
    iget-object p1, p0, Lcom/yandex/metrica/impl/ba;->c:Lcom/yandex/metrica/impl/ob/gc;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/gc;->n(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/gc;

    .line 68
    iput-object p2, p0, Lcom/yandex/metrica/impl/ba;->d:Ljava/lang/String;

    goto :goto_0

    .line 70
    :cond_0
    iget-object p1, p0, Lcom/yandex/metrica/impl/ba;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/yandex/metrica/impl/ba;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ba;->d(Ljava/lang/String;)V

    .line 73
    :goto_0
    iget-object p1, p0, Lcom/yandex/metrica/impl/ba;->c:Lcom/yandex/metrica/impl/ob/gc;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/gc;->e()Z

    move-result p1

    if-nez p1, :cond_1

    .line 74
    new-instance p1, Lcom/yandex/metrica/impl/ba$1;

    invoke-direct {p1, p0, p3}, Lcom/yandex/metrica/impl/ba$1;-><init>(Lcom/yandex/metrica/impl/ba;Lcom/yandex/metrica/impl/ob/ky;)V

    invoke-interface {p4, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/impl/bi;Lcom/yandex/metrica/impl/ob/gc;Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 48
    new-instance v0, Lcom/yandex/metrica/impl/ob/ky;

    .line 51
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/bi;->b()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/ky;-><init>(Landroid/content/Context;)V

    .line 48
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/yandex/metrica/impl/ba;-><init>(Lcom/yandex/metrica/impl/bi;Lcom/yandex/metrica/impl/ob/gc;Lcom/yandex/metrica/impl/ob/ky;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ba;)Lcom/yandex/metrica/impl/bi;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/yandex/metrica/impl/ba;->b:Lcom/yandex/metrica/impl/bi;

    return-object p0
.end method

.method private a()V
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/yandex/metrica/impl/ba;->e:Ljava/util/Map;

    invoke-static {v0}, Lcom/yandex/metrica/impl/bv;->a(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/yandex/metrica/impl/ba;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 189
    sget-object v0, Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;->PARSE_ERROR:Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ba;->a(Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;)V

    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ba;->f:Lcom/yandex/metrica/DeferredDeeplinkParametersListener;

    if-eqz v0, :cond_1

    .line 193
    iget-object v1, p0, Lcom/yandex/metrica/impl/ba;->e:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/yandex/metrica/DeferredDeeplinkParametersListener;->onParametersLoaded(Ljava/util/Map;)V

    const/4 v0, 0x0

    .line 194
    iput-object v0, p0, Lcom/yandex/metrica/impl/ba;->f:Lcom/yandex/metrica/DeferredDeeplinkParametersListener;

    :cond_1
    return-void
.end method

.method private a(Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;)V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/yandex/metrica/impl/ba;->f:Lcom/yandex/metrica/DeferredDeeplinkParametersListener;

    if-eqz v0, :cond_0

    .line 201
    iget-object v1, p0, Lcom/yandex/metrica/impl/ba;->d:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/yandex/metrica/DeferredDeeplinkParametersListener;->onError(Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 202
    iput-object p1, p0, Lcom/yandex/metrica/impl/ba;->f:Lcom/yandex/metrica/DeferredDeeplinkParametersListener;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ba;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ba;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/yandex/metrica/impl/ba;)Lcom/yandex/metrica/impl/ob/gc;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/yandex/metrica/impl/ba;->c:Lcom/yandex/metrica/impl/ob/gc;

    return-object p0
.end method

.method static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 139
    invoke-static {p0}, Lcom/yandex/metrica/impl/ba;->e(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    const-string v0, "appmetrica_deep_link"

    .line 140
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/yandex/metrica/impl/ba;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ba;->a()V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    .line 111
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ba;->a:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/yandex/metrica/impl/ba;->d:Ljava/lang/String;

    .line 112
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 114
    monitor-enter p0

    .line 115
    :try_start_0
    iput-object p1, p0, Lcom/yandex/metrica/impl/ba;->d:Ljava/lang/String;

    .line 116
    iget-object v0, p0, Lcom/yandex/metrica/impl/ba;->c:Lcom/yandex/metrica/impl/ob/gc;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ba;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/gc;->n(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/gc;

    .line 117
    invoke-static {p1}, Lcom/yandex/metrica/impl/ba;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 118
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ba;->d(Ljava/lang/String;)V

    .line 119
    iget-object p1, p0, Lcom/yandex/metrica/impl/ba;->g:Landroid/os/Handler;

    if-nez p1, :cond_2

    .line 120
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ba;->g:Landroid/os/Handler;

    .line 122
    :cond_2
    iget-object p1, p0, Lcom/yandex/metrica/impl/ba;->g:Landroid/os/Handler;

    new-instance v0, Lcom/yandex/metrica/impl/ba$2;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/ba$2;-><init>(Lcom/yandex/metrica/impl/ba;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 127
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 3

    .line 132
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1145
    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/yandex/metrica/impl/ba;->e(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 1146
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 1147
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1148
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 133
    :cond_0
    iput-object v0, p0, Lcom/yandex/metrica/impl/ba;->e:Ljava/util/Map;

    :cond_1
    return-void
.end method

.method private static e(Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 155
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_2

    const/16 v1, 0x3f

    .line 1174
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ltz v1, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 1176
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const-string v1, "="

    .line 1183
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "&"

    .line 159
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 160
    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, p0, v4

    .line 161
    invoke-virtual {v5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_1

    .line 163
    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string v6, ""

    .line 165
    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/yandex/metrica/DeferredDeeplinkParametersListener;)V
    .locals 1

    monitor-enter p0

    .line 208
    :try_start_0
    iput-object p1, p0, Lcom/yandex/metrica/impl/ba;->f:Lcom/yandex/metrica/DeferredDeeplinkParametersListener;

    .line 209
    iget-boolean p1, p0, Lcom/yandex/metrica/impl/ba;->a:Z

    if-eqz p1, :cond_0

    .line 210
    sget-object p1, Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;->NOT_A_FIRST_LAUNCH:Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;

    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ba;->a(Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;)V

    goto :goto_0

    .line 212
    :cond_0
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ba;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    :goto_0
    :try_start_1
    iget-object p1, p0, Lcom/yandex/metrica/impl/ba;->c:Lcom/yandex/metrica/impl/ob/gc;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/gc;->f()Lcom/yandex/metrica/impl/ob/gc;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 216
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 215
    :try_start_2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ba;->c:Lcom/yandex/metrica/impl/ob/gc;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/gc;->f()Lcom/yandex/metrica/impl/ob/gc;

    .line 216
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/yandex/metrica/impl/ba;->b:Lcom/yandex/metrica/impl/bi;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/bi;->b(Ljava/lang/String;)V

    .line 107
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ba;->c(Ljava/lang/String;)V

    return-void
.end method
