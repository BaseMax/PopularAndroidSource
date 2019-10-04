.class public Lcom/pusher/client/connection/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/pusher/client/connection/a/a;
.implements Lcom/pusher/client/connection/b/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pusher/client/connection/b/b$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/logging/Logger;

.field private static final b:Lcom/google/gson/e;


# instance fields
.field private final c:Lcom/pusher/client/a/a;

.field private final d:Lcom/pusher/client/connection/b/b$a;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/pusher/client/connection/ConnectionState;",
            "Ljava/util/Set<",
            "Lcom/pusher/client/connection/b;",
            ">;>;"
        }
    .end annotation
.end field

.field private final f:Ljava/net/URI;

.field private final g:Ljava/net/Proxy;

.field private final h:I

.field private final i:I

.field private volatile j:Lcom/pusher/client/connection/ConnectionState;

.field private k:Lcom/pusher/client/connection/b/a;

.field private l:Ljava/lang/String;

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/pusher/client/connection/b/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/pusher/client/connection/b/b;->a:Ljava/util/logging/Logger;

    .line 29
    new-instance v0, Lcom/google/gson/e;

    invoke-direct {v0}, Lcom/google/gson/e;-><init>()V

    sput-object v0, Lcom/pusher/client/connection/b/b;->b:Lcom/google/gson/e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJIILjava/net/Proxy;Lcom/pusher/client/a/a;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    move-object v6, p0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, v6, Lcom/pusher/client/connection/b/b;->e:Ljava/util/Map;

    .line 42
    sget-object v0, Lcom/pusher/client/connection/ConnectionState;->DISCONNECTED:Lcom/pusher/client/connection/ConnectionState;

    iput-object v0, v6, Lcom/pusher/client/connection/b/b;->j:Lcom/pusher/client/connection/ConnectionState;

    const/4 v7, 0x0

    .line 45
    iput v7, v6, Lcom/pusher/client/connection/b/b;->m:I

    .line 56
    new-instance v0, Ljava/net/URI;

    move-object v1, p1

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/pusher/client/connection/b/b;->f:Ljava/net/URI;

    .line 57
    new-instance v8, Lcom/pusher/client/connection/b/b$a;

    move-object v0, v8

    move-object v1, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/pusher/client/connection/b/b$a;-><init>(Lcom/pusher/client/connection/b/b;JJ)V

    iput-object v8, v6, Lcom/pusher/client/connection/b/b;->d:Lcom/pusher/client/connection/b/b$a;

    move v0, p6

    .line 58
    iput v0, v6, Lcom/pusher/client/connection/b/b;->h:I

    move/from16 v0, p7

    .line 59
    iput v0, v6, Lcom/pusher/client/connection/b/b;->i:I

    move-object/from16 v0, p8

    .line 60
    iput-object v0, v6, Lcom/pusher/client/connection/b/b;->g:Ljava/net/Proxy;

    move-object/from16 v0, p9

    .line 61
    iput-object v0, v6, Lcom/pusher/client/connection/b/b;->c:Lcom/pusher/client/a/a;

    .line 63
    invoke-static {}, Lcom/pusher/client/connection/ConnectionState;->values()[Lcom/pusher/client/connection/ConnectionState;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v7, v1, :cond_0

    aget-object v2, v0, v7

    .line 64
    iget-object v3, v6, Lcom/pusher/client/connection/b/b;->e:Ljava/util/Map;

    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v4}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a()Lcom/google/gson/e;
    .locals 1

    .line 27
    sget-object v0, Lcom/pusher/client/connection/b/b;->b:Lcom/google/gson/e;

    return-object v0
.end method

.method static synthetic a(Lcom/pusher/client/connection/b/b;)Lcom/pusher/client/connection/ConnectionState;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/pusher/client/connection/b/b;->j:Lcom/pusher/client/connection/ConnectionState;

    return-object p0
.end method

