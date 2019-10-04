.class public final Lcom/koushikdutta/async/http/spdy/o;
.super Lcom/koushikdutta/async/http/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/http/spdy/o$a;,
        Lcom/koushikdutta/async/http/spdy/o$b;
    }
.end annotation


# static fields
.field private static final A:Lcom/koushikdutta/async/http/spdy/o$a;


# instance fields
.field o:Z

.field p:Ljava/lang/reflect/Field;

.field q:Ljava/lang/reflect/Field;

.field r:Ljava/lang/reflect/Field;

.field s:Ljava/lang/reflect/Field;

.field t:Ljava/lang/reflect/Field;

.field u:Ljava/lang/reflect/Field;

.field v:Ljava/lang/reflect/Field;

.field w:Ljava/lang/reflect/Method;

.field x:Ljava/lang/reflect/Method;

.field y:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/koushikdutta/async/http/spdy/o$b;",
            ">;"
        }
    .end annotation
.end field

.field z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 175
    new-instance v0, Lcom/koushikdutta/async/http/spdy/o$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/http/spdy/o$a;-><init>(B)V

    sput-object v0, Lcom/koushikdutta/async/http/spdy/o;->A:Lcom/koushikdutta/async/http/spdy/o$a;

    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/http/a;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/h;-><init>(Lcom/koushikdutta/async/http/a;)V

    .line 129
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/o;->y:Ljava/util/Hashtable;

    .line 43
    new-instance p1, Lcom/koushikdutta/async/http/spdy/o$1;

    invoke-direct {p1, p0}, Lcom/koushikdutta/async/http/spdy/o$1;-><init>(Lcom/koushikdutta/async/http/spdy/o;)V

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/spdy/o;->addEngineConfigurator(Lcom/koushikdutta/async/http/g;)V

    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/spdy/o;Lcom/koushikdutta/async/http/b$a;)Lcom/koushikdutta/async/b/a;
    .locals 0

    .line 40
    invoke-super {p0, p1}, Lcom/koushikdutta/async/http/h;->getSocket(Lcom/koushikdutta/async/http/b$a;)Lcom/koushikdutta/async/b/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/b$a;Lcom/koushikdutta/async/http/spdy/a;Lcom/koushikdutta/async/a/b;)V
    .locals 9

    .line 2255
    iget-object v0, p0, Lcom/koushikdutta/async/http/b$a;->request:Lcom/koushikdutta/async/http/d;

    .line 2257
    iget-object v1, p1, Lcom/koushikdutta/async/http/spdy/a;->g:Lcom/koushikdutta/async/http/Protocol;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/Protocol;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/koushikdutta/async/http/b$a;->protocol:Ljava/lang/String;

    .line 2259
    iget-object p0, p0, Lcom/koushikdutta/async/http/b$a;->request:Lcom/koushikdutta/async/http/d;

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/d;->getBody()Lcom/koushikdutta/async/http/a/a;

    move-result-object p0

    .line 2269
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2270
    new-instance v2, Lcom/koushikdutta/async/http/spdy/g;

    sget-object v3, Lcom/koushikdutta/async/http/spdy/g;->TARGET_METHOD:Lcom/koushikdutta/async/http/spdy/c;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/d;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/koushikdutta/async/http/spdy/g;-><init>(Lcom/koushikdutta/async/http/spdy/c;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2271
    new-instance v2, Lcom/koushikdutta/async/http/spdy/g;

    sget-object v3, Lcom/koushikdutta/async/http/spdy/g;->TARGET_PATH:Lcom/koushikdutta/async/http/spdy/c;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/d;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 3163
    invoke-virtual {v4}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/"

    if-nez v5, :cond_0

    move-object v5, v6

    goto :goto_0

    .line 3166
    :cond_0
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 3167
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3168
    :cond_1
    :goto_0
    invoke-virtual {v4}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 3169
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "?"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2271
    :cond_2
    invoke-direct {v2, v3, v5}, Lcom/koushikdutta/async/http/spdy/g;-><init>(Lcom/koushikdutta/async/http/spdy/c;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2272
    invoke-virtual {v0}, Lcom/koushikdutta/async/http/d;->getHeaders()Lcom/koushikdutta/async/http/n;

    move-result-object v2

    const-string v3, "Host"

    invoke-virtual {v2, v3}, Lcom/koushikdutta/async/http/n;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2273
    sget-object v3, Lcom/koushikdutta/async/http/Protocol;->SPDY_3:Lcom/koushikdutta/async/http/Protocol;

    iget-object v4, p1, Lcom/koushikdutta/async/http/spdy/a;->g:Lcom/koushikdutta/async/http/Protocol;

    if-ne v3, v4, :cond_3

    .line 2274
    new-instance v3, Lcom/koushikdutta/async/http/spdy/g;

    sget-object v4, Lcom/koushikdutta/async/http/spdy/g;->VERSION:Lcom/koushikdutta/async/http/spdy/c;

    const-string v5, "HTTP/1.1"

    invoke-direct {v3, v4, v5}, Lcom/koushikdutta/async/http/spdy/g;-><init>(Lcom/koushikdutta/async/http/spdy/c;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2275
    new-instance v3, Lcom/koushikdutta/async/http/spdy/g;

    sget-object v4, Lcom/koushikdutta/async/http/spdy/g;->TARGET_HOST:Lcom/koushikdutta/async/http/spdy/c;

    invoke-direct {v3, v4, v2}, Lcom/koushikdutta/async/http/spdy/g;-><init>(Lcom/koushikdutta/async/http/spdy/c;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2276
    :cond_3
    sget-object v3, Lcom/koushikdutta/async/http/Protocol;->HTTP_2:Lcom/koushikdutta/async/http/Protocol;

    iget-object v4, p1, Lcom/koushikdutta/async/http/spdy/a;->g:Lcom/koushikdutta/async/http/Protocol;

    if-ne v3, v4, :cond_7

    .line 2277
    new-instance v3, Lcom/koushikdutta/async/http/spdy/g;

    sget-object v4, Lcom/koushikdutta/async/http/spdy/g;->TARGET_AUTHORITY:Lcom/koushikdutta/async/http/spdy/c;

    invoke-direct {v3, v4, v2}, Lcom/koushikdutta/async/http/spdy/g;-><init>(Lcom/koushikdutta/async/http/spdy/c;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2281
    :goto_1
    new-instance v2, Lcom/koushikdutta/async/http/spdy/g;

    sget-object v3, Lcom/koushikdutta/async/http/spdy/g;->TARGET_SCHEME:Lcom/koushikdutta/async/http/spdy/c;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/d;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/koushikdutta/async/http/spdy/g;-><init>(Lcom/koushikdutta/async/http/spdy/c;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2283
    invoke-virtual {v0}, Lcom/koushikdutta/async/http/d;->getHeaders()Lcom/koushikdutta/async/http/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/n;->getMultiMap()Lcom/koushikdutta/async/http/s;

    move-result-object v2

    .line 2284
    invoke-virtual {v2}, Lcom/koushikdutta/async/http/s;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2285
    iget-object v5, p1, Lcom/koushikdutta/async/http/spdy/a;->g:Lcom/koushikdutta/async/http/Protocol;

    invoke-static {v5, v4}, Lcom/koushikdutta/async/http/spdy/p;->a(Lcom/koushikdutta/async/http/Protocol;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 2287
    invoke-virtual {v2, v4}, Lcom/koushikdutta/async/http/s;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2288
    new-instance v7, Lcom/koushikdutta/async/http/spdy/g;

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Lcom/koushikdutta/async/http/spdy/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2292
    :cond_5
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/koushikdutta/async/http/d;->logv(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_3

    :cond_6
    const/4 p0, 0x0

    .line 2293
    :goto_3
    invoke-virtual {p1, v1, p0, v0}, Lcom/koushikdutta/async/http/spdy/a;->newStream(Ljava/util/List;ZZ)Lcom/koushikdutta/async/http/spdy/a$a;

    move-result-object p0

    const/4 p1, 0x0

    .line 2294
    invoke-interface {p2, p1, p0}, Lcom/koushikdutta/async/a/b;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/j;)V

    return-void

    .line 2279
    :cond_7
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    goto :goto_5

    :goto_4
    throw p0

    :goto_5
    goto :goto_4
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/spdy/o;Ljava/lang/String;)V
    .locals 0

    .line 2178
    iget-object p0, p0, Lcom/koushikdutta/async/http/spdy/o;->y:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/koushikdutta/async/http/spdy/o$b;

    if-eqz p0, :cond_0

    .line 2180
    sget-object p1, Lcom/koushikdutta/async/http/spdy/o;->A:Lcom/koushikdutta/async/http/spdy/o$a;

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/spdy/o$b;->setComplete(Ljava/lang/Exception;)Z

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/spdy/o;Ljava/lang/String;Lcom/koushikdutta/async/a/b;Ljava/lang/Exception;Lcom/koushikdutta/async/e;)V
    .locals 0

    .line 1184
    iget-object p0, p0, Lcom/koushikdutta/async/http/spdy/o;->y:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/koushikdutta/async/http/spdy/o$b;

    if-eqz p0, :cond_0

    .line 1185
    iget-object p0, p0, Lcom/koushikdutta/async/http/spdy/o$b;->c:Lcom/koushikdutta/async/b/h;

    invoke-virtual {p0}, Lcom/koushikdutta/async/b/h;->setComplete()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1186
    :cond_0
    invoke-interface {p2, p3, p4}, Lcom/koushikdutta/async/a/b;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/j;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/spdy/o;Ljavax/net/ssl/SSLEngine;Lcom/koushikdutta/async/http/b$a;Ljava/lang/String;I)V
    .locals 7

    .line 1057
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/o;->o:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/o;->z:Z

    if-eqz v0, :cond_0

    .line 1058
    iput-boolean v2, p0, Lcom/koushikdutta/async/http/spdy/o;->o:Z

    .line 1060
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "peerHost"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/o;->p:Ljava/lang/reflect/Field;

    .line 1061
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "peerPort"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/o;->q:Ljava/lang/reflect/Field;

    .line 1062
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "sslParameters"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/o;->r:Ljava/lang/reflect/Field;

    .line 1063
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/o;->r:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "npnProtocols"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/o;->s:Ljava/lang/reflect/Field;

    .line 1064
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/o;->r:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "alpnProtocols"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/o;->t:Ljava/lang/reflect/Field;

    .line 1065
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/o;->r:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "useSni"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/o;->v:Ljava/lang/reflect/Field;

    .line 1066
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "sslNativePointer"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/o;->u:Ljava/lang/reflect/Field;

    .line 1067
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/o;->r:Ljava/lang/reflect/Field;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".NativeCrypto"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1068
    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/o;->r:Ljava/lang/reflect/Field;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v0, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "SSL_get_npn_negotiated_protocol"

    new-array v5, v2, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    .line 1069
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/koushikdutta/async/http/spdy/o;->w:Ljava/lang/reflect/Method;

    .line 1070
    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/o;->r:Ljava/lang/reflect/Field;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v0, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "SSL_get0_alpn_selected"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    .line 1071
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/o;->x:Ljava/lang/reflect/Method;

    .line 1073
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/o;->p:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1074
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/o;->q:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1075
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/o;->r:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1076
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/o;->s:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1077
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/o;->t:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1078
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/o;->v:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1079
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/o;->u:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1080
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/o;->w:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1081
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/o;->x:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 1084
    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/o;->r:Ljava/lang/reflect/Field;

    .line 1085
    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/o;->s:Ljava/lang/reflect/Field;

    .line 1086
    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/o;->t:Ljava/lang/reflect/Field;

    .line 1087
    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/o;->v:Ljava/lang/reflect/Field;

    .line 1088
    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/o;->u:Ljava/lang/reflect/Field;

    .line 1089
    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/o;->w:Ljava/lang/reflect/Method;

    .line 1090
    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/o;->x:Ljava/lang/reflect/Method;

    .line 1097
    :cond_0
    :goto_0
    invoke-static {p2}, Lcom/koushikdutta/async/http/spdy/o;->a(Lcom/koushikdutta/async/http/b$a;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1100
    iget-object p2, p0, Lcom/koushikdutta/async/http/spdy/o;->r:Ljava/lang/reflect/Field;

    if-eqz p2, :cond_1

    :try_start_1
    new-array p2, v2, [Lcom/koushikdutta/async/http/Protocol;

    .line 1102
    sget-object v0, Lcom/koushikdutta/async/http/Protocol;->SPDY_3:Lcom/koushikdutta/async/http/Protocol;

    aput-object v0, p2, v1

    invoke-static {p2}, Lcom/koushikdutta/async/http/spdy/o;->a([Lcom/koushikdutta/async/http/Protocol;)[B

    move-result-object p2

    .line 1106
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/o;->p:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1107
    iget-object p3, p0, Lcom/koushikdutta/async/http/spdy/o;->q:Ljava/lang/reflect/Field;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, p1, p4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1108
    iget-object p3, p0, Lcom/koushikdutta/async/http/spdy/o;->r:Ljava/lang/reflect/Field;

    invoke-virtual {p3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1110
    iget-object p3, p0, Lcom/koushikdutta/async/http/spdy/o;->t:Ljava/lang/reflect/Field;

    invoke-virtual {p3, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1111
    iget-object p0, p0, Lcom/koushikdutta/async/http/spdy/o;->v:Ljava/lang/reflect/Field;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p0

    .line 1114
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method

.method private static a(Lcom/koushikdutta/async/http/b$a;)Z
    .locals 0

    .line 301
    iget-object p0, p0, Lcom/koushikdutta/async/http/b$a;->request:Lcom/koushikdutta/async/http/d;

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/d;->getBody()Lcom/koushikdutta/async/http/a/a;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static varargs a([Lcom/koushikdutta/async/http/Protocol;)[B
    .locals 5

    const/16 v0, 0x2000

    .line 151
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-gtz v2, :cond_1

    .line 152
    aget-object v3, p0, v1

    .line 153
    sget-object v4, Lcom/koushikdutta/async/http/Protocol;->HTTP_1_0:Lcom/koushikdutta/async/http/Protocol;

    if-eq v3, v4, :cond_0

    .line 154
    invoke-virtual {v3}, Lcom/koushikdutta/async/http/Protocol;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    int-to-byte v4, v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 155
    invoke-virtual {v3}, Lcom/koushikdutta/async/http/Protocol;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/koushikdutta/async/e/b;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 157
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 158
    new-instance p0, Lcom/koushikdutta/async/l;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/nio/ByteBuffer;

    aput-object v0, v2, v1

    invoke-direct {p0, v2}, Lcom/koushikdutta/async/l;-><init>([Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0}, Lcom/koushikdutta/async/l;->getAllByteArray()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final createHandshakeCallback(Lcom/koushikdutta/async/http/b$a;Lcom/koushikdutta/async/a/b;)Lcom/koushikdutta/async/f$a;
    .locals 2

    .line 191
    iget-object v0, p1, Lcom/koushikdutta/async/http/b$a;->state:Lcom/koushikdutta/async/e/i;

    const-string v1, "spdykey"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/e/i;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 193
    invoke-super {p0, p1, p2}, Lcom/koushikdutta/async/http/h;->createHandshakeCallback(Lcom/koushikdutta/async/http/b$a;Lcom/koushikdutta/async/a/b;)Lcom/koushikdutta/async/f$a;

    move-result-object p1

    return-object p1

    .line 195
    :cond_0
    new-instance v1, Lcom/koushikdutta/async/http/spdy/o$2;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/koushikdutta/async/http/spdy/o$2;-><init>(Lcom/koushikdutta/async/http/spdy/o;Lcom/koushikdutta/async/http/b$a;Ljava/lang/String;Lcom/koushikdutta/async/a/b;)V

    return-object v1
.end method

.method public final exchangeHeaders(Lcom/koushikdutta/async/http/b$c;)Z
    .locals 3

    .line 397
    iget-object v0, p1, Lcom/koushikdutta/async/http/b$c;->socket:Lcom/koushikdutta/async/j;

    instance-of v0, v0, Lcom/koushikdutta/async/http/spdy/a$a;

    if-nez v0, :cond_0

    .line 398
    invoke-super {p0, p1}, Lcom/koushikdutta/async/http/h;->exchangeHeaders(Lcom/koushikdutta/async/http/b$c;)Z

    move-result p1

    return p1

    .line 400
    :cond_0
    iget-object v0, p1, Lcom/koushikdutta/async/http/b$c;->request:Lcom/koushikdutta/async/http/d;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/d;->getBody()Lcom/koushikdutta/async/http/a/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 402
    iget-object v0, p1, Lcom/koushikdutta/async/http/b$c;->response:Lcom/koushikdutta/async/http/b$h;

    iget-object v1, p1, Lcom/koushikdutta/async/http/b$c;->socket:Lcom/koushikdutta/async/j;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/http/b$h;->sink(Lcom/koushikdutta/async/q;)Lcom/koushikdutta/async/http/b$h;

    .line 406
    :cond_1
    iget-object v0, p1, Lcom/koushikdutta/async/http/b$c;->sendHeadersCallback:Lcom/koushikdutta/async/a/a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/a/a;->onCompleted(Ljava/lang/Exception;)V

    .line 408
    iget-object v0, p1, Lcom/koushikdutta/async/http/b$c;->socket:Lcom/koushikdutta/async/j;

    check-cast v0, Lcom/koushikdutta/async/http/spdy/a$a;

    .line 409
    invoke-virtual {v0}, Lcom/koushikdutta/async/http/spdy/a$a;->headers()Lcom/koushikdutta/async/b/i;

    move-result-object v1

    new-instance v2, Lcom/koushikdutta/async/http/spdy/o$6;

    invoke-direct {v2, p0, p1}, Lcom/koushikdutta/async/http/spdy/o$6;-><init>(Lcom/koushikdutta/async/http/spdy/o;Lcom/koushikdutta/async/http/b$c;)V

    .line 410
    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/b/i;->then(Lcom/koushikdutta/async/b/f;)Lcom/koushikdutta/async/b/f;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/http/spdy/o$6;

    new-instance v2, Lcom/koushikdutta/async/http/spdy/o$5;

    invoke-direct {v2, p0, p1, v0}, Lcom/koushikdutta/async/http/spdy/o$5;-><init>(Lcom/koushikdutta/async/http/spdy/o;Lcom/koushikdutta/async/http/b$c;Lcom/koushikdutta/async/http/spdy/a$a;)V

    .line 429
    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/http/spdy/o$6;->setCallback(Lcom/koushikdutta/async/b/f;)Lcom/koushikdutta/async/b/i;

    const/4 p1, 0x1

    return p1
.end method

.method public final getSocket(Lcom/koushikdutta/async/http/b$a;)Lcom/koushikdutta/async/b/a;
    .locals 4

    .line 329
    iget-object v0, p1, Lcom/koushikdutta/async/http/b$a;->request:Lcom/koushikdutta/async/http/d;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/d;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 330
    iget-object v1, p1, Lcom/koushikdutta/async/http/b$a;->request:Lcom/koushikdutta/async/http/d;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/d;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/http/spdy/o;->getSchemePort(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    return-object v2

    .line 335
    :cond_0
    iget-boolean v3, p0, Lcom/koushikdutta/async/http/spdy/o;->z:Z

    if-nez v3, :cond_1

    .line 336
    invoke-super {p0, p1}, Lcom/koushikdutta/async/http/h;->getSocket(Lcom/koushikdutta/async/http/b$a;)Lcom/koushikdutta/async/b/a;

    move-result-object p1

    return-object p1

    .line 341
    :cond_1
    invoke-static {p1}, Lcom/koushikdutta/async/http/spdy/o;->a(Lcom/koushikdutta/async/http/b$a;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 342
    invoke-super {p0, p1}, Lcom/koushikdutta/async/http/h;->getSocket(Lcom/koushikdutta/async/http/b$a;)Lcom/koushikdutta/async/b/a;

    move-result-object p1

    return-object p1

    .line 345
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 346
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/o;->y:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/http/spdy/o$b;

    if-eqz v1, :cond_4

    .line 348
    invoke-virtual {v1}, Lcom/koushikdutta/async/http/spdy/o$b;->tryGetException()Ljava/lang/Exception;

    move-result-object v3

    instance-of v3, v3, Lcom/koushikdutta/async/http/spdy/o$a;

    if-eqz v3, :cond_3

    .line 349
    invoke-super {p0, p1}, Lcom/koushikdutta/async/http/h;->getSocket(Lcom/koushikdutta/async/http/b$a;)Lcom/koushikdutta/async/b/a;

    move-result-object p1

    return-object p1

    .line 352
    :cond_3
    invoke-virtual {v1}, Lcom/koushikdutta/async/http/spdy/o$b;->tryGet()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/spdy/o$b;->tryGet()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/koushikdutta/async/http/spdy/a;

    iget-object v3, v3, Lcom/koushikdutta/async/http/spdy/a;->a:Lcom/koushikdutta/async/j;

    invoke-interface {v3}, Lcom/koushikdutta/async/j;->isOpen()Z

    move-result v3

    if-nez v3, :cond_4

    .line 354
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/o;->y:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v2

    :cond_4
    if-nez v1, :cond_7

    .line 361
    iget-object v1, p1, Lcom/koushikdutta/async/http/b$a;->state:Lcom/koushikdutta/async/e/i;

    const-string v2, "spdykey"

    invoke-virtual {v1, v2, v0}, Lcom/koushikdutta/async/e/i;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 363
    invoke-super {p0, p1}, Lcom/koushikdutta/async/http/h;->getSocket(Lcom/koushikdutta/async/http/b$a;)Lcom/koushikdutta/async/b/a;

    move-result-object p1

    .line 364
    invoke-interface {p1}, Lcom/koushikdutta/async/b/a;->isDone()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-interface {p1}, Lcom/koushikdutta/async/b/a;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    .line 366
    :cond_5
    new-instance p1, Lcom/koushikdutta/async/http/spdy/o$b;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lcom/koushikdutta/async/http/spdy/o$b;-><init>(B)V

    .line 367
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/o;->y:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    iget-object p1, p1, Lcom/koushikdutta/async/http/spdy/o$b;->c:Lcom/koushikdutta/async/b/h;

    :cond_6
    :goto_0
    return-object p1

    .line 371
    :cond_7
    iget-object v0, p1, Lcom/koushikdutta/async/http/b$a;->request:Lcom/koushikdutta/async/http/d;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "waiting for potential spdy connection for host: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/koushikdutta/async/http/b$a;->request:Lcom/koushikdutta/async/http/d;

    invoke-virtual {v3}, Lcom/koushikdutta/async/http/d;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/koushikdutta/async/http/d;->logv(Ljava/lang/String;)V

    .line 372
    new-instance v0, Lcom/koushikdutta/async/b/h;

    invoke-direct {v0}, Lcom/koushikdutta/async/b/h;-><init>()V

    .line 373
    new-instance v2, Lcom/koushikdutta/async/http/spdy/o$4;

    invoke-direct {v2, p0, p1, v0}, Lcom/koushikdutta/async/http/spdy/o$4;-><init>(Lcom/koushikdutta/async/http/spdy/o;Lcom/koushikdutta/async/http/b$a;Lcom/koushikdutta/async/b/h;)V

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/http/spdy/o$b;->setCallback(Lcom/koushikdutta/async/b/f;)Lcom/koushikdutta/async/b/g;

    return-object v0
.end method

.method public final getSpdyEnabled()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/o;->z:Z

    return v0
.end method

.method public final onRequestSent(Lcom/koushikdutta/async/http/b$f;)V
    .locals 1

    .line 442
    iget-object v0, p1, Lcom/koushikdutta/async/http/b$f;->socket:Lcom/koushikdutta/async/j;

    instance-of v0, v0, Lcom/koushikdutta/async/http/spdy/a$a;

    if-nez v0, :cond_0

    return-void

    .line 445
    :cond_0
    iget-object v0, p1, Lcom/koushikdutta/async/http/b$f;->request:Lcom/koushikdutta/async/http/d;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/d;->getBody()Lcom/koushikdutta/async/http/a/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 446
    iget-object p1, p1, Lcom/koushikdutta/async/http/b$f;->response:Lcom/koushikdutta/async/http/b$h;

    invoke-interface {p1}, Lcom/koushikdutta/async/http/b$h;->sink()Lcom/koushikdutta/async/q;

    move-result-object p1

    invoke-interface {p1}, Lcom/koushikdutta/async/q;->end()V

    :cond_1
    return-void
.end method

.method public final setSSLContext(Ljavax/net/ssl/SSLContext;)V
    .locals 0

    .line 146
    invoke-super {p0, p1}, Lcom/koushikdutta/async/http/h;->setSSLContext(Ljavax/net/ssl/SSLContext;)V

    const/4 p1, 0x0

    .line 147
    iput-boolean p1, p0, Lcom/koushikdutta/async/http/spdy/o;->o:Z

    return-void
.end method

.method public final setSpdyEnabled(Z)V
    .locals 0

    .line 141
    iput-boolean p1, p0, Lcom/koushikdutta/async/http/spdy/o;->z:Z

    return-void
.end method

.method public final wrapCallback(Lcom/koushikdutta/async/http/b$a;Landroid/net/Uri;IZLcom/koushikdutta/async/a/b;)Lcom/koushikdutta/async/a/b;
    .locals 0

    .line 306
    invoke-super/range {p0 .. p5}, Lcom/koushikdutta/async/http/h;->wrapCallback(Lcom/koushikdutta/async/http/b$a;Landroid/net/Uri;IZLcom/koushikdutta/async/a/b;)Lcom/koushikdutta/async/a/b;

    move-result-object p2

    .line 307
    iget-object p1, p1, Lcom/koushikdutta/async/http/b$a;->state:Lcom/koushikdutta/async/e/i;

    const-string p3, "spdykey"

    invoke-virtual {p1, p3}, Lcom/koushikdutta/async/e/i;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    return-object p2

    .line 312
    :cond_0
    new-instance p3, Lcom/koushikdutta/async/http/spdy/o$3;

    invoke-direct {p3, p0, p1, p2}, Lcom/koushikdutta/async/http/spdy/o$3;-><init>(Lcom/koushikdutta/async/http/spdy/o;Ljava/lang/String;Lcom/koushikdutta/async/a/b;)V

    return-object p3
.end method
