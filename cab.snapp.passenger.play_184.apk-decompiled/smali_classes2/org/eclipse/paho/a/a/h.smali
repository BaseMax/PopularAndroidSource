.class public interface abstract Lorg/eclipse/paho/a/a/h;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getActionCallback()Lorg/eclipse/paho/a/a/c;
.end method

.method public abstract getClient()Lorg/eclipse/paho/a/a/d;
.end method

.method public abstract getException()Lorg/eclipse/paho/a/a/p;
.end method

.method public abstract getGrantedQos()[I
.end method

.method public abstract getMessageId()I
.end method

.method public abstract getResponse()Lorg/eclipse/paho/a/a/a/a/u;
.end method

.method public abstract getSessionPresent()Z
.end method

.method public abstract getTopics()[Ljava/lang/String;
.end method

.method public abstract getUserContext()Ljava/lang/Object;
.end method

.method public abstract isComplete()Z
.end method

.method public abstract setActionCallback(Lorg/eclipse/paho/a/a/c;)V
.end method

.method public abstract setUserContext(Ljava/lang/Object;)V
.end method

.method public abstract waitForCompletion()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation
.end method

.method public abstract waitForCompletion(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation
.end method
