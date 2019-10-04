.class public interface abstract Lcom/facebook/crypto/d;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getCipherMetaDataLength()I
.end method

.method public abstract wrap(Ljava/io/InputStream;Lcom/facebook/crypto/f;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/facebook/crypto/a/a;,
            Lcom/facebook/crypto/a/b;
        }
    .end annotation
.end method

.method public abstract wrap(Ljava/io/OutputStream;Lcom/facebook/crypto/f;[B)Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/facebook/crypto/a/a;,
            Lcom/facebook/crypto/a/b;
        }
    .end annotation
.end method