.method private a(Lcom/pusher/client/connection/ConnectionState;)V
    .locals 4

    .line 153
    sget-object v0, Lcom/pusher/client/connection/b/b;->a:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "State transition requested, current ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pusher/client/connection/b/b;->j:Lcom/pusher/client/connection/ConnectionState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "], new ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 155
    new-instance v0, Lcom/pusher/client/connection/c;

    iget-object v1, p0, Lcom/pusher/client/connection/b/b;->j:Lcom/pusher/client/connection/ConnectionState;

    invoke-direct {v0, v1, p1}, Lcom/pusher/client/connection/c;-><init>(Lcom/pusher/client/connection/ConnectionState;Lcom/pusher/client/connection/ConnectionState;)V

    .line 156
    iput-object p1, p0, Lcom/pusher/client/connection/b/b;->j:Lcom/pusher/client/connection/ConnectionState;

    .line 158
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 159
    iget-object v2, p0, Lcom/pusher/client/connection/b/b;->e:Ljava/util/Map;

    sget-object v3, Lcom/pusher/client/connection/ConnectionState;->ALL:Lcom/pusher/client/connection/ConnectionState;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 160
    iget-object v2, p0, Lcom/pusher/client/connection/b/b;->e:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 162
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pusher/client/connection/b;

    .line 163
    iget-object v2, p0, Lcom/pusher/client/connection/b/b;->c:Lcom/pusher/client/a/a;

    new-instance v3, Lcom/pusher/client/connection/b/b$4;

    invoke-direct {v3, p0, v1, v0}, Lcom/pusher/client/connection/b/b$4;-><init>(Lcom/pusher/client/connection/b/b;Lcom/pusher/client/connection/b;Lcom/pusher/client/connection/c;)V

    invoke-virtual {v2, v3}, Lcom/pusher/client/a/a;->queueOnEventThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/pusher/client/connection/b/b;Lcom/pusher/client/connection/ConnectionState;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/pusher/client/connection/b/b;->a(Lcom/pusher/client/connection/ConnectionState;)V

    return-void
.end method

