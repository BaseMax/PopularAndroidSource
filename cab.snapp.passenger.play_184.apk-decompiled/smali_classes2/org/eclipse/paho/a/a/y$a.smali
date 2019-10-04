.class final Lorg/eclipse/paho/a/a/y$a;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/paho/a/a/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lorg/eclipse/paho/a/a/y;


# direct methods
.method private constructor <init>(Lorg/eclipse/paho/a/a/y;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lorg/eclipse/paho/a/a/y$a;->a:Lorg/eclipse/paho/a/a/y;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/paho/a/a/y;B)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lorg/eclipse/paho/a/a/y$a;-><init>(Lorg/eclipse/paho/a/a/y;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 78
    iget-object v0, p0, Lorg/eclipse/paho/a/a/y$a;->a:Lorg/eclipse/paho/a/a/y;

    invoke-static {v0}, Lorg/eclipse/paho/a/a/y;->a(Lorg/eclipse/paho/a/a/y;)Lorg/eclipse/paho/a/a/b/b;

    move-result-object v0

    invoke-static {}, Lorg/eclipse/paho/a/a/y;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "PingTask.run"

    const-string v4, "660"

    invoke-interface {v0, v1, v3, v4, v2}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    iget-object v0, p0, Lorg/eclipse/paho/a/a/y$a;->a:Lorg/eclipse/paho/a/a/y;

    invoke-static {v0}, Lorg/eclipse/paho/a/a/y;->b(Lorg/eclipse/paho/a/a/y;)Lorg/eclipse/paho/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/a/a;->checkForActivity()Lorg/eclipse/paho/a/a/v;

    return-void
.end method
