.class public interface abstract Lcom/pusher/client/channel/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/pusher/client/channel/f;


# virtual methods
.method public abstract onUsersInformationReceived(Ljava/lang/String;Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/pusher/client/channel/h;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract userSubscribed(Ljava/lang/String;Lcom/pusher/client/channel/h;)V
.end method

.method public abstract userUnsubscribed(Ljava/lang/String;Lcom/pusher/client/channel/h;)V
.end method
