.class final Lorg/eclipse/paho/android/service/d$1;
.super Lorg/eclipse/paho/android/service/d$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/paho/android/service/d;->connect(Lorg/eclipse/paho/a/a/n;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lorg/eclipse/paho/android/service/d;


# direct methods
.method constructor <init>(Lorg/eclipse/paho/android/service/d;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lorg/eclipse/paho/android/service/d$1;->b:Lorg/eclipse/paho/android/service/d;

    iput-object p3, p0, Lorg/eclipse/paho/android/service/d$1;->a:Landroid/os/Bundle;

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/paho/android/service/d$a;-><init>(Lorg/eclipse/paho/android/service/d;Landroid/os/Bundle;B)V

    return-void
.end method


# virtual methods
.method public final onFailure(Lorg/eclipse/paho/a/a/h;Ljava/lang/Throwable;)V
    .locals 2

    .line 255
    iget-object p1, p0, Lorg/eclipse/paho/android/service/d$1;->a:Landroid/os/Bundle;

    .line 257
    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MqttService.errorMessage"

    .line 255
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object p1, p0, Lorg/eclipse/paho/android/service/d$1;->a:Landroid/os/Bundle;

    const-string v0, "MqttService.exception"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 260
    iget-object p1, p0, Lorg/eclipse/paho/android/service/d$1;->b:Lorg/eclipse/paho/android/service/d;

    .line 3067
    iget-object p1, p1, Lorg/eclipse/paho/android/service/d;->d:Lorg/eclipse/paho/android/service/MqttService;

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "connect fail, call connect to reconnect.reason:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MqttConnection"

    .line 260
    invoke-virtual {p1, v0, p2}, Lorg/eclipse/paho/android/service/MqttService;->traceError(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object p1, p0, Lorg/eclipse/paho/android/service/d$1;->b:Lorg/eclipse/paho/android/service/d;

    iget-object p2, p0, Lorg/eclipse/paho/android/service/d$1;->a:Landroid/os/Bundle;

    invoke-static {p1, p2}, Lorg/eclipse/paho/android/service/d;->a(Lorg/eclipse/paho/android/service/d;Landroid/os/Bundle;)V

    return-void
.end method

.method public final onSuccess(Lorg/eclipse/paho/a/a/h;)V
    .locals 2

    .line 248
    iget-object p1, p0, Lorg/eclipse/paho/android/service/d$1;->b:Lorg/eclipse/paho/android/service/d;

    iget-object v0, p0, Lorg/eclipse/paho/android/service/d$1;->a:Landroid/os/Bundle;

    .line 1067
    invoke-virtual {p1, v0}, Lorg/eclipse/paho/android/service/d;->a(Landroid/os/Bundle;)V

    .line 249
    iget-object p1, p0, Lorg/eclipse/paho/android/service/d$1;->b:Lorg/eclipse/paho/android/service/d;

    .line 2067
    iget-object p1, p1, Lorg/eclipse/paho/android/service/d;->d:Lorg/eclipse/paho/android/service/MqttService;

    const-string v0, "MqttConnection"

    const-string v1, "connect success!"

    .line 249
    invoke-virtual {p1, v0, v1}, Lorg/eclipse/paho/android/service/MqttService;->traceDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
