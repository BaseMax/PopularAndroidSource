.class Lorg/eclipse/paho/android/service/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/paho/a/a/h;


# instance fields
.field a:Lorg/eclipse/paho/a/a/h;

.field private b:Lorg/eclipse/paho/a/a/c;

.field private volatile c:Z

.field private volatile d:Lorg/eclipse/paho/a/a/p;

.field private e:Ljava/lang/Object;

.field private f:Lorg/eclipse/paho/android/service/MqttAndroidClient;

.field private g:Ljava/lang/Object;

.field private h:[Ljava/lang/String;

.field private i:Lorg/eclipse/paho/a/a/p;


# direct methods
.method constructor <init>(Lorg/eclipse/paho/android/service/MqttAndroidClient;Ljava/lang/Object;Lorg/eclipse/paho/a/a/c;)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/eclipse/paho/android/service/g;-><init>(Lorg/eclipse/paho/android/service/MqttAndroidClient;Ljava/lang/Object;Lorg/eclipse/paho/a/a/c;[Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lorg/eclipse/paho/android/service/MqttAndroidClient;Ljava/lang/Object;Lorg/eclipse/paho/a/a/c;[Ljava/lang/String;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/android/service/g;->e:Ljava/lang/Object;

    .line 70
    iput-object p1, p0, Lorg/eclipse/paho/android/service/g;->f:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    .line 71
    iput-object p2, p0, Lorg/eclipse/paho/android/service/g;->g:Ljava/lang/Object;

    .line 72
    iput-object p3, p0, Lorg/eclipse/paho/android/service/g;->b:Lorg/eclipse/paho/a/a/c;

    .line 73
    iput-object p4, p0, Lorg/eclipse/paho/android/service/g;->h:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .line 120
    iget-object v0, p0, Lorg/eclipse/paho/android/service/g;->e:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 121
    :try_start_0
    iput-boolean v1, p0, Lorg/eclipse/paho/android/service/g;->c:Z

    .line 122
    iget-object v1, p0, Lorg/eclipse/paho/android/service/g;->e:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 123
    iget-object v1, p0, Lorg/eclipse/paho/android/service/g;->b:Lorg/eclipse/paho/a/a/c;

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lorg/eclipse/paho/android/service/g;->b:Lorg/eclipse/paho/a/a/c;

    invoke-interface {v1, p0}, Lorg/eclipse/paho/a/a/c;->onSuccess(Lorg/eclipse/paho/a/a/h;)V

    .line 126
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final a(Ljava/lang/Throwable;)V
    .locals 2

    .line 133
    iget-object v0, p0, Lorg/eclipse/paho/android/service/g;->e:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 134
    :try_start_0
    iput-boolean v1, p0, Lorg/eclipse/paho/android/service/g;->c:Z

    .line 135
    instance-of v1, p1, Lorg/eclipse/paho/a/a/p;

    if-eqz v1, :cond_0

    .line 136
    move-object v1, p1

    check-cast v1, Lorg/eclipse/paho/a/a/p;

    iput-object v1, p0, Lorg/eclipse/paho/android/service/g;->i:Lorg/eclipse/paho/a/a/p;

    goto :goto_0

    .line 139
    :cond_0
    new-instance v1, Lorg/eclipse/paho/a/a/p;

    invoke-direct {v1, p1}, Lorg/eclipse/paho/a/a/p;-><init>(Ljava/lang/Throwable;)V

    iput-object v1, p0, Lorg/eclipse/paho/android/service/g;->i:Lorg/eclipse/paho/a/a/p;

    .line 141
    :goto_0
    iget-object v1, p0, Lorg/eclipse/paho/android/service/g;->e:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 142
    instance-of v1, p1, Lorg/eclipse/paho/a/a/p;

    if-eqz v1, :cond_1

    .line 143
    move-object v1, p1

    check-cast v1, Lorg/eclipse/paho/a/a/p;

    iput-object v1, p0, Lorg/eclipse/paho/android/service/g;->d:Lorg/eclipse/paho/a/a/p;

    .line 145
    :cond_1
    iget-object v1, p0, Lorg/eclipse/paho/android/service/g;->b:Lorg/eclipse/paho/a/a/c;

    if-eqz v1, :cond_2

    .line 146
    iget-object v1, p0, Lorg/eclipse/paho/android/service/g;->b:Lorg/eclipse/paho/a/a/c;

    invoke-interface {v1, p0, p1}, Lorg/eclipse/paho/a/a/c;->onFailure(Lorg/eclipse/paho/a/a/h;Ljava/lang/Throwable;)V

    .line 148
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getActionCallback()Lorg/eclipse/paho/a/a/c;
    .locals 1

    .line 197
    iget-object v0, p0, Lorg/eclipse/paho/android/service/g;->b:Lorg/eclipse/paho/a/a/c;

    return-object v0
.end method

.method public getClient()Lorg/eclipse/paho/a/a/d;
    .locals 1

    .line 181
    iget-object v0, p0, Lorg/eclipse/paho/android/service/g;->f:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    return-object v0
.end method

.method public getException()Lorg/eclipse/paho/a/a/p;
    .locals 1

    .line 169
    iget-object v0, p0, Lorg/eclipse/paho/android/service/g;->d:Lorg/eclipse/paho/a/a/p;

    return-object v0
.end method

.method public getGrantedQos()[I
    .locals 1

    .line 249
    iget-object v0, p0, Lorg/eclipse/paho/android/service/g;->a:Lorg/eclipse/paho/a/a/h;

    invoke-interface {v0}, Lorg/eclipse/paho/a/a/h;->getGrantedQos()[I

    move-result-object v0

    return-object v0
.end method

.method public getMessageId()I
    .locals 1

    .line 234
    iget-object v0, p0, Lorg/eclipse/paho/android/service/g;->a:Lorg/eclipse/paho/a/a/h;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/eclipse/paho/a/a/h;->getMessageId()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getResponse()Lorg/eclipse/paho/a/a/a/a/u;
    .locals 1

    .line 239
    iget-object v0, p0, Lorg/eclipse/paho/android/service/g;->a:Lorg/eclipse/paho/a/a/h;

    invoke-interface {v0}, Lorg/eclipse/paho/a/a/h;->getResponse()Lorg/eclipse/paho/a/a/a/a/u;

    move-result-object v0

    return-object v0
.end method

.method public getSessionPresent()Z
    .locals 1

    .line 244
    iget-object v0, p0, Lorg/eclipse/paho/android/service/g;->a:Lorg/eclipse/paho/a/a/h;

    invoke-interface {v0}, Lorg/eclipse/paho/a/a/h;->getSessionPresent()Z

    move-result v0

    return v0
.end method

.method public getTopics()[Ljava/lang/String;
    .locals 1

    .line 205
    iget-object v0, p0, Lorg/eclipse/paho/android/service/g;->h:[Ljava/lang/String;

    return-object v0
.end method

.method public getUserContext()Ljava/lang/Object;
    .locals 1

    .line 222
    iget-object v0, p0, Lorg/eclipse/paho/android/service/g;->g:Ljava/lang/Object;

    return-object v0
.end method

.method public isComplete()Z
    .locals 1

    .line 157
    iget-boolean v0, p0, Lorg/eclipse/paho/android/service/g;->c:Z

    return v0
.end method

.method public setActionCallback(Lorg/eclipse/paho/a/a/c;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lorg/eclipse/paho/android/service/g;->b:Lorg/eclipse/paho/a/a/c;

    return-void
.end method

.method public setUserContext(Ljava/lang/Object;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lorg/eclipse/paho/android/service/g;->g:Ljava/lang/Object;

    return-void
.end method

.method public waitForCompletion()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;,
            Lorg/eclipse/paho/a/a/u;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lorg/eclipse/paho/android/service/g;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 83
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/android/service/g;->e:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 88
    :catch_0
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    iget-object v0, p0, Lorg/eclipse/paho/android/service/g;->i:Lorg/eclipse/paho/a/a/p;

    if-nez v0, :cond_0

    return-void

    .line 90
    :cond_0
    throw v0

    .line 88
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public waitForCompletion(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;,
            Lorg/eclipse/paho/a/a/u;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lorg/eclipse/paho/android/service/g;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 102
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/android/service/g;->e:Ljava/lang/Object;

    invoke-virtual {v1, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 107
    :catch_0
    :goto_0
    :try_start_1
    iget-boolean p1, p0, Lorg/eclipse/paho/android/service/g;->c:Z

    if-eqz p1, :cond_1

    .line 110
    iget-object p1, p0, Lorg/eclipse/paho/android/service/g;->i:Lorg/eclipse/paho/a/a/p;

    if-nez p1, :cond_0

    .line 113
    monitor-exit v0

    return-void

    .line 111
    :cond_0
    iget-object p1, p0, Lorg/eclipse/paho/android/service/g;->i:Lorg/eclipse/paho/a/a/p;

    throw p1

    .line 108
    :cond_1
    new-instance p1, Lorg/eclipse/paho/a/a/p;

    const/16 p2, 0x7d00

    invoke-direct {p1, p2}, Lorg/eclipse/paho/a/a/p;-><init>(I)V

    throw p1

    .line 113
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
