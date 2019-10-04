.class public Lorg/eclipse/paho/a/a/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/paho/a/a/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/paho/a/a/y$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lorg/eclipse/paho/a/a/b/b;

.field private c:Lorg/eclipse/paho/a/a/a/a;

.field private d:Ljava/util/Timer;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lorg/eclipse/paho/a/a/y;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/a/a/y;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v0, Lorg/eclipse/paho/a/a/y;->a:Ljava/lang/String;

    const-string v1, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    invoke-static {v1, v0}, Lorg/eclipse/paho/a/a/b/c;->getLogger(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/a/a/b/b;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/paho/a/a/y;->b:Lorg/eclipse/paho/a/a/b/b;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 33
    sget-object v0, Lorg/eclipse/paho/a/a/y;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lorg/eclipse/paho/a/a/y;)Lorg/eclipse/paho/a/a/b/b;
    .locals 0

    .line 34
    iget-object p0, p0, Lorg/eclipse/paho/a/a/y;->b:Lorg/eclipse/paho/a/a/b/b;

    return-object p0
.end method

.method static synthetic b(Lorg/eclipse/paho/a/a/y;)Lorg/eclipse/paho/a/a/a/a;
    .locals 0

    .line 36
    iget-object p0, p0, Lorg/eclipse/paho/a/a/y;->c:Lorg/eclipse/paho/a/a/a/a;

    return-object p0
.end method


# virtual methods
.method public init(Lorg/eclipse/paho/a/a/a/a;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 44
    iput-object p1, p0, Lorg/eclipse/paho/a/a/y;->c:Lorg/eclipse/paho/a/a/a/a;

    .line 45
    invoke-virtual {p1}, Lorg/eclipse/paho/a/a/a/a;->getClient()Lorg/eclipse/paho/a/a/d;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/paho/a/a/d;->getClientId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/paho/a/a/y;->e:Ljava/lang/String;

    .line 46
    iget-object p1, p0, Lorg/eclipse/paho/a/a/y;->b:Lorg/eclipse/paho/a/a/b/b;

    iget-object v0, p0, Lorg/eclipse/paho/a/a/y;->e:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/eclipse/paho/a/a/b/b;->setResourceName(Ljava/lang/String;)V

    return-void

    .line 42
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ClientComms cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public schedule(J)V
    .locals 3

    .line 70
    iget-object v0, p0, Lorg/eclipse/paho/a/a/y;->d:Ljava/util/Timer;

    new-instance v1, Lorg/eclipse/paho/a/a/y$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/eclipse/paho/a/a/y$a;-><init>(Lorg/eclipse/paho/a/a/y;B)V

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public start()V
    .locals 6

    .line 53
    iget-object v0, p0, Lorg/eclipse/paho/a/a/y;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v1, Lorg/eclipse/paho/a/a/y;->a:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/eclipse/paho/a/a/y;->e:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "start"

    const-string v5, "659"

    invoke-interface {v0, v1, v3, v5, v2}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    new-instance v0, Ljava/util/Timer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MQTT Ping: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/eclipse/paho/a/a/y;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/paho/a/a/y;->d:Ljava/util/Timer;

    .line 57
    iget-object v0, p0, Lorg/eclipse/paho/a/a/y;->d:Ljava/util/Timer;

    new-instance v1, Lorg/eclipse/paho/a/a/y$a;

    invoke-direct {v1, p0, v4}, Lorg/eclipse/paho/a/a/y$a;-><init>(Lorg/eclipse/paho/a/a/y;B)V

    iget-object v2, p0, Lorg/eclipse/paho/a/a/y;->c:Lorg/eclipse/paho/a/a/a/a;

    invoke-virtual {v2}, Lorg/eclipse/paho/a/a/a/a;->getKeepAlive()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public stop()V
    .locals 5

    .line 63
    iget-object v0, p0, Lorg/eclipse/paho/a/a/y;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v1, Lorg/eclipse/paho/a/a/y;->a:Ljava/lang/String;

    const-string v2, "stop"

    const-string v3, "661"

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lorg/eclipse/paho/a/a/y;->d:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    return-void
.end method
