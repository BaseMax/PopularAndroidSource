.class public final Lcom/mapbox/android/telemetry/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mapbox/android/telemetry/u;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapbox/android/telemetry/x$a;
    }
.end annotation


# static fields
.field static a:Landroid/content/Context;

.field private static b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Ljava/lang/String;

.field private final d:Lcom/mapbox/android/telemetry/r;

.field private e:Lcom/mapbox/android/telemetry/af;

.field private f:Lokhttp3/Callback;

.field private final g:Lcom/mapbox/android/telemetry/z;

.field private h:Lcom/mapbox/android/telemetry/i;

.field private final i:Lcom/mapbox/android/telemetry/TelemetryEnabler;

.field private j:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/mapbox/android/telemetry/aj;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/mapbox/android/telemetry/e;

.field private l:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/mapbox/android/telemetry/c;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/mapbox/android/telemetry/n;

.field private final n:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/mapbox/android/telemetry/x;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    .line 51
    sput-object v0, Lcom/mapbox/android/telemetry/x;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/mapbox/android/telemetry/x;->h:Lcom/mapbox/android/telemetry/i;

    .line 46
    iput-object v0, p0, Lcom/mapbox/android/telemetry/x;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 48
    iput-object v0, p0, Lcom/mapbox/android/telemetry/x;->l:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 1196
    sget-object v0, Lcom/mapbox/android/telemetry/x;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 1197
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1198
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/mapbox/android/telemetry/x;->a:Landroid/content/Context;

    goto :goto_0

    .line 1200
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Non-null application context required."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :cond_1
    :goto_0
    invoke-static {p1, p2}, Lcom/mapbox/android/telemetry/x;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 56
    iput-object p3, p0, Lcom/mapbox/android/telemetry/x;->c:Ljava/lang/String;

    .line 1258
    new-instance p1, Lcom/mapbox/android/telemetry/a;

    new-instance p2, Lcom/mapbox/android/telemetry/x$2;

    invoke-direct {p2, p0}, Lcom/mapbox/android/telemetry/x$2;-><init>(Lcom/mapbox/android/telemetry/x;)V

    invoke-direct {p1, p2}, Lcom/mapbox/android/telemetry/a;-><init>(Lcom/mapbox/android/telemetry/y;)V

    .line 58
    new-instance p2, Lcom/mapbox/android/telemetry/aa;

    sget-object p3, Lcom/mapbox/android/telemetry/x;->a:Landroid/content/Context;

    invoke-direct {p2, p3, p1}, Lcom/mapbox/android/telemetry/aa;-><init>(Landroid/content/Context;Lcom/mapbox/android/telemetry/a;)V

    .line 2019
    new-instance p1, Lcom/mapbox/android/telemetry/b;

    iget-object p3, p2, Lcom/mapbox/android/telemetry/aa;->b:Landroid/content/Context;

    iget-object v0, p2, Lcom/mapbox/android/telemetry/aa;->b:Landroid/content/Context;

    const-string v1, "alarm"

    .line 2020
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iget-object p2, p2, Lcom/mapbox/android/telemetry/aa;->c:Lcom/mapbox/android/telemetry/a;

    invoke-direct {p1, p3, v0, p2}, Lcom/mapbox/android/telemetry/b;-><init>(Landroid/content/Context;Landroid/app/AlarmManager;Lcom/mapbox/android/telemetry/a;)V

    .line 58
    iput-object p1, p0, Lcom/mapbox/android/telemetry/x;->g:Lcom/mapbox/android/telemetry/z;

    .line 59
    new-instance p1, Lcom/mapbox/android/telemetry/TelemetryEnabler;

    invoke-direct {p1}, Lcom/mapbox/android/telemetry/TelemetryEnabler;-><init>()V

    iput-object p1, p0, Lcom/mapbox/android/telemetry/x;->i:Lcom/mapbox/android/telemetry/TelemetryEnabler;

    .line 2309
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lcom/mapbox/android/telemetry/x;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 2313
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lcom/mapbox/android/telemetry/x;->l:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 63
    iget-object p1, p0, Lcom/mapbox/android/telemetry/x;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 2438
    new-instance p2, Lcom/mapbox/android/telemetry/x$6;

    invoke-direct {p2, p1}, Lcom/mapbox/android/telemetry/x$6;-><init>(Ljava/util/Set;)V

    .line 63
    iput-object p2, p0, Lcom/mapbox/android/telemetry/x;->f:Lokhttp3/Callback;

    const-string p1, "MapboxTelemetryExecutor"

    .line 2460
    invoke-static {p1}, Lcom/mapbox/android/telemetry/x$a;->a(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    .line 64
    iput-object p1, p0, Lcom/mapbox/android/telemetry/x;->n:Ljava/util/concurrent/ExecutorService;

    .line 66
    iget-object p1, p0, Lcom/mapbox/android/telemetry/x;->n:Ljava/util/concurrent/ExecutorService;

    invoke-static {p0, p1}, Lcom/mapbox/android/telemetry/r;->a(Lcom/mapbox/android/telemetry/u;Ljava/util/concurrent/ExecutorService;)Lcom/mapbox/android/telemetry/r;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/android/telemetry/x;->d:Lcom/mapbox/android/telemetry/r;

    return-void
.end method

.method private declared-synchronized a()V
    .locals 2

    monitor-enter p0

    .line 271
    :try_start_0
    iget-object v0, p0, Lcom/mapbox/android/telemetry/x;->d:Lcom/mapbox/android/telemetry/r;

    invoke-virtual {v0}, Lcom/mapbox/android/telemetry/r;->a()Ljava/util/List;

    move-result-object v0

    .line 272
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 273
    monitor-exit p0

    return-void

    .line 275
    :cond_0
    :try_start_1
    new-instance v1, Lcom/mapbox/android/telemetry/x$3;

    invoke-direct {v1, p0, v0}, Lcom/mapbox/android/telemetry/x$3;-><init>(Lcom/mapbox/android/telemetry/x;Ljava/util/List;)V

    invoke-direct {p0, v1}, Lcom/mapbox/android/telemetry/x;->a(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 286
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/mapbox/android/telemetry/x;

    monitor-enter v0

    .line 406
    :try_start_0
    invoke-static {p1}, Lcom/mapbox/android/telemetry/ak;->a(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 407
    monitor-exit v0

    return-void

    .line 409
    :cond_0
    :try_start_1
    sget-object v1, Lcom/mapbox/android/telemetry/x;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 410
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p0

    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.mapbox.android.telemetry.action.TOKEN_CHANGED"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 411
    invoke-virtual {p0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 413
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic a(Lcom/mapbox/android/telemetry/x;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/mapbox/android/telemetry/x;->a()V

    return-void
.end method

.method static synthetic a(Lcom/mapbox/android/telemetry/x;Ljava/util/List;Z)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/mapbox/android/telemetry/x;->a(Ljava/util/List;Z)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 1

    .line 417
    :try_start_0
    iget-object v0, p0, Lcom/mapbox/android/telemetry/x;->n:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private declared-synchronized a(Ljava/util/List;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mapbox/android/telemetry/Event;",
            ">;Z)V"
        }
    .end annotation

    monitor-enter p0

    .line 303
    :try_start_0
    invoke-static {}, Lcom/mapbox/android/telemetry/x;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/mapbox/android/telemetry/x;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/mapbox/android/telemetry/x;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/mapbox/android/telemetry/x;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 304
    iget-object v0, p0, Lcom/mapbox/android/telemetry/x;->e:Lcom/mapbox/android/telemetry/af;

    iget-object v1, p0, Lcom/mapbox/android/telemetry/x;->f:Lokhttp3/Callback;

    .line 10059
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 10135
    new-instance p2, Lcom/google/gson/f;

    invoke-direct {p2}, Lcom/google/gson/f;-><init>()V

    invoke-virtual {p2}, Lcom/google/gson/f;->serializeNulls()Lcom/google/gson/f;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/gson/f;->create()Lcom/google/gson/e;

    move-result-object p2

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/google/gson/e;

    invoke-direct {p2}, Lcom/google/gson/e;-><init>()V

    .line 10136
    :goto_0
    invoke-virtual {p2, p1}, Lcom/google/gson/e;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 10137
    sget-object v2, Lcom/mapbox/android/telemetry/af;->a:Lokhttp3/MediaType;

    invoke-static {v2, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v2

    .line 10138
    iget-object v3, v0, Lcom/mapbox/android/telemetry/af;->d:Lcom/mapbox/android/telemetry/ai;

    .line 11059
    iget-object v3, v3, Lcom/mapbox/android/telemetry/ai;->c:Lokhttp3/HttpUrl;

    const-string v4, "/events/v2"

    .line 10140
    invoke-virtual {v3, v4}, Lokhttp3/HttpUrl;->newBuilder(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v3

    const-string v4, "access_token"

    iget-object v5, v0, Lcom/mapbox/android/telemetry/af;->b:Ljava/lang/String;

    .line 10141
    invoke-virtual {v3, v4, v5}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v3

    .line 10143
    invoke-virtual {v0}, Lcom/mapbox/android/telemetry/af;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 10144
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "Sending POST to %s with %d event(s) (user agent: %s) with payload: %s"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v7, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v7

    const/4 p1, 0x2

    iget-object v7, v0, Lcom/mapbox/android/telemetry/af;->c:Ljava/lang/String;

    aput-object v7, v6, p1

    const/4 p1, 0x3

    aput-object p2, v6, p1

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 10147
    :cond_1
    new-instance p1, Lokhttp3/Request$Builder;

    invoke-direct {p1}, Lokhttp3/Request$Builder;-><init>()V

    .line 10148
    invoke-virtual {p1, v3}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object p1

    const-string p2, "User-Agent"

    iget-object v3, v0, Lcom/mapbox/android/telemetry/af;->c:Ljava/lang/String;

    .line 10149
    invoke-virtual {p1, p2, v3}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 10150
    invoke-virtual {p1, v2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 10151
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 10153
    iget-object p2, v0, Lcom/mapbox/android/telemetry/af;->d:Lcom/mapbox/android/telemetry/ai;

    iget-object v0, v0, Lcom/mapbox/android/telemetry/af;->e:Lcom/mapbox/android/telemetry/e;

    .line 12051
    new-instance v2, Lcom/mapbox/android/telemetry/v;

    invoke-direct {v2}, Lcom/mapbox/android/telemetry/v;-><init>()V

    invoke-virtual {p2, v0, v2}, Lcom/mapbox/android/telemetry/ai;->a(Lcom/mapbox/android/telemetry/e;Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient;

    move-result-object p2

    .line 10154
    invoke-virtual {p2, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized a(Z)V
    .locals 1

    monitor-enter p0

    .line 389
    :try_start_0
    new-instance v0, Lcom/mapbox/android/telemetry/x$5;

    invoke-direct {v0, p0, p1}, Lcom/mapbox/android/telemetry/x$5;-><init>(Lcom/mapbox/android/telemetry/x;Z)V

    invoke-direct {p0, v0}, Lcom/mapbox/android/telemetry/x;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized a(Lcom/mapbox/android/telemetry/Event;)Z
    .locals 16

    move-object/from16 v1, p0

    monitor-enter p0

    .line 330
    :try_start_0
    sget-object v0, Lcom/mapbox/android/telemetry/x$7;->a:[I

    invoke-virtual/range {p1 .. p1}, Lcom/mapbox/android/telemetry/Event;->obtainType()Lcom/mapbox/android/telemetry/Event$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mapbox/android/telemetry/Event$Type;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    const/4 v4, 0x2

    if-eq v0, v4, :cond_4

    const/4 v5, 0x3

    if-eq v0, v5, :cond_0

    goto/16 :goto_3

    .line 12434
    :cond_0
    invoke-static {}, Lcom/mapbox/android/telemetry/x;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/mapbox/android/telemetry/x;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v6, v1, Lcom/mapbox/android/telemetry/x;->c:Ljava/lang/String;

    invoke-direct {v1, v0, v6}, Lcom/mapbox/android/telemetry/x;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    .line 12425
    iget-object v0, v1, Lcom/mapbox/android/telemetry/x;->e:Lcom/mapbox/android/telemetry/af;

    .line 13430
    move-object/from16 v6, p1

    check-cast v6, Lcom/mapbox/android/telemetry/Attachment;

    .line 12425
    iget-object v7, v1, Lcom/mapbox/android/telemetry/x;->l:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 14063
    invoke-virtual {v6}, Lcom/mapbox/android/telemetry/Attachment;->getAttachments()Ljava/util/List;

    move-result-object v6

    .line 14064
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 14065
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 14067
    new-instance v10, Lokhttp3/MultipartBody$Builder;

    const-string v11, "--01ead4a5-7a67-4703-ad02-589886e00923"

    invoke-direct {v10, v11}, Lokhttp3/MultipartBody$Builder;-><init>(Ljava/lang/String;)V

    sget-object v11, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    .line 14068
    invoke-virtual {v10, v11}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v10

    .line 14070
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mapbox/android/telemetry/s;

    .line 14071
    invoke-virtual {v12}, Lcom/mapbox/android/telemetry/s;->getFileData()Lcom/mapbox/android/telemetry/t;

    move-result-object v13

    .line 14072
    invoke-virtual {v12}, Lcom/mapbox/android/telemetry/s;->getAttachmentMetadata()Lcom/mapbox/android/telemetry/d;

    move-result-object v12

    .line 14073
    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v14, "file"

    .line 14075
    invoke-virtual {v12}, Lcom/mapbox/android/telemetry/d;->getName()Ljava/lang/String;

    move-result-object v15

    .line 14076
    invoke-virtual {v13}, Lcom/mapbox/android/telemetry/t;->getType()Lokhttp3/MediaType;

    move-result-object v5

    new-instance v4, Ljava/io/File;

    invoke-virtual {v13}, Lcom/mapbox/android/telemetry/t;->getFilePath()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v4, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v4}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object v4

    .line 14075
    invoke-virtual {v10, v14, v15, v4}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    .line 14078
    invoke-virtual {v12}, Lcom/mapbox/android/telemetry/d;->getFileId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x2

    const/4 v5, 0x3

    goto :goto_1

    .line 14081
    :cond_2
    new-instance v4, Lcom/google/gson/e;

    invoke-direct {v4}, Lcom/google/gson/e;-><init>()V

    const-string v5, "attachments"

    .line 14082
    invoke-virtual {v4, v8}, Lcom/google/gson/e;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v5, v4}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 14084
    invoke-static {v10}, Lcom/mapbox/android/telemetry/af;->a(Lokhttp3/MultipartBody$Builder;)Lokhttp3/RequestBody;

    move-result-object v4

    .line 14086
    iget-object v5, v0, Lcom/mapbox/android/telemetry/af;->d:Lcom/mapbox/android/telemetry/ai;

    .line 15059
    iget-object v5, v5, Lcom/mapbox/android/telemetry/ai;->c:Lokhttp3/HttpUrl;

    const-string v10, "/attachments/v1"

    .line 14087
    invoke-virtual {v5, v10}, Lokhttp3/HttpUrl;->newBuilder(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v5

    const-string v10, "access_token"

    iget-object v11, v0, Lcom/mapbox/android/telemetry/af;->b:Ljava/lang/String;

    .line 14088
    invoke-virtual {v5, v10, v11}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v5

    .line 14089
    invoke-virtual {v5}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v5

    .line 14091
    invoke-virtual {v0}, Lcom/mapbox/android/telemetry/af;->a()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 14092
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "Sending POST to %s with %d event(s) (user agent: %s) with payload: %s"

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v5, v12, v2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v12, v3

    iget-object v2, v0, Lcom/mapbox/android/telemetry/af;->c:Ljava/lang/String;

    const/4 v6, 0x2

    aput-object v2, v12, v6

    const/4 v2, 0x3

    aput-object v8, v12, v2

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 14096
    :cond_3
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    .line 14097
    invoke-virtual {v2, v5}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v2

    const-string v5, "User-Agent"

    iget-object v6, v0, Lcom/mapbox/android/telemetry/af;->c:Ljava/lang/String;

    .line 14098
    invoke-virtual {v2, v5, v6}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 14099
    invoke-virtual {v2, v4}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 14100
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    .line 14102
    iget-object v4, v0, Lcom/mapbox/android/telemetry/af;->d:Lcom/mapbox/android/telemetry/ai;

    iget-object v5, v0, Lcom/mapbox/android/telemetry/af;->e:Lcom/mapbox/android/telemetry/e;

    const/4 v6, 0x0

    .line 16055
    invoke-virtual {v4, v5, v6}, Lcom/mapbox/android/telemetry/ai;->a(Lcom/mapbox/android/telemetry/e;Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient;

    move-result-object v4

    .line 14103
    invoke-virtual {v4, v2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v2

    new-instance v4, Lcom/mapbox/android/telemetry/af$1;

    invoke-direct {v4, v0, v7, v9}, Lcom/mapbox/android/telemetry/af$1;-><init>(Lcom/mapbox/android/telemetry/af;Ljava/util/concurrent/CopyOnWriteArraySet;Ljava/util/List;)V

    invoke-interface {v2, v4}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    goto :goto_2

    .line 333
    :cond_4
    invoke-static/range {p1 .. p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 334
    new-instance v2, Lcom/mapbox/android/telemetry/x$4;

    invoke-direct {v2, v1, v0}, Lcom/mapbox/android/telemetry/x$4;-><init>(Lcom/mapbox/android/telemetry/x;Ljava/util/List;)V

    invoke-direct {v1, v2}, Lcom/mapbox/android/telemetry/x;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_2
    const/4 v2, 0x1

    .line 355
    :goto_3
    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1

    .line 210
    invoke-static {p0}, Lcom/mapbox/android/telemetry/ak;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    sget-object v0, Lcom/mapbox/android/telemetry/x;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 9206
    invoke-static {p1}, Lcom/mapbox/android/telemetry/x;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/mapbox/android/telemetry/x;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 9226
    iget-object p2, p0, Lcom/mapbox/android/telemetry/x;->m:Lcom/mapbox/android/telemetry/n;

    if-nez p2, :cond_1

    .line 9227
    new-instance p2, Lcom/mapbox/android/telemetry/n;

    sget-object v0, Lcom/mapbox/android/telemetry/x;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/mapbox/android/telemetry/x;->c:Ljava/lang/String;

    .line 9228
    invoke-static {v1, v0}, Lcom/mapbox/android/telemetry/ak;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/mapbox/android/telemetry/x;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Lokhttp3/OkHttpClient;

    invoke-direct {v3}, Lokhttp3/OkHttpClient;-><init>()V

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/mapbox/android/telemetry/n;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lokhttp3/OkHttpClient;)V

    iput-object p2, p0, Lcom/mapbox/android/telemetry/x;->m:Lcom/mapbox/android/telemetry/n;

    .line 9231
    :cond_1
    iget-object p2, p0, Lcom/mapbox/android/telemetry/x;->k:Lcom/mapbox/android/telemetry/e;

    if-nez p2, :cond_2

    .line 9232
    new-instance p2, Lcom/mapbox/android/telemetry/e;

    sget-object v0, Lcom/mapbox/android/telemetry/x;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/mapbox/android/telemetry/x;->m:Lcom/mapbox/android/telemetry/n;

    invoke-direct {p2, v0, v1}, Lcom/mapbox/android/telemetry/e;-><init>(Landroid/content/Context;Lcom/mapbox/android/telemetry/n;)V

    iput-object p2, p0, Lcom/mapbox/android/telemetry/x;->k:Lcom/mapbox/android/telemetry/e;

    .line 9235
    :cond_2
    iget-object p2, p0, Lcom/mapbox/android/telemetry/x;->e:Lcom/mapbox/android/telemetry/af;

    if-nez p2, :cond_3

    .line 9236
    sget-object p2, Lcom/mapbox/android/telemetry/x;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object v0, p0, Lcom/mapbox/android/telemetry/x;->c:Ljava/lang/String;

    .line 9241
    sget-object v1, Lcom/mapbox/android/telemetry/x;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/mapbox/android/telemetry/ak;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 9242
    new-instance v1, Lcom/mapbox/android/telemetry/ah;

    new-instance v2, Lcom/mapbox/android/telemetry/w;

    invoke-direct {v2}, Lcom/mapbox/android/telemetry/w;-><init>()V

    iget-object v3, p0, Lcom/mapbox/android/telemetry/x;->k:Lcom/mapbox/android/telemetry/e;

    invoke-direct {v1, p2, v0, v2, v3}, Lcom/mapbox/android/telemetry/ah;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/mapbox/android/telemetry/w;Lcom/mapbox/android/telemetry/e;)V

    .line 9244
    sget-object p2, Lcom/mapbox/android/telemetry/x;->a:Landroid/content/Context;

    invoke-virtual {v1, p2}, Lcom/mapbox/android/telemetry/ah;->a(Landroid/content/Context;)Lcom/mapbox/android/telemetry/af;

    move-result-object p2

    iput-object p2, p0, Lcom/mapbox/android/telemetry/x;->e:Lcom/mapbox/android/telemetry/af;

    .line 9246
    iget-object p2, p0, Lcom/mapbox/android/telemetry/x;->e:Lcom/mapbox/android/telemetry/af;

    .line 9236
    iput-object p2, p0, Lcom/mapbox/android/telemetry/x;->e:Lcom/mapbox/android/telemetry/af;

    :cond_3
    return p1
.end method

.method private static b()Z
    .locals 3

    const/4 v0, 0x0

    .line 290
    :try_start_0
    sget-object v1, Lcom/mapbox/android/telemetry/x;->a:Landroid/content/Context;

    const-string v2, "connectivity"

    .line 291
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 292
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    .line 296
    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1

    .line 218
    invoke-static {p1}, Lcom/mapbox/android/telemetry/ak;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    iput-object p1, p0, Lcom/mapbox/android/telemetry/x;->c:Ljava/lang/String;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private c()V
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/mapbox/android/telemetry/x;->g:Lcom/mapbox/android/telemetry/z;

    invoke-interface {v0}, Lcom/mapbox/android/telemetry/z;->unregister()V

    return-void
.end method


# virtual methods
.method public final addAttachmentListener(Lcom/mapbox/android/telemetry/c;)Z
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/mapbox/android/telemetry/x;->l:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final addTelemetryListener(Lcom/mapbox/android/telemetry/aj;)Z
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/mapbox/android/telemetry/x;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final disable()Z
    .locals 3

    .line 120
    sget-object v0, Lcom/mapbox/android/telemetry/x;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mapbox/android/telemetry/TelemetryEnabler;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4380
    iget-object v0, p0, Lcom/mapbox/android/telemetry/x;->i:Lcom/mapbox/android/telemetry/TelemetryEnabler;

    invoke-virtual {v0}, Lcom/mapbox/android/telemetry/TelemetryEnabler;->a()Lcom/mapbox/android/telemetry/TelemetryEnabler$State;

    move-result-object v0

    .line 4381
    sget-object v2, Lcom/mapbox/android/telemetry/TelemetryEnabler$State;->ENABLED:Lcom/mapbox/android/telemetry/TelemetryEnabler$State;

    invoke-virtual {v2, v0}, Lcom/mapbox/android/telemetry/TelemetryEnabler$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4382
    invoke-direct {p0}, Lcom/mapbox/android/telemetry/x;->a()V

    .line 4383
    invoke-direct {p0}, Lcom/mapbox/android/telemetry/x;->c()V

    .line 4384
    invoke-direct {p0, v1}, Lcom/mapbox/android/telemetry/x;->a(Z)V

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public final enable()Z
    .locals 4

    .line 112
    sget-object v0, Lcom/mapbox/android/telemetry/x;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mapbox/android/telemetry/TelemetryEnabler;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3359
    iget-object v0, p0, Lcom/mapbox/android/telemetry/x;->i:Lcom/mapbox/android/telemetry/TelemetryEnabler;

    invoke-virtual {v0}, Lcom/mapbox/android/telemetry/TelemetryEnabler;->a()Lcom/mapbox/android/telemetry/TelemetryEnabler$State;

    move-result-object v0

    .line 3360
    sget-object v1, Lcom/mapbox/android/telemetry/TelemetryEnabler$State;->ENABLED:Lcom/mapbox/android/telemetry/TelemetryEnabler$State;

    invoke-virtual {v1, v0}, Lcom/mapbox/android/telemetry/TelemetryEnabler$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 3367
    iget-object v0, p0, Lcom/mapbox/android/telemetry/x;->g:Lcom/mapbox/android/telemetry/z;

    invoke-interface {v0}, Lcom/mapbox/android/telemetry/z;->register()V

    .line 3373
    iget-object v0, p0, Lcom/mapbox/android/telemetry/x;->h:Lcom/mapbox/android/telemetry/i;

    if-nez v0, :cond_0

    .line 3374
    new-instance v0, Lcom/mapbox/android/telemetry/i;

    invoke-direct {v0}, Lcom/mapbox/android/telemetry/i;-><init>()V

    iput-object v0, p0, Lcom/mapbox/android/telemetry/x;->h:Lcom/mapbox/android/telemetry/i;

    .line 3369
    :cond_0
    iget-object v0, p0, Lcom/mapbox/android/telemetry/x;->g:Lcom/mapbox/android/telemetry/z;

    .line 4009
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 3369
    invoke-interface {v0, v2, v3}, Lcom/mapbox/android/telemetry/z;->schedule(J)V

    .line 3362
    invoke-direct {p0, v1}, Lcom/mapbox/android/telemetry/x;->a(Z)V

    :cond_1
    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final onFullQueue(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mapbox/android/telemetry/Event;",
            ">;)V"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/mapbox/android/telemetry/x;->i:Lcom/mapbox/android/telemetry/TelemetryEnabler;

    invoke-virtual {v0}, Lcom/mapbox/android/telemetry/TelemetryEnabler;->a()Lcom/mapbox/android/telemetry/TelemetryEnabler$State;

    move-result-object v0

    .line 90
    sget-object v1, Lcom/mapbox/android/telemetry/TelemetryEnabler$State;->ENABLED:Lcom/mapbox/android/telemetry/TelemetryEnabler$State;

    invoke-virtual {v1, v0}, Lcom/mapbox/android/telemetry/TelemetryEnabler$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mapbox/android/telemetry/x;->a:Landroid/content/Context;

    .line 91
    invoke-static {v0}, Lcom/mapbox/android/telemetry/ak;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, p1, v0}, Lcom/mapbox/android/telemetry/x;->a(Ljava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public final onTaskRemoved()V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/mapbox/android/telemetry/x;->a()V

    .line 99
    invoke-direct {p0}, Lcom/mapbox/android/telemetry/x;->c()V

    return-void
.end method

.method public final push(Lcom/mapbox/android/telemetry/Event;)Z
    .locals 2

    .line 103
    invoke-direct {p0, p1}, Lcom/mapbox/android/telemetry/x;->a(Lcom/mapbox/android/telemetry/Event;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 3317
    :cond_0
    iget-object v0, p0, Lcom/mapbox/android/telemetry/x;->i:Lcom/mapbox/android/telemetry/TelemetryEnabler;

    invoke-virtual {v0}, Lcom/mapbox/android/telemetry/TelemetryEnabler;->a()Lcom/mapbox/android/telemetry/TelemetryEnabler$State;

    move-result-object v0

    .line 3318
    sget-object v1, Lcom/mapbox/android/telemetry/TelemetryEnabler$State;->ENABLED:Lcom/mapbox/android/telemetry/TelemetryEnabler$State;

    invoke-virtual {v1, v0}, Lcom/mapbox/android/telemetry/TelemetryEnabler$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3319
    iget-object v0, p0, Lcom/mapbox/android/telemetry/x;->d:Lcom/mapbox/android/telemetry/r;

    invoke-virtual {v0, p1}, Lcom/mapbox/android/telemetry/r;->a(Lcom/mapbox/android/telemetry/Event;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final removeAttachmentListener(Lcom/mapbox/android/telemetry/c;)Z
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/mapbox/android/telemetry/x;->l:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final removeTelemetryListener(Lcom/mapbox/android/telemetry/aj;)Z
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/mapbox/android/telemetry/x;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final updateAccessToken(Ljava/lang/String;)Z
    .locals 3

    .line 159
    invoke-static {p1}, Lcom/mapbox/android/telemetry/x;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 8250
    iget-object v0, p0, Lcom/mapbox/android/telemetry/x;->e:Lcom/mapbox/android/telemetry/af;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 9051
    iput-object p1, v0, Lcom/mapbox/android/telemetry/af;->b:Ljava/lang/String;

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 160
    sget-object v0, Lcom/mapbox/android/telemetry/x;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return v2

    :cond_1
    return v1
.end method

.method public final updateDebugLoggingEnabled(Z)V
    .locals 4

    .line 147
    iget-object v0, p0, Lcom/mapbox/android/telemetry/x;->e:Lcom/mapbox/android/telemetry/af;

    if-eqz v0, :cond_1

    .line 5121
    iget-object v1, v0, Lcom/mapbox/android/telemetry/af;->d:Lcom/mapbox/android/telemetry/ai;

    .line 6067
    new-instance v2, Lcom/mapbox/android/telemetry/ai$a;

    invoke-direct {v2}, Lcom/mapbox/android/telemetry/ai$a;-><init>()V

    iget-object v3, v1, Lcom/mapbox/android/telemetry/ai;->a:Lcom/mapbox/android/telemetry/o;

    .line 6096
    iput-object v3, v2, Lcom/mapbox/android/telemetry/ai$a;->a:Lcom/mapbox/android/telemetry/o;

    .line 6068
    iget-object v3, v1, Lcom/mapbox/android/telemetry/ai;->b:Lokhttp3/OkHttpClient;

    if-eqz v3, :cond_0

    .line 6102
    iput-object v3, v2, Lcom/mapbox/android/telemetry/ai$a;->b:Lokhttp3/OkHttpClient;

    .line 6069
    :cond_0
    iget-object v3, v1, Lcom/mapbox/android/telemetry/ai;->c:Lokhttp3/HttpUrl;

    .line 6070
    invoke-virtual {v2, v3}, Lcom/mapbox/android/telemetry/ai$a;->a(Lokhttp3/HttpUrl;)Lcom/mapbox/android/telemetry/ai$a;

    move-result-object v2

    iget-object v3, v1, Lcom/mapbox/android/telemetry/ai;->d:Ljavax/net/ssl/SSLSocketFactory;

    .line 6115
    iput-object v3, v2, Lcom/mapbox/android/telemetry/ai$a;->d:Ljavax/net/ssl/SSLSocketFactory;

    .line 6071
    iget-object v3, v1, Lcom/mapbox/android/telemetry/ai;->e:Ljavax/net/ssl/X509TrustManager;

    .line 6120
    iput-object v3, v2, Lcom/mapbox/android/telemetry/ai$a;->e:Ljavax/net/ssl/X509TrustManager;

    .line 6072
    iget-object v3, v1, Lcom/mapbox/android/telemetry/ai;->f:Ljavax/net/ssl/HostnameVerifier;

    .line 6125
    iput-object v3, v2, Lcom/mapbox/android/telemetry/ai$a;->f:Ljavax/net/ssl/HostnameVerifier;

    .line 6073
    iget-boolean v1, v1, Lcom/mapbox/android/telemetry/ai;->g:Z

    .line 6130
    iput-boolean v1, v2, Lcom/mapbox/android/telemetry/ai$a;->g:Z

    .line 7130
    iput-boolean p1, v2, Lcom/mapbox/android/telemetry/ai$a;->g:Z

    .line 5121
    invoke-virtual {v2}, Lcom/mapbox/android/telemetry/ai$a;->a()Lcom/mapbox/android/telemetry/ai;

    move-result-object p1

    iput-object p1, v0, Lcom/mapbox/android/telemetry/af;->d:Lcom/mapbox/android/telemetry/ai;

    :cond_1
    return-void
.end method

.method public final updateSessionIdRotationInterval(Lcom/mapbox/android/telemetry/ac;)Z
    .locals 2

    .line 5023
    iget p1, p1, Lcom/mapbox/android/telemetry/ac;->a:I

    int-to-long v0, p1

    .line 129
    new-instance p1, Lcom/mapbox/android/telemetry/x$1;

    invoke-direct {p1, p0, v0, v1}, Lcom/mapbox/android/telemetry/x$1;-><init>(Lcom/mapbox/android/telemetry/x;J)V

    invoke-direct {p0, p1}, Lcom/mapbox/android/telemetry/x;->a(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final updateUserAgent(Ljava/lang/String;)V
    .locals 2

    .line 153
    invoke-direct {p0, p1}, Lcom/mapbox/android/telemetry/x;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/mapbox/android/telemetry/x;->e:Lcom/mapbox/android/telemetry/af;

    sget-object v1, Lcom/mapbox/android/telemetry/x;->a:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/mapbox/android/telemetry/ak;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 8055
    iput-object p1, v0, Lcom/mapbox/android/telemetry/af;->c:Ljava/lang/String;

    :cond_0
    return-void
.end method
