.class final Lcom/koushikdutta/async/af$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/af;->pump(Ljava/io/InputStream;JLcom/koushikdutta/async/q;Lcom/koushikdutta/async/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field a:I

.field b:Lcom/koushikdutta/async/l;

.field c:Lcom/koushikdutta/async/e/a;

.field final synthetic d:Lcom/koushikdutta/async/q;

.field final synthetic e:Ljava/io/InputStream;

.field final synthetic f:J

.field final synthetic g:Lcom/koushikdutta/async/a/a;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/q;Ljava/io/InputStream;JLcom/koushikdutta/async/a/a;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/koushikdutta/async/af$2;->d:Lcom/koushikdutta/async/q;

    iput-object p2, p0, Lcom/koushikdutta/async/af$2;->e:Ljava/io/InputStream;

    iput-wide p3, p0, Lcom/koushikdutta/async/af$2;->f:J

    iput-object p5, p0, Lcom/koushikdutta/async/af$2;->g:Lcom/koushikdutta/async/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 75
    iput p1, p0, Lcom/koushikdutta/async/af$2;->a:I

    .line 82
    new-instance p1, Lcom/koushikdutta/async/l;

    invoke-direct {p1}, Lcom/koushikdutta/async/l;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/af$2;->b:Lcom/koushikdutta/async/l;

    .line 83
    new-instance p1, Lcom/koushikdutta/async/e/a;

    invoke-direct {p1}, Lcom/koushikdutta/async/e/a;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/af$2;->c:Lcom/koushikdutta/async/e/a;

    return-void
.end method

.method private a()V
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/koushikdutta/async/af$2;->d:Lcom/koushikdutta/async/q;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/q;->setClosedCallback(Lcom/koushikdutta/async/a/a;)V

    .line 78
    iget-object v0, p0, Lcom/koushikdutta/async/af$2;->d:Lcom/koushikdutta/async/q;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/q;->setWriteableCallback(Lcom/koushikdutta/async/a/g;)V

    .line 79
    iget-object v0, p0, Lcom/koushikdutta/async/af$2;->b:Lcom/koushikdutta/async/l;

    invoke-virtual {v0}, Lcom/koushikdutta/async/l;->recycle()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/Closeable;

    .line 80
    iget-object v1, p0, Lcom/koushikdutta/async/af$2;->e:Ljava/io/InputStream;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/koushikdutta/async/e/g;->closeQuietly([Ljava/io/Closeable;)V

    return-void
.end method


# virtual methods
.method public final onWriteable()V
    .locals 8

    .line 89
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/af$2;->b:Lcom/koushikdutta/async/l;

    invoke-virtual {v0}, Lcom/koushikdutta/async/l;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_3

    .line 90
    iget-object v0, p0, Lcom/koushikdutta/async/af$2;->c:Lcom/koushikdutta/async/e/a;

    invoke-virtual {v0}, Lcom/koushikdutta/async/e/a;->allocate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 92
    iget-wide v1, p0, Lcom/koushikdutta/async/af$2;->f:J

    iget v3, p0, Lcom/koushikdutta/async/af$2;->a:I

    int-to-long v3, v3

    sub-long/2addr v1, v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 93
    iget-object v3, p0, Lcom/koushikdutta/async/af$2;->e:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    long-to-int v2, v1

    const/4 v1, 0x0

    invoke-virtual {v3, v4, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 94
    iget v3, p0, Lcom/koushikdutta/async/af$2;->a:I

    int-to-long v3, v3

    iget-wide v5, p0, Lcom/koushikdutta/async/af$2;->f:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    goto :goto_0

    .line 99
    :cond_1
    iget-object v3, p0, Lcom/koushikdutta/async/af$2;->c:Lcom/koushikdutta/async/e/a;

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Lcom/koushikdutta/async/e/a;->track(J)V

    .line 100
    iget v3, p0, Lcom/koushikdutta/async/af$2;->a:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/koushikdutta/async/af$2;->a:I

    .line 101
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 102
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 103
    iget-object v1, p0, Lcom/koushikdutta/async/af$2;->b:Lcom/koushikdutta/async/l;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/l;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/l;

    goto :goto_1

    .line 95
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/koushikdutta/async/af$2;->a()V

    .line 96
    iget-object v0, p0, Lcom/koushikdutta/async/af$2;->g:Lcom/koushikdutta/async/a/a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/a/a;->onCompleted(Ljava/lang/Exception;)V

    return-void

    .line 106
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/koushikdutta/async/af$2;->d:Lcom/koushikdutta/async/q;

    iget-object v1, p0, Lcom/koushikdutta/async/af$2;->b:Lcom/koushikdutta/async/l;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/q;->write(Lcom/koushikdutta/async/l;)V

    .line 108
    iget-object v0, p0, Lcom/koushikdutta/async/af$2;->b:Lcom/koushikdutta/async/l;

    invoke-virtual {v0}, Lcom/koushikdutta/async/l;->hasRemaining()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    return-void

    :catch_0
    move-exception v0

    .line 111
    invoke-direct {p0}, Lcom/koushikdutta/async/af$2;->a()V

    .line 112
    iget-object v1, p0, Lcom/koushikdutta/async/af$2;->g:Lcom/koushikdutta/async/a/a;

    invoke-interface {v1, v0}, Lcom/koushikdutta/async/a/a;->onCompleted(Ljava/lang/Exception;)V

    return-void
.end method
