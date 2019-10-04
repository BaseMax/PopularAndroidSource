.class public final Lcab/snapp/d/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/d/a/b;
.implements Lorg/eclipse/paho/a/a/c;
.implements Lorg/eclipse/paho/a/a/j;


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Lcab/snapp/d/a/b/a;

.field private c:Lcab/snapp/d/a/a;

.field private d:Lorg/eclipse/paho/android/service/MqttAndroidClient;

.field private e:Lorg/eclipse/paho/a/a/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcab/snapp/d/a/a;Lcab/snapp/d/a/b/a;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcab/snapp/d/a/a/a;->a:Landroid/content/Context;

    .line 47
    iput-object p3, p0, Lcab/snapp/d/a/a/a;->b:Lcab/snapp/d/a/b/a;

    .line 48
    iput-object p2, p0, Lcab/snapp/d/a/a/a;->c:Lcab/snapp/d/a/a;

    return-void
.end method

.method private a()I
    .locals 1

    .line 128
    iget-object v0, p0, Lcab/snapp/d/a/a/a;->c:Lcab/snapp/d/a/a;

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0}, Lcab/snapp/d/a/a;->getQos()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public final connect()V
    .locals 4

    .line 171
    iget-object v0, p0, Lcab/snapp/d/a/a/a;->d:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 174
    iget-object v0, p0, Lcab/snapp/d/a/a/a;->b:Lcab/snapp/d/a/b/a;

    if-eqz v0, :cond_0

    .line 175
    invoke-interface {v0, v1}, Lcab/snapp/d/a/b/a;->onError(I)V

    :cond_0
    return-void

    .line 181
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 183
    iget-object v0, p0, Lcab/snapp/d/a/a/a;->d:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    invoke-virtual {v0}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->disconnect()Lorg/eclipse/paho/a/a/h;

    .line 185
    :cond_2
    iget-object v0, p0, Lcab/snapp/d/a/a/a;->d:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    iget-object v2, p0, Lcab/snapp/d/a/a/a;->e:Lorg/eclipse/paho/a/a/n;

    const-string v3, "Connect"

    invoke-virtual {v0, v2, v3, p0}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->connect(Lorg/eclipse/paho/a/a/n;Ljava/lang/Object;Lorg/eclipse/paho/a/a/c;)Lorg/eclipse/paho/a/a/h;
    :try_end_0
    .catch Lorg/eclipse/paho/a/a/p; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v2, "MQTT"

    const-string v3, "connect: FAILED"

    .line 189
    invoke-static {v2, v3}, Lcab/snapp/b;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/p;->printStackTrace()V

    .line 191
    iget-object v0, p0, Lcab/snapp/d/a/a/a;->b:Lcab/snapp/d/a/b/a;

    if-eqz v0, :cond_3

    .line 192
    invoke-interface {v0, v1}, Lcab/snapp/d/a/b/a;->onError(I)V

    :cond_3
    return-void
.end method

