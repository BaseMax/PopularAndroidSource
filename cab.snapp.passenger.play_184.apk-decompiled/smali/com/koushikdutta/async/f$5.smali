.class final Lcom/koushikdutta/async/f$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Lcom/koushikdutta/async/e/a;

.field final b:Lcom/koushikdutta/async/l;

.field final synthetic c:Lcom/koushikdutta/async/f;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/f;)V
    .locals 1

    .line 164
    iput-object p1, p0, Lcom/koushikdutta/async/f$5;->c:Lcom/koushikdutta/async/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    new-instance p1, Lcom/koushikdutta/async/e/a;

    invoke-direct {p1}, Lcom/koushikdutta/async/e/a;-><init>()V

    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/e/a;->setMinAlloc(I)Lcom/koushikdutta/async/e/a;

    move-result-object p1

    iput-object p1, p0, Lcom/koushikdutta/async/f$5;->a:Lcom/koushikdutta/async/e/a;

    .line 166
    new-instance p1, Lcom/koushikdutta/async/l;

    invoke-direct {p1}, Lcom/koushikdutta/async/l;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/f$5;->b:Lcom/koushikdutta/async/l;

    return-void
.end method


# virtual methods
.method public final onDataAvailable(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/l;)V
    .locals 7

    .line 170
    iget-object p1, p0, Lcom/koushikdutta/async/f$5;->c:Lcom/koushikdutta/async/f;

    iget-boolean p1, p1, Lcom/koushikdutta/async/f;->d:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/f$5;->c:Lcom/koushikdutta/async/f;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/koushikdutta/async/f;->d:Z

    .line 175
    iget-object v0, p0, Lcom/koushikdutta/async/f$5;->b:Lcom/koushikdutta/async/l;

    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/l;->get(Lcom/koushikdutta/async/l;)V

    .line 177
    iget-object p2, p0, Lcom/koushikdutta/async/f$5;->b:Lcom/koushikdutta/async/l;

    invoke-virtual {p2}, Lcom/koushikdutta/async/l;->hasRemaining()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 178
    iget-object p2, p0, Lcom/koushikdutta/async/f$5;->b:Lcom/koushikdutta/async/l;

    invoke-virtual {p2}, Lcom/koushikdutta/async/l;->getAll()Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 179
    iget-object v0, p0, Lcom/koushikdutta/async/f$5;->b:Lcom/koushikdutta/async/l;

    invoke-virtual {v0, p2}, Lcom/koushikdutta/async/l;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/l;

    .line 182
    :cond_1
    sget-object p2, Lcom/koushikdutta/async/l;->EMPTY_BYTEBUFFER:Ljava/nio/ByteBuffer;

    .line 184
    :cond_2
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/koushikdutta/async/f$5;->b:Lcom/koushikdutta/async/l;

    invoke-virtual {v0}, Lcom/koushikdutta/async/l;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 185
    iget-object p2, p0, Lcom/koushikdutta/async/f$5;->b:Lcom/koushikdutta/async/l;

    invoke-virtual {p2}, Lcom/koushikdutta/async/l;->remove()Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 187
    :cond_3
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 188
    iget-object v2, p0, Lcom/koushikdutta/async/f$5;->c:Lcom/koushikdutta/async/f;

    iget-object v2, v2, Lcom/koushikdutta/async/f;->p:Lcom/koushikdutta/async/l;

    invoke-virtual {v2}, Lcom/koushikdutta/async/l;->remaining()I

    move-result v2

    .line 193
    iget-object v3, p0, Lcom/koushikdutta/async/f$5;->a:Lcom/koushikdutta/async/e/a;

    invoke-virtual {v3}, Lcom/koushikdutta/async/e/a;->allocate()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 194
    iget-object v4, p0, Lcom/koushikdutta/async/f$5;->c:Lcom/koushikdutta/async/f;

    iget-object v4, v4, Lcom/koushikdutta/async/f;->e:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v4, p2, v3}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v4

    .line 195
    iget-object v5, p0, Lcom/koushikdutta/async/f$5;->c:Lcom/koushikdutta/async/f;

    iget-object v5, v5, Lcom/koushikdutta/async/f;->p:Lcom/koushikdutta/async/l;

    invoke-static {v5, v3}, Lcom/koushikdutta/async/f;->a(Lcom/koushikdutta/async/l;Ljava/nio/ByteBuffer;)V

    .line 196
    iget-object v3, p0, Lcom/koushikdutta/async/f$5;->a:Lcom/koushikdutta/async/e/a;

    iget-object v5, p0, Lcom/koushikdutta/async/f$5;->c:Lcom/koushikdutta/async/f;

    iget-object v5, v5, Lcom/koushikdutta/async/f;->p:Lcom/koushikdutta/async/l;

    invoke-virtual {v5}, Lcom/koushikdutta/async/l;->remaining()I

    move-result v5

    sub-int/2addr v5, v2

    int-to-long v5, v5

    invoke-virtual {v3, v5, v6}, Lcom/koushikdutta/async/e/a;->track(J)V

    .line 198
    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v3

    sget-object v5, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    const/4 v6, -0x1

    if-ne v3, v5, :cond_4

    .line 199
    iget-object v0, p0, Lcom/koushikdutta/async/f$5;->a:Lcom/koushikdutta/async/e/a;

    iget-object v3, p0, Lcom/koushikdutta/async/f$5;->a:Lcom/koushikdutta/async/e/a;

    invoke-virtual {v3}, Lcom/koushikdutta/async/e/a;->getMinAlloc()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v3}, Lcom/koushikdutta/async/e/a;->setMinAlloc(I)Lcom/koushikdutta/async/e/a;

    goto :goto_0

    .line 202
    :cond_4
    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v3

    sget-object v5, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v3, v5, :cond_5

    .line 203
    iget-object v0, p0, Lcom/koushikdutta/async/f$5;->b:Lcom/koushikdutta/async/l;

    invoke-virtual {v0, p2}, Lcom/koushikdutta/async/l;->addFirst(Ljava/nio/ByteBuffer;)V

    .line 204
    iget-object p2, p0, Lcom/koushikdutta/async/f$5;->b:Lcom/koushikdutta/async/l;

    invoke-virtual {p2}, Lcom/koushikdutta/async/l;->size()I

    move-result p2

    if-le p2, v1, :cond_6

    .line 209
    iget-object p2, p0, Lcom/koushikdutta/async/f$5;->b:Lcom/koushikdutta/async/l;

    invoke-virtual {p2}, Lcom/koushikdutta/async/l;->getAll()Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 210
    iget-object v0, p0, Lcom/koushikdutta/async/f$5;->b:Lcom/koushikdutta/async/l;

    invoke-virtual {v0, p2}, Lcom/koushikdutta/async/l;->addFirst(Ljava/nio/ByteBuffer;)V

    .line 211
    sget-object p2, Lcom/koushikdutta/async/l;->EMPTY_BYTEBUFFER:Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_5
    move v6, v0

    .line 213
    :goto_0
    iget-object v0, p0, Lcom/koushikdutta/async/f$5;->c:Lcom/koushikdutta/async/f;

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/koushikdutta/async/f;->a(Lcom/koushikdutta/async/f;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)V

    .line 214
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-ne v0, v6, :cond_2

    iget-object v0, p0, Lcom/koushikdutta/async/f$5;->c:Lcom/koushikdutta/async/f;

    iget-object v0, v0, Lcom/koushikdutta/async/f;->p:Lcom/koushikdutta/async/l;

    invoke-virtual {v0}, Lcom/koushikdutta/async/l;->remaining()I

    move-result v0

    if-ne v2, v0, :cond_2

    .line 215
    iget-object v0, p0, Lcom/koushikdutta/async/f$5;->b:Lcom/koushikdutta/async/l;

    invoke-virtual {v0, p2}, Lcom/koushikdutta/async/l;->addFirst(Ljava/nio/ByteBuffer;)V

    .line 220
    :cond_6
    iget-object p2, p0, Lcom/koushikdutta/async/f$5;->c:Lcom/koushikdutta/async/f;

    invoke-virtual {p2}, Lcom/koushikdutta/async/f;->onDataAvailable()V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    :goto_1
    iget-object p2, p0, Lcom/koushikdutta/async/f$5;->c:Lcom/koushikdutta/async/f;

    iput-boolean p1, p2, Lcom/koushikdutta/async/f;->d:Z

    return-void

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_0
    move-exception p2

    .line 223
    :try_start_1
    invoke-virtual {p2}, Ljavax/net/ssl/SSLException;->printStackTrace()V

    .line 224
    iget-object v0, p0, Lcom/koushikdutta/async/f$5;->c:Lcom/koushikdutta/async/f;

    invoke-static {v0, p2}, Lcom/koushikdutta/async/f;->a(Lcom/koushikdutta/async/f;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 227
    :goto_2
    iget-object v0, p0, Lcom/koushikdutta/async/f$5;->c:Lcom/koushikdutta/async/f;

    iput-boolean p1, v0, Lcom/koushikdutta/async/f;->d:Z

    goto :goto_4

    :goto_3
    throw p2

    :goto_4
    goto :goto_3
.end method