.method static synthetic a(Lcom/pusher/client/connection/b/b;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, v0, p2}, Lcom/pusher/client/connection/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic a(Lcom/pusher/client/connection/b/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "pusher:"

    .line 3173
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "pusher:connection_established"

    .line 3182
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "data"

    if-eqz v0, :cond_1

    .line 3192
    sget-object p1, Lcom/pusher/client/connection/b/b;->b:Lcom/google/gson/e;

    const-class v0, Ljava/util/Map;

    invoke-virtual {p1, p2, v0}, Lcom/google/gson/e;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 3193
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 3194
    sget-object p2, Lcom/pusher/client/connection/b/b;->b:Lcom/google/gson/e;

    const-class v0, Ljava/util/Map;

    invoke-virtual {p2, p1, v0}, Lcom/google/gson/e;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const-string p2, "socket_id"

    .line 3195
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/pusher/client/connection/b/b;->l:Ljava/lang/String;

    .line 3197
    iget-object p1, p0, Lcom/pusher/client/connection/b/b;->j:Lcom/pusher/client/connection/ConnectionState;

    sget-object p2, Lcom/pusher/client/connection/ConnectionState;->CONNECTED:Lcom/pusher/client/connection/ConnectionState;

    if-eq p1, p2, :cond_0

    .line 3198
    sget-object p1, Lcom/pusher/client/connection/ConnectionState;->CONNECTED:Lcom/pusher/client/connection/ConnectionState;

    invoke-direct {p0, p1}, Lcom/pusher/client/connection/b/b;->a(Lcom/pusher/client/connection/ConnectionState;)V

    :cond_0
    const/4 p1, 0x0

    .line 3201
    iput p1, p0, Lcom/pusher/client/connection/b/b;->m:I

    return-void

    :cond_1
    const-string v0, "pusher:error"

    .line 3185
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 3206
    sget-object p1, Lcom/pusher/client/connection/b/b;->b:Lcom/google/gson/e;

    const-class v0, Ljava/util/Map;

    invoke-virtual {p1, p2, v0}, Lcom/google/gson/e;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 3207
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 3210
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 3211
    sget-object p2, Lcom/pusher/client/connection/b/b;->b:Lcom/google/gson/e;

    check-cast p1, Ljava/lang/String;

    const-class v0, Ljava/util/Map;

    invoke-virtual {p2, p1, v0}, Lcom/google/gson/e;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    goto :goto_0

    .line 3214
    :cond_2
    check-cast p1, Ljava/util/Map;

    :goto_0
    const-string p2, "message"

    .line 3217
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v0, "code"

    .line 3219
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 3222
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    move-object p1, v0

    .line 3225
    :goto_1
    invoke-direct {p0, p2, p1, v0}, Lcom/pusher/client/connection/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_4
    return-void

    .line 3177
    :cond_5
    iget-object p0, p0, Lcom/pusher/client/connection/b/b;->c:Lcom/pusher/client/a/a;

    invoke-virtual {p0}, Lcom/pusher/client/a/a;->getChannelManager()Lcom/pusher/client/channel/a/b;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/pusher/client/channel/a/b;->onMessage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 9

    .line 229
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 230
    iget-object v1, p0, Lcom/pusher/client/connection/b/b;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 231
    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 234
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/pusher/client/connection/b;

    .line 235
    iget-object v1, p0, Lcom/pusher/client/connection/b/b;->c:Lcom/pusher/client/a/a;

    new-instance v8, Lcom/pusher/client/connection/b/b$5;

    move-object v2, v8

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/pusher/client/connection/b/b$5;-><init>(Lcom/pusher/client/connection/b/b;Lcom/pusher/client/connection/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {v1, v8}, Lcom/pusher/client/a/a;->queueOnEventThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method static synthetic b()Ljava/util/logging/Logger;
    .locals 1

    .line 27
    sget-object v0, Lcom/pusher/client/connection/b/b;->a:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic b(Lcom/pusher/client/connection/b/b;)V
    .locals 3

    .line 3085
    :try_start_0
    iget-object v0, p0, Lcom/pusher/client/connection/b/b;->c:Lcom/pusher/client/a/a;

    iget-object v1, p0, Lcom/pusher/client/connection/b/b;->f:Ljava/net/URI;

    iget-object v2, p0, Lcom/pusher/client/connection/b/b;->g:Ljava/net/Proxy;

    .line 3086
    invoke-virtual {v0, v1, v2, p0}, Lcom/pusher/client/a/a;->newWebSocketClientWrapper(Ljava/net/URI;Ljava/net/Proxy;Lcom/pusher/client/connection/b/c;)Lcom/pusher/client/connection/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/pusher/client/connection/b/b;->k:Lcom/pusher/client/connection/b/a;

    .line 3087
    sget-object v0, Lcom/pusher/client/connection/ConnectionState;->CONNECTING:Lcom/pusher/client/connection/ConnectionState;

    invoke-direct {p0, v0}, Lcom/pusher/client/connection/b/b;->a(Lcom/pusher/client/connection/ConnectionState;)V

    .line 3088
    iget-object v0, p0, Lcom/pusher/client/connection/b/b;->k:Lcom/pusher/client/connection/b/a;

    invoke-virtual {v0}, Lcom/pusher/client/connection/b/a;->connect()V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    const-string v2, "Error connecting over SSL"

    .line 3091
    invoke-direct {p0, v2, v1, v0}, Lcom/pusher/client/connection/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic c(Lcom/pusher/client/connection/b/b;)Lcom/pusher/client/connection/b/a;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/pusher/client/connection/b/b;->k:Lcom/pusher/client/connection/b/a;

    return-object p0
.end method

.method private c()V
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/pusher/client/connection/b/b;->d:Lcom/pusher/client/connection/b/b$a;

    invoke-virtual {v0}, Lcom/pusher/client/connection/b/b$a;->b()V

    .line 319
    iget-object v0, p0, Lcom/pusher/client/connection/b/b;->c:Lcom/pusher/client/a/a;

    new-instance v1, Lcom/pusher/client/connection/b/b$8;

    invoke-direct {v1, p0}, Lcom/pusher/client/connection/b/b$8;-><init>(Lcom/pusher/client/connection/b/b;)V

    invoke-virtual {v0, v1}, Lcom/pusher/client/a/a;->queueOnEventThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic d(Lcom/pusher/client/connection/b/b;)Lcom/pusher/client/a/a;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/pusher/client/connection/b/b;->c:Lcom/pusher/client/a/a;

    return-object p0
.end method


# virtual methods
.method public bind(Lcom/pusher/client/connection/ConnectionState;Lcom/pusher/client/connection/b;)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/pusher/client/connection/b/b;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public connect()V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/pusher/client/connection/b/b;->c:Lcom/pusher/client/a/a;

    new-instance v1, Lcom/pusher/client/connection/b/b$1;

    invoke-direct {v1, p0}, Lcom/pusher/client/connection/b/b$1;-><init>(Lcom/pusher/client/connection/b/b;)V

    invoke-virtual {v0, v1}, Lcom/pusher/client/a/a;->queueOnEventThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public disconnect()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/pusher/client/connection/b/b;->c:Lcom/pusher/client/a/a;

    new-instance v1, Lcom/pusher/client/connection/b/b$2;

    invoke-direct {v1, p0}, Lcom/pusher/client/connection/b/b$2;-><init>(Lcom/pusher/client/connection/b/b;)V

    invoke-virtual {v0, v1}, Lcom/pusher/client/a/a;->queueOnEventThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getSocketId()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/pusher/client/connection/b/b;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lcom/pusher/client/connection/ConnectionState;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/pusher/client/connection/b/b;->j:Lcom/pusher/client/connection/ConnectionState;

    return-object v0
.end method

.method public onClose(ILjava/lang/String;Z)V
    .locals 3

    .line 268
    iget-object v0, p0, Lcom/pusher/client/connection/b/b;->j:Lcom/pusher/client/connection/ConnectionState;

    sget-object v1, Lcom/pusher/client/connection/ConnectionState;->DISCONNECTED:Lcom/pusher/client/connection/ConnectionState;

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/pusher/client/connection/b/b;->j:Lcom/pusher/client/connection/ConnectionState;

    sget-object v1, Lcom/pusher/client/connection/ConnectionState;->RECONNECTING:Lcom/pusher/client/connection/ConnectionState;

    if-ne v0, v1, :cond_0

    goto :goto_3

    :cond_0
    const/16 p2, 0xfa0

    const/4 p3, 0x1

    if-lt p1, p2, :cond_2

    const/16 p2, 0x1004

    if-lt p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-nez p1, :cond_3

    .line 275
    sget-object p1, Lcom/pusher/client/connection/ConnectionState;->DISCONNECTING:Lcom/pusher/client/connection/ConnectionState;

    invoke-direct {p0, p1}, Lcom/pusher/client/connection/b/b;->a(Lcom/pusher/client/connection/ConnectionState;)V

    .line 279
    :cond_3
    iget-object p1, p0, Lcom/pusher/client/connection/b/b;->j:Lcom/pusher/client/connection/ConnectionState;

    sget-object p2, Lcom/pusher/client/connection/ConnectionState;->CONNECTED:Lcom/pusher/client/connection/ConnectionState;

    if-eq p1, p2, :cond_6

    iget-object p1, p0, Lcom/pusher/client/connection/b/b;->j:Lcom/pusher/client/connection/ConnectionState;

    sget-object p2, Lcom/pusher/client/connection/ConnectionState;->CONNECTING:Lcom/pusher/client/connection/ConnectionState;

    if-ne p1, p2, :cond_4

    goto :goto_2

    .line 291
    :cond_4
    iget-object p1, p0, Lcom/pusher/client/connection/b/b;->j:Lcom/pusher/client/connection/ConnectionState;

    sget-object p2, Lcom/pusher/client/connection/ConnectionState;->DISCONNECTING:Lcom/pusher/client/connection/ConnectionState;

    if-ne p1, p2, :cond_5

    .line 292
    invoke-direct {p0}, Lcom/pusher/client/connection/b/b;->c()V

    :cond_5
    return-void

    .line 281
    :cond_6
    :goto_2
    iget p1, p0, Lcom/pusher/client/connection/b/b;->m:I

    iget p2, p0, Lcom/pusher/client/connection/b/b;->h:I

    if-ge p1, p2, :cond_7

    add-int/2addr p1, p3

    .line 2297
    iput p1, p0, Lcom/pusher/client/connection/b/b;->m:I

    .line 2298
    sget-object p1, Lcom/pusher/client/connection/ConnectionState;->RECONNECTING:Lcom/pusher/client/connection/ConnectionState;

    invoke-direct {p0, p1}, Lcom/pusher/client/connection/b/b;->a(Lcom/pusher/client/connection/ConnectionState;)V

    .line 2299
    iget p1, p0, Lcom/pusher/client/connection/b/b;->i:I

    iget p2, p0, Lcom/pusher/client/connection/b/b;->m:I

    mul-int p2, p2, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-long p1, p1

    .line 2301
    iget-object p3, p0, Lcom/pusher/client/connection/b/b;->c:Lcom/pusher/client/a/a;

    invoke-virtual {p3}, Lcom/pusher/client/a/a;->getTimers()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p3

    new-instance v0, Lcom/pusher/client/connection/b/b$7;

    invoke-direct {v0, p0}, Lcom/pusher/client/connection/b/b$7;-><init>(Lcom/pusher/client/connection/b/b;)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p3, v0, p1, p2, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void

    .line 285
    :cond_7
    sget-object p1, Lcom/pusher/client/connection/ConnectionState;->DISCONNECTING:Lcom/pusher/client/connection/ConnectionState;

    invoke-direct {p0, p1}, Lcom/pusher/client/connection/b/b;->a(Lcom/pusher/client/connection/ConnectionState;)V

    .line 286
    invoke-direct {p0}, Lcom/pusher/client/connection/b/b;->c()V

    return-void

    .line 269
    :cond_8
    :goto_3
    sget-object v0, Lcom/pusher/client/connection/b/b;->a:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received close from underlying socket when already disconnected.Close code ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "], Reason ["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "], Remote ["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 2

    .line 330
    iget-object v0, p0, Lcom/pusher/client/connection/b/b;->c:Lcom/pusher/client/a/a;

    new-instance v1, Lcom/pusher/client/connection/b/b$9;

    invoke-direct {v1, p0, p1}, Lcom/pusher/client/connection/b/b$9;-><init>(Lcom/pusher/client/connection/b/b;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Lcom/pusher/client/a/a;->queueOnEventThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onMessage(Ljava/lang/String;)V
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/pusher/client/connection/b/b;->d:Lcom/pusher/client/connection/b/b$a;

    invoke-virtual {v0}, Lcom/pusher/client/connection/b/b$a;->a()V

    .line 256
    iget-object v0, p0, Lcom/pusher/client/connection/b/b;->c:Lcom/pusher/client/a/a;

    new-instance v1, Lcom/pusher/client/connection/b/b$6;

    invoke-direct {v1, p0, p1}, Lcom/pusher/client/connection/b/b$6;-><init>(Lcom/pusher/client/connection/b/b;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/pusher/client/a/a;->queueOnEventThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onOpen(Lcom/pusher/java_websocket/c/h;)V
    .locals 0

    return-void
.end method

.method public sendMessage(Ljava/lang/String;)V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/pusher/client/connection/b/b;->c:Lcom/pusher/client/a/a;

    new-instance v1, Lcom/pusher/client/connection/b/b$3;

    invoke-direct {v1, p0, p1}, Lcom/pusher/client/connection/b/b$3;-><init>(Lcom/pusher/client/connection/b/b;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/pusher/client/a/a;->queueOnEventThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public unbind(Lcom/pusher/client/connection/ConnectionState;Lcom/pusher/client/connection/b;)Z
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/pusher/client/connection/b/b;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
