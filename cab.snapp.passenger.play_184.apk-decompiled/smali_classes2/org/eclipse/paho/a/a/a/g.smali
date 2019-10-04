.class public final Lorg/eclipse/paho/a/a/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/paho/a/a/c;


# instance fields
.field private a:Lorg/eclipse/paho/a/a/m;

.field private b:Lorg/eclipse/paho/a/a/i;

.field private c:Lorg/eclipse/paho/a/a/a/a;

.field private d:Lorg/eclipse/paho/a/a/n;

.field private e:Lorg/eclipse/paho/a/a/v;

.field private f:Ljava/lang/Object;

.field private g:Lorg/eclipse/paho/a/a/c;

.field private h:I

.field private i:Lorg/eclipse/paho/a/a/k;

.field private j:Z


# direct methods
.method public constructor <init>(Lorg/eclipse/paho/a/a/i;Lorg/eclipse/paho/a/a/m;Lorg/eclipse/paho/a/a/a/a;Lorg/eclipse/paho/a/a/n;Lorg/eclipse/paho/a/a/v;Ljava/lang/Object;Lorg/eclipse/paho/a/a/c;Z)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p2, p0, Lorg/eclipse/paho/a/a/a/g;->a:Lorg/eclipse/paho/a/a/m;

    .line 72
    iput-object p1, p0, Lorg/eclipse/paho/a/a/a/g;->b:Lorg/eclipse/paho/a/a/i;

    .line 73
    iput-object p3, p0, Lorg/eclipse/paho/a/a/a/g;->c:Lorg/eclipse/paho/a/a/a/a;

    .line 74
    iput-object p4, p0, Lorg/eclipse/paho/a/a/a/g;->d:Lorg/eclipse/paho/a/a/n;

    .line 75
    iput-object p5, p0, Lorg/eclipse/paho/a/a/a/g;->e:Lorg/eclipse/paho/a/a/v;

    .line 76
    iput-object p6, p0, Lorg/eclipse/paho/a/a/a/g;->f:Ljava/lang/Object;

    .line 77
    iput-object p7, p0, Lorg/eclipse/paho/a/a/a/g;->g:Lorg/eclipse/paho/a/a/c;

    .line 78
    invoke-virtual {p4}, Lorg/eclipse/paho/a/a/n;->getMqttVersion()I

    move-result p1

    iput p1, p0, Lorg/eclipse/paho/a/a/a/g;->h:I

    .line 79
    iput-boolean p8, p0, Lorg/eclipse/paho/a/a/a/g;->j:Z

    return-void
.end method


