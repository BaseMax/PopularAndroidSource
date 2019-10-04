.class public interface abstract Lcom/pusher/java_websocket/framing/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/pusher/java_websocket/framing/Framedata;


# virtual methods
.method public abstract setFin(Z)V
.end method

.method public abstract setOptcode(Lcom/pusher/java_websocket/framing/Framedata$Opcode;)V
.end method

.method public abstract setPayload(Ljava/nio/ByteBuffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pusher/java_websocket/b/b;
        }
    .end annotation
.end method

.method public abstract setTransferemasked(Z)V
.end method
