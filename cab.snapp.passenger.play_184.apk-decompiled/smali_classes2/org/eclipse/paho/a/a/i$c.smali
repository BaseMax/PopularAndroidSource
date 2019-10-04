.class final Lorg/eclipse/paho/a/a/i$c;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/paho/a/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lorg/eclipse/paho/a/a/i;


# direct methods
.method private constructor <init>(Lorg/eclipse/paho/a/a/i;)V
    .locals 0

    .line 1337
    iput-object p1, p0, Lorg/eclipse/paho/a/a/i$c;->a:Lorg/eclipse/paho/a/a/i;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/paho/a/a/i;B)V
    .locals 0

    .line 1337
    invoke-direct {p0, p1}, Lorg/eclipse/paho/a/a/i$c;-><init>(Lorg/eclipse/paho/a/a/i;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1342
    iget-object v0, p0, Lorg/eclipse/paho/a/a/i$c;->a:Lorg/eclipse/paho/a/a/i;

    invoke-static {v0}, Lorg/eclipse/paho/a/a/i;->a(Lorg/eclipse/paho/a/a/i;)Lorg/eclipse/paho/a/a/b/b;

    move-result-object v0

    invoke-static {}, Lorg/eclipse/paho/a/a/i;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReconnectTask.run"

    const-string v3, "506"

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1343
    iget-object v0, p0, Lorg/eclipse/paho/a/a/i$c;->a:Lorg/eclipse/paho/a/a/i;

    invoke-static {v0}, Lorg/eclipse/paho/a/a/i;->b(Lorg/eclipse/paho/a/a/i;)V

    return-void
.end method
