.class public final Lcom/koushikdutta/async/http/spdy/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/spdy/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field a:J

.field b:Lcom/koushikdutta/async/a/g;

.field final c:I

.field d:Lcom/koushikdutta/async/a/a;

.field e:Lcom/koushikdutta/async/a/a;

.field f:Lcom/koushikdutta/async/a/d;

.field g:Lcom/koushikdutta/async/l;

.field h:Lcom/koushikdutta/async/b/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/b/i<",
            "Ljava/util/List<",
            "Lcom/koushikdutta/async/http/spdy/g;",
            ">;>;"
        }
    .end annotation
.end field

.field i:Z

.field j:I

.field k:Z

.field l:Lcom/koushikdutta/async/l;

.field final synthetic m:Lcom/koushikdutta/async/http/spdy/a;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/http/spdy/a;IZZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ",
            "Ljava/util/List<",
            "Lcom/koushikdutta/async/http/spdy/g;",
            ">;)V"
        }
    .end annotation

    .line 130
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/a$a;->m:Lcom/koushikdutta/async/http/spdy/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/a$a;->m:Lcom/koushikdutta/async/http/spdy/a;

    iget-object p1, p1, Lcom/koushikdutta/async/http/spdy/a;->l:Lcom/koushikdutta/async/http/spdy/m;

    const/high16 p3, 0x10000

    invoke-virtual {p1, p3}, Lcom/koushikdutta/async/http/spdy/m;->getInitialWindowSize(I)I

    move-result p1

    int-to-long p3, p1

    iput-wide p3, p0, Lcom/koushikdutta/async/http/spdy/a$a;->a:J

    .line 103
    new-instance p1, Lcom/koushikdutta/async/l;

    invoke-direct {p1}, Lcom/koushikdutta/async/l;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/a$a;->g:Lcom/koushikdutta/async/l;

    .line 104
    new-instance p1, Lcom/koushikdutta/async/b/i;

    invoke-direct {p1}, Lcom/koushikdutta/async/b/i;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/a$a;->h:Lcom/koushikdutta/async/b/i;

    const/4 p1, 0x1

    .line 105
    iput-boolean p1, p0, Lcom/koushikdutta/async/http/spdy/a$a;->i:Z

    .line 202
    new-instance p1, Lcom/koushikdutta/async/l;

    invoke-direct {p1}, Lcom/koushikdutta/async/l;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/a$a;->l:Lcom/koushikdutta/async/l;

    .line 131
    iput p2, p0, Lcom/koushikdutta/async/http/spdy/a$a;->c:I

    return-void
.end method


# virtual methods
.method public final addBytesToWriteWindow(J)V
    .locals 5

    .line 140
    iget-wide v0, p0, Lcom/koushikdutta/async/http/spdy/a$a;->a:J

    add-long/2addr p1, v0

    .line 141
    iput-wide p1, p0, Lcom/koushikdutta/async/http/spdy/a$a;->a:J

    .line 142
    iget-wide p1, p0, Lcom/koushikdutta/async/http/spdy/a$a;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-lez v4, :cond_0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    .line 143
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/a$a;->b:Lcom/koushikdutta/async/a/g;

    invoke-static {p1}, Lcom/koushikdutta/async/af;->writable(Lcom/koushikdutta/async/a/g;)V

    :cond_0
    return-void
.end method

.method public final charset()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final close()V
    .locals 1

    const/4 v0, 0x0

    .line 179
    iput-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/a$a;->i:Z

    return-void
.end method

