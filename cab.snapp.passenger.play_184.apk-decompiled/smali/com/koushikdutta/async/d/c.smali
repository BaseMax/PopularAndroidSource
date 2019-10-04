.class public final Lcom/koushikdutta/async/d/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/n;


# instance fields
.field a:Lcom/koushikdutta/async/h;

.field b:Ljava/io/InputStream;

.field c:Lcom/koushikdutta/async/a/d;

.field d:Z

.field e:I

.field f:Lcom/koushikdutta/async/l;

.field g:Ljava/lang/Runnable;

.field h:Lcom/koushikdutta/async/a/a;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/h;Ljava/io/InputStream;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput v0, p0, Lcom/koushikdutta/async/d/c;->e:I

    .line 74
    new-instance v0, Lcom/koushikdutta/async/l;

    invoke-direct {v0}, Lcom/koushikdutta/async/l;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/d/c;->f:Lcom/koushikdutta/async/l;

    .line 75
    new-instance v0, Lcom/koushikdutta/async/d/c$2;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/d/c$2;-><init>(Lcom/koushikdutta/async/d/c;)V

    iput-object v0, p0, Lcom/koushikdutta/async/d/c;->g:Ljava/lang/Runnable;

    .line 23
    iput-object p1, p0, Lcom/koushikdutta/async/d/c;->a:Lcom/koushikdutta/async/h;

    .line 24
    iput-object p2, p0, Lcom/koushikdutta/async/d/c;->b:Ljava/io/InputStream;

    .line 25
    invoke-direct {p0}, Lcom/koushikdutta/async/d/c;->a()V

    return-void
.end method

.method private a()V
    .locals 2

    .line 116
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/koushikdutta/async/d/c;->g:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/d/c;Ljava/lang/Exception;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/d/c;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 2

    .line 57
    invoke-virtual {p0}, Lcom/koushikdutta/async/d/c;->getServer()Lcom/koushikdutta/async/h;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/async/d/c$1;

    invoke-direct {v1, p0, p1}, Lcom/koushikdutta/async/d/c$1;-><init>(Lcom/koushikdutta/async/d/c;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/h;->post(Ljava/lang/Runnable;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final charset()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final close()V
    .locals 1

    const/4 v0, 0x0

    .line 142
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/d/c;->a(Ljava/lang/Exception;)V

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/d/c;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final getDataCallback()Lcom/koushikdutta/async/a/d;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/koushikdutta/async/d/c;->c:Lcom/koushikdutta/async/a/d;

    return-object v0
.end method

.method public final getEndCallback()Lcom/koushikdutta/async/a/a;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/koushikdutta/async/d/c;->h:Lcom/koushikdutta/async/a/a;

    return-object v0
.end method

.method public final getServer()Lcom/koushikdutta/async/h;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/koushikdutta/async/d/c;->a:Lcom/koushikdutta/async/h;

    return-object v0
.end method

.method public final isChunked()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isPaused()Z
    .locals 1

    .line 121
    iget-boolean v0, p0, Lcom/koushikdutta/async/d/c;->d:Z

    return v0
.end method

.method public final pause()V
    .locals 1

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/koushikdutta/async/d/c;->d:Z

    return-void
.end method

.method public final resume()V
    .locals 1

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/koushikdutta/async/d/c;->d:Z

    .line 53
    invoke-direct {p0}, Lcom/koushikdutta/async/d/c;->a()V

    return-void
.end method

.method public final setDataCallback(Lcom/koushikdutta/async/a/d;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/koushikdutta/async/d/c;->c:Lcom/koushikdutta/async/a/d;

    return-void
.end method

.method public final setEndCallback(Lcom/koushikdutta/async/a/a;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/koushikdutta/async/d/c;->h:Lcom/koushikdutta/async/a/a;

    return-void
.end method
