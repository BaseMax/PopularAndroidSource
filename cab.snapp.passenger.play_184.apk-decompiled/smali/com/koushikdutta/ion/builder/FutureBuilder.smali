.class public interface abstract Lcom/koushikdutta/ion/builder/FutureBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/ion/builder/BitmapFutureBuilder;
.implements Lcom/koushikdutta/ion/builder/GsonFutureBuilder;
.implements Lcom/koushikdutta/ion/builder/ImageViewFutureBuilder;


# virtual methods
.method public abstract as(Lcom/koushikdutta/async/c/a;)Lcom/koushikdutta/ion/future/ResponseFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/koushikdutta/async/c/a<",
            "TT;>;)",
            "Lcom/koushikdutta/ion/future/ResponseFuture<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract asByteArray()Lcom/koushikdutta/ion/future/ResponseFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/koushikdutta/ion/future/ResponseFuture<",
            "[B>;"
        }
    .end annotation
.end method

.method public abstract asDataEmitter()Lcom/koushikdutta/ion/future/ResponseFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/koushikdutta/ion/future/ResponseFuture<",
            "Lcom/koushikdutta/async/n;",
            ">;"
        }
    .end annotation
.end method

.method public abstract asDocument()Lcom/koushikdutta/ion/future/ResponseFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/koushikdutta/ion/future/ResponseFuture<",
            "Lorg/w3c/dom/Document;",
            ">;"
        }
    .end annotation
.end method

.method public abstract asInputStream()Lcom/koushikdutta/ion/future/ResponseFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/koushikdutta/ion/future/ResponseFuture<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end method

.method public abstract asString()Lcom/koushikdutta/ion/future/ResponseFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/koushikdutta/ion/future/ResponseFuture<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract asString(Ljava/nio/charset/Charset;)Lcom/koushikdutta/ion/future/ResponseFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/charset/Charset;",
            ")",
            "Lcom/koushikdutta/ion/future/ResponseFuture<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract group(Ljava/lang/Object;)Lcom/koushikdutta/ion/builder/FutureBuilder;
.end method

.method public abstract withBitmap()Lcom/koushikdutta/ion/builder/Builders$Any$BF;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/koushikdutta/ion/builder/Builders$Any$BF<",
            "+",
            "Lcom/koushikdutta/ion/builder/Builders$Any$BF<",
            "*>;>;"
        }
    .end annotation
.end method

.method public abstract write(Ljava/io/File;)Lcom/koushikdutta/ion/future/ResponseFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcom/koushikdutta/ion/future/ResponseFuture<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end method

.method public abstract write(Ljava/io/OutputStream;)Lcom/koushikdutta/ion/future/ResponseFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/io/OutputStream;",
            ">(TT;)",
            "Lcom/koushikdutta/ion/future/ResponseFuture<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract write(Ljava/io/OutputStream;Z)Lcom/koushikdutta/ion/future/ResponseFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/io/OutputStream;",
            ">(TT;Z)",
            "Lcom/koushikdutta/ion/future/ResponseFuture<",
            "TT;>;"
        }
    .end annotation
.end method
