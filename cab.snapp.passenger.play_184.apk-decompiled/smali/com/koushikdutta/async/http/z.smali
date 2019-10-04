.class public interface abstract Lcom/koushikdutta/async/http/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/http/z$b;,
        Lcom/koushikdutta/async/http/z$a;,
        Lcom/koushikdutta/async/http/z$c;
    }
.end annotation


# virtual methods
.method public abstract getPongCallback()Lcom/koushikdutta/async/http/z$b;
.end method

.method public abstract getSocket()Lcom/koushikdutta/async/j;
.end method

.method public abstract getStringCallback()Lcom/koushikdutta/async/http/z$c;
.end method

.method public abstract isBuffering()Z
.end method

.method public abstract ping(Ljava/lang/String;)V
.end method

.method public abstract pong(Ljava/lang/String;)V
.end method

.method public abstract send(Ljava/lang/String;)V
.end method

.method public abstract send([B)V
.end method

.method public abstract send([BII)V
.end method

.method public abstract setPingCallback(Lcom/koushikdutta/async/http/z$a;)V
.end method

.method public abstract setPongCallback(Lcom/koushikdutta/async/http/z$b;)V
.end method

.method public abstract setStringCallback(Lcom/koushikdutta/async/http/z$c;)V
.end method