# virtual methods
.method public final connect()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/s;
        }
    .end annotation

    .line 170
    new-instance v0, Lorg/eclipse/paho/a/a/v;

    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/g;->b:Lorg/eclipse/paho/a/a/i;

    invoke-virtual {v1}, Lorg/eclipse/paho/a/a/i;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/eclipse/paho/a/a/v;-><init>(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v0, p0}, Lorg/eclipse/paho/a/a/v;->setActionCallback(Lorg/eclipse/paho/a/a/c;)V

    .line 172
    invoke-virtual {v0, p0}, Lorg/eclipse/paho/a/a/v;->setUserContext(Ljava/lang/Object;)V

    .line 174
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/g;->a:Lorg/eclipse/paho/a/a/m;

    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/g;->b:Lorg/eclipse/paho/a/a/i;

    invoke-virtual {v2}, Lorg/eclipse/paho/a/a/i;->getClientId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/g;->b:Lorg/eclipse/paho/a/a/i;

    invoke-virtual {v3}, Lorg/eclipse/paho/a/a/i;->getServerURI()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/eclipse/paho/a/a/m;->open(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/g;->d:Lorg/eclipse/paho/a/a/n;

    invoke-virtual {v1}, Lorg/eclipse/paho/a/a/n;->isCleanSession()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/g;->a:Lorg/eclipse/paho/a/a/m;

    invoke-interface {v1}, Lorg/eclipse/paho/a/a/m;->clear()V

    .line 180
    :cond_0
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/g;->d:Lorg/eclipse/paho/a/a/n;

    invoke-virtual {v1}, Lorg/eclipse/paho/a/a/n;->getMqttVersion()I

    move-result v1

    if-nez v1, :cond_1

    .line 181
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/g;->d:Lorg/eclipse/paho/a/a/n;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/eclipse/paho/a/a/n;->setMqttVersion(I)V

    .line 185
    :cond_1
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/g;->c:Lorg/eclipse/paho/a/a/a/a;

    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/g;->d:Lorg/eclipse/paho/a/a/n;

    invoke-virtual {v1, v2, v0}, Lorg/eclipse/paho/a/a/a/a;->connect(Lorg/eclipse/paho/a/a/n;Lorg/eclipse/paho/a/a/v;)V
    :try_end_0
    .catch Lorg/eclipse/paho/a/a/p; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 188
    invoke-virtual {p0, v0, v1}, Lorg/eclipse/paho/a/a/a/g;->onFailure(Lorg/eclipse/paho/a/a/h;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onFailure(Lorg/eclipse/paho/a/a/h;Ljava/lang/Throwable;)V
    .locals 2

    .line 119
    :goto_0
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/g;->c:Lorg/eclipse/paho/a/a/a/a;

    invoke-virtual {p1}, Lorg/eclipse/paho/a/a/a/a;->getNetworkModules()[Lorg/eclipse/paho/a/a/a/n;

    move-result-object p1

    array-length p1, p1

    .line 120
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/g;->c:Lorg/eclipse/paho/a/a/a/a;

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/a/a;->getNetworkModuleIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x4

    if-lt v0, p1, :cond_4

    .line 122
    iget p1, p0, Lorg/eclipse/paho/a/a/a/g;->h:I

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/g;->d:Lorg/eclipse/paho/a/a/n;

    invoke-virtual {p1}, Lorg/eclipse/paho/a/a/n;->getMqttVersion()I

    move-result p1

    if-ne p1, v1, :cond_0

    goto :goto_2

    .line 144
    :cond_0
    iget p1, p0, Lorg/eclipse/paho/a/a/a/g;->h:I

    if-nez p1, :cond_1

    .line 145
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/g;->d:Lorg/eclipse/paho/a/a/n;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/eclipse/paho/a/a/n;->setMqttVersion(I)V

    .line 148
    :cond_1
    instance-of p1, p2, Lorg/eclipse/paho/a/a/p;

    if-eqz p1, :cond_2

    .line 149
    move-object p1, p2

    check-cast p1, Lorg/eclipse/paho/a/a/p;

    goto :goto_1

    .line 152
    :cond_2
    new-instance p1, Lorg/eclipse/paho/a/a/p;

    invoke-direct {p1, p2}, Lorg/eclipse/paho/a/a/p;-><init>(Ljava/lang/Throwable;)V

    .line 154
    :goto_1
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/g;->e:Lorg/eclipse/paho/a/a/v;

    iget-object v0, v0, Lorg/eclipse/paho/a/a/v;->internalTok:Lorg/eclipse/paho/a/a/a/q;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/paho/a/a/a/q;->a(Lorg/eclipse/paho/a/a/a/a/u;Lorg/eclipse/paho/a/a/p;)V

    .line 155
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/g;->e:Lorg/eclipse/paho/a/a/v;

    iget-object p1, p1, Lorg/eclipse/paho/a/a/v;->internalTok:Lorg/eclipse/paho/a/a/a/q;

    invoke-virtual {p1}, Lorg/eclipse/paho/a/a/a/q;->a()V

    .line 156
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/g;->e:Lorg/eclipse/paho/a/a/v;

    iget-object p1, p1, Lorg/eclipse/paho/a/a/v;->internalTok:Lorg/eclipse/paho/a/a/a/q;

    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/g;->b:Lorg/eclipse/paho/a/a/i;

    .line 2285
    iput-object v0, p1, Lorg/eclipse/paho/a/a/a/q;->j:Lorg/eclipse/paho/a/a/d;

    .line 158
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/g;->g:Lorg/eclipse/paho/a/a/c;

    if-eqz p1, :cond_3

    .line 159
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/g;->e:Lorg/eclipse/paho/a/a/v;

    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/g;->f:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lorg/eclipse/paho/a/a/v;->setUserContext(Ljava/lang/Object;)V

    .line 160
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/g;->g:Lorg/eclipse/paho/a/a/c;

    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/g;->e:Lorg/eclipse/paho/a/a/v;

    invoke-interface {p1, v0, p2}, Lorg/eclipse/paho/a/a/c;->onFailure(Lorg/eclipse/paho/a/a/h;Ljava/lang/Throwable;)V

    :cond_3
    return-void

    .line 124
    :cond_4
    :goto_2
    iget p1, p0, Lorg/eclipse/paho/a/a/a/g;->h:I

    if-nez p1, :cond_6

    .line 125
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/g;->d:Lorg/eclipse/paho/a/a/n;

    invoke-virtual {p1}, Lorg/eclipse/paho/a/a/n;->getMqttVersion()I

    move-result p1

    if-ne p1, v1, :cond_5

    .line 126
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/g;->d:Lorg/eclipse/paho/a/a/n;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lorg/eclipse/paho/a/a/n;->setMqttVersion(I)V

    goto :goto_3

    .line 129
    :cond_5
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/g;->d:Lorg/eclipse/paho/a/a/n;

    invoke-virtual {p1, v1}, Lorg/eclipse/paho/a/a/n;->setMqttVersion(I)V

    .line 130
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/g;->c:Lorg/eclipse/paho/a/a/a/a;

    invoke-virtual {p1, v0}, Lorg/eclipse/paho/a/a/a/a;->setNetworkModuleIndex(I)V

    goto :goto_3

    .line 134
    :cond_6
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/g;->c:Lorg/eclipse/paho/a/a/a/a;

    invoke-virtual {p1, v0}, Lorg/eclipse/paho/a/a/a/a;->setNetworkModuleIndex(I)V

    .line 137
    :goto_3
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/g;->connect()V
    :try_end_0
    .catch Lorg/eclipse/paho/a/a/s; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    goto/16 :goto_0
.end method

.method public final onSuccess(Lorg/eclipse/paho/a/a/h;)V
    .locals 2

    .line 88
    iget v0, p0, Lorg/eclipse/paho/a/a/a/g;->h:I

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/g;->d:Lorg/eclipse/paho/a/a/n;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/a/a/n;->setMqttVersion(I)V

    .line 91
    :cond_0
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/g;->e:Lorg/eclipse/paho/a/a/v;

    iget-object v0, v0, Lorg/eclipse/paho/a/a/v;->internalTok:Lorg/eclipse/paho/a/a/a/q;

    invoke-interface {p1}, Lorg/eclipse/paho/a/a/h;->getResponse()Lorg/eclipse/paho/a/a/a/a/u;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/paho/a/a/a/q;->a(Lorg/eclipse/paho/a/a/a/a/u;Lorg/eclipse/paho/a/a/p;)V

    .line 92
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/g;->e:Lorg/eclipse/paho/a/a/v;

    iget-object p1, p1, Lorg/eclipse/paho/a/a/v;->internalTok:Lorg/eclipse/paho/a/a/a/q;

    invoke-virtual {p1}, Lorg/eclipse/paho/a/a/a/q;->a()V

    .line 93
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/g;->e:Lorg/eclipse/paho/a/a/v;

    iget-object p1, p1, Lorg/eclipse/paho/a/a/v;->internalTok:Lorg/eclipse/paho/a/a/a/q;

    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/g;->b:Lorg/eclipse/paho/a/a/i;

    .line 1285
    iput-object v0, p1, Lorg/eclipse/paho/a/a/a/q;->j:Lorg/eclipse/paho/a/a/d;

    .line 95
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/g;->c:Lorg/eclipse/paho/a/a/a/a;

    invoke-virtual {p1}, Lorg/eclipse/paho/a/a/a/a;->notifyConnect()V

    .line 97
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/g;->g:Lorg/eclipse/paho/a/a/c;

    if-eqz p1, :cond_1

    .line 98
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/g;->e:Lorg/eclipse/paho/a/a/v;

    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/g;->f:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lorg/eclipse/paho/a/a/v;->setUserContext(Ljava/lang/Object;)V

    .line 99
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/g;->g:Lorg/eclipse/paho/a/a/c;

    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/g;->e:Lorg/eclipse/paho/a/a/v;

    invoke-interface {p1, v0}, Lorg/eclipse/paho/a/a/c;->onSuccess(Lorg/eclipse/paho/a/a/h;)V

    .line 102
    :cond_1
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/g;->i:Lorg/eclipse/paho/a/a/k;

    if-eqz p1, :cond_2

    .line 103
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/g;->c:Lorg/eclipse/paho/a/a/a/a;

    invoke-virtual {p1}, Lorg/eclipse/paho/a/a/a/a;->getNetworkModules()[Lorg/eclipse/paho/a/a/a/n;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/g;->c:Lorg/eclipse/paho/a/a/a/a;

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/a/a;->getNetworkModuleIndex()I

    move-result v0

    aget-object p1, p1, v0

    invoke-interface {p1}, Lorg/eclipse/paho/a/a/a/n;->getServerURI()Ljava/lang/String;

    move-result-object p1

    .line 104
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/g;->i:Lorg/eclipse/paho/a/a/k;

    iget-boolean v1, p0, Lorg/eclipse/paho/a/a/a/g;->j:Z

    invoke-interface {v0, v1, p1}, Lorg/eclipse/paho/a/a/k;->connectComplete(ZLjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final setMqttCallbackExtended(Lorg/eclipse/paho/a/a/k;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lorg/eclipse/paho/a/a/a/g;->i:Lorg/eclipse/paho/a/a/k;

    return-void
.end method
