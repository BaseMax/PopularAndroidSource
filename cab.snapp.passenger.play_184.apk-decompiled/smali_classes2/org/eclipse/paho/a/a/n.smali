.class public final Lorg/eclipse/paho/a/a/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CLEAN_SESSION_DEFAULT:Z = true

.field public static final CONNECTION_TIMEOUT_DEFAULT:I = 0x1e

.field public static final KEEP_ALIVE_INTERVAL_DEFAULT:I = 0x3c

.field public static final MAX_INFLIGHT_DEFAULT:I = 0xa

.field public static final MQTT_VERSION_3_1:I = 0x3

.field public static final MQTT_VERSION_3_1_1:I = 0x4

.field public static final MQTT_VERSION_DEFAULT:I


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Lorg/eclipse/paho/a/a/q;

.field private e:Ljava/lang/String;

.field private f:[C

.field private g:Ljavax/net/SocketFactory;

.field private h:Ljava/util/Properties;

.field private i:Z

.field private j:Ljavax/net/ssl/HostnameVerifier;

.field private k:Z

.field private l:I

.field private m:[Ljava/lang/String;

.field private n:I

.field private o:Z

.field private p:I

.field private q:Ljava/util/Properties;

.field private r:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3c

    .line 60
    iput v0, p0, Lorg/eclipse/paho/a/a/n;->a:I

    const/16 v0, 0xa

    .line 61
    iput v0, p0, Lorg/eclipse/paho/a/a/n;->b:I

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lorg/eclipse/paho/a/a/n;->c:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lorg/eclipse/paho/a/a/n;->d:Lorg/eclipse/paho/a/a/q;

    .line 67
    iput-object v0, p0, Lorg/eclipse/paho/a/a/n;->h:Ljava/util/Properties;

    const/4 v1, 0x1

    .line 68
    iput-boolean v1, p0, Lorg/eclipse/paho/a/a/n;->i:Z

    .line 69
    iput-object v0, p0, Lorg/eclipse/paho/a/a/n;->j:Ljavax/net/ssl/HostnameVerifier;

    .line 70
    iput-boolean v1, p0, Lorg/eclipse/paho/a/a/n;->k:Z

    const/16 v2, 0x1e

    .line 71
    iput v2, p0, Lorg/eclipse/paho/a/a/n;->l:I

    .line 72
    iput-object v0, p0, Lorg/eclipse/paho/a/a/n;->m:[Ljava/lang/String;

    const/4 v2, 0x0

    .line 73
    iput v2, p0, Lorg/eclipse/paho/a/a/n;->n:I

    .line 74
    iput-boolean v2, p0, Lorg/eclipse/paho/a/a/n;->o:Z

    const v2, 0x1f400

    .line 75
    iput v2, p0, Lorg/eclipse/paho/a/a/n;->p:I

    .line 76
    iput-object v0, p0, Lorg/eclipse/paho/a/a/n;->q:Ljava/util/Properties;

    .line 79
    iput v1, p0, Lorg/eclipse/paho/a/a/n;->r:I

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 204
    invoke-static {p0, p1}, Lorg/eclipse/paho/a/a/w;->validate(Ljava/lang/String;Z)V

    return-void

    .line 201
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private a(Ljava/lang/String;Lorg/eclipse/paho/a/a/q;IZ)V
    .locals 0

    .line 220
    iput-object p1, p0, Lorg/eclipse/paho/a/a/n;->c:Ljava/lang/String;

    .line 221
    iput-object p2, p0, Lorg/eclipse/paho/a/a/n;->d:Lorg/eclipse/paho/a/a/q;

    .line 222
    iget-object p1, p0, Lorg/eclipse/paho/a/a/n;->d:Lorg/eclipse/paho/a/a/q;

    invoke-virtual {p1, p3}, Lorg/eclipse/paho/a/a/q;->setQos(I)V

    .line 223
    iget-object p1, p0, Lorg/eclipse/paho/a/a/n;->d:Lorg/eclipse/paho/a/a/q;

    invoke-virtual {p1, p4}, Lorg/eclipse/paho/a/a/q;->setRetained(Z)V

    .line 225
    iget-object p1, p0, Lorg/eclipse/paho/a/a/n;->d:Lorg/eclipse/paho/a/a/q;

    const/4 p2, 0x0

    .line 1203
    iput-boolean p2, p1, Lorg/eclipse/paho/a/a/q;->b:Z

    return-void
.end method


# virtual methods
.method public final getConnectionTimeout()I
    .locals 1

    .line 308
    iget v0, p0, Lorg/eclipse/paho/a/a/n;->l:I

    return v0
.end method

.method public final getCustomWebSocketHeaders()Ljava/util/Properties;
    .locals 1

    .line 697
    iget-object v0, p0, Lorg/eclipse/paho/a/a/n;->q:Ljava/util/Properties;

    return-object v0
.end method

.method public final getDebug()Ljava/util/Properties;
    .locals 4

    .line 665
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 666
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/n;->getMqttVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MqttVersion"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/n;->isCleanSession()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "CleanSession"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/n;->getConnectionTimeout()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ConTimeout"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/n;->getKeepAliveInterval()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "KeepAliveInterval"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/n;->getUserName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "null"

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/n;->getUserName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v3, "UserName"

    invoke-virtual {v0, v3, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/n;->getWillDestination()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/n;->getWillDestination()Ljava/lang/String;

    move-result-object v1

    :goto_1
    const-string v3, "WillDestination"

    invoke-virtual {v0, v3, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/n;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v1

    const-string v3, "SocketFactory"

    if-nez v1, :cond_2

    .line 673
    invoke-virtual {v0, v3, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 675
    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/n;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    :goto_2
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/n;->getSSLProperties()Ljava/util/Properties;

    move-result-object v1

    const-string v3, "SSLProperties"

    if-nez v1, :cond_3

    .line 678
    invoke-virtual {v0, v3, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 680
    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/n;->getSSLProperties()Ljava/util/Properties;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    return-object v0
.end method

.method public final getExecutorServiceTimeout()I
    .locals 1

    .line 646
    iget v0, p0, Lorg/eclipse/paho/a/a/n;->r:I

    return v0
.end method

.method public final getKeepAliveInterval()I
    .locals 1

    .line 235
    iget v0, p0, Lorg/eclipse/paho/a/a/n;->a:I

    return v0
.end method

.method public final getMaxInflight()I
    .locals 1

    .line 281
    iget v0, p0, Lorg/eclipse/paho/a/a/n;->b:I

    return v0
.end method

.method public final getMaxReconnectDelay()I
    .locals 1

    .line 144
    iget v0, p0, Lorg/eclipse/paho/a/a/n;->p:I

    return v0
.end method

.method public final getMqttVersion()I
    .locals 1

    .line 245
    iget v0, p0, Lorg/eclipse/paho/a/a/n;->n:I

    return v0
.end method

.method public final getPassword()[C
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/eclipse/paho/a/a/n;->f:[C

    return-object v0
.end method

.method public final getSSLHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .line 472
    iget-object v0, p0, Lorg/eclipse/paho/a/a/n;->j:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public final getSSLProperties()Ljava/util/Properties;
    .locals 1

    .line 378
    iget-object v0, p0, Lorg/eclipse/paho/a/a/n;->h:Ljava/util/Properties;

    return-object v0
.end method

.method public final getServerURIs()[Ljava/lang/String;
    .locals 1

    .line 534
    iget-object v0, p0, Lorg/eclipse/paho/a/a/n;->m:[Ljava/lang/String;

    return-object v0
.end method

.method public final getSocketFactory()Ljavax/net/SocketFactory;
    .locals 1

    .line 335
    iget-object v0, p0, Lorg/eclipse/paho/a/a/n;->g:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public final getUserName()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lorg/eclipse/paho/a/a/n;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final getWillDestination()Ljava/lang/String;
    .locals 1

    .line 358
    iget-object v0, p0, Lorg/eclipse/paho/a/a/n;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getWillMessage()Lorg/eclipse/paho/a/a/q;
    .locals 1

    .line 369
    iget-object v0, p0, Lorg/eclipse/paho/a/a/n;->d:Lorg/eclipse/paho/a/a/q;

    return-object v0
.end method

.method public final isAutomaticReconnect()Z
    .locals 1

    .line 622
    iget-boolean v0, p0, Lorg/eclipse/paho/a/a/n;->o:Z

    return v0
.end method

.method public final isCleanSession()Z
    .locals 1

    .line 497
    iget-boolean v0, p0, Lorg/eclipse/paho/a/a/n;->k:Z

    return v0
.end method

.method public final isHttpsHostnameVerificationEnabled()Z
    .locals 1

    .line 459
    iget-boolean v0, p0, Lorg/eclipse/paho/a/a/n;->i:Z

    return v0
.end method

.method public final setAutomaticReconnect(Z)V
    .locals 0

    .line 642
    iput-boolean p1, p0, Lorg/eclipse/paho/a/a/n;->o:Z

    return-void
.end method

.method public final setCleanSession(Z)V
    .locals 0

    .line 525
    iput-boolean p1, p0, Lorg/eclipse/paho/a/a/n;->k:Z

    return-void
.end method

.method public final setConnectionTimeout(I)V
    .locals 0

    if-ltz p1, :cond_0

    .line 325
    iput p1, p0, Lorg/eclipse/paho/a/a/n;->l:I

    return-void

    .line 323
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final setCustomWebSocketHeaders(Ljava/util/Properties;)V
    .locals 0

    .line 693
    iput-object p1, p0, Lorg/eclipse/paho/a/a/n;->q:Ljava/util/Properties;

    return-void
.end method

.method public final setExecutorServiceTimeout(I)V
    .locals 0

    .line 657
    iput p1, p0, Lorg/eclipse/paho/a/a/n;->r:I

    return-void
.end method

.method public final setHttpsHostnameVerificationEnabled(Z)V
    .locals 0

    .line 463
    iput-boolean p1, p0, Lorg/eclipse/paho/a/a/n;->i:Z

    return-void
.end method

.method public final setKeepAliveInterval(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 270
    iput p1, p0, Lorg/eclipse/paho/a/a/n;->a:I

    return-void

    .line 268
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final setMaxInflight(I)V
    .locals 0

    if-ltz p1, :cond_0

    .line 298
    iput p1, p0, Lorg/eclipse/paho/a/a/n;->b:I

    return-void

    .line 296
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final setMaxReconnectDelay(I)V
    .locals 0

    .line 154
    iput p1, p0, Lorg/eclipse/paho/a/a/n;->p:I

    return-void
.end method

.method public final setMqttVersion(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 608
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 609
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "An incorrect version was used \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\". Acceptable version options are 0, 3 and 4."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 608
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 612
    :cond_1
    :goto_0
    iput p1, p0, Lorg/eclipse/paho/a/a/n;->n:I

    return-void
.end method

.method public final setPassword([C)V
    .locals 0

    .line 116
    invoke-virtual {p1}, [C->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [C

    iput-object p1, p0, Lorg/eclipse/paho/a/a/n;->f:[C

    return-void
.end method

.method public final setSSLHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 0

    .line 487
    iput-object p1, p0, Lorg/eclipse/paho/a/a/n;->j:Ljavax/net/ssl/HostnameVerifier;

    return-void
.end method

.method public final setSSLProperties(Ljava/util/Properties;)V
    .locals 0

    .line 455
    iput-object p1, p0, Lorg/eclipse/paho/a/a/n;->h:Ljava/util/Properties;

    return-void
.end method

.method public final setServerURIs([Ljava/lang/String;)V
    .locals 3

    .line 588
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    .line 591
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/eclipse/paho/a/a/n;->m:[Ljava/lang/String;

    return-void

    .line 588
    :cond_0
    aget-object v2, p1, v1

    .line 589
    invoke-static {v2}, Lorg/eclipse/paho/a/a/a/o;->validateURI(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final setSocketFactory(Ljavax/net/SocketFactory;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lorg/eclipse/paho/a/a/n;->g:Ljavax/net/SocketFactory;

    return-void
.end method

.method public final setUserName(Ljava/lang/String;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lorg/eclipse/paho/a/a/n;->e:Ljava/lang/String;

    return-void
.end method

.method public final setWill(Ljava/lang/String;[BIZ)V
    .locals 1

    .line 192
    invoke-static {p1, p2}, Lorg/eclipse/paho/a/a/n;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 193
    new-instance v0, Lorg/eclipse/paho/a/a/q;

    invoke-direct {v0, p2}, Lorg/eclipse/paho/a/a/q;-><init>([B)V

    invoke-direct {p0, p1, v0, p3, p4}, Lorg/eclipse/paho/a/a/n;->a(Ljava/lang/String;Lorg/eclipse/paho/a/a/q;IZ)V

    return-void
.end method

.method public final setWill(Lorg/eclipse/paho/a/a/w;[BIZ)V
    .locals 1

    .line 172
    invoke-virtual {p1}, Lorg/eclipse/paho/a/a/w;->getName()Ljava/lang/String;

    move-result-object p1

    .line 173
    invoke-static {p1, p2}, Lorg/eclipse/paho/a/a/n;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 174
    new-instance v0, Lorg/eclipse/paho/a/a/q;

    invoke-direct {v0, p2}, Lorg/eclipse/paho/a/a/q;-><init>([B)V

    invoke-direct {p0, p1, v0, p3, p4}, Lorg/eclipse/paho/a/a/n;->a(Ljava/lang/String;Lorg/eclipse/paho/a/a/q;IZ)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 701
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/n;->getDebug()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "Connection options"

    invoke-static {v0, v1}, Lorg/eclipse/paho/a/a/e/a;->dumpProperties(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
