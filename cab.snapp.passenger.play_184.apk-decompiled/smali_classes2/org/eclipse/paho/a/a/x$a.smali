.class final Lorg/eclipse/paho/a/a/x$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/paho/a/a/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lorg/eclipse/paho/a/a/x;


# direct methods
.method private constructor <init>(Lorg/eclipse/paho/a/a/x;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lorg/eclipse/paho/a/a/x$a;->a:Lorg/eclipse/paho/a/a/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/paho/a/a/x;B)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lorg/eclipse/paho/a/a/x$a;-><init>(Lorg/eclipse/paho/a/a/x;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 84
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MQTT Ping: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/eclipse/paho/a/a/x$a;->a:Lorg/eclipse/paho/a/a/x;

    invoke-static {v3}, Lorg/eclipse/paho/a/a/x;->a(Lorg/eclipse/paho/a/a/x;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lorg/eclipse/paho/a/a/x$a;->a:Lorg/eclipse/paho/a/a/x;

    invoke-static {v1}, Lorg/eclipse/paho/a/a/x;->b(Lorg/eclipse/paho/a/a/x;)Lorg/eclipse/paho/a/a/b/b;

    move-result-object v1

    invoke-static {}, Lorg/eclipse/paho/a/a/x;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "PingTask.run"

    const-string v5, "660"

    invoke-interface {v1, v2, v4, v5, v3}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    iget-object v1, p0, Lorg/eclipse/paho/a/a/x$a;->a:Lorg/eclipse/paho/a/a/x;

    invoke-static {v1}, Lorg/eclipse/paho/a/a/x;->c(Lorg/eclipse/paho/a/a/x;)Lorg/eclipse/paho/a/a/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/paho/a/a/a/a;->checkForActivity()Lorg/eclipse/paho/a/a/v;

    .line 89
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void
.end method
