.class public Lcom/koushikdutta/async/d/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/q;


# instance fields
.field b:Lcom/koushikdutta/async/h;

.field c:Ljava/io/OutputStream;

.field d:Lcom/koushikdutta/async/a/g;

.field e:Z

.field f:Ljava/lang/Exception;

.field g:Lcom/koushikdutta/async/a/a;

.field h:Lcom/koushikdutta/async/a/g;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/h;)V
    .locals 1

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, p1, v0}, Lcom/koushikdutta/async/d/e;-><init>(Lcom/koushikdutta/async/h;Ljava/io/OutputStream;)V

    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/h;Ljava/io/OutputStream;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/koushikdutta/async/d/e;->b:Lcom/koushikdutta/async/h;

    .line 33
    invoke-virtual {p0, p2}, Lcom/koushikdutta/async/d/e;->setOutputStream(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public end()V
    .locals 1

    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/d/e;->c:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/koushikdutta/async/d/e;->c:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_0
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/d/e;->reportClose(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 26
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/d/e;->reportClose(Ljava/lang/Exception;)V

    return-void
.end method

.method public getClosedCallback()Lcom/koushikdutta/async/a/a;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/koushikdutta/async/d/e;->g:Lcom/koushikdutta/async/a/a;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/koushikdutta/async/d/e;->c:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getServer()Lcom/koushikdutta/async/h;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/koushikdutta/async/d/e;->b:Lcom/koushikdutta/async/h;

    return-object v0
.end method

.method public getWriteableCallback()Lcom/koushikdutta/async/a/g;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/koushikdutta/async/d/e;->d:Lcom/koushikdutta/async/a/g;

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Lcom/koushikdutta/async/d/e;->e:Z

    return v0
.end method

.method public reportClose(Ljava/lang/Exception;)V
    .locals 1

    .line 81
    iget-boolean v0, p0, Lcom/koushikdutta/async/d/e;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Lcom/koushikdutta/async/d/e;->e:Z

    .line 84
    iput-object p1, p0, Lcom/koushikdutta/async/d/e;->f:Ljava/lang/Exception;

    .line 86
    iget-object p1, p0, Lcom/koushikdutta/async/d/e;->g:Lcom/koushikdutta/async/a/a;

    if-eqz p1, :cond_1

    .line 87
    iget-object v0, p0, Lcom/koushikdutta/async/d/e;->f:Ljava/lang/Exception;

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/a/a;->onCompleted(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public setClosedCallback(Lcom/koushikdutta/async/a/a;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/koushikdutta/async/d/e;->g:Lcom/koushikdutta/async/a/a;

    return-void
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/koushikdutta/async/d/e;->c:Ljava/io/OutputStream;

    return-void
.end method

.method public setOutputStreamWritableCallback(Lcom/koushikdutta/async/a/g;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/koushikdutta/async/d/e;->h:Lcom/koushikdutta/async/a/g;

    return-void
.end method

.method public setWriteableCallback(Lcom/koushikdutta/async/a/g;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/koushikdutta/async/d/e;->d:Lcom/koushikdutta/async/a/g;

    return-void
.end method

.method public write(Lcom/koushikdutta/async/l;)V
    .locals 5

    .line 48
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lcom/koushikdutta/async/l;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 49
    invoke-virtual {p1}, Lcom/koushikdutta/async/l;->remove()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 50
    invoke-virtual {p0}, Lcom/koushikdutta/async/d/e;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 51
    invoke-static {v0}, Lcom/koushikdutta/async/l;->reclaim(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p1}, Lcom/koushikdutta/async/l;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 55
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/d/e;->reportClose(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    invoke-virtual {p1}, Lcom/koushikdutta/async/l;->recycle()V

    return-void

    :goto_1
    invoke-virtual {p1}, Lcom/koushikdutta/async/l;->recycle()V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method
