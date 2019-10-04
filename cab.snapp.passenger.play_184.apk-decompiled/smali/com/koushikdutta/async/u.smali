.class public final Lcom/koushikdutta/async/u;
.super Lcom/koushikdutta/async/o;
.source "SourceFile"


# instance fields
.field c:Lcom/koushikdutta/async/h;

.field d:Ljava/io/File;

.field e:Lcom/koushikdutta/async/a/d;

.field f:Z

.field g:Lcom/koushikdutta/async/l;

.field h:Ljava/nio/channels/FileChannel;

.field i:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/h;Ljava/io/File;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/koushikdutta/async/o;-><init>()V

    .line 60
    new-instance v0, Lcom/koushikdutta/async/l;

    invoke-direct {v0}, Lcom/koushikdutta/async/l;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/u;->g:Lcom/koushikdutta/async/l;

    .line 62
    new-instance v0, Lcom/koushikdutta/async/u$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/u$1;-><init>(Lcom/koushikdutta/async/u;)V

    iput-object v0, p0, Lcom/koushikdutta/async/u;->i:Ljava/lang/Runnable;

    .line 19
    iput-object p1, p0, Lcom/koushikdutta/async/u;->c:Lcom/koushikdutta/async/h;

    .line 20
    iput-object p2, p0, Lcom/koushikdutta/async/u;->d:Ljava/io/File;

    .line 21
    invoke-virtual {p1}, Lcom/koushikdutta/async/h;->isAffinityThread()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/koushikdutta/async/u;->f:Z

    .line 22
    iget-boolean p1, p0, Lcom/koushikdutta/async/u;->f:Z

    if-nez p1, :cond_0

    .line 23
    invoke-direct {p0}, Lcom/koushikdutta/async/u;->a()V

    :cond_0
    return-void
.end method

.method private a()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/koushikdutta/async/u;->c:Lcom/koushikdutta/async/h;

    iget-object v1, p0, Lcom/koushikdutta/async/u;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/h;->post(Ljava/lang/Runnable;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/u;->h:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final getDataCallback()Lcom/koushikdutta/async/a/d;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/koushikdutta/async/u;->e:Lcom/koushikdutta/async/a/d;

    return-object v0
.end method

.method public final getServer()Lcom/koushikdutta/async/h;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/koushikdutta/async/u;->c:Lcom/koushikdutta/async/h;

    return-object v0
.end method

.method public final isChunked()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isPaused()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lcom/koushikdutta/async/u;->f:Z

    return v0
.end method

.method public final pause()V
    .locals 1

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/koushikdutta/async/u;->f:Z

    return-void
.end method

.method protected final report(Ljava/lang/Exception;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/Closeable;

    .line 56
    iget-object v1, p0, Lcom/koushikdutta/async/u;->h:Ljava/nio/channels/FileChannel;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/koushikdutta/async/e/g;->closeQuietly([Ljava/io/Closeable;)V

    .line 57
    invoke-super {p0, p1}, Lcom/koushikdutta/async/o;->report(Ljava/lang/Exception;)V

    return-void
.end method

.method public final resume()V
    .locals 1

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/koushikdutta/async/u;->f:Z

    .line 51
    invoke-direct {p0}, Lcom/koushikdutta/async/u;->a()V

    return-void
.end method

.method public final setDataCallback(Lcom/koushikdutta/async/a/d;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/koushikdutta/async/u;->e:Lcom/koushikdutta/async/a/d;

    return-void
.end method
