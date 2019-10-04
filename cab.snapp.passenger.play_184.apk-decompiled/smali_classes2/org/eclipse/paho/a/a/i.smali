.class public Lorg/eclipse/paho/a/a/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/paho/a/a/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/paho/a/a/i$a;,
        Lorg/eclipse/paho/a/a/i$b;,
        Lorg/eclipse/paho/a/a/i$c;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;

.field private static l:I

.field private static n:Ljava/lang/Object;


# instance fields
.field protected a:Lorg/eclipse/paho/a/a/a/a;

.field private c:Lorg/eclipse/paho/a/a/b/b;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Hashtable;

.field private g:Lorg/eclipse/paho/a/a/m;

.field private h:Lorg/eclipse/paho/a/a/j;

.field private i:Lorg/eclipse/paho/a/a/n;

.field private j:Ljava/lang/Object;

.field private k:Ljava/util/Timer;

.field private m:Z

.field private o:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 94
    const-class v0, Lorg/eclipse/paho/a/a/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/a/a/i;->b:Ljava/lang/String;

    const/16 v0, 0x3e8

    .line 111
    sput v0, Lorg/eclipse/paho/a/a/i;->l:I

    .line 114
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/eclipse/paho/a/a/i;->n:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 210
    new-instance v0, Lorg/eclipse/paho/a/a/c/b;

    invoke-direct {v0}, Lorg/eclipse/paho/a/a/c/b;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/paho/a/a/i;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/paho/a/a/m;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/paho/a/a/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 315
    new-instance v0, Lorg/eclipse/paho/a/a/y;

    invoke-direct {v0}, Lorg/eclipse/paho/a/a/y;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/eclipse/paho/a/a/i;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/paho/a/a/m;Lorg/eclipse/paho/a/a/t;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/paho/a/a/m;Lorg/eclipse/paho/a/a/t;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 320
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/paho/a/a/i;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/paho/a/a/m;Lorg/eclipse/paho/a/a/t;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/paho/a/a/m;Lorg/eclipse/paho/a/a/t;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    sget-object v0, Lorg/eclipse/paho/a/a/i;->b:Ljava/lang/String;

    const-string v1, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    invoke-static {v1, v0}, Lorg/eclipse/paho/a/a/b/c;->getLogger(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/a/a/b/b;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/paho/a/a/i;->c:Lorg/eclipse/paho/a/a/b/b;

    const/4 v0, 0x0

    .line 113
    iput-boolean v0, p0, Lorg/eclipse/paho/a/a/i;->m:Z

    .line 438
    iget-object v1, p0, Lorg/eclipse/paho/a/a/i;->c:Lorg/eclipse/paho/a/a/b/b;

    invoke-interface {v1, p2}, Lorg/eclipse/paho/a/a/b/b;->setResourceName(Ljava/lang/String;)V

    if-eqz p2, :cond_5

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 445
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-lt v1, v3, :cond_2

    const v1, 0xffff

    if-gt v2, v1, :cond_1

    .line 454
    invoke-static {p1}, Lorg/eclipse/paho/a/a/a/o;->validateURI(Ljava/lang/String;)V

    .line 456
    iput-object p1, p0, Lorg/eclipse/paho/a/a/i;->e:Ljava/lang/String;

    .line 457
    iput-object p2, p0, Lorg/eclipse/paho/a/a/i;->d:Ljava/lang/String;

    .line 459
    iput-object p3, p0, Lorg/eclipse/paho/a/a/i;->g:Lorg/eclipse/paho/a/a/m;

    .line 460
    iget-object v1, p0, Lorg/eclipse/paho/a/a/i;->g:Lorg/eclipse/paho/a/a/m;

    if-nez v1, :cond_0

    .line 461
    new-instance v1, Lorg/eclipse/paho/a/a/c/a;

    invoke-direct {v1}, Lorg/eclipse/paho/a/a/c/a;-><init>()V

    iput-object v1, p0, Lorg/eclipse/paho/a/a/i;->g:Lorg/eclipse/paho/a/a/m;

    .line 464
    :cond_0
    iput-object p5, p0, Lorg/eclipse/paho/a/a/i;->o:Ljava/util/concurrent/ScheduledExecutorService;

    .line 467
    iget-object p5, p0, Lorg/eclipse/paho/a/a/i;->c:Lorg/eclipse/paho/a/a/b/b;

    sget-object v1, Lorg/eclipse/paho/a/a/i;->b:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v0

    aput-object p1, v2, v4

    const/4 v0, 0x2

    aput-object p3, v2, v0

    const-string p3, "MqttAsyncClient"

    const-string v0, "101"

    invoke-interface {p5, v1, p3, v0, v2}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 469
    iget-object p3, p0, Lorg/eclipse/paho/a/a/i;->g:Lorg/eclipse/paho/a/a/m;

    invoke-interface {p3, p2, p1}, Lorg/eclipse/paho/a/a/m;->open(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    new-instance p1, Lorg/eclipse/paho/a/a/a/a;

    iget-object p2, p0, Lorg/eclipse/paho/a/a/i;->g:Lorg/eclipse/paho/a/a/m;

    iget-object p3, p0, Lorg/eclipse/paho/a/a/i;->o:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {p1, p0, p2, p4, p3}, Lorg/eclipse/paho/a/a/a/a;-><init>(Lorg/eclipse/paho/a/a/d;Lorg/eclipse/paho/a/a/m;Lorg/eclipse/paho/a/a/t;Ljava/util/concurrent/ExecutorService;)V

    iput-object p1, p0, Lorg/eclipse/paho/a/a/i;->a:Lorg/eclipse/paho/a/a/a/a;

    .line 471
    iget-object p1, p0, Lorg/eclipse/paho/a/a/i;->g:Lorg/eclipse/paho/a/a/m;

    invoke-interface {p1}, Lorg/eclipse/paho/a/a/m;->close()V

    .line 472
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Lorg/eclipse/paho/a/a/i;->f:Ljava/util/Hashtable;

    return-void

    .line 451
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ClientId longer than 65535 characters"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 446
    :cond_2
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const v5, 0xd800

    if-lt v3, v5, :cond_3

    const v5, 0xdbff

    if-gt v3, v5, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_4

    add-int/lit8 v1, v1, 0x1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v4

    goto :goto_0

    .line 441
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null clientId"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 94
    sget-object v0, Lorg/eclipse/paho/a/a/i;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lorg/eclipse/paho/a/a/i;)Lorg/eclipse/paho/a/a/b/b;
    .locals 0

    .line 95
    iget-object p0, p0, Lorg/eclipse/paho/a/a/i;->c:Lorg/eclipse/paho/a/a/b/b;

    return-object p0
.end method

.method private a([Ljava/lang/String;[ILjava/lang/Object;Lorg/eclipse/paho/a/a/c;)Lorg/eclipse/paho/a/a/h;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 945
    iget-object v0, p0, Lorg/eclipse/paho/a/a/i;->c:Lorg/eclipse/paho/a/a/b/b;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lorg/eclipse/paho/a/a/b/b;->isLoggable(I)Z

    move-result v0

    const-string v1, "subscribe"

    if-eqz v0, :cond_2

    .line 946
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 947
    :goto_0
    array-length v4, p1

    if-lt v3, v4, :cond_0

    .line 954
    iget-object v3, p0, Lorg/eclipse/paho/a/a/i;->c:Lorg/eclipse/paho/a/a/b/b;

    sget-object v4, Lorg/eclipse/paho/a/a/i;->b:Ljava/lang/String;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    const/4 v0, 0x1

    aput-object p3, v5, v0

    const/4 v0, 0x2

    aput-object p4, v5, v0

    const-string v0, "106"

    invoke-interface {v3, v4, v1, v0, v5}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    if-lez v3, :cond_1

    const-string v4, ", "

    .line 949
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    const-string v4, "topic="

    .line 951
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v4, p1, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, " qos="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget v4, p2, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 957
    :cond_2
    :goto_1
    new-instance v0, Lorg/eclipse/paho/a/a/v;

    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/i;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/eclipse/paho/a/a/v;-><init>(Ljava/lang/String;)V

    .line 958
    invoke-virtual {v0, p4}, Lorg/eclipse/paho/a/a/v;->setActionCallback(Lorg/eclipse/paho/a/a/c;)V

    .line 959
    invoke-virtual {v0, p3}, Lorg/eclipse/paho/a/a/v;->setUserContext(Ljava/lang/Object;)V

    .line 960
    iget-object p3, v0, Lorg/eclipse/paho/a/a/v;->internalTok:Lorg/eclipse/paho/a/a/a/q;

    invoke-virtual {p3, p1}, Lorg/eclipse/paho/a/a/a/q;->setTopics([Ljava/lang/String;)V

    .line 962
    new-instance p3, Lorg/eclipse/paho/a/a/a/a/r;

    invoke-direct {p3, p1, p2}, Lorg/eclipse/paho/a/a/a/a/r;-><init>([Ljava/lang/String;[I)V

    .line 964
    iget-object p1, p0, Lorg/eclipse/paho/a/a/i;->a:Lorg/eclipse/paho/a/a/a/a;

    invoke-virtual {p1, p3, v0}, Lorg/eclipse/paho/a/a/a/a;->sendNoWait(Lorg/eclipse/paho/a/a/a/a/u;Lorg/eclipse/paho/a/a/v;)V

    .line 966
    iget-object p1, p0, Lorg/eclipse/paho/a/a/i;->c:Lorg/eclipse/paho/a/a/b/b;

    sget-object p2, Lorg/eclipse/paho/a/a/i;->b:Ljava/lang/String;

    const-string p3, "109"

    invoke-interface {p1, p2, v1, p3}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic a(I)V
    .locals 0

    .line 111
    sput p0, Lorg/eclipse/paho/a/a/i;->l:I

    return-void
.end method

.method private a(Ljava/lang/String;Lorg/eclipse/paho/a/a/n;)[Lorg/eclipse/paho/a/a/a/n;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;,
            Lorg/eclipse/paho/a/a/u;
        }
    .end annotation

    .line 503
    iget-object v0, p0, Lorg/eclipse/paho/a/a/i;->c:Lorg/eclipse/paho/a/a/b/b;

    sget-object v1, Lorg/eclipse/paho/a/a/i;->b:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string v5, "createNetworkModules"

    const-string v6, "116"

    invoke-interface {v0, v1, v5, v6, v3}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 506
    invoke-virtual {p2}, Lorg/eclipse/paho/a/a/n;->getServerURIs()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-array v0, v2, [Ljava/lang/String;

    aput-object p1, v0, v4

    goto :goto_0

    .line 510
    :cond_0
    array-length v1, v0

    if-nez v1, :cond_1

    new-array v0, v2, [Ljava/lang/String;

    aput-object p1, v0, v4

    .line 516
    :cond_1
    :goto_0
    array-length p1, v0

    new-array p1, p1, [Lorg/eclipse/paho/a/a/a/n;

    const/4 v1, 0x0

    .line 517
    :goto_1
    array-length v3, v0

    if-lt v1, v3, :cond_2

    .line 521
    iget-object p2, p0, Lorg/eclipse/paho/a/a/i;->c:Lorg/eclipse/paho/a/a/b/b;

    sget-object v0, Lorg/eclipse/paho/a/a/i;->b:Ljava/lang/String;

    const-string v1, "108"

    invoke-interface {p2, v0, v5, v1}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 518
    :cond_2
    aget-object v3, v0, v1

    .line 2536
    iget-object v6, p0, Lorg/eclipse/paho/a/a/i;->c:Lorg/eclipse/paho/a/a/b/b;

    sget-object v7, Lorg/eclipse/paho/a/a/i;->b:Ljava/lang/String;

    new-array v8, v2, [Ljava/lang/Object;

    aput-object v3, v8, v4

    const-string v9, "createNetworkModule"

    const-string v10, "115"

    invoke-interface {v6, v7, v9, v10, v8}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2539
    iget-object v6, p0, Lorg/eclipse/paho/a/a/i;->d:Ljava/lang/String;

    invoke-static {v3, p2, v6}, Lorg/eclipse/paho/a/a/a/o;->createInstance(Ljava/lang/String;Lorg/eclipse/paho/a/a/n;Ljava/lang/String;)Lorg/eclipse/paho/a/a/a/n;

    move-result-object v3

    .line 518
    aput-object v3, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method static synthetic b()I
    .locals 1

    .line 111
    sget v0, Lorg/eclipse/paho/a/a/i;->l:I

    return v0
.end method

.method static synthetic b(Lorg/eclipse/paho/a/a/i;)V
    .locals 0

    .line 1299
    invoke-direct {p0}, Lorg/eclipse/paho/a/a/i;->d()V

    return-void
.end method

.method static synthetic c()Ljava/lang/Object;
    .locals 1

    .line 114
    sget-object v0, Lorg/eclipse/paho/a/a/i;->n:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lorg/eclipse/paho/a/a/i;)V
    .locals 1

    const/4 v0, 0x1

    .line 113
    iput-boolean v0, p0, Lorg/eclipse/paho/a/a/i;->m:Z

    return-void
.end method

.method private d()V
    .locals 7

    .line 1302
    iget-object v0, p0, Lorg/eclipse/paho/a/a/i;->c:Lorg/eclipse/paho/a/a/b/b;

    sget-object v1, Lorg/eclipse/paho/a/a/i;->b:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/eclipse/paho/a/a/i;->d:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "attemptReconnect"

    const-string v4, "500"

    invoke-interface {v0, v1, v3, v4, v2}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1304
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/paho/a/a/i;->i:Lorg/eclipse/paho/a/a/n;

    iget-object v1, p0, Lorg/eclipse/paho/a/a/i;->j:Ljava/lang/Object;

    new-instance v2, Lorg/eclipse/paho/a/a/i$a;

    invoke-direct {v2, p0, v3}, Lorg/eclipse/paho/a/a/i$a;-><init>(Lorg/eclipse/paho/a/a/i;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1, v2}, Lorg/eclipse/paho/a/a/i;->connect(Lorg/eclipse/paho/a/a/n;Ljava/lang/Object;Lorg/eclipse/paho/a/a/c;)Lorg/eclipse/paho/a/a/h;
    :try_end_0
    .catch Lorg/eclipse/paho/a/a/u; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/eclipse/paho/a/a/p; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object v6, v0

    .line 1310
    iget-object v1, p0, Lorg/eclipse/paho/a/a/i;->c:Lorg/eclipse/paho/a/a/b/b;

    sget-object v2, Lorg/eclipse/paho/a/a/i;->b:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "attemptReconnect"

    const-string v4, "804"

    invoke-interface/range {v1 .. v6}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void

    :catch_1
    move-exception v0

    move-object v6, v0

    .line 1307
    iget-object v1, p0, Lorg/eclipse/paho/a/a/i;->c:Lorg/eclipse/paho/a/a/b/b;

    sget-object v2, Lorg/eclipse/paho/a/a/i;->b:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "attemptReconnect"

    const-string v4, "804"

    invoke-interface/range {v1 .. v6}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic d(Lorg/eclipse/paho/a/a/i;)V
    .locals 7

    .line 3317
    iget-object v0, p0, Lorg/eclipse/paho/a/a/i;->c:Lorg/eclipse/paho/a/a/b/b;

    sget-object v1, Lorg/eclipse/paho/a/a/i;->b:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/eclipse/paho/a/a/i;->d:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget v3, Lorg/eclipse/paho/a/a/i;->l:I

    int-to-long v5, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "startReconnectCycle"

    const-string v5, "503"

    invoke-interface {v0, v1, v3, v5, v2}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3318
    new-instance v0, Ljava/util/Timer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MQTT Reconnect: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/eclipse/paho/a/a/i;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/paho/a/a/i;->k:Ljava/util/Timer;

    .line 3319
    iget-object v0, p0, Lorg/eclipse/paho/a/a/i;->k:Ljava/util/Timer;

    new-instance v1, Lorg/eclipse/paho/a/a/i$c;

    invoke-direct {v1, p0, v4}, Lorg/eclipse/paho/a/a/i$c;-><init>(Lorg/eclipse/paho/a/a/i;B)V

    sget p0, Lorg/eclipse/paho/a/a/i;->l:I

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method private e()V
    .locals 5

    .line 1325
    iget-object v0, p0, Lorg/eclipse/paho/a/a/i;->c:Lorg/eclipse/paho/a/a/b/b;

    sget-object v1, Lorg/eclipse/paho/a/a/i;->b:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/eclipse/paho/a/a/i;->d:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "stopReconnectCycle"

    const-string v4, "504"

    invoke-interface {v0, v1, v3, v4, v2}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1326
    sget-object v0, Lorg/eclipse/paho/a/a/i;->n:Ljava/lang/Object;

    monitor-enter v0

    .line 1327
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/a/a/i;->i:Lorg/eclipse/paho/a/a/n;

    invoke-virtual {v1}, Lorg/eclipse/paho/a/a/n;->isAutomaticReconnect()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1328
    iget-object v1, p0, Lorg/eclipse/paho/a/a/i;->k:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 1329
    iget-object v1, p0, Lorg/eclipse/paho/a/a/i;->k:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    const/4 v1, 0x0

    .line 1330
    iput-object v1, p0, Lorg/eclipse/paho/a/a/i;->k:Ljava/util/Timer;

    :cond_0
    const/16 v1, 0x3e8

    .line 1332
    sput v1, Lorg/eclipse/paho/a/a/i;->l:I

    .line 1326
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic e(Lorg/eclipse/paho/a/a/i;)V
    .locals 0

    .line 1322
    invoke-direct {p0}, Lorg/eclipse/paho/a/a/i;->e()V

    return-void
.end method

.method static synthetic f(Lorg/eclipse/paho/a/a/i;)Lorg/eclipse/paho/a/a/n;
    .locals 0

    .line 108
    iget-object p0, p0, Lorg/eclipse/paho/a/a/i;->i:Lorg/eclipse/paho/a/a/n;

    return-object p0
.end method

.method static synthetic g(Lorg/eclipse/paho/a/a/i;)Ljava/lang/String;
    .locals 0

    .line 102
    iget-object p0, p0, Lorg/eclipse/paho/a/a/i;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static generateClientId()Ljava/lang/String;
    .locals 3

    .line 1174
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "paho"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lorg/eclipse/paho/a/a/i;)Ljava/util/Timer;
    .locals 0

    .line 110
    iget-object p0, p0, Lorg/eclipse/paho/a/a/i;->k:Ljava/util/Timer;

    return-object p0
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Lorg/eclipse/paho/a/a/w;
    .locals 2

    const/4 v0, 0x0

    .line 852
    invoke-static {p1, v0}, Lorg/eclipse/paho/a/a/w;->validate(Ljava/lang/String;Z)V

    .line 854
    iget-object v0, p0, Lorg/eclipse/paho/a/a/i;->f:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/paho/a/a/w;

    if-nez v0, :cond_0

    .line 856
    new-instance v0, Lorg/eclipse/paho/a/a/w;

    iget-object v1, p0, Lorg/eclipse/paho/a/a/i;->a:Lorg/eclipse/paho/a/a/a/a;

    invoke-direct {v0, p1, v1}, Lorg/eclipse/paho/a/a/w;-><init>(Ljava/lang/String;Lorg/eclipse/paho/a/a/a/a;)V

    .line 857
    iget-object v1, p0, Lorg/eclipse/paho/a/a/i;->f:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public checkPing(Ljava/lang/Object;Lorg/eclipse/paho/a/a/c;)Lorg/eclipse/paho/a/a/h;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 875
    iget-object p1, p0, Lorg/eclipse/paho/a/a/i;->c:Lorg/eclipse/paho/a/a/b/b;

    sget-object v0, Lorg/eclipse/paho/a/a/i;->b:Ljava/lang/String;

    const-string v1, "ping"

    const-string v2, "117"

    invoke-interface {p1, v0, v1, v2}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    iget-object p1, p0, Lorg/eclipse/paho/a/a/i;->a:Lorg/eclipse/paho/a/a/a/a;

    invoke-virtual {p1, p2}, Lorg/eclipse/paho/a/a/a/a;->checkForActivity(Lorg/eclipse/paho/a/a/c;)Lorg/eclipse/paho/a/a/v;

    move-result-object p1

    .line 879
    iget-object p2, p0, Lorg/eclipse/paho/a/a/i;->c:Lorg/eclipse/paho/a/a/b/b;

    sget-object v0, Lorg/eclipse/paho/a/a/i;->b:Ljava/lang/String;

    const-string v2, "118"

    invoke-interface {p2, v0, v1, v2}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1479
    invoke-virtual {p0, v0}, Lorg/eclipse/paho/a/a/i;->close(Z)V

    return-void
.end method

.method public close(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 1490
    iget-object v0, p0, Lorg/eclipse/paho/a/a/i;->c:Lorg/eclipse/paho/a/a/b/b;

    sget-object v1, Lorg/eclipse/paho/a/a/i;->b:Ljava/lang/String;

    const-string v2, "close"

    const-string v3, "113"

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    iget-object v0, p0, Lorg/eclipse/paho/a/a/i;->a:Lorg/eclipse/paho/a/a/a/a;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/a/a/a/a;->close(Z)V

    .line 1493
    iget-object p1, p0, Lorg/eclipse/paho/a/a/i;->c:Lorg/eclipse/paho/a/a/b/b;

    sget-object v0, Lorg/eclipse/paho/a/a/i;->b:Ljava/lang/String;

    const-string v1, "114"

    invoke-interface {p1, v0, v2, v1}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public connect()Lorg/eclipse/paho/a/a/h;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;,
            Lorg/eclipse/paho/a/a/u;
        }
    .end annotation

    const/4 v0, 0x0

    .line 573
    invoke-virtual {p0, v0, v0}, Lorg/eclipse/paho/a/a/i;->connect(Ljava/lang/Object;Lorg/eclipse/paho/a/a/c;)Lorg/eclipse/paho/a/a/h;

    move-result-object v0

    return-object v0
.end method

.method public connect(Ljava/lang/Object;Lorg/eclipse/paho/a/a/c;)Lorg/eclipse/paho/a/a/h;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;,
            Lorg/eclipse/paho/a/a/u;
        }
    .end annotation

    .line 564
    new-instance v0, Lorg/eclipse/paho/a/a/n;

    invoke-direct {v0}, Lorg/eclipse/paho/a/a/n;-><init>()V

    invoke-virtual {p0, v0, p1, p2}, Lorg/eclipse/paho/a/a/i;->connect(Lorg/eclipse/paho/a/a/n;Ljava/lang/Object;Lorg/eclipse/paho/a/a/c;)Lorg/eclipse/paho/a/a/h;

    move-result-object p1

    return-object p1
.end method

.method public connect(Lorg/eclipse/paho/a/a/n;)Lorg/eclipse/paho/a/a/h;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;,
            Lorg/eclipse/paho/a/a/u;
        }
    .end annotation

    const/4 v0, 0x0

    .line 584
    invoke-virtual {p0, p1, v0, v0}, Lorg/eclipse/paho/a/a/i;->connect(Lorg/eclipse/paho/a/a/n;Ljava/lang/Object;Lorg/eclipse/paho/a/a/c;)Lorg/eclipse/paho/a/a/h;

    move-result-object p1

    return-object p1
.end method

.method public connect(Lorg/eclipse/paho/a/a/n;Ljava/lang/Object;Lorg/eclipse/paho/a/a/c;)Lorg/eclipse/paho/a/a/h;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;,
            Lorg/eclipse/paho/a/a/u;
        }
    .end annotation

    .line 598
    iget-object v0, p0, Lorg/eclipse/paho/a/a/i;->a:Lorg/eclipse/paho/a/a/a/a;

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/a/a;->isConnected()Z

    move-result v0

    if-nez v0, :cond_7

    .line 601
    iget-object v0, p0, Lorg/eclipse/paho/a/a/i;->a:Lorg/eclipse/paho/a/a/a/a;

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/a/a;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_6

    .line 604
    iget-object v0, p0, Lorg/eclipse/paho/a/a/i;->a:Lorg/eclipse/paho/a/a/a/a;

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/a/a;->isDisconnecting()Z

    move-result v0

    if-nez v0, :cond_5

    .line 607
    iget-object v0, p0, Lorg/eclipse/paho/a/a/i;->a:Lorg/eclipse/paho/a/a/a/a;

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/a/a;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    if-nez p1, :cond_0

    .line 611
    new-instance p1, Lorg/eclipse/paho/a/a/n;

    invoke-direct {p1}, Lorg/eclipse/paho/a/a/n;-><init>()V

    :cond_0
    move-object v4, p1

    .line 613
    iput-object v4, p0, Lorg/eclipse/paho/a/a/i;->i:Lorg/eclipse/paho/a/a/n;

    .line 614
    iput-object p2, p0, Lorg/eclipse/paho/a/a/i;->j:Ljava/lang/Object;

    .line 615
    invoke-virtual {v4}, Lorg/eclipse/paho/a/a/n;->isAutomaticReconnect()Z

    move-result p1

    .line 619
    iget-object v0, p0, Lorg/eclipse/paho/a/a/i;->c:Lorg/eclipse/paho/a/a/b/b;

    sget-object v1, Lorg/eclipse/paho/a/a/i;->b:Ljava/lang/String;

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    .line 620
    invoke-virtual {v4}, Lorg/eclipse/paho/a/a/n;->isCleanSession()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v9, 0x0

    aput-object v3, v2, v9

    const/4 v3, 0x1

    new-instance v5, Ljava/lang/Integer;

    invoke-virtual {v4}, Lorg/eclipse/paho/a/a/n;->getConnectionTimeout()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v2, v3

    const/4 v3, 0x2

    .line 621
    invoke-virtual {v4}, Lorg/eclipse/paho/a/a/n;->getKeepAliveInterval()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x3

    invoke-virtual {v4}, Lorg/eclipse/paho/a/a/n;->getUserName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x4

    .line 622
    invoke-virtual {v4}, Lorg/eclipse/paho/a/a/n;->getPassword()[C

    move-result-object v5

    const-string v6, "[null]"

    const-string v7, "[notnull]"

    if-nez v5, :cond_1

    move-object v5, v6

    goto :goto_0

    :cond_1
    move-object v5, v7

    :goto_0
    aput-object v5, v2, v3

    const/4 v3, 0x5

    .line 623
    invoke-virtual {v4}, Lorg/eclipse/paho/a/a/n;->getWillMessage()Lorg/eclipse/paho/a/a/q;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    move-object v6, v7

    :goto_1
    aput-object v6, v2, v3

    const/4 v3, 0x6

    aput-object p2, v2, v3

    const/4 v3, 0x7

    aput-object p3, v2, v3

    const-string v3, "connect"

    const-string v5, "103"

    .line 619
    invoke-interface {v0, v1, v3, v5, v2}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 624
    iget-object v0, p0, Lorg/eclipse/paho/a/a/i;->a:Lorg/eclipse/paho/a/a/a/a;

    iget-object v1, p0, Lorg/eclipse/paho/a/a/i;->e:Ljava/lang/String;

    invoke-direct {p0, v1, v4}, Lorg/eclipse/paho/a/a/i;->a(Ljava/lang/String;Lorg/eclipse/paho/a/a/n;)[Lorg/eclipse/paho/a/a/a/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/a/a/a/a;->setNetworkModules([Lorg/eclipse/paho/a/a/a/n;)V

    .line 625
    iget-object v0, p0, Lorg/eclipse/paho/a/a/i;->a:Lorg/eclipse/paho/a/a/a/a;

    new-instance v1, Lorg/eclipse/paho/a/a/i$b;

    invoke-direct {v1, p0, p1}, Lorg/eclipse/paho/a/a/i$b;-><init>(Lorg/eclipse/paho/a/a/i;Z)V

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/a/a/a/a;->setReconnectCallback(Lorg/eclipse/paho/a/a/k;)V

    .line 629
    new-instance p1, Lorg/eclipse/paho/a/a/v;

    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/i;->getClientId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/eclipse/paho/a/a/v;-><init>(Ljava/lang/String;)V

    .line 630
    new-instance v10, Lorg/eclipse/paho/a/a/a/g;

    iget-object v2, p0, Lorg/eclipse/paho/a/a/i;->g:Lorg/eclipse/paho/a/a/m;

    iget-object v3, p0, Lorg/eclipse/paho/a/a/i;->a:Lorg/eclipse/paho/a/a/a/a;

    .line 631
    iget-boolean v8, p0, Lorg/eclipse/paho/a/a/i;->m:Z

    move-object v0, v10

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    .line 630
    invoke-direct/range {v0 .. v8}, Lorg/eclipse/paho/a/a/a/g;-><init>(Lorg/eclipse/paho/a/a/i;Lorg/eclipse/paho/a/a/m;Lorg/eclipse/paho/a/a/a/a;Lorg/eclipse/paho/a/a/n;Lorg/eclipse/paho/a/a/v;Ljava/lang/Object;Lorg/eclipse/paho/a/a/c;Z)V

    .line 632
    invoke-virtual {p1, v10}, Lorg/eclipse/paho/a/a/v;->setActionCallback(Lorg/eclipse/paho/a/a/c;)V

    .line 633
    invoke-virtual {p1, p0}, Lorg/eclipse/paho/a/a/v;->setUserContext(Ljava/lang/Object;)V

    .line 637
    iget-object p2, p0, Lorg/eclipse/paho/a/a/i;->h:Lorg/eclipse/paho/a/a/j;

    instance-of p3, p2, Lorg/eclipse/paho/a/a/k;

    if-eqz p3, :cond_3

    .line 638
    check-cast p2, Lorg/eclipse/paho/a/a/k;

    invoke-virtual {v10, p2}, Lorg/eclipse/paho/a/a/a/g;->setMqttCallbackExtended(Lorg/eclipse/paho/a/a/k;)V

    .line 641
    :cond_3
    iget-object p2, p0, Lorg/eclipse/paho/a/a/i;->a:Lorg/eclipse/paho/a/a/a/a;

    invoke-virtual {p2, v9}, Lorg/eclipse/paho/a/a/a/a;->setNetworkModuleIndex(I)V

    .line 642
    invoke-virtual {v10}, Lorg/eclipse/paho/a/a/a/g;->connect()V

    return-object p1

    .line 608
    :cond_4
    new-instance p1, Lorg/eclipse/paho/a/a/p;

    const/16 p2, 0x7d6f

    invoke-direct {p1, p2}, Lorg/eclipse/paho/a/a/p;-><init>(I)V

    throw p1

    .line 605
    :cond_5
    new-instance p1, Lorg/eclipse/paho/a/a/p;

    const/16 p2, 0x7d66

    invoke-direct {p1, p2}, Lorg/eclipse/paho/a/a/p;-><init>(I)V

    throw p1

    .line 602
    :cond_6
    new-instance p1, Lorg/eclipse/paho/a/a/p;

    const/16 p2, 0x7d6e

    invoke-direct {p1, p2}, Lorg/eclipse/paho/a/a/p;-><init>(I)V

    throw p1

    :cond_7
    const/16 p1, 0x7d64

    .line 599
    invoke-static {p1}, Lorg/eclipse/paho/a/a/a/i;->createMqttException(I)Lorg/eclipse/paho/a/a/p;

    move-result-object p1

    throw p1
.end method

.method public deleteBufferedMessage(I)V
    .locals 1

    .line 1458
    iget-object v0, p0, Lorg/eclipse/paho/a/a/i;->a:Lorg/eclipse/paho/a/a/a/a;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/a/a/a/a;->deleteBufferedMessage(I)V

    return-void
.end method

.method public disconnect()Lorg/eclipse/paho/a/a/h;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    const/4 v0, 0x0

    .line 664
    invoke-virtual {p0, v0, v0}, Lorg/eclipse/paho/a/a/i;->disconnect(Ljava/lang/Object;Lorg/eclipse/paho/a/a/c;)Lorg/eclipse/paho/a/a/h;

    move-result-object v0

    return-object v0
.end method

.method public disconnect(J)Lorg/eclipse/paho/a/a/h;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    const/4 v0, 0x0

    .line 673
    invoke-virtual {p0, p1, p2, v0, v0}, Lorg/eclipse/paho/a/a/i;->disconnect(JLjava/lang/Object;Lorg/eclipse/paho/a/a/c;)Lorg/eclipse/paho/a/a/h;

    move-result-object p1

    return-object p1
.end method

.method public disconnect(JLjava/lang/Object;Lorg/eclipse/paho/a/a/c;)Lorg/eclipse/paho/a/a/h;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 686
    iget-object v0, p0, Lorg/eclipse/paho/a/a/i;->c:Lorg/eclipse/paho/a/a/b/b;

    sget-object v1, Lorg/eclipse/paho/a/a/i;->b:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    const-string v3, "disconnect"

    const-string v4, "104"

    invoke-interface {v0, v1, v3, v4, v2}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 688
    new-instance v0, Lorg/eclipse/paho/a/a/v;

    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/i;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/eclipse/paho/a/a/v;-><init>(Ljava/lang/String;)V

    .line 689
    invoke-virtual {v0, p4}, Lorg/eclipse/paho/a/a/v;->setActionCallback(Lorg/eclipse/paho/a/a/c;)V

    .line 690
    invoke-virtual {v0, p3}, Lorg/eclipse/paho/a/a/v;->setUserContext(Ljava/lang/Object;)V

    .line 692
    new-instance p3, Lorg/eclipse/paho/a/a/a/a/e;

    invoke-direct {p3}, Lorg/eclipse/paho/a/a/a/a/e;-><init>()V

    .line 694
    :try_start_0
    iget-object p4, p0, Lorg/eclipse/paho/a/a/i;->a:Lorg/eclipse/paho/a/a/a/a;

    invoke-virtual {p4, p3, p1, p2, v0}, Lorg/eclipse/paho/a/a/a/a;->disconnect(Lorg/eclipse/paho/a/a/a/a/e;JLorg/eclipse/paho/a/a/v;)V
    :try_end_0
    .catch Lorg/eclipse/paho/a/a/p; {:try_start_0 .. :try_end_0} :catch_0

    .line 701
    iget-object p1, p0, Lorg/eclipse/paho/a/a/i;->c:Lorg/eclipse/paho/a/a/b/b;

    sget-object p2, Lorg/eclipse/paho/a/a/i;->b:Ljava/lang/String;

    const-string p3, "108"

    invoke-interface {p1, p2, v3, p3}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception p1

    .line 697
    iget-object v0, p0, Lorg/eclipse/paho/a/a/i;->c:Lorg/eclipse/paho/a/a/b/b;

    sget-object v1, Lorg/eclipse/paho/a/a/i;->b:Ljava/lang/String;

    const/4 v4, 0x0

    const-string v2, "disconnect"

    const-string v3, "105"

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 698
    throw p1
.end method

.method public disconnect(Ljava/lang/Object;Lorg/eclipse/paho/a/a/c;)Lorg/eclipse/paho/a/a/h;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    const-wide/16 v0, 0x7530

    .line 655
    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/eclipse/paho/a/a/i;->disconnect(JLjava/lang/Object;Lorg/eclipse/paho/a/a/c;)Lorg/eclipse/paho/a/a/h;

    move-result-object p1

    return-object p1
.end method

.method public disconnectForcibly()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    const-wide/16 v0, 0x7530

    const-wide/16 v2, 0x2710

    .line 712
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/eclipse/paho/a/a/i;->disconnectForcibly(JJ)V

    return-void
.end method

.method public disconnectForcibly(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    const-wide/16 v0, 0x7530

    .line 722
    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/eclipse/paho/a/a/i;->disconnectForcibly(JJ)V

    return-void
.end method

.method public disconnectForcibly(JJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 733
    iget-object v0, p0, Lorg/eclipse/paho/a/a/i;->a:Lorg/eclipse/paho/a/a/a/a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/eclipse/paho/a/a/a/a;->disconnectForcibly(JJ)V

    return-void
.end method

.method public disconnectForcibly(JJZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 757
    iget-object v0, p0, Lorg/eclipse/paho/a/a/i;->a:Lorg/eclipse/paho/a/a/a/a;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/paho/a/a/a/a;->disconnectForcibly(JJZ)V

    return-void
.end method

.method public getBufferedMessage(I)Lorg/eclipse/paho/a/a/q;
    .locals 1

    .line 1448
    iget-object v0, p0, Lorg/eclipse/paho/a/a/i;->a:Lorg/eclipse/paho/a/a/a/a;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/a/a/a/a;->getBufferedMessage(I)Lorg/eclipse/paho/a/a/q;

    move-result-object p1

    return-object p1
.end method

.method public getBufferedMessageCount()I
    .locals 1

    .line 1437
    iget-object v0, p0, Lorg/eclipse/paho/a/a/i;->a:Lorg/eclipse/paho/a/a/a/a;

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/a/a;->getBufferedMessageCount()I

    move-result v0

    return v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    .line 775
    iget-object v0, p0, Lorg/eclipse/paho/a/a/i;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentServerURI()Ljava/lang/String;
    .locals 2

    .line 800
    iget-object v0, p0, Lorg/eclipse/paho/a/a/i;->a:Lorg/eclipse/paho/a/a/a/a;

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/a/a;->getNetworkModules()[Lorg/eclipse/paho/a/a/a/n;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/paho/a/a/i;->a:Lorg/eclipse/paho/a/a/a/a;

    invoke-virtual {v1}, Lorg/eclipse/paho/a/a/a/a;->getNetworkModuleIndex()I

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {v0}, Lorg/eclipse/paho/a/a/a/n;->getServerURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDebug()Lorg/eclipse/paho/a/a/e/a;
    .locals 3

    .line 1503
    new-instance v0, Lorg/eclipse/paho/a/a/e/a;

    iget-object v1, p0, Lorg/eclipse/paho/a/a/i;->d:Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/paho/a/a/i;->a:Lorg/eclipse/paho/a/a/a/a;

    invoke-direct {v0, v1, v2}, Lorg/eclipse/paho/a/a/e/a;-><init>(Ljava/lang/String;Lorg/eclipse/paho/a/a/a/a;)V

    return-object v0
.end method

.method public getInFlightMessageCount()I
    .locals 1

    .line 1470
    iget-object v0, p0, Lorg/eclipse/paho/a/a/i;->a:Lorg/eclipse/paho/a/a/a/a;

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/a/a;->getActualInFlight()I

    move-result v0

    return v0
.end method

.method public getPendingDeliveryTokens()[Lorg/eclipse/paho/a/a/f;
    .locals 1

    .line 1184
    iget-object v0, p0, Lorg/eclipse/paho/a/a/i;->a:Lorg/eclipse/paho/a/a/a/a;

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/a/a;->getPendingDeliveryTokens()[Lorg/eclipse/paho/a/a/o;

    move-result-object v0

    return-object v0
.end method

.method public getServerURI()Ljava/lang/String;
    .locals 1

    .line 784
    iget-object v0, p0, Lorg/eclipse/paho/a/a/i;->e:Ljava/lang/String;

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .line 766
    iget-object v0, p0, Lorg/eclipse/paho/a/a/i;->a:Lorg/eclipse/paho/a/a/a/a;

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/a/a;->isConnected()Z

    move-result v0

    return v0
.end method

.method public messageArrivedComplete(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 1156
    iget-object v0, p0, Lorg/eclipse/paho/a/a/i;->a:Lorg/eclipse/paho/a/a/a/a;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/paho/a/a/a/a;->messageArrivedComplete(II)V

    return-void
.end method

.method public publish(Ljava/lang/String;Lorg/eclipse/paho/a/a/q;)Lorg/eclipse/paho/a/a/f;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;,
            Lorg/eclipse/paho/a/a/s;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1224
    invoke-virtual {p0, p1, p2, v0, v0}, Lorg/eclipse/paho/a/a/i;->publish(Ljava/lang/String;Lorg/eclipse/paho/a/a/q;Ljava/lang/Object;Lorg/eclipse/paho/a/a/c;)Lorg/eclipse/paho/a/a/f;

    move-result-object p1

    return-object p1
.end method

.method public publish(Ljava/lang/String;Lorg/eclipse/paho/a/a/q;Ljava/lang/Object;Lorg/eclipse/paho/a/a/c;)Lorg/eclipse/paho/a/a/f;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;,
            Lorg/eclipse/paho/a/a/s;
        }
    .end annotation

    .line 1239
    iget-object v0, p0, Lorg/eclipse/paho/a/a/i;->c:Lorg/eclipse/paho/a/a/b/b;

    sget-object v1, Lorg/eclipse/paho/a/a/i;->b:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v4, 0x1

    aput-object p3, v2, v4

    const/4 v5, 0x2

    aput-object p4, v2, v5

    const-string v5, "publish"

    const-string v6, "111"

    invoke-interface {v0, v1, v5, v6, v2}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1242
    invoke-static {p1, v3}, Lorg/eclipse/paho/a/a/w;->validate(Ljava/lang/String;Z)V

    .line 1244
    new-instance v0, Lorg/eclipse/paho/a/a/o;

    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/i;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/eclipse/paho/a/a/o;-><init>(Ljava/lang/String;)V

    .line 1245
    invoke-virtual {v0, p4}, Lorg/eclipse/paho/a/a/o;->setActionCallback(Lorg/eclipse/paho/a/a/c;)V

    .line 1246
    invoke-virtual {v0, p3}, Lorg/eclipse/paho/a/a/o;->setUserContext(Ljava/lang/Object;)V

    .line 1247
    invoke-virtual {v0, p2}, Lorg/eclipse/paho/a/a/o;->a(Lorg/eclipse/paho/a/a/q;)V

    .line 1248
    iget-object p3, v0, Lorg/eclipse/paho/a/a/o;->internalTok:Lorg/eclipse/paho/a/a/a/q;

    new-array p4, v4, [Ljava/lang/String;

    aput-object p1, p4, v3

    invoke-virtual {p3, p4}, Lorg/eclipse/paho/a/a/a/q;->setTopics([Ljava/lang/String;)V

    .line 1250
    new-instance p3, Lorg/eclipse/paho/a/a/a/a/o;

    invoke-direct {p3, p1, p2}, Lorg/eclipse/paho/a/a/a/a/o;-><init>(Ljava/lang/String;Lorg/eclipse/paho/a/a/q;)V

    .line 1251
    iget-object p1, p0, Lorg/eclipse/paho/a/a/i;->a:Lorg/eclipse/paho/a/a/a/a;

    invoke-virtual {p1, p3, v0}, Lorg/eclipse/paho/a/a/a/a;->sendNoWait(Lorg/eclipse/paho/a/a/a/a/u;Lorg/eclipse/paho/a/a/v;)V

    .line 1254
    iget-object p1, p0, Lorg/eclipse/paho/a/a/i;->c:Lorg/eclipse/paho/a/a/b/b;

    sget-object p2, Lorg/eclipse/paho/a/a/i;->b:Ljava/lang/String;

    const-string p3, "112"

    invoke-interface {p1, p2, v5, p3}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public publish(Ljava/lang/String;[BIZ)Lorg/eclipse/paho/a/a/f;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;,
            Lorg/eclipse/paho/a/a/s;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 1212
    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/paho/a/a/i;->publish(Ljava/lang/String;[BIZLjava/lang/Object;Lorg/eclipse/paho/a/a/c;)Lorg/eclipse/paho/a/a/f;

    move-result-object p1

    return-object p1
.end method

.method public publish(Ljava/lang/String;[BIZLjava/lang/Object;Lorg/eclipse/paho/a/a/c;)Lorg/eclipse/paho/a/a/f;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;,
            Lorg/eclipse/paho/a/a/s;
        }
    .end annotation

    .line 1197
    new-instance v0, Lorg/eclipse/paho/a/a/q;

    invoke-direct {v0, p2}, Lorg/eclipse/paho/a/a/q;-><init>([B)V

    .line 1198
    invoke-virtual {v0, p3}, Lorg/eclipse/paho/a/a/q;->setQos(I)V

    .line 1199
    invoke-virtual {v0, p4}, Lorg/eclipse/paho/a/a/q;->setRetained(Z)V

    .line 1200
    invoke-virtual {p0, p1, v0, p5, p6}, Lorg/eclipse/paho/a/a/i;->publish(Ljava/lang/String;Lorg/eclipse/paho/a/a/q;Ljava/lang/Object;Lorg/eclipse/paho/a/a/c;)Lorg/eclipse/paho/a/a/f;

    move-result-object p1

    return-object p1
.end method

.method public reconnect()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 1268
    iget-object v0, p0, Lorg/eclipse/paho/a/a/i;->c:Lorg/eclipse/paho/a/a/b/b;

    sget-object v1, Lorg/eclipse/paho/a/a/i;->b:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/eclipse/paho/a/a/i;->d:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "reconnect"

    const-string v4, "500"

    invoke-interface {v0, v1, v3, v4, v2}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1271
    iget-object v0, p0, Lorg/eclipse/paho/a/a/i;->a:Lorg/eclipse/paho/a/a/a/a;

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/a/a;->isConnected()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1274
    iget-object v0, p0, Lorg/eclipse/paho/a/a/i;->a:Lorg/eclipse/paho/a/a/a/a;

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/a/a;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1277
    iget-object v0, p0, Lorg/eclipse/paho/a/a/i;->a:Lorg/eclipse/paho/a/a/a/a;

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/a/a;->isDisconnecting()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1280
    iget-object v0, p0, Lorg/eclipse/paho/a/a/i;->a:Lorg/eclipse/paho/a/a/a/a;

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/a/a;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1284
    invoke-direct {p0}, Lorg/eclipse/paho/a/a/i;->e()V

    .line 1286
    invoke-direct {p0}, Lorg/eclipse/paho/a/a/i;->d()V

    return-void

    .line 1281
    :cond_0
    new-instance v0, Lorg/eclipse/paho/a/a/p;

    const/16 v1, 0x7d6f

    invoke-direct {v0, v1}, Lorg/eclipse/paho/a/a/p;-><init>(I)V

    throw v0

    .line 1278
    :cond_1
    new-instance v0, Lorg/eclipse/paho/a/a/p;

    const/16 v1, 0x7d66

    invoke-direct {v0, v1}, Lorg/eclipse/paho/a/a/p;-><init>(I)V

    throw v0

    .line 1275
    :cond_2
    new-instance v0, Lorg/eclipse/paho/a/a/p;

    const/16 v1, 0x7d6e

    invoke-direct {v0, v1}, Lorg/eclipse/paho/a/a/p;-><init>(I)V

    throw v0

    :cond_3
    const/16 v0, 0x7d64

    .line 1272
    invoke-static {v0}, Lorg/eclipse/paho/a/a/a/i;->createMqttException(I)Lorg/eclipse/paho/a/a/p;

    move-result-object v0

    throw v0
.end method

.method public removeMessage(Lorg/eclipse/paho/a/a/f;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 1133
    iget-object v0, p0, Lorg/eclipse/paho/a/a/i;->a:Lorg/eclipse/paho/a/a/a/a;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/a/a/a/a;->removeMessage(Lorg/eclipse/paho/a/a/f;)Z

    move-result p1

    return p1
.end method

.method public setBufferOpts(Lorg/eclipse/paho/a/a/b;)V
    .locals 2

    .line 1428
    iget-object v0, p0, Lorg/eclipse/paho/a/a/i;->a:Lorg/eclipse/paho/a/a/a/a;

    new-instance v1, Lorg/eclipse/paho/a/a/a/h;

    invoke-direct {v1, p1}, Lorg/eclipse/paho/a/a/a/h;-><init>(Lorg/eclipse/paho/a/a/b;)V

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/a/a/a/a;->setDisconnectedMessageBuffer(Lorg/eclipse/paho/a/a/a/h;)V

    return-void
.end method

.method public setCallback(Lorg/eclipse/paho/a/a/j;)V
    .locals 1

    .line 1142
    iput-object p1, p0, Lorg/eclipse/paho/a/a/i;->h:Lorg/eclipse/paho/a/a/j;

    .line 1143
    iget-object v0, p0, Lorg/eclipse/paho/a/a/i;->a:Lorg/eclipse/paho/a/a/a/a;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/a/a/a/a;->setCallback(Lorg/eclipse/paho/a/a/j;)V

    return-void
.end method

.method public setManualAcks(Z)V
    .locals 1

    .line 1152
    iget-object v0, p0, Lorg/eclipse/paho/a/a/i;->a:Lorg/eclipse/paho/a/a/a/a;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/a/a/a/a;->setManualAcks(Z)V

    return-void
.end method

.method public subscribe(Ljava/lang/String;I)Lorg/eclipse/paho/a/a/h;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-array p1, v0, [I

    aput p2, p1, v2

    const/4 p2, 0x0

    .line 903
    invoke-virtual {p0, v1, p1, p2, p2}, Lorg/eclipse/paho/a/a/i;->subscribe([Ljava/lang/String;[ILjava/lang/Object;Lorg/eclipse/paho/a/a/c;)Lorg/eclipse/paho/a/a/h;

    move-result-object p1

    return-object p1
.end method

.method public subscribe(Ljava/lang/String;ILjava/lang/Object;Lorg/eclipse/paho/a/a/c;)Lorg/eclipse/paho/a/a/h;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-array p1, v0, [I

    aput p2, p1, v2

    .line 893
    invoke-virtual {p0, v1, p1, p3, p4}, Lorg/eclipse/paho/a/a/i;->subscribe([Ljava/lang/String;[ILjava/lang/Object;Lorg/eclipse/paho/a/a/c;)Lorg/eclipse/paho/a/a/h;

    move-result-object p1

    return-object p1
.end method

.method public subscribe(Ljava/lang/String;ILjava/lang/Object;Lorg/eclipse/paho/a/a/c;Lorg/eclipse/paho/a/a/g;)Lorg/eclipse/paho/a/a/h;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v2, v1

    new-array v3, v0, [I

    aput p2, v3, v1

    new-array v6, v0, [Lorg/eclipse/paho/a/a/g;

    aput-object p5, v6, v1

    move-object v1, p0

    move-object v4, p3

    move-object v5, p4

    .line 981
    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/paho/a/a/i;->subscribe([Ljava/lang/String;[ILjava/lang/Object;Lorg/eclipse/paho/a/a/c;[Lorg/eclipse/paho/a/a/g;)Lorg/eclipse/paho/a/a/h;

    move-result-object p1

    return-object p1
.end method

.method public subscribe(Ljava/lang/String;ILorg/eclipse/paho/a/a/g;)Lorg/eclipse/paho/a/a/h;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v2, v1

    new-array v3, v0, [I

    aput p2, v3, v1

    new-array v6, v0, [Lorg/eclipse/paho/a/a/g;

    aput-object p3, v6, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    .line 993
    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/paho/a/a/i;->subscribe([Ljava/lang/String;[ILjava/lang/Object;Lorg/eclipse/paho/a/a/c;[Lorg/eclipse/paho/a/a/g;)Lorg/eclipse/paho/a/a/h;

    move-result-object p1

    return-object p1
.end method

.method public subscribe([Ljava/lang/String;[I)Lorg/eclipse/paho/a/a/h;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    const/4 v0, 0x0

    .line 913
    invoke-virtual {p0, p1, p2, v0, v0}, Lorg/eclipse/paho/a/a/i;->subscribe([Ljava/lang/String;[ILjava/lang/Object;Lorg/eclipse/paho/a/a/c;)Lorg/eclipse/paho/a/a/h;

    move-result-object p1

    return-object p1
.end method

.method public subscribe([Ljava/lang/String;[ILjava/lang/Object;Lorg/eclipse/paho/a/a/c;)Lorg/eclipse/paho/a/a/h;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 926
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 931
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 937
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/eclipse/paho/a/a/i;->a([Ljava/lang/String;[ILjava/lang/Object;Lorg/eclipse/paho/a/a/c;)Lorg/eclipse/paho/a/a/h;

    move-result-object p1

    return-object p1

    .line 933
    :cond_0
    aget-object v1, p1, v0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/eclipse/paho/a/a/w;->validate(Ljava/lang/String;Z)V

    .line 934
    iget-object v1, p0, Lorg/eclipse/paho/a/a/i;->a:Lorg/eclipse/paho/a/a/a/a;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Lorg/eclipse/paho/a/a/a/a;->removeMessageListener(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 927
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public subscribe([Ljava/lang/String;[ILjava/lang/Object;Lorg/eclipse/paho/a/a/c;[Lorg/eclipse/paho/a/a/g;)Lorg/eclipse/paho/a/a/h;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    if-eqz p5, :cond_0

    .line 1011
    array-length v0, p5

    array-length v1, p2

    if-ne v0, v1, :cond_5

    :cond_0
    array-length v0, p2

    array-length v1, p1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1016
    :goto_0
    array-length v2, p1

    if-lt v1, v2, :cond_2

    .line 1028
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/eclipse/paho/a/a/i;->a([Ljava/lang/String;[ILjava/lang/Object;Lorg/eclipse/paho/a/a/c;)Lorg/eclipse/paho/a/a/h;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 1031
    :goto_1
    array-length p3, p1

    if-ge v0, p3, :cond_1

    .line 1032
    iget-object p3, p0, Lorg/eclipse/paho/a/a/i;->a:Lorg/eclipse/paho/a/a/a/a;

    aget-object p4, p1, v0

    invoke-virtual {p3, p4}, Lorg/eclipse/paho/a/a/a/a;->removeMessageListener(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1034
    :cond_1
    throw p2

    .line 1017
    :cond_2
    aget-object v2, p1, v1

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/eclipse/paho/a/a/w;->validate(Ljava/lang/String;Z)V

    if-eqz p5, :cond_4

    .line 1018
    aget-object v2, p5, v1

    if-nez v2, :cond_3

    goto :goto_2

    .line 1022
    :cond_3
    iget-object v2, p0, Lorg/eclipse/paho/a/a/i;->a:Lorg/eclipse/paho/a/a/a/a;

    aget-object v3, p1, v1

    aget-object v4, p5, v1

    invoke-virtual {v2, v3, v4}, Lorg/eclipse/paho/a/a/a/a;->setMessageListener(Ljava/lang/String;Lorg/eclipse/paho/a/a/g;)V

    goto :goto_3

    .line 1019
    :cond_4
    :goto_2
    iget-object v2, p0, Lorg/eclipse/paho/a/a/i;->a:Lorg/eclipse/paho/a/a/a/a;

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Lorg/eclipse/paho/a/a/a/a;->removeMessageListener(Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1012
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public subscribe([Ljava/lang/String;[I[Lorg/eclipse/paho/a/a/g;)Lorg/eclipse/paho/a/a/h;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 1005
    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/paho/a/a/i;->subscribe([Ljava/lang/String;[ILjava/lang/Object;Lorg/eclipse/paho/a/a/c;[Lorg/eclipse/paho/a/a/g;)Lorg/eclipse/paho/a/a/h;

    move-result-object p1

    return-object p1
.end method

.method public unsubscribe(Ljava/lang/String;)Lorg/eclipse/paho/a/a/h;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x0

    .line 1060
    invoke-virtual {p0, v0, p1, p1}, Lorg/eclipse/paho/a/a/i;->unsubscribe([Ljava/lang/String;Ljava/lang/Object;Lorg/eclipse/paho/a/a/c;)Lorg/eclipse/paho/a/a/h;

    move-result-object p1

    return-object p1
.end method

.method public unsubscribe(Ljava/lang/String;Ljava/lang/Object;Lorg/eclipse/paho/a/a/c;)Lorg/eclipse/paho/a/a/h;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1049
    invoke-virtual {p0, v0, p2, p3}, Lorg/eclipse/paho/a/a/i;->unsubscribe([Ljava/lang/String;Ljava/lang/Object;Lorg/eclipse/paho/a/a/c;)Lorg/eclipse/paho/a/a/h;

    move-result-object p1

    return-object p1
.end method

.method public unsubscribe([Ljava/lang/String;)Lorg/eclipse/paho/a/a/h;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1071
    invoke-virtual {p0, p1, v0, v0}, Lorg/eclipse/paho/a/a/i;->unsubscribe([Ljava/lang/String;Ljava/lang/Object;Lorg/eclipse/paho/a/a/c;)Lorg/eclipse/paho/a/a/h;

    move-result-object p1

    return-object p1
.end method

.method public unsubscribe([Ljava/lang/String;Ljava/lang/Object;Lorg/eclipse/paho/a/a/c;)Lorg/eclipse/paho/a/a/h;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 1087
    iget-object v0, p0, Lorg/eclipse/paho/a/a/i;->c:Lorg/eclipse/paho/a/a/b/b;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lorg/eclipse/paho/a/a/b/b;->isLoggable(I)Z

    move-result v0

    const-string v1, "unsubscribe"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    const-string v0, ""

    move-object v4, v0

    const/4 v0, 0x0

    .line 1089
    :goto_0
    array-length v5, p1

    if-lt v0, v5, :cond_0

    .line 1097
    iget-object v0, p0, Lorg/eclipse/paho/a/a/i;->c:Lorg/eclipse/paho/a/a/b/b;

    sget-object v5, Lorg/eclipse/paho/a/a/i;->b:Ljava/lang/String;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v2

    aput-object p2, v6, v3

    const/4 v4, 0x2

    aput-object p3, v6, v4

    const-string v4, "107"

    invoke-interface {v0, v5, v1, v4, v6}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    if-lez v0, :cond_1

    .line 1091
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ", "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1093
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, p1, v0

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 1100
    :goto_2
    array-length v4, p1

    if-lt v0, v4, :cond_4

    .line 1109
    :goto_3
    array-length v0, p1

    if-lt v2, v0, :cond_3

    .line 1113
    new-instance v0, Lorg/eclipse/paho/a/a/v;

    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/i;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/eclipse/paho/a/a/v;-><init>(Ljava/lang/String;)V

    .line 1114
    invoke-virtual {v0, p3}, Lorg/eclipse/paho/a/a/v;->setActionCallback(Lorg/eclipse/paho/a/a/c;)V

    .line 1115
    invoke-virtual {v0, p2}, Lorg/eclipse/paho/a/a/v;->setUserContext(Ljava/lang/Object;)V

    .line 1116
    iget-object p2, v0, Lorg/eclipse/paho/a/a/v;->internalTok:Lorg/eclipse/paho/a/a/a/q;

    invoke-virtual {p2, p1}, Lorg/eclipse/paho/a/a/a/q;->setTopics([Ljava/lang/String;)V

    .line 1118
    new-instance p2, Lorg/eclipse/paho/a/a/a/a/t;

    invoke-direct {p2, p1}, Lorg/eclipse/paho/a/a/a/a/t;-><init>([Ljava/lang/String;)V

    .line 1120
    iget-object p1, p0, Lorg/eclipse/paho/a/a/i;->a:Lorg/eclipse/paho/a/a/a/a;

    invoke-virtual {p1, p2, v0}, Lorg/eclipse/paho/a/a/a/a;->sendNoWait(Lorg/eclipse/paho/a/a/a/a/u;Lorg/eclipse/paho/a/a/v;)V

    .line 1122
    iget-object p1, p0, Lorg/eclipse/paho/a/a/i;->c:Lorg/eclipse/paho/a/a/b/b;

    sget-object p2, Lorg/eclipse/paho/a/a/i;->b:Ljava/lang/String;

    const-string p3, "110"

    invoke-interface {p1, p2, v1, p3}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 1110
    :cond_3
    iget-object v0, p0, Lorg/eclipse/paho/a/a/i;->a:Lorg/eclipse/paho/a/a/a/a;

    aget-object v3, p1, v2

    invoke-virtual {v0, v3}, Lorg/eclipse/paho/a/a/a/a;->removeMessageListener(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1105
    :cond_4
    aget-object v4, p1, v0

    invoke-static {v4, v3}, Lorg/eclipse/paho/a/a/w;->validate(Ljava/lang/String;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
