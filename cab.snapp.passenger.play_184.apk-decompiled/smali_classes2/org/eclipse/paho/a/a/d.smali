.class public interface abstract Lorg/eclipse/paho/a/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation
.end method

.method public abstract connect()Lorg/eclipse/paho/a/a/h;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;,
            Lorg/eclipse/paho/a/a/u;
        }
    .end annotation
.end method

.method public abstract connect(Ljava/lang/Object;Lorg/eclipse/paho/a/a/c;)Lorg/eclipse/paho/a/a/h;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;,
            Lorg/eclipse/paho/a/a/u;
        }
    .end annotation
.end method

.method public abstract connect(Lorg/eclipse/paho/a/a/n;)Lorg/eclipse/paho/a/a/h;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;,
            Lorg/eclipse/paho/a/a/u;
        }
    .end annotation
.end method

.method public abstract connect(Lorg/eclipse/paho/a/a/n;Ljava/lang/Object;Lorg/eclipse/paho/a/a/c;)Lorg/eclipse/paho/a/a/h;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;,
            Lorg/eclipse/paho/a/a/u;
        }
    .end annotation
.end method

.method public abstract disconnect()Lorg/eclipse/paho/a/a/h;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation
.end method

.method public abstract disconnect(J)Lorg/eclipse/paho/a/a/h;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation
.end method

.method public abstract disconnect(JLjava/lang/Object;Lorg/eclipse/paho/a/a/c;)Lorg/eclipse/paho/a/a/h;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation
.end method

.method public abstract disconnect(Ljava/lang/Object;Lorg/eclipse/paho/a/a/c;)Lorg/eclipse/paho/a/a/h;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation
.end method

.method public abstract disconnectForcibly()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation
.end method

.method public abstract disconnectForcibly(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation
.end method

.method public abstract disconnectForcibly(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation
.end method

.method public abstract getClientId()Ljava/lang/String;
.end method

.method public abstract getPendingDeliveryTokens()[Lorg/eclipse/paho/a/a/f;
.end method

.method public abstract getServerURI()Ljava/lang/String;
.end method

.method public abstract isConnected()Z
.end method

.method public abstract messageArrivedComplete(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation
.end method

.method public abstract publish(Ljava/lang/String;Lorg/eclipse/paho/a/a/q;)Lorg/eclipse/paho/a/a/f;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;,
            Lorg/eclipse/paho/a/a/s;
        }
    .end annotation
.end method

.method public abstract publish(Ljava/lang/String;Lorg/eclipse/paho/a/a/q;Ljava/lang/Object;Lorg/eclipse/paho/a/a/c;)Lorg/eclipse/paho/a/a/f;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;,
            Lorg/eclipse/paho/a/a/s;
        }
    .end annotation
.end method

.method public abstract publish(Ljava/lang/String;[BIZ)Lorg/eclipse/paho/a/a/f;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;,
            Lorg/eclipse/paho/a/a/s;
        }
    .end annotation
.end method

.method public abstract publish(Ljava/lang/String;[BIZLjava/lang/Object;Lorg/eclipse/paho/a/a/c;)Lorg/eclipse/paho/a/a/f;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;,
            Lorg/eclipse/paho/a/a/s;
        }
    .end annotation
.end method

.method public abstract reconnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation
.end method

.method public abstract removeMessage(Lorg/eclipse/paho/a/a/f;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation
.end method

.method public abstract setCallback(Lorg/eclipse/paho/a/a/j;)V
.end method

.method public abstract setManualAcks(Z)V
.end method

.method public abstract subscribe(Ljava/lang/String;I)Lorg/eclipse/paho/a/a/h;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation
.end method

.method public abstract subscribe(Ljava/lang/String;ILjava/lang/Object;Lorg/eclipse/paho/a/a/c;)Lorg/eclipse/paho/a/a/h;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation
.end method

.method public abstract subscribe(Ljava/lang/String;ILjava/lang/Object;Lorg/eclipse/paho/a/a/c;Lorg/eclipse/paho/a/a/g;)Lorg/eclipse/paho/a/a/h;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation
.end method

.method public abstract subscribe(Ljava/lang/String;ILorg/eclipse/paho/a/a/g;)Lorg/eclipse/paho/a/a/h;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation
.end method

.method public abstract subscribe([Ljava/lang/String;[I)Lorg/eclipse/paho/a/a/h;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation
.end method

.method public abstract subscribe([Ljava/lang/String;[ILjava/lang/Object;Lorg/eclipse/paho/a/a/c;)Lorg/eclipse/paho/a/a/h;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation
.end method

.method public abstract subscribe([Ljava/lang/String;[ILjava/lang/Object;Lorg/eclipse/paho/a/a/c;[Lorg/eclipse/paho/a/a/g;)Lorg/eclipse/paho/a/a/h;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation
.end method

.method public abstract subscribe([Ljava/lang/String;[I[Lorg/eclipse/paho/a/a/g;)Lorg/eclipse/paho/a/a/h;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation
.end method

.method public abstract unsubscribe(Ljava/lang/String;)Lorg/eclipse/paho/a/a/h;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation
.end method

.method public abstract unsubscribe(Ljava/lang/String;Ljava/lang/Object;Lorg/eclipse/paho/a/a/c;)Lorg/eclipse/paho/a/a/h;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation
.end method

.method public abstract unsubscribe([Ljava/lang/String;)Lorg/eclipse/paho/a/a/h;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation
.end method

.method public abstract unsubscribe([Ljava/lang/String;Ljava/lang/Object;Lorg/eclipse/paho/a/a/c;)Lorg/eclipse/paho/a/a/h;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation
.end method