.method public final end()V
    .locals 4

    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/a$a;->m:Lcom/koushikdutta/async/http/spdy/a;

    iget-object v0, v0, Lcom/koushikdutta/async/http/spdy/a;->d:Lcom/koushikdutta/async/http/spdy/f;

    const/4 v1, 0x1

    iget v2, p0, Lcom/koushikdutta/async/http/spdy/a$a;->c:I

    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/a$a;->l:Lcom/koushikdutta/async/l;

    invoke-interface {v0, v1, v2, v3}, Lcom/koushikdutta/async/http/spdy/f;->data(ZILcom/koushikdutta/async/l;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 247
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final getClosedCallback()Lcom/koushikdutta/async/a/a;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/a$a;->d:Lcom/koushikdutta/async/a/a;

    return-object v0
.end method

.method public final getConnection()Lcom/koushikdutta/async/http/spdy/a;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/a$a;->m:Lcom/koushikdutta/async/http/spdy/a;

    return-object v0
.end method

.method public final getDataCallback()Lcom/koushikdutta/async/a/d;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/a$a;->f:Lcom/koushikdutta/async/a/d;

    return-object v0
.end method

.method public final getEndCallback()Lcom/koushikdutta/async/a/a;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/a$a;->e:Lcom/koushikdutta/async/a/a;

    return-object v0
.end method

.method public final getServer()Lcom/koushikdutta/async/h;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/a$a;->m:Lcom/koushikdutta/async/http/spdy/a;

    iget-object v0, v0, Lcom/koushikdutta/async/http/spdy/a;->a:Lcom/koushikdutta/async/j;

    invoke-interface {v0}, Lcom/koushikdutta/async/j;->getServer()Lcom/koushikdutta/async/h;

    move-result-object v0

    return-object v0
.end method

.method public final getWriteableCallback()Lcom/koushikdutta/async/a/g;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/a$a;->b:Lcom/koushikdutta/async/a/g;

    return-object v0
.end method

.method public final headers()Lcom/koushikdutta/async/b/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/koushikdutta/async/b/i<",
            "Ljava/util/List<",
            "Lcom/koushikdutta/async/http/spdy/g;",
            ">;>;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/a$a;->h:Lcom/koushikdutta/async/b/i;

    return-object v0
.end method

.method public final isChunked()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isLocallyInitiated()Z
    .locals 4

    .line 135
    iget v0, p0, Lcom/koushikdutta/async/http/spdy/a$a;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 136
    :goto_0
    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/a$a;->m:Lcom/koushikdutta/async/http/spdy/a;

    iget-boolean v3, v3, Lcom/koushikdutta/async/http/spdy/a;->h:Z

    if-ne v3, v0, :cond_1

    return v1

    :cond_1
    return v2
.end method

.method public final isOpen()Z
    .locals 1

    .line 238
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/a$a;->i:Z

    return v0
.end method

.method public final isPaused()Z
    .locals 1

    .line 184
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/a$a;->k:Z

    return v0
.end method

.method public final pause()V
    .locals 1

    const/4 v0, 0x1

    .line 169
    iput-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/a$a;->k:Z

    return-void
.end method

.method public final receiveHeaders(Ljava/util/List;Lcom/koushikdutta/async/http/spdy/HeadersMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/koushikdutta/async/http/spdy/g;",
            ">;",
            "Lcom/koushikdutta/async/http/spdy/HeadersMode;",
            ")V"
        }
    .end annotation

    .line 262
    iget-object p2, p0, Lcom/koushikdutta/async/http/spdy/a$a;->h:Lcom/koushikdutta/async/b/i;

    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/b/i;->setComplete(Ljava/lang/Object;)Z

    return-void
.end method

.method public final resume()V
    .locals 1

    const/4 v0, 0x0

    .line 174
    iput-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/a$a;->k:Z

    return-void
.end method

.method public final setClosedCallback(Lcom/koushikdutta/async/a/a;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/a$a;->d:Lcom/koushikdutta/async/a/a;

    return-void
.end method

.method public final setDataCallback(Lcom/koushikdutta/async/a/d;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/a$a;->f:Lcom/koushikdutta/async/a/d;

    return-void
.end method

.method public final setEndCallback(Lcom/koushikdutta/async/a/a;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/a$a;->e:Lcom/koushikdutta/async/a/a;

    return-void
.end method

.method public final setWriteableCallback(Lcom/koushikdutta/async/a/g;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/a$a;->b:Lcom/koushikdutta/async/a/g;

    return-void
.end method

.method public final write(Lcom/koushikdutta/async/l;)V
    .locals 5

    .line 205
    iget-wide v0, p0, Lcom/koushikdutta/async/http/spdy/a$a;->a:J

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/a$a;->m:Lcom/koushikdutta/async/http/spdy/a;

    iget-wide v2, v2, Lcom/koushikdutta/async/http/spdy/a;->k:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 206
    invoke-virtual {p1}, Lcom/koushikdutta/async/l;->remaining()I

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 210
    :cond_0
    invoke-virtual {p1}, Lcom/koushikdutta/async/l;->remaining()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 211
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/a$a;->l:Lcom/koushikdutta/async/l;

    invoke-virtual {v1}, Lcom/koushikdutta/async/l;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_1

    .line 213
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/a$a;->l:Lcom/koushikdutta/async/l;

    invoke-virtual {p1, v1, v0}, Lcom/koushikdutta/async/l;->get(Lcom/koushikdutta/async/l;I)V

    .line 214
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/a$a;->l:Lcom/koushikdutta/async/l;

    goto :goto_0

    .line 212
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "wtf"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 218
    :cond_2
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/a$a;->m:Lcom/koushikdutta/async/http/spdy/a;

    iget-object v1, v1, Lcom/koushikdutta/async/http/spdy/a;->d:Lcom/koushikdutta/async/http/spdy/f;

    const/4 v2, 0x0

    iget v3, p0, Lcom/koushikdutta/async/http/spdy/a$a;->c:I

    invoke-interface {v1, v2, v3, p1}, Lcom/koushikdutta/async/http/spdy/f;->data(ZILcom/koushikdutta/async/l;)V

    .line 219
    iget-wide v1, p0, Lcom/koushikdutta/async/http/spdy/a$a;->a:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/koushikdutta/async/http/spdy/a$a;->a:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 222
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