.method public final connectionLost(Ljava/lang/Throwable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 143
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MQTT"

    invoke-static {v0, p1}, Lcab/snapp/b;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final deliveryComplete(Lorg/eclipse/paho/a/a/f;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "deliveryComplete: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MQTT"

    invoke-static {v0, p1}, Lcab/snapp/b;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final destroy()V
    .locals 1

    .line 117
    iget-object v0, p0, Lcab/snapp/d/a/a/a;->d:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lcab/snapp/d/a/a/a;->disconnect()V

    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lcab/snapp/d/a/a/a;->d:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    .line 121
    iput-object v0, p0, Lcab/snapp/d/a/a/a;->a:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method public final disconnect()V
    .locals 2

    .line 260
    :try_start_0
    iget-object v0, p0, Lcab/snapp/d/a/a/a;->d:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcab/snapp/d/a/a/a;->d:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    invoke-virtual {v0}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcab/snapp/d/a/a/a;->d:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    invoke-virtual {v0}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->disconnect()Lorg/eclipse/paho/a/a/h;
    :try_end_0
    .catch Lorg/eclipse/paho/a/a/p; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 268
    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/p;->printStackTrace()V

    .line 269
    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/p;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MQTT"

    invoke-static {v1, v0}, Lcab/snapp/b;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final isConnected()Z
    .locals 2

    const/4 v0, 0x0

    .line 239
    :try_start_0
    iget-object v1, p0, Lcab/snapp/d/a/a/a;->d:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcab/snapp/d/a/a/a;->d:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    invoke-virtual {v1}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->isConnected()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    .line 243
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public final messageArrived(Ljava/lang/String;Lorg/eclipse/paho/a/a/q;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Message: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p2}, Lorg/eclipse/paho/a/a/q;->getPayload()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MQTT"

    invoke-static {v1, v0}, Lcab/snapp/b;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_0
    iget-object v0, p0, Lcab/snapp/d/a/a/a;->b:Lcab/snapp/d/a/b/a;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 154
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p2}, Lorg/eclipse/paho/a/a/q;->getPayload()[B

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, p1, v1}, Lcab/snapp/d/a/b/a;->onMQTTData(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final onFailure(Lorg/eclipse/paho/a/a/h;Ljava/lang/Throwable;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 230
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MQTT"

    invoke-static {v0, p1}, Lcab/snapp/b;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public final onSuccess(Lorg/eclipse/paho/a/a/h;)V
    .locals 1

    const-string p1, "MQTT"

    const-string v0, "Successfully connected to MQTT server"

    .line 200
    invoke-static {p1, v0}, Lcab/snapp/b;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object p1, p0, Lcab/snapp/d/a/a/a;->b:Lcab/snapp/d/a/b/a;

    if-eqz p1, :cond_0

    .line 202
    invoke-interface {p1}, Lcab/snapp/d/a/b/a;->onConnected()V

    .line 203
    :cond_0
    iget-object p1, p0, Lcab/snapp/d/a/a/a;->c:Lcab/snapp/d/a/a;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcab/snapp/d/a/a;->getChannels()Lcab/snapp/d/a/a$a;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcab/snapp/d/a/a/a;->c:Lcab/snapp/d/a/a;

    invoke-virtual {p1}, Lcab/snapp/d/a/a;->getChannels()Lcab/snapp/d/a/a$a;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/d/a/a$a;->getEvents()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 205
    iget-object p1, p0, Lcab/snapp/d/a/a/a;->c:Lcab/snapp/d/a/a;

    .line 206
    invoke-virtual {p1}, Lcab/snapp/d/a/a;->getChannels()Lcab/snapp/d/a/a$a;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/d/a/a$a;->getEvents()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcab/snapp/d/a/a/a$2;

    invoke-direct {v0, p0}, Lcab/snapp/d/a/a/a$2;-><init>(Lcab/snapp/d/a/a/a;)V

    .line 205
    invoke-virtual {p0, p1, v0}, Lcab/snapp/d/a/a/a;->subscribe(Ljava/lang/String;Lcab/snapp/d/a/b/c;)V

    :cond_1
    return-void
.end method

.method public final publish(Ljava/lang/String;Ljava/lang/String;Lcab/snapp/d/a/b/b;)V
    .locals 3

    .line 384
    iget-object v0, p0, Lcab/snapp/d/a/a/a;->d:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 388
    :try_start_0
    iget-object v0, p0, Lcab/snapp/d/a/a/a;->d:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    .line 1375
    new-instance v1, Lorg/eclipse/paho/a/a/q;

    invoke-direct {v1}, Lorg/eclipse/paho/a/a/q;-><init>()V

    .line 1376
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {v1, p2}, Lorg/eclipse/paho/a/a/q;->setPayload([B)V

    .line 1377
    invoke-direct {p0}, Lcab/snapp/d/a/a/a;->a()I

    move-result p2

    invoke-virtual {v1, p2}, Lorg/eclipse/paho/a/a/q;->setQos(I)V

    const/4 p2, 0x0

    .line 1378
    invoke-virtual {v1, p2}, Lorg/eclipse/paho/a/a/q;->setRetained(Z)V

    const-string p2, "Publish"

    .line 388
    new-instance v2, Lcab/snapp/d/a/a/a$5;

    invoke-direct {v2, p0, p3}, Lcab/snapp/d/a/a/a$5;-><init>(Lcab/snapp/d/a/a/a;Lcab/snapp/d/a/b/b;)V

    invoke-virtual {v0, p1, v1, p2, v2}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->publish(Ljava/lang/String;Lorg/eclipse/paho/a/a/q;Ljava/lang/Object;Lorg/eclipse/paho/a/a/c;)Lorg/eclipse/paho/a/a/f;
    :try_end_0
    .catch Lorg/eclipse/paho/a/a/p; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 412
    invoke-virtual {p1}, Lorg/eclipse/paho/a/a/p;->printStackTrace()V

    if-eqz p3, :cond_0

    .line 415
    invoke-interface {p3}, Lcab/snapp/d/a/b/b;->onPublishFailed()V

    :cond_0
    return-void

    :cond_1
    if-eqz p3, :cond_2

    .line 424
    invoke-interface {p3}, Lcab/snapp/d/a/b/b;->onPublishFailed()V

    :cond_2
    return-void
.end method

.method public final reConnect()V
    .locals 1

    .line 251
    invoke-virtual {p0}, Lcab/snapp/d/a/a/a;->disconnect()V

    .line 252
    invoke-virtual {p0}, Lcab/snapp/d/a/a/a;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    invoke-virtual {p0}, Lcab/snapp/d/a/a/a;->connect()V

    :cond_0
    return-void
.end method

.method public final setConnectionData(Lcab/snapp/d/a/a;)V
    .locals 0

    .line 432
    iput-object p1, p0, Lcab/snapp/d/a/a/a;->c:Lcab/snapp/d/a/a;

    return-void
.end method

.method public final setupMQTTConnection()V
    .locals 7

    .line 53
    iget-object v0, p0, Lcab/snapp/d/a/a/a;->c:Lcab/snapp/d/a/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1065
    invoke-virtual {v0}, Lcab/snapp/d/a/a;->getChannels()Lcab/snapp/d/a/a$a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcab/snapp/d/a/a/a;->c:Lcab/snapp/d/a/a;

    .line 1066
    invoke-virtual {v0}, Lcab/snapp/d/a/a;->getChannels()Lcab/snapp/d/a/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/d/a/a$a;->getEvents()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcab/snapp/d/a/a/a;->c:Lcab/snapp/d/a/a;

    .line 1067
    invoke-virtual {v0}, Lcab/snapp/d/a/a;->getChannels()Lcab/snapp/d/a/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/d/a/a$a;->getEvents()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1069
    iget-object v0, p0, Lcab/snapp/d/a/a/a;->c:Lcab/snapp/d/a/a;

    invoke-virtual {v0}, Lcab/snapp/d/a/a;->getProtocol()Ljava/lang/String;

    move-result-object v0

    .line 1070
    new-instance v2, Lorg/eclipse/paho/android/service/MqttAndroidClient;

    iget-object v3, p0, Lcab/snapp/d/a/a/a;->a:Landroid/content/Context;

    .line 1071
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "://"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcab/snapp/d/a/a/a;->c:Lcab/snapp/d/a/a;

    .line 1072
    invoke-virtual {v0}, Lcab/snapp/d/a/a;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1073
    invoke-static {}, Lorg/eclipse/paho/a/a/l;->generateClientId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "paho"

    const-string v6, "Android_"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v0, v4}, Lorg/eclipse/paho/android/service/MqttAndroidClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcab/snapp/d/a/a/a;->d:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    .line 1076
    iget-object v0, p0, Lcab/snapp/d/a/a/a;->d:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    invoke-virtual {v0, p0}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->setCallback(Lorg/eclipse/paho/a/a/j;)V

    .line 1077
    iget-object v0, p0, Lcab/snapp/d/a/a/a;->d:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->setTraceEnabled(Z)V

    .line 1078
    iget-object v0, p0, Lcab/snapp/d/a/a/a;->d:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    new-instance v2, Lcab/snapp/d/a/a/a$1;

    invoke-direct {v2, p0}, Lcab/snapp/d/a/a/a$1;-><init>(Lcab/snapp/d/a/a/a;)V

    invoke-virtual {v0, v2}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->setTraceCallback(Lorg/eclipse/paho/android/service/h;)V

    .line 1099
    new-instance v0, Lorg/eclipse/paho/a/a/n;

    invoke-direct {v0}, Lorg/eclipse/paho/a/a/n;-><init>()V

    iput-object v0, p0, Lcab/snapp/d/a/a/a;->e:Lorg/eclipse/paho/a/a/n;

    .line 1100
    iget-object v0, p0, Lcab/snapp/d/a/a/a;->e:Lorg/eclipse/paho/a/a/n;

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/a/a/n;->setAutomaticReconnect(Z)V

    .line 1101
    iget-object v0, p0, Lcab/snapp/d/a/a/a;->e:Lorg/eclipse/paho/a/a/n;

    iget-object v1, p0, Lcab/snapp/d/a/a/a;->c:Lcab/snapp/d/a/a;

    invoke-virtual {v1}, Lcab/snapp/d/a/a;->shouldCleanSession()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/a/a/n;->setCleanSession(Z)V

    .line 1102
    iget-object v0, p0, Lcab/snapp/d/a/a/a;->e:Lorg/eclipse/paho/a/a/n;

    iget-object v1, p0, Lcab/snapp/d/a/a/a;->c:Lcab/snapp/d/a/a;

    invoke-virtual {v1}, Lcab/snapp/d/a/a;->getPingInterval()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/a/a/n;->setKeepAliveInterval(I)V

    .line 1103
    iget-object v0, p0, Lcab/snapp/d/a/a/a;->e:Lorg/eclipse/paho/a/a/n;

    iget-object v1, p0, Lcab/snapp/d/a/a/a;->c:Lcab/snapp/d/a/a;

    invoke-virtual {v1}, Lcab/snapp/d/a/a;->getTimeout()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/a/a/n;->setConnectionTimeout(I)V

    .line 1104
    iget-object v0, p0, Lcab/snapp/d/a/a/a;->e:Lorg/eclipse/paho/a/a/n;

    iget-object v1, p0, Lcab/snapp/d/a/a/a;->c:Lcab/snapp/d/a/a;

    invoke-virtual {v1}, Lcab/snapp/d/a/a;->getJwtToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/a/a/n;->setUserName(Ljava/lang/String;)V

    .line 1105
    iget-object v0, p0, Lcab/snapp/d/a/a/a;->e:Lorg/eclipse/paho/a/a/n;

    const-string v1, "12345678"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/a/a/n;->setPassword([C)V

    return-void

    .line 1108
    :cond_1
    iget-object v0, p0, Lcab/snapp/d/a/a/a;->b:Lcab/snapp/d/a/b/a;

    if-eqz v0, :cond_2

    .line 1110
    invoke-interface {v0, v1}, Lcab/snapp/d/a/b/a;->onError(I)V

    :cond_2
    return-void
.end method

.method public final subscribe(Ljava/lang/String;Lcab/snapp/d/a/b/c;)V
    .locals 4

    .line 278
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "try to subscribe to: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PahoMQTTClientInterface"

    invoke-static {v1, v0}, Lcab/snapp/b;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcab/snapp/d/a/a/a;->d:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    :try_start_0
    iget-object v0, p0, Lcab/snapp/d/a/a/a;->d:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    invoke-direct {p0}, Lcab/snapp/d/a/a/a;->a()I

    move-result v1

    const-string v2, "Subscribe"

    new-instance v3, Lcab/snapp/d/a/a/a$3;

    invoke-direct {v3, p0, p2}, Lcab/snapp/d/a/a/a$3;-><init>(Lcab/snapp/d/a/a/a;Lcab/snapp/d/a/b/c;)V

    invoke-virtual {v0, p1, v1, v2, v3}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->subscribe(Ljava/lang/String;ILjava/lang/Object;Lorg/eclipse/paho/a/a/c;)Lorg/eclipse/paho/a/a/h;
    :try_end_0
    .catch Lorg/eclipse/paho/a/a/p; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 307
    invoke-virtual {p1}, Lorg/eclipse/paho/a/a/p;->printStackTrace()V

    if-eqz p2, :cond_0

    .line 310
    invoke-interface {p2}, Lcab/snapp/d/a/b/c;->onSubscribeFailed()V

    :cond_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 317
    invoke-interface {p2}, Lcab/snapp/d/a/b/c;->onSubscribeFailed()V

    :cond_2
    return-void
.end method

.method public final unsubscribe(Ljava/lang/String;Lcab/snapp/d/a/b/d;)V
    .locals 3

    .line 325
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcab/snapp/d/a/a/a;->d:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 329
    :try_start_0
    iget-object v0, p0, Lcab/snapp/d/a/a/a;->d:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    const-string v1, "Unsubscribe"

    new-instance v2, Lcab/snapp/d/a/a/a$4;

    invoke-direct {v2, p0, p2}, Lcab/snapp/d/a/a/a$4;-><init>(Lcab/snapp/d/a/a/a;Lcab/snapp/d/a/b/d;)V

    invoke-virtual {v0, p1, v1, v2}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->unsubscribe(Ljava/lang/String;Ljava/lang/Object;Lorg/eclipse/paho/a/a/c;)Lorg/eclipse/paho/a/a/h;
    :try_end_0
    .catch Lorg/eclipse/paho/a/a/p; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 352
    invoke-virtual {p1}, Lorg/eclipse/paho/a/a/p;->printStackTrace()V

    if-eqz p2, :cond_0

    .line 355
    invoke-interface {p2}, Lcab/snapp/d/a/b/d;->onUnsubscribeFailed()V

    :cond_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 363
    invoke-interface {p2}, Lcab/snapp/d/a/b/d;->onUnsubscribeFailed()V

    :cond_2
    return-void
.end method
