.class public Lorg/eclipse/paho/a/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/paho/a/a/a/a$a;,
        Lorg/eclipse/paho/a/a/a/a$b;,
        Lorg/eclipse/paho/a/a/a/a$c;
    }
.end annotation


# static fields
.field public static BUILD_LEVEL:Ljava/lang/String; = "L${build.level}"

.field public static VERSION:Ljava/lang/String; = "${project.version}"


# instance fields
.field a:Lorg/eclipse/paho/a/a/a/b;

.field private final b:Ljava/lang/String;

.field private final c:Lorg/eclipse/paho/a/a/b/b;

.field private d:Lorg/eclipse/paho/a/a/d;

.field private e:I

.field private f:[Lorg/eclipse/paho/a/a/a/n;

.field private g:Lorg/eclipse/paho/a/a/a/d;

.field private h:Lorg/eclipse/paho/a/a/a/e;

.field private i:Lorg/eclipse/paho/a/a/a/c;

.field private j:Lorg/eclipse/paho/a/a/n;

.field private k:Lorg/eclipse/paho/a/a/m;

.field private l:Lorg/eclipse/paho/a/a/t;

.field private m:Lorg/eclipse/paho/a/a/a/f;

.field private n:Z

.field private o:B

.field private p:Ljava/lang/Object;

.field private q:Z

.field private r:Z

.field private s:Lorg/eclipse/paho/a/a/a/h;

.field private t:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/paho/a/a/d;Lorg/eclipse/paho/a/a/m;Lorg/eclipse/paho/a/a/t;Ljava/util/concurrent/ExecutorService;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-class v0, Lorg/eclipse/paho/a/a/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/paho/a/a/a/a;->b:Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a;->b:Ljava/lang/String;

    const-string v1, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    invoke-static {v1, v0}, Lorg/eclipse/paho/a/a/b/c;->getLogger(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/a/a/b/b;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/paho/a/a/a/a;->c:Lorg/eclipse/paho/a/a/b/b;

    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lorg/eclipse/paho/a/a/a/a;->n:Z

    const/4 v1, 0x3

    .line 81
    iput-byte v1, p0, Lorg/eclipse/paho/a/a/a/a;->o:B

    .line 82
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lorg/eclipse/paho/a/a/a/a;->p:Ljava/lang/Object;

    .line 83
    iput-boolean v0, p0, Lorg/eclipse/paho/a/a/a/a;->q:Z

    .line 84
    iput-boolean v0, p0, Lorg/eclipse/paho/a/a/a/a;->r:Z

    .line 99
    iput-byte v1, p0, Lorg/eclipse/paho/a/a/a/a;->o:B

    .line 100
    iput-object p1, p0, Lorg/eclipse/paho/a/a/a/a;->d:Lorg/eclipse/paho/a/a/d;

    .line 101
    iput-object p2, p0, Lorg/eclipse/paho/a/a/a/a;->k:Lorg/eclipse/paho/a/a/m;

    .line 102
    iput-object p3, p0, Lorg/eclipse/paho/a/a/a/a;->l:Lorg/eclipse/paho/a/a/t;

    .line 103
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/a;->l:Lorg/eclipse/paho/a/a/t;

    invoke-interface {p1, p0}, Lorg/eclipse/paho/a/a/t;->init(Lorg/eclipse/paho/a/a/a/a;)V

    .line 104
    iput-object p4, p0, Lorg/eclipse/paho/a/a/a/a;->t:Ljava/util/concurrent/ExecutorService;

    .line 106
    new-instance p1, Lorg/eclipse/paho/a/a/a/f;

    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/a;->getClient()Lorg/eclipse/paho/a/a/d;

    move-result-object p4

    invoke-interface {p4}, Lorg/eclipse/paho/a/a/d;->getClientId()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p1, p4}, Lorg/eclipse/paho/a/a/a/f;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/eclipse/paho/a/a/a/a;->m:Lorg/eclipse/paho/a/a/a/f;

    .line 107
    new-instance p1, Lorg/eclipse/paho/a/a/a/c;

    invoke-direct {p1, p0}, Lorg/eclipse/paho/a/a/a/c;-><init>(Lorg/eclipse/paho/a/a/a/a;)V

    iput-object p1, p0, Lorg/eclipse/paho/a/a/a/a;->i:Lorg/eclipse/paho/a/a/a/c;

    .line 108
    new-instance p1, Lorg/eclipse/paho/a/a/a/b;

    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/a;->m:Lorg/eclipse/paho/a/a/a/f;

    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/a;->i:Lorg/eclipse/paho/a/a/a/c;

    move-object v0, p1

    move-object v1, p2

    move-object v4, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/paho/a/a/a/b;-><init>(Lorg/eclipse/paho/a/a/m;Lorg/eclipse/paho/a/a/a/f;Lorg/eclipse/paho/a/a/a/c;Lorg/eclipse/paho/a/a/a/a;Lorg/eclipse/paho/a/a/t;)V

    iput-object p1, p0, Lorg/eclipse/paho/a/a/a/a;->a:Lorg/eclipse/paho/a/a/a/b;

    .line 110
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/a;->i:Lorg/eclipse/paho/a/a/a/c;

    iget-object p2, p0, Lorg/eclipse/paho/a/a/a/a;->a:Lorg/eclipse/paho/a/a/a/b;

    invoke-virtual {p1, p2}, Lorg/eclipse/paho/a/a/a/c;->setClientState(Lorg/eclipse/paho/a/a/a/b;)V

    .line 111
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/a;->c:Lorg/eclipse/paho/a/a/b/b;

    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/a;->getClient()Lorg/eclipse/paho/a/a/d;

    move-result-object p2

    invoke-interface {p2}, Lorg/eclipse/paho/a/a/d;->getClientId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/eclipse/paho/a/a/b/b;->setResourceName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lorg/eclipse/paho/a/a/a/a;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 87
    iget-object p0, p0, Lorg/eclipse/paho/a/a/a/a;->t:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method private a(Lorg/eclipse/paho/a/a/v;Lorg/eclipse/paho/a/a/p;)Lorg/eclipse/paho/a/a/v;
    .locals 4

    .line 461
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a;->c:Lorg/eclipse/paho/a/a/b/b;

    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/a;->b:Ljava/lang/String;

    const-string v2, "handleOldTokens"

    const-string v3, "222"

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 468
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/a;->m:Lorg/eclipse/paho/a/a/a/f;

    iget-object v2, p1, Lorg/eclipse/paho/a/a/v;->internalTok:Lorg/eclipse/paho/a/a/a/q;

    invoke-virtual {v2}, Lorg/eclipse/paho/a/a/a/q;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/paho/a/a/a/f;->getToken(Ljava/lang/String;)Lorg/eclipse/paho/a/a/v;

    move-result-object v1

    if-nez v1, :cond_0

    .line 469
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/a;->m:Lorg/eclipse/paho/a/a/a/f;

    iget-object v2, p1, Lorg/eclipse/paho/a/a/v;->internalTok:Lorg/eclipse/paho/a/a/a/q;

    invoke-virtual {v2}, Lorg/eclipse/paho/a/a/a/q;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lorg/eclipse/paho/a/a/a/f;->a(Lorg/eclipse/paho/a/a/v;Ljava/lang/String;)V

    .line 473
    :cond_0
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/a;->a:Lorg/eclipse/paho/a/a/a/b;

    invoke-virtual {p1, p2}, Lorg/eclipse/paho/a/a/a/b;->resolveOldTokens(Lorg/eclipse/paho/a/a/p;)Ljava/util/Vector;

    move-result-object p1

    .line 474
    invoke-virtual {p1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object p1

    .line 475
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_2

    .line 476
    :cond_1
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/eclipse/paho/a/a/v;

    .line 478
    iget-object v1, p2, Lorg/eclipse/paho/a/a/v;->internalTok:Lorg/eclipse/paho/a/a/a/q;

    invoke-virtual {v1}, Lorg/eclipse/paho/a/a/a/q;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Disc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 479
    iget-object v1, p2, Lorg/eclipse/paho/a/a/v;->internalTok:Lorg/eclipse/paho/a/a/a/q;

    invoke-virtual {v1}, Lorg/eclipse/paho/a/a/a/q;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Con"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 486
    :cond_2
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/a;->i:Lorg/eclipse/paho/a/a/a/c;

    invoke-virtual {v1, p2}, Lorg/eclipse/paho/a/a/a/c;->asyncOperationComplete(Lorg/eclipse/paho/a/a/v;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    :goto_1
    move-object v0, p2

    goto :goto_0

    :catch_0
    :goto_2
    return-object v0
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 6

    .line 828
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a;->c:Lorg/eclipse/paho/a/a/b/b;

    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/a;->b:Ljava/lang/String;

    const-string v2, "handleRunException"

    const-string v3, "804"

    const/4 v4, 0x0

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 830
    instance-of v0, p1, Lorg/eclipse/paho/a/a/p;

    if-nez v0, :cond_0

    .line 831
    new-instance v0, Lorg/eclipse/paho/a/a/p;

    const/16 v1, 0x7d6d

    invoke-direct {v0, v1, p1}, Lorg/eclipse/paho/a/a/p;-><init>(ILjava/lang/Throwable;)V

    goto :goto_0

    .line 833
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/eclipse/paho/a/a/p;

    :goto_0
    const/4 p1, 0x0

    .line 836
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/paho/a/a/a/a;->shutdownConnection(Lorg/eclipse/paho/a/a/v;Lorg/eclipse/paho/a/a/p;)V

    return-void
.end method

.method static synthetic a(Lorg/eclipse/paho/a/a/a/a;Lorg/eclipse/paho/a/a/a/d;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lorg/eclipse/paho/a/a/a/a;->g:Lorg/eclipse/paho/a/a/a/d;

    return-void
.end method

.method static synthetic a(Lorg/eclipse/paho/a/a/a/a;Lorg/eclipse/paho/a/a/a/e;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lorg/eclipse/paho/a/a/a/a;->h:Lorg/eclipse/paho/a/a/a/e;

    return-void
.end method

.method static synthetic b(Lorg/eclipse/paho/a/a/a/a;)Lorg/eclipse/paho/a/a/b/b;
    .locals 0

    .line 60
    iget-object p0, p0, Lorg/eclipse/paho/a/a/a/a;->c:Lorg/eclipse/paho/a/a/b/b;

    return-object p0
.end method

.method static synthetic c(Lorg/eclipse/paho/a/a/a/a;)Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lorg/eclipse/paho/a/a/a/a;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lorg/eclipse/paho/a/a/a/a;)Lorg/eclipse/paho/a/a/a/f;
    .locals 0

    .line 78
    iget-object p0, p0, Lorg/eclipse/paho/a/a/a/a;->m:Lorg/eclipse/paho/a/a/a/f;

    return-object p0
.end method

.method static synthetic e(Lorg/eclipse/paho/a/a/a/a;)[Lorg/eclipse/paho/a/a/a/n;
    .locals 0

    .line 70
    iget-object p0, p0, Lorg/eclipse/paho/a/a/a/a;->f:[Lorg/eclipse/paho/a/a/a/n;

    return-object p0
.end method

.method static synthetic f(Lorg/eclipse/paho/a/a/a/a;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/eclipse/paho/a/a/a/a;->e:I

    return p0
.end method

.method static synthetic g(Lorg/eclipse/paho/a/a/a/a;)Lorg/eclipse/paho/a/a/a/b;
    .locals 0

    .line 74
    iget-object p0, p0, Lorg/eclipse/paho/a/a/a/a;->a:Lorg/eclipse/paho/a/a/a/b;

    return-object p0
.end method

.method static synthetic h(Lorg/eclipse/paho/a/a/a/a;)Lorg/eclipse/paho/a/a/a/d;
    .locals 0

    .line 71
    iget-object p0, p0, Lorg/eclipse/paho/a/a/a/a;->g:Lorg/eclipse/paho/a/a/a/d;

    return-object p0
.end method

.method static synthetic i(Lorg/eclipse/paho/a/a/a/a;)Lorg/eclipse/paho/a/a/a/e;
    .locals 0

    .line 72
    iget-object p0, p0, Lorg/eclipse/paho/a/a/a/a;->h:Lorg/eclipse/paho/a/a/a/e;

    return-object p0
.end method

.method static synthetic j(Lorg/eclipse/paho/a/a/a/a;)Lorg/eclipse/paho/a/a/a/c;
    .locals 0

    .line 73
    iget-object p0, p0, Lorg/eclipse/paho/a/a/a/a;->i:Lorg/eclipse/paho/a/a/a/c;

    return-object p0
.end method


# virtual methods
.method final a(Lorg/eclipse/paho/a/a/a/a/u;Lorg/eclipse/paho/a/a/v;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a;->c:Lorg/eclipse/paho/a/a/b/b;

    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/a;->b:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/eclipse/paho/a/a/a/a/u;->getKey()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v6, 0x2

    aput-object p2, v3, v6

    const-string v7, "internalSend"

    const-string v8, "200"

    invoke-interface {v0, v1, v7, v8, v3}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    invoke-virtual {p2}, Lorg/eclipse/paho/a/a/v;->getClient()Lorg/eclipse/paho/a/a/d;

    move-result-object v0

    if-nez v0, :cond_1

    .line 150
    iget-object v0, p2, Lorg/eclipse/paho/a/a/v;->internalTok:Lorg/eclipse/paho/a/a/a/q;

    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/a;->getClient()Lorg/eclipse/paho/a/a/d;

    move-result-object v1

    .line 2285
    iput-object v1, v0, Lorg/eclipse/paho/a/a/a/q;->j:Lorg/eclipse/paho/a/a/d;

    .line 161
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a;->a:Lorg/eclipse/paho/a/a/a/b;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/paho/a/a/a/b;->send(Lorg/eclipse/paho/a/a/a/a/u;Lorg/eclipse/paho/a/a/v;)V
    :try_end_0
    .catch Lorg/eclipse/paho/a/a/p; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 163
    iget-object p2, p2, Lorg/eclipse/paho/a/a/v;->internalTok:Lorg/eclipse/paho/a/a/a/q;

    const/4 v1, 0x0

    .line 3285
    iput-object v1, p2, Lorg/eclipse/paho/a/a/a/q;->j:Lorg/eclipse/paho/a/a/d;

    .line 164
    instance-of p2, p1, Lorg/eclipse/paho/a/a/a/a/o;

    if-eqz p2, :cond_0

    .line 165
    iget-object p2, p0, Lorg/eclipse/paho/a/a/a/a;->a:Lorg/eclipse/paho/a/a/a/b;

    check-cast p1, Lorg/eclipse/paho/a/a/a/a/o;

    invoke-virtual {p2, p1}, Lorg/eclipse/paho/a/a/a/b;->a(Lorg/eclipse/paho/a/a/a/a/o;)V

    .line 167
    :cond_0
    throw v0

    .line 154
    :cond_1
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a;->c:Lorg/eclipse/paho/a/a/b/b;

    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/a;->b:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/eclipse/paho/a/a/a/a/u;->getKey()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object p1, v2, v4

    aput-object p2, v2, v6

    const-string p1, "213"

    invoke-interface {v0, v1, v7, p1, v2}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    new-instance p1, Lorg/eclipse/paho/a/a/p;

    const/16 p2, 0x7dc9

    invoke-direct {p1, p2}, Lorg/eclipse/paho/a/a/p;-><init>(I)V

    throw p1
.end method

.method public checkForActivity()Lorg/eclipse/paho/a/a/v;
    .locals 1

    const/4 v0, 0x0

    .line 802
    invoke-virtual {p0, v0}, Lorg/eclipse/paho/a/a/a/a;->checkForActivity(Lorg/eclipse/paho/a/a/c;)Lorg/eclipse/paho/a/a/v;

    move-result-object v0

    return-object v0
.end method

.method public checkForActivity(Lorg/eclipse/paho/a/a/c;)Lorg/eclipse/paho/a/a/v;
    .locals 1

    .line 816
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a;->a:Lorg/eclipse/paho/a/a/a/b;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/a/a/a/b;->checkForActivity(Lorg/eclipse/paho/a/a/c;)Lorg/eclipse/paho/a/a/v;

    move-result-object p1
    :try_end_0
    .catch Lorg/eclipse/paho/a/a/p; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 820
    invoke-direct {p0, p1}, Lorg/eclipse/paho/a/a/a/a;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 818
    invoke-direct {p0, p1}, Lorg/eclipse/paho/a/a/a/a;->a(Ljava/lang/Exception;)V

    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public close(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 228
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/a;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5

    .line 230
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/a;->isDisconnected()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    .line 232
    :cond_0
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/a;->c:Lorg/eclipse/paho/a/a/b/b;

    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/a;->b:Ljava/lang/String;

    const-string v2, "close"

    const-string v3, "224"

    invoke-interface {p1, v1, v2, v3}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/a;->isConnecting()Z

    move-result p1

    if-nez p1, :cond_4

    .line 236
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/a;->isConnected()Z

    move-result p1

    if-nez p1, :cond_3

    .line 238
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/a;->isDisconnecting()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 239
    iput-boolean p1, p0, Lorg/eclipse/paho/a/a/a/a;->q:Z

    .line 240
    monitor-exit v0

    return-void

    :cond_1
    const/4 p1, 0x4

    .line 244
    iput-byte p1, p0, Lorg/eclipse/paho/a/a/a/a;->o:B

    .line 248
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/a;->a:Lorg/eclipse/paho/a/a/a/b;

    .line 3409
    iget-object v1, p1, Lorg/eclipse/paho/a/a/a/b;->c:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    .line 3410
    iget-object v1, p1, Lorg/eclipse/paho/a/a/a/b;->d:Ljava/util/Vector;

    if-eqz v1, :cond_2

    .line 3411
    iget-object v1, p1, Lorg/eclipse/paho/a/a/a/b;->d:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 3413
    :cond_2
    iget-object v1, p1, Lorg/eclipse/paho/a/a/a/b;->e:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 3414
    iget-object v1, p1, Lorg/eclipse/paho/a/a/a/b;->p:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    .line 3415
    iget-object v1, p1, Lorg/eclipse/paho/a/a/a/b;->q:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    .line 3416
    iget-object v1, p1, Lorg/eclipse/paho/a/a/a/b;->r:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    .line 3417
    iget-object v1, p1, Lorg/eclipse/paho/a/a/a/b;->s:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    .line 3418
    iget-object v1, p1, Lorg/eclipse/paho/a/a/a/b;->f:Lorg/eclipse/paho/a/a/a/f;

    invoke-virtual {v1}, Lorg/eclipse/paho/a/a/a/f;->clear()V

    const/4 v1, 0x0

    .line 3419
    iput-object v1, p1, Lorg/eclipse/paho/a/a/a/b;->c:Ljava/util/Hashtable;

    .line 3420
    iput-object v1, p1, Lorg/eclipse/paho/a/a/a/b;->d:Ljava/util/Vector;

    .line 3421
    iput-object v1, p1, Lorg/eclipse/paho/a/a/a/b;->e:Ljava/util/Vector;

    .line 3422
    iput-object v1, p1, Lorg/eclipse/paho/a/a/a/b;->p:Ljava/util/Hashtable;

    .line 3423
    iput-object v1, p1, Lorg/eclipse/paho/a/a/a/b;->q:Ljava/util/Hashtable;

    .line 3424
    iput-object v1, p1, Lorg/eclipse/paho/a/a/a/b;->r:Ljava/util/Hashtable;

    .line 3425
    iput-object v1, p1, Lorg/eclipse/paho/a/a/a/b;->s:Ljava/util/Hashtable;

    .line 3426
    iput-object v1, p1, Lorg/eclipse/paho/a/a/a/b;->f:Lorg/eclipse/paho/a/a/a/f;

    .line 3427
    iput-object v1, p1, Lorg/eclipse/paho/a/a/a/b;->h:Lorg/eclipse/paho/a/a/a/c;

    .line 3428
    iput-object v1, p1, Lorg/eclipse/paho/a/a/a/b;->g:Lorg/eclipse/paho/a/a/a/a;

    .line 3429
    iput-object v1, p1, Lorg/eclipse/paho/a/a/a/b;->k:Lorg/eclipse/paho/a/a/m;

    .line 3430
    iput-object v1, p1, Lorg/eclipse/paho/a/a/a/b;->o:Lorg/eclipse/paho/a/a/a/a/u;

    .line 249
    iput-object v1, p0, Lorg/eclipse/paho/a/a/a/a;->a:Lorg/eclipse/paho/a/a/a/b;

    .line 250
    iput-object v1, p0, Lorg/eclipse/paho/a/a/a/a;->i:Lorg/eclipse/paho/a/a/a/c;

    .line 251
    iput-object v1, p0, Lorg/eclipse/paho/a/a/a/a;->k:Lorg/eclipse/paho/a/a/m;

    .line 252
    iput-object v1, p0, Lorg/eclipse/paho/a/a/a/a;->h:Lorg/eclipse/paho/a/a/a/e;

    .line 253
    iput-object v1, p0, Lorg/eclipse/paho/a/a/a/a;->l:Lorg/eclipse/paho/a/a/t;

    .line 254
    iput-object v1, p0, Lorg/eclipse/paho/a/a/a/a;->g:Lorg/eclipse/paho/a/a/a/d;

    .line 255
    iput-object v1, p0, Lorg/eclipse/paho/a/a/a/a;->f:[Lorg/eclipse/paho/a/a/a/n;

    .line 256
    iput-object v1, p0, Lorg/eclipse/paho/a/a/a/a;->j:Lorg/eclipse/paho/a/a/n;

    .line 257
    iput-object v1, p0, Lorg/eclipse/paho/a/a/a/a;->m:Lorg/eclipse/paho/a/a/a/f;

    goto :goto_0

    :cond_3
    const/16 p1, 0x7d64

    .line 237
    invoke-static {p1}, Lorg/eclipse/paho/a/a/a/i;->createMqttException(I)Lorg/eclipse/paho/a/a/p;

    move-result-object p1

    throw p1

    .line 235
    :cond_4
    new-instance p1, Lorg/eclipse/paho/a/a/p;

    const/16 v1, 0x7d6e

    invoke-direct {p1, v1}, Lorg/eclipse/paho/a/a/p;-><init>(I)V

    throw p1

    .line 227
    :cond_5
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public connect(Lorg/eclipse/paho/a/a/n;Lorg/eclipse/paho/a/a/v;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 272
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/a;->p:Ljava/lang/Object;

    monitor-enter v1

    .line 273
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/a;->isDisconnected()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/eclipse/paho/a/a/a/a;->q:Z

    if-nez v0, :cond_1

    .line 275
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a;->c:Lorg/eclipse/paho/a/a/b/b;

    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/a;->b:Ljava/lang/String;

    const-string v4, "connect"

    const-string v5, "214"

    invoke-interface {v0, v3, v4, v5}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iput-byte v2, p0, Lorg/eclipse/paho/a/a/a/a;->o:B

    .line 279
    iput-object p1, p0, Lorg/eclipse/paho/a/a/a/a;->j:Lorg/eclipse/paho/a/a/n;

    .line 281
    new-instance v0, Lorg/eclipse/paho/a/a/a/a/d;

    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/a;->d:Lorg/eclipse/paho/a/a/d;

    invoke-interface {v2}, Lorg/eclipse/paho/a/a/d;->getClientId()Ljava/lang/String;

    move-result-object v3

    .line 282
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/a;->j:Lorg/eclipse/paho/a/a/n;

    invoke-virtual {v2}, Lorg/eclipse/paho/a/a/n;->getMqttVersion()I

    move-result v4

    .line 283
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/a;->j:Lorg/eclipse/paho/a/a/n;

    invoke-virtual {v2}, Lorg/eclipse/paho/a/a/n;->isCleanSession()Z

    move-result v5

    .line 284
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/a;->j:Lorg/eclipse/paho/a/a/n;

    invoke-virtual {v2}, Lorg/eclipse/paho/a/a/n;->getKeepAliveInterval()I

    move-result v6

    .line 285
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/a;->j:Lorg/eclipse/paho/a/a/n;

    invoke-virtual {v2}, Lorg/eclipse/paho/a/a/n;->getUserName()Ljava/lang/String;

    move-result-object v7

    .line 286
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/a;->j:Lorg/eclipse/paho/a/a/n;

    invoke-virtual {v2}, Lorg/eclipse/paho/a/a/n;->getPassword()[C

    move-result-object v8

    .line 287
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/a;->j:Lorg/eclipse/paho/a/a/n;

    invoke-virtual {v2}, Lorg/eclipse/paho/a/a/n;->getWillMessage()Lorg/eclipse/paho/a/a/q;

    move-result-object v9

    .line 288
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/a;->j:Lorg/eclipse/paho/a/a/n;

    invoke-virtual {v2}, Lorg/eclipse/paho/a/a/n;->getWillDestination()Ljava/lang/String;

    move-result-object v10

    move-object v2, v0

    .line 281
    invoke-direct/range {v2 .. v10}, Lorg/eclipse/paho/a/a/a/a/d;-><init>(Ljava/lang/String;IZILjava/lang/String;[CLorg/eclipse/paho/a/a/q;Ljava/lang/String;)V

    .line 290
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/a;->a:Lorg/eclipse/paho/a/a/a/b;

    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/a;->j:Lorg/eclipse/paho/a/a/n;

    invoke-virtual {v3}, Lorg/eclipse/paho/a/a/n;->getKeepAliveInterval()I

    move-result v3

    int-to-long v3, v3

    .line 4180
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v3, v4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    iput-wide v3, v2, Lorg/eclipse/paho/a/a/a/b;->i:J

    .line 291
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/a;->a:Lorg/eclipse/paho/a/a/a/b;

    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/a;->j:Lorg/eclipse/paho/a/a/n;

    invoke-virtual {v3}, Lorg/eclipse/paho/a/a/n;->isCleanSession()Z

    move-result v3

    .line 4190
    iput-boolean v3, v2, Lorg/eclipse/paho/a/a/a/b;->j:Z

    .line 292
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/a;->a:Lorg/eclipse/paho/a/a/a/b;

    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/a;->j:Lorg/eclipse/paho/a/a/n;

    invoke-virtual {v3}, Lorg/eclipse/paho/a/a/n;->getMaxInflight()I

    move-result v3

    .line 5176
    iput v3, v2, Lorg/eclipse/paho/a/a/a/b;->l:I

    .line 5177
    new-instance v3, Ljava/util/Vector;

    iget v4, v2, Lorg/eclipse/paho/a/a/a/b;->l:I

    invoke-direct {v3, v4}, Ljava/util/Vector;-><init>(I)V

    iput-object v3, v2, Lorg/eclipse/paho/a/a/a/b;->d:Ljava/util/Vector;

    .line 294
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/a;->m:Lorg/eclipse/paho/a/a/a/f;

    invoke-virtual {v2}, Lorg/eclipse/paho/a/a/a/f;->open()V

    .line 295
    new-instance v2, Lorg/eclipse/paho/a/a/a/a$a;

    invoke-direct {v2, p0, p0, p2, v0}, Lorg/eclipse/paho/a/a/a/a$a;-><init>(Lorg/eclipse/paho/a/a/a/a;Lorg/eclipse/paho/a/a/a/a;Lorg/eclipse/paho/a/a/v;Lorg/eclipse/paho/a/a/a/a/d;)V

    .line 5692
    iget-object v0, v2, Lorg/eclipse/paho/a/a/a/a$a;->d:Lorg/eclipse/paho/a/a/a/a;

    .line 6087
    iget-object v0, v0, Lorg/eclipse/paho/a/a/a/a;->t:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 5693
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 5695
    :cond_0
    iget-object v0, v2, Lorg/eclipse/paho/a/a/a/a$a;->d:Lorg/eclipse/paho/a/a/a/a;

    .line 7087
    iget-object v0, v0, Lorg/eclipse/paho/a/a/a/a;->t:Ljava/util/concurrent/ExecutorService;

    .line 5695
    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 272
    :goto_0
    monitor-exit v1

    return-void

    .line 300
    :cond_1
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a;->c:Lorg/eclipse/paho/a/a/b/b;

    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/a;->b:Ljava/lang/String;

    const-string v4, "connect"

    const-string v5, "207"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-byte v7, p0, Lorg/eclipse/paho/a/a/a/a;->o:B

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v2, v6

    invoke-interface {v0, v3, v4, v5, v2}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 301
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/a;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lorg/eclipse/paho/a/a/a/a;->q:Z

    if-nez v0, :cond_4

    .line 303
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/a;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_3

    .line 305
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/a;->isDisconnecting()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 306
    new-instance v0, Lorg/eclipse/paho/a/a/p;

    const/16 v2, 0x7d66

    invoke-direct {v0, v2}, Lorg/eclipse/paho/a/a/p;-><init>(I)V

    throw v0

    :cond_2
    const/16 v0, 0x7d64

    .line 308
    invoke-static {v0}, Lorg/eclipse/paho/a/a/a/i;->createMqttException(I)Lorg/eclipse/paho/a/a/p;

    move-result-object v0

    throw v0

    .line 304
    :cond_3
    new-instance v0, Lorg/eclipse/paho/a/a/p;

    const/16 v2, 0x7d6e

    invoke-direct {v0, v2}, Lorg/eclipse/paho/a/a/p;-><init>(I)V

    throw v0

    .line 302
    :cond_4
    new-instance v0, Lorg/eclipse/paho/a/a/p;

    const/16 v2, 0x7d6f

    invoke-direct {v0, v2}, Lorg/eclipse/paho/a/a/p;-><init>(I)V

    throw v0

    :catchall_0
    move-exception v0

    .line 272
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public connectComplete(Lorg/eclipse/paho/a/a/a/a/c;Lorg/eclipse/paho/a/a/p;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 316
    invoke-virtual {p1}, Lorg/eclipse/paho/a/a/a/a/c;->getReturnCode()I

    move-result p1

    .line 317
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a;->p:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 321
    :try_start_0
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/a;->c:Lorg/eclipse/paho/a/a/b/b;

    iget-object p2, p0, Lorg/eclipse/paho/a/a/a/a;->b:Ljava/lang/String;

    const-string v2, "connectComplete"

    const-string v3, "215"

    invoke-interface {p1, p2, v2, v3}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iput-byte v1, p0, Lorg/eclipse/paho/a/a/a/a;->o:B

    .line 324
    monitor-exit v0

    return-void

    .line 317
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a;->c:Lorg/eclipse/paho/a/a/b/b;

    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/a;->b:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    const-string p1, "connectComplete"

    const-string v1, "204"

    invoke-interface {v0, v2, p1, v1, v3}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    throw p2

    :catchall_0
    move-exception p1

    .line 317
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public deleteBufferedMessage(I)V
    .locals 1

    .line 862
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a;->s:Lorg/eclipse/paho/a/a/a/h;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/a/a/a/h;->deleteMessage(I)V

    return-void
.end method

.method public disconnect(Lorg/eclipse/paho/a/a/a/a/e;JLorg/eclipse/paho/a/a/v;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 497
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 498
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/a;->isClosed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 502
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/a;->isDisconnected()Z

    move-result v1

    if-nez v1, :cond_3

    .line 506
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/a;->isDisconnecting()Z

    move-result v1

    if-nez v1, :cond_2

    .line 510
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/a;->i:Lorg/eclipse/paho/a/a/a/c;

    .line 7478
    iget-object v2, v2, Lorg/eclipse/paho/a/a/a/c;->a:Ljava/lang/Thread;

    if-eq v1, v2, :cond_1

    .line 518
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/a;->c:Lorg/eclipse/paho/a/a/b/b;

    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/a;->b:Ljava/lang/String;

    const-string v3, "disconnect"

    const-string v4, "218"

    invoke-interface {v1, v2, v3, v4}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 519
    iput-byte v1, p0, Lorg/eclipse/paho/a/a/a/a;->o:B

    .line 520
    new-instance v1, Lorg/eclipse/paho/a/a/a/a$b;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-wide v5, p2

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lorg/eclipse/paho/a/a/a/a$b;-><init>(Lorg/eclipse/paho/a/a/a/a;Lorg/eclipse/paho/a/a/a/a/e;JLorg/eclipse/paho/a/a/v;)V

    .line 7760
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "MQTT Disc: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, v1, Lorg/eclipse/paho/a/a/a/a$b;->e:Lorg/eclipse/paho/a/a/a/a;

    invoke-virtual {p2}, Lorg/eclipse/paho/a/a/a/a;->getClient()Lorg/eclipse/paho/a/a/d;

    move-result-object p2

    invoke-interface {p2}, Lorg/eclipse/paho/a/a/d;->getClientId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lorg/eclipse/paho/a/a/a/a$b;->d:Ljava/lang/String;

    .line 7761
    iget-object p1, v1, Lorg/eclipse/paho/a/a/a/a$b;->e:Lorg/eclipse/paho/a/a/a/a;

    .line 8087
    iget-object p1, p1, Lorg/eclipse/paho/a/a/a/a;->t:Ljava/util/concurrent/ExecutorService;

    if-nez p1, :cond_0

    .line 7762
    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 7764
    :cond_0
    iget-object p1, v1, Lorg/eclipse/paho/a/a/a/a$b;->e:Lorg/eclipse/paho/a/a/a/a;

    .line 9087
    iget-object p1, p1, Lorg/eclipse/paho/a/a/a/a;->t:Ljava/util/concurrent/ExecutorService;

    .line 7764
    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 497
    :goto_0
    monitor-exit v0

    return-void

    .line 512
    :cond_1
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/a;->c:Lorg/eclipse/paho/a/a/b/b;

    iget-object p2, p0, Lorg/eclipse/paho/a/a/a/a;->b:Ljava/lang/String;

    const-string p3, "disconnect"

    const-string p4, "210"

    invoke-interface {p1, p2, p3, p4}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x7d6b

    .line 514
    invoke-static {p1}, Lorg/eclipse/paho/a/a/a/i;->createMqttException(I)Lorg/eclipse/paho/a/a/p;

    move-result-object p1

    throw p1

    .line 508
    :cond_2
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/a;->c:Lorg/eclipse/paho/a/a/b/b;

    iget-object p2, p0, Lorg/eclipse/paho/a/a/a/a;->b:Ljava/lang/String;

    const-string p3, "disconnect"

    const-string p4, "219"

    invoke-interface {p1, p2, p3, p4}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x7d66

    .line 509
    invoke-static {p1}, Lorg/eclipse/paho/a/a/a/i;->createMqttException(I)Lorg/eclipse/paho/a/a/p;

    move-result-object p1

    throw p1

    .line 504
    :cond_3
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/a;->c:Lorg/eclipse/paho/a/a/b/b;

    iget-object p2, p0, Lorg/eclipse/paho/a/a/a/a;->b:Ljava/lang/String;

    const-string p3, "disconnect"

    const-string p4, "211"

    invoke-interface {p1, p2, p3, p4}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x7d65

    .line 505
    invoke-static {p1}, Lorg/eclipse/paho/a/a/a/i;->createMqttException(I)Lorg/eclipse/paho/a/a/p;

    move-result-object p1

    throw p1

    .line 500
    :cond_4
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/a;->c:Lorg/eclipse/paho/a/a/b/b;

    iget-object p2, p0, Lorg/eclipse/paho/a/a/a/a;->b:Ljava/lang/String;

    const-string p3, "disconnect"

    const-string p4, "223"

    invoke-interface {p1, p2, p3, p4}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x7d6f

    .line 501
    invoke-static {p1}, Lorg/eclipse/paho/a/a/a/i;->createMqttException(I)Lorg/eclipse/paho/a/a/p;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    .line 497
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public disconnectForcibly(JJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    const/4 v5, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 526
    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/paho/a/a/a/a;->disconnectForcibly(JJZ)V

    return-void
.end method

.method public disconnectForcibly(JJZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    const/4 v0, 0x2

    .line 537
    iput-byte v0, p0, Lorg/eclipse/paho/a/a/a/a;->o:B

    .line 539
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a;->a:Lorg/eclipse/paho/a/a/a/b;

    if-eqz v0, :cond_0

    .line 540
    invoke-virtual {v0, p1, p2}, Lorg/eclipse/paho/a/a/a/b;->quiesce(J)V

    .line 542
    :cond_0
    new-instance p1, Lorg/eclipse/paho/a/a/v;

    iget-object p2, p0, Lorg/eclipse/paho/a/a/a/a;->d:Lorg/eclipse/paho/a/a/d;

    invoke-interface {p2}, Lorg/eclipse/paho/a/a/d;->getClientId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/eclipse/paho/a/a/v;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    if-eqz p5, :cond_1

    .line 546
    :try_start_0
    new-instance p5, Lorg/eclipse/paho/a/a/a/a/e;

    invoke-direct {p5}, Lorg/eclipse/paho/a/a/a/a/e;-><init>()V

    invoke-virtual {p0, p5, p1}, Lorg/eclipse/paho/a/a/a/a;->a(Lorg/eclipse/paho/a/a/a/a/u;Lorg/eclipse/paho/a/a/v;)V

    .line 549
    invoke-virtual {p1, p3, p4}, Lorg/eclipse/paho/a/a/v;->waitForCompletion(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p3

    .line 556
    iget-object p4, p1, Lorg/eclipse/paho/a/a/v;->internalTok:Lorg/eclipse/paho/a/a/a/q;

    invoke-virtual {p4, p2, p2}, Lorg/eclipse/paho/a/a/a/q;->a(Lorg/eclipse/paho/a/a/a/a/u;Lorg/eclipse/paho/a/a/p;)V

    .line 557
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/paho/a/a/a/a;->shutdownConnection(Lorg/eclipse/paho/a/a/v;Lorg/eclipse/paho/a/a/p;)V

    .line 558
    throw p3

    .line 556
    :catch_0
    :cond_1
    :goto_0
    iget-object p3, p1, Lorg/eclipse/paho/a/a/v;->internalTok:Lorg/eclipse/paho/a/a/a/q;

    invoke-virtual {p3, p2, p2}, Lorg/eclipse/paho/a/a/a/q;->a(Lorg/eclipse/paho/a/a/a/a/u;Lorg/eclipse/paho/a/a/p;)V

    .line 557
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/paho/a/a/a/a;->shutdownConnection(Lorg/eclipse/paho/a/a/v;Lorg/eclipse/paho/a/a/p;)V

    return-void
.end method

.method public getActualInFlight()I
    .locals 1

    .line 916
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a;->a:Lorg/eclipse/paho/a/a/a/b;

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/a/b;->getActualInFlight()I

    move-result v0

    return v0
.end method

.method public getBufferedMessage(I)Lorg/eclipse/paho/a/a/q;
    .locals 1

    .line 857
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a;->s:Lorg/eclipse/paho/a/a/a/h;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/a/a/a/h;->getMessage(I)Lorg/eclipse/paho/a/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/paho/a/a/a;->getMessage()Lorg/eclipse/paho/a/a/a/a/u;

    move-result-object p1

    check-cast p1, Lorg/eclipse/paho/a/a/a/a/o;

    .line 858
    invoke-virtual {p1}, Lorg/eclipse/paho/a/a/a/a/o;->getMessage()Lorg/eclipse/paho/a/a/q;

    move-result-object p1

    return-object p1
.end method

.method public getBufferedMessageCount()I
    .locals 1

    .line 853
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a;->s:Lorg/eclipse/paho/a/a/a/h;

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/a/h;->getMessageCount()I

    move-result v0

    return v0
.end method

.method public getClient()Lorg/eclipse/paho/a/a/d;
    .locals 1

    .line 650
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a;->d:Lorg/eclipse/paho/a/a/d;

    return-object v0
.end method

.method public getClientState()Lorg/eclipse/paho/a/a/a/b;
    .locals 1

    .line 658
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a;->a:Lorg/eclipse/paho/a/a/a/b;

    return-object v0
.end method

.method public getConOptions()Lorg/eclipse/paho/a/a/n;
    .locals 1

    .line 662
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a;->j:Lorg/eclipse/paho/a/a/n;

    return-object v0
.end method

.method public getDebug()Ljava/util/Properties;
    .locals 3

    .line 666
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 667
    iget-byte v1, p0, Lorg/eclipse/paho/a/a/a/a;->o:B

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "conState"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/a;->getClient()Lorg/eclipse/paho/a/a/d;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/paho/a/a/d;->getServerURI()Ljava/lang/String;

    move-result-object v1

    const-string v2, "serverURI"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/a;->i:Lorg/eclipse/paho/a/a/a/c;

    const-string v2, "callback"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    iget-boolean v1, p0, Lorg/eclipse/paho/a/a/a/a;->n:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "stoppingComms"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getKeepAlive()J
    .locals 2

    .line 654
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a;->a:Lorg/eclipse/paho/a/a/a/b;

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/a/b;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNetworkModuleIndex()I
    .locals 1

    .line 629
    iget v0, p0, Lorg/eclipse/paho/a/a/a/a;->e:I

    return v0
.end method

.method public getNetworkModules()[Lorg/eclipse/paho/a/a/a/n;
    .locals 1

    .line 632
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a;->f:[Lorg/eclipse/paho/a/a/a/n;

    return-object v0
.end method

.method public getPendingDeliveryTokens()[Lorg/eclipse/paho/a/a/o;
    .locals 1

    .line 638
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a;->m:Lorg/eclipse/paho/a/a/a/f;

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/a/f;->getOutstandingDelTokens()[Lorg/eclipse/paho/a/a/o;

    move-result-object v0

    return-object v0
.end method

.method public isClosed()Z
    .locals 3

    .line 586
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 587
    :try_start_0
    iget-byte v1, p0, Lorg/eclipse/paho/a/a/a/a;->o:B

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 586
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isConnected()Z
    .locals 2

    .line 562
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 563
    :try_start_0
    iget-byte v1, p0, Lorg/eclipse/paho/a/a/a/a;->o:B

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 562
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isConnecting()Z
    .locals 3

    .line 568
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 569
    :try_start_0
    iget-byte v1, p0, Lorg/eclipse/paho/a/a/a/a;->o:B

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    .line 568
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isDisconnected()Z
    .locals 3

    .line 574
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 575
    :try_start_0
    iget-byte v1, p0, Lorg/eclipse/paho/a/a/a/a;->o:B

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 574
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isDisconnecting()Z
    .locals 3

    .line 580
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 581
    :try_start_0
    iget-byte v1, p0, Lorg/eclipse/paho/a/a/a/a;->o:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 580
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isResting()Z
    .locals 2

    .line 592
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 593
    :try_start_0
    iget-boolean v1, p0, Lorg/eclipse/paho/a/a/a/a;->r:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 592
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public messageArrivedComplete(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 611
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a;->i:Lorg/eclipse/paho/a/a/a/c;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/paho/a/a/a/c;->messageArrivedComplete(II)V

    return-void
.end method

.method public notifyConnect()V
    .locals 5

    .line 872
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a;->s:Lorg/eclipse/paho/a/a/a/h;

    if-eqz v0, :cond_1

    .line 874
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a;->c:Lorg/eclipse/paho/a/a/b/b;

    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/a;->b:Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "notifyConnect"

    const-string v4, "509"

    invoke-interface {v0, v1, v3, v4, v2}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 876
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a;->s:Lorg/eclipse/paho/a/a/a/h;

    new-instance v1, Lorg/eclipse/paho/a/a/a/a$c;

    invoke-direct {v1, p0, v3}, Lorg/eclipse/paho/a/a/a/a$c;-><init>(Lorg/eclipse/paho/a/a/a/a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/a/a/a/h;->setPublishCallback(Lorg/eclipse/paho/a/a/a/k;)V

    .line 877
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a;->t:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 878
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/a;->s:Lorg/eclipse/paho/a/a/a/h;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 880
    :cond_0
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/a;->s:Lorg/eclipse/paho/a/a/a/h;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public removeMessage(Lorg/eclipse/paho/a/a/f;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a;->a:Lorg/eclipse/paho/a/a/a/b;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/a/a/a/b;->a(Lorg/eclipse/paho/a/a/f;)Z

    move-result p1

    return p1
.end method

.method public removeMessageListener(Ljava/lang/String;)V
    .locals 1

    .line 619
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a;->i:Lorg/eclipse/paho/a/a/a/c;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/a/a/a/c;->removeMessageListener(Ljava/lang/String;)V

    return-void
.end method

.method public sendNoWait(Lorg/eclipse/paho/a/a/a/a/u;Lorg/eclipse/paho/a/a/v;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 180
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/a;->isConnected()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "sendNoWait"

    if-nez v0, :cond_4

    .line 181
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/a;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/eclipse/paho/a/a/a/a/d;

    if-nez v0, :cond_4

    .line 182
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/a;->isDisconnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Lorg/eclipse/paho/a/a/a/a/e;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 193
    :cond_1
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a;->s:Lorg/eclipse/paho/a/a/a/h;

    if-eqz v0, :cond_3

    .line 195
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a;->c:Lorg/eclipse/paho/a/a/b/b;

    iget-object v4, p0, Lorg/eclipse/paho/a/a/a/a;->b:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/eclipse/paho/a/a/a/a/u;->getKey()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    const-string v1, "508"

    invoke-interface {v0, v4, v3, v1, v2}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a;->s:Lorg/eclipse/paho/a/a/a/h;

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/a/h;->isPersistBuffer()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 197
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a;->a:Lorg/eclipse/paho/a/a/a/b;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/a/a/a/b;->persistBufferedMessage(Lorg/eclipse/paho/a/a/a/a/u;)V

    .line 199
    :cond_2
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a;->s:Lorg/eclipse/paho/a/a/a/h;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/paho/a/a/a/h;->putMessage(Lorg/eclipse/paho/a/a/a/a/u;Lorg/eclipse/paho/a/a/v;)V

    return-void

    .line 202
    :cond_3
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/a;->c:Lorg/eclipse/paho/a/a/b/b;

    iget-object p2, p0, Lorg/eclipse/paho/a/a/a/a;->b:Ljava/lang/String;

    const-string v0, "208"

    invoke-interface {p1, p2, v3, v0}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x7d68

    .line 203
    invoke-static {p1}, Lorg/eclipse/paho/a/a/a/i;->createMqttException(I)Lorg/eclipse/paho/a/a/p;

    move-result-object p1

    throw p1

    .line 183
    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a;->s:Lorg/eclipse/paho/a/a/a/h;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/a/h;->getMessageCount()I

    move-result v0

    if-eqz v0, :cond_6

    .line 185
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a;->c:Lorg/eclipse/paho/a/a/b/b;

    iget-object v4, p0, Lorg/eclipse/paho/a/a/a/a;->b:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/eclipse/paho/a/a/a/a/u;->getKey()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    const-string v1, "507"

    invoke-interface {v0, v4, v3, v1, v2}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a;->s:Lorg/eclipse/paho/a/a/a/h;

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/a/h;->isPersistBuffer()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 187
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a;->a:Lorg/eclipse/paho/a/a/a/b;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/a/a/a/b;->persistBufferedMessage(Lorg/eclipse/paho/a/a/a/a/u;)V

    .line 189
    :cond_5
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a;->s:Lorg/eclipse/paho/a/a/a/h;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/paho/a/a/a/h;->putMessage(Lorg/eclipse/paho/a/a/a/a/u;Lorg/eclipse/paho/a/a/v;)V

    return-void

    .line 191
    :cond_6
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/paho/a/a/a/a;->a(Lorg/eclipse/paho/a/a/a/a/u;Lorg/eclipse/paho/a/a/v;)V

    return-void
.end method

.method public setCallback(Lorg/eclipse/paho/a/a/j;)V
    .locals 1

    .line 599
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a;->i:Lorg/eclipse/paho/a/a/a/c;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/a/a/a/c;->setCallback(Lorg/eclipse/paho/a/a/j;)V

    return-void
.end method

.method public setDisconnectedMessageBuffer(Lorg/eclipse/paho/a/a/a/h;)V
    .locals 0

    .line 849
    iput-object p1, p0, Lorg/eclipse/paho/a/a/a/a;->s:Lorg/eclipse/paho/a/a/a/h;

    return-void
.end method

.method public setManualAcks(Z)V
    .locals 1

    .line 607
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a;->i:Lorg/eclipse/paho/a/a/a/c;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/a/a/a/c;->setManualAcks(Z)V

    return-void
.end method

.method public setMessageListener(Ljava/lang/String;Lorg/eclipse/paho/a/a/g;)V
    .locals 1

    .line 615
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a;->i:Lorg/eclipse/paho/a/a/a/c;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/paho/a/a/a/c;->setMessageListener(Ljava/lang/String;Lorg/eclipse/paho/a/a/g;)V

    return-void
.end method

.method public setNetworkModuleIndex(I)V
    .locals 0

    .line 626
    iput p1, p0, Lorg/eclipse/paho/a/a/a/a;->e:I

    return-void
.end method

.method public setNetworkModules([Lorg/eclipse/paho/a/a/a/n;)V
    .locals 0

    .line 635
    invoke-virtual {p1}, [Lorg/eclipse/paho/a/a/a/n;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/eclipse/paho/a/a/a/n;

    iput-object p1, p0, Lorg/eclipse/paho/a/a/a/a;->f:[Lorg/eclipse/paho/a/a/a/n;

    return-void
.end method

.method public setReconnectCallback(Lorg/eclipse/paho/a/a/k;)V
    .locals 1

    .line 603
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a;->i:Lorg/eclipse/paho/a/a/a/c;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/a/a/a/c;->setReconnectCallback(Lorg/eclipse/paho/a/a/k;)V

    return-void
.end method

.method public setRestingState(Z)V
    .locals 0

    .line 845
    iput-boolean p1, p0, Lorg/eclipse/paho/a/a/a/a;->r:Z

    return-void
.end method

.method public shutdownConnection(Lorg/eclipse/paho/a/a/v;Lorg/eclipse/paho/a/a/p;)V
    .locals 11

    .line 349
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 350
    :try_start_0
    iget-boolean v1, p0, Lorg/eclipse/paho/a/a/a/a;->n:Z

    if-nez v1, :cond_d

    iget-boolean v1, p0, Lorg/eclipse/paho/a/a/a/a;->q:Z

    if-nez v1, :cond_d

    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/a;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v1, 0x1

    .line 353
    iput-boolean v1, p0, Lorg/eclipse/paho/a/a/a/a;->n:Z

    .line 356
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/a;->c:Lorg/eclipse/paho/a/a/b/b;

    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/a;->b:Ljava/lang/String;

    const-string v4, "shutdownConnection"

    const-string v5, "216"

    invoke-interface {v2, v3, v4, v5}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/a;->isConnected()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/a;->isDisconnecting()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    const/4 v4, 0x2

    .line 359
    iput-byte v4, p0, Lorg/eclipse/paho/a/a/a/a;->o:B

    .line 349
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz p1, :cond_2

    .line 364
    invoke-virtual {p1}, Lorg/eclipse/paho/a/a/v;->isComplete()Z

    move-result v0

    if-nez v0, :cond_2

    .line 365
    iget-object v0, p1, Lorg/eclipse/paho/a/a/v;->internalTok:Lorg/eclipse/paho/a/a/a/q;

    invoke-virtual {v0, p2}, Lorg/eclipse/paho/a/a/a/q;->setException(Lorg/eclipse/paho/a/a/p;)V

    .line 370
    :cond_2
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a;->i:Lorg/eclipse/paho/a/a/a/c;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/a/c;->stop()V

    .line 373
    :cond_3
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a;->g:Lorg/eclipse/paho/a/a/a/d;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/a/d;->stop()V

    .line 377
    :cond_4
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a;->f:[Lorg/eclipse/paho/a/a/a/n;

    if-eqz v0, :cond_5

    .line 378
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a;->f:[Lorg/eclipse/paho/a/a/a/n;

    iget v4, p0, Lorg/eclipse/paho/a/a/a/a;->e:I

    aget-object v0, v0, v4

    if-eqz v0, :cond_5

    .line 380
    invoke-interface {v0}, Lorg/eclipse/paho/a/a/a/n;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 388
    :catch_0
    :cond_5
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a;->m:Lorg/eclipse/paho/a/a/a/f;

    new-instance v4, Lorg/eclipse/paho/a/a/p;

    const/16 v5, 0x7d66

    invoke-direct {v4, v5}, Lorg/eclipse/paho/a/a/p;-><init>(I)V

    .line 7160
    iget-object v5, v0, Lorg/eclipse/paho/a/a/a/f;->c:Ljava/util/Hashtable;

    monitor-enter v5

    .line 7162
    :try_start_2
    iget-object v6, v0, Lorg/eclipse/paho/a/a/a/f;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v7, Lorg/eclipse/paho/a/a/a/f;->a:Ljava/lang/String;

    const-string v8, "quiesce"

    const-string v9, "309"

    new-array v10, v1, [Ljava/lang/Object;

    aput-object v4, v10, v3

    invoke-interface {v6, v7, v8, v9, v10}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7164
    iput-object v4, v0, Lorg/eclipse/paho/a/a/a/f;->d:Lorg/eclipse/paho/a/a/p;

    .line 7160
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 393
    invoke-direct {p0, p1, p2}, Lorg/eclipse/paho/a/a/a/a;->a(Lorg/eclipse/paho/a/a/v;Lorg/eclipse/paho/a/a/p;)Lorg/eclipse/paho/a/a/v;

    move-result-object p1

    .line 397
    :try_start_3
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a;->a:Lorg/eclipse/paho/a/a/a/b;

    invoke-virtual {v0, p2}, Lorg/eclipse/paho/a/a/a/b;->disconnected(Lorg/eclipse/paho/a/a/p;)V

    .line 398
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a;->a:Lorg/eclipse/paho/a/a/a/b;

    .line 7193
    iget-boolean v0, v0, Lorg/eclipse/paho/a/a/a/b;->j:Z

    if-eqz v0, :cond_6

    .line 399
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a;->i:Lorg/eclipse/paho/a/a/a/c;

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/a/c;->removeMessageListeners()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    nop

    .line 404
    :cond_6
    :goto_1
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a;->h:Lorg/eclipse/paho/a/a/a/e;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/a/e;->stop()V

    .line 406
    :cond_7
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a;->l:Lorg/eclipse/paho/a/a/t;

    if-eqz v0, :cond_8

    .line 407
    invoke-interface {v0}, Lorg/eclipse/paho/a/a/t;->stop()V

    .line 411
    :cond_8
    :try_start_4
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a;->s:Lorg/eclipse/paho/a/a/a/h;

    if-nez v0, :cond_9

    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a;->k:Lorg/eclipse/paho/a/a/m;

    if-eqz v0, :cond_9

    .line 412
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a;->k:Lorg/eclipse/paho/a/a/m;

    invoke-interface {v0}, Lorg/eclipse/paho/a/a/m;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 420
    :catch_2
    :cond_9
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 422
    :try_start_5
    iget-object v4, p0, Lorg/eclipse/paho/a/a/a/a;->c:Lorg/eclipse/paho/a/a/b/b;

    iget-object v5, p0, Lorg/eclipse/paho/a/a/a/a;->b:Ljava/lang/String;

    const-string v6, "shutdownConnection"

    const-string v7, "217"

    invoke-interface {v4, v5, v6, v7}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x3

    .line 424
    iput-byte v4, p0, Lorg/eclipse/paho/a/a/a/a;->o:B

    .line 425
    iput-boolean v3, p0, Lorg/eclipse/paho/a/a/a/a;->n:Z

    .line 420
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz p1, :cond_a

    .line 433
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a;->i:Lorg/eclipse/paho/a/a/a/c;

    if-eqz v0, :cond_a

    .line 434
    invoke-virtual {v0, p1}, Lorg/eclipse/paho/a/a/a/c;->asyncOperationComplete(Lorg/eclipse/paho/a/a/v;)V

    :cond_a
    if-eqz v2, :cond_b

    .line 437
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/a;->i:Lorg/eclipse/paho/a/a/a/c;

    if-eqz p1, :cond_b

    .line 439
    invoke-virtual {p1, p2}, Lorg/eclipse/paho/a/a/a/c;->connectionLost(Lorg/eclipse/paho/a/a/p;)V

    .line 443
    :cond_b
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/a;->p:Ljava/lang/Object;

    monitor-enter p1

    .line 444
    :try_start_6
    iget-boolean p2, p0, Lorg/eclipse/paho/a/a/a/a;->q:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz p2, :cond_c

    .line 446
    :try_start_7
    invoke-virtual {p0, v1}, Lorg/eclipse/paho/a/a/a/a;->close(Z)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 443
    :catch_3
    :cond_c
    :try_start_8
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p2

    :catchall_1
    move-exception p1

    .line 420
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    .line 7160
    :try_start_a
    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw p1

    .line 351
    :cond_d
    :goto_2
    :try_start_b
    monitor-exit v0

    return-void

    :catchall_3
    move-exception p1

    .line 349
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw p1
.end method
