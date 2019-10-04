.class final Lorg/eclipse/paho/android/service/a$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/paho/android/service/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lorg/eclipse/paho/android/service/a;

.field private b:Landroid/os/PowerManager$WakeLock;

.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/eclipse/paho/android/service/a;)V
    .locals 1

    .line 130
    iput-object p1, p0, Lorg/eclipse/paho/android/service/a$a;->a:Lorg/eclipse/paho/android/service/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 132
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "MqttService.client."

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/eclipse/paho/android/service/a$a;->a:Lorg/eclipse/paho/android/service/a;

    .line 1042
    iget-object v0, v0, Lorg/eclipse/paho/android/service/a;->c:Lorg/eclipse/paho/android/service/a;

    .line 2042
    iget-object v0, v0, Lorg/eclipse/paho/android/service/a;->a:Lorg/eclipse/paho/a/a/a/a;

    .line 133
    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/a/a;->getClient()Lorg/eclipse/paho/a/a/d;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/paho/a/a/d;->getClientId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/paho/android/service/a$a;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lorg/eclipse/paho/android/service/a$a;)Ljava/lang/String;
    .locals 0

    .line 130
    iget-object p0, p0, Lorg/eclipse/paho/android/service/a$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lorg/eclipse/paho/android/service/a$a;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    .line 130
    iget-object p0, p0, Lorg/eclipse/paho/android/service/a$a;->b:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 144
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Sending Ping at:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 146
    iget-object p1, p0, Lorg/eclipse/paho/android/service/a$a;->a:Lorg/eclipse/paho/android/service/a;

    .line 3042
    iget-object p1, p1, Lorg/eclipse/paho/android/service/a;->b:Lorg/eclipse/paho/android/service/MqttService;

    const-string p2, "power"

    .line 147
    invoke-virtual {p1, p2}, Lorg/eclipse/paho/android/service/MqttService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 148
    iget-object p2, p0, Lorg/eclipse/paho/android/service/a$a;->c:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/paho/android/service/a$a;->b:Landroid/os/PowerManager$WakeLock;

    .line 149
    iget-object p1, p0, Lorg/eclipse/paho/android/service/a$a;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 154
    iget-object p1, p0, Lorg/eclipse/paho/android/service/a$a;->a:Lorg/eclipse/paho/android/service/a;

    .line 4042
    iget-object p1, p1, Lorg/eclipse/paho/android/service/a;->a:Lorg/eclipse/paho/a/a/a/a;

    .line 154
    new-instance p2, Lorg/eclipse/paho/android/service/a$a$1;

    invoke-direct {p2, p0}, Lorg/eclipse/paho/android/service/a$a$1;-><init>(Lorg/eclipse/paho/android/service/a$a;)V

    invoke-virtual {p1, p2}, Lorg/eclipse/paho/a/a/a/a;->checkForActivity(Lorg/eclipse/paho/a/a/c;)Lorg/eclipse/paho/a/a/v;

    move-result-object p1

    if-nez p1, :cond_0

    .line 175
    iget-object p1, p0, Lorg/eclipse/paho/android/service/a$a;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 176
    iget-object p1, p0, Lorg/eclipse/paho/android/service/a$a;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method
