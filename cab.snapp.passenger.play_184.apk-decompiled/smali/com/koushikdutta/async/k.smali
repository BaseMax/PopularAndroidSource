.class public Lcom/koushikdutta/async/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/q;


# static fields
.field static final synthetic g:Z


# instance fields
.field a:Lcom/koushikdutta/async/q;

.field b:Z

.field c:Lcom/koushikdutta/async/l;

.field d:Lcom/koushikdutta/async/a/g;

.field e:I

.field f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    const-class v0, Lcom/koushikdutta/async/k;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/koushikdutta/async/k;->g:Z

    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/q;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/koushikdutta/async/l;

    invoke-direct {v0}, Lcom/koushikdutta/async/l;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/k;->c:Lcom/koushikdutta/async/l;

    const v0, 0x7fffffff

    .line 101
    iput v0, p0, Lcom/koushikdutta/async/k;->e:I

    .line 11
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/k;->setDataSink(Lcom/koushikdutta/async/q;)V

    return-void
.end method

.method private a()V
    .locals 2

    .line 40
    iget-boolean v0, p0, Lcom/koushikdutta/async/k;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/k;->c:Lcom/koushikdutta/async/l;

    invoke-virtual {v0}, Lcom/koushikdutta/async/l;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/koushikdutta/async/k;->a:Lcom/koushikdutta/async/q;

    iget-object v1, p0, Lcom/koushikdutta/async/k;->c:Lcom/koushikdutta/async/l;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/q;->write(Lcom/koushikdutta/async/l;)V

    .line 46
    iget-object v0, p0, Lcom/koushikdutta/async/k;->c:Lcom/koushikdutta/async/l;

    invoke-virtual {v0}, Lcom/koushikdutta/async/l;->remaining()I

    move-result v0

    if-nez v0, :cond_1

    .line 47
    iget-boolean v0, p0, Lcom/koushikdutta/async/k;->f:Z

    if-eqz v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/koushikdutta/async/k;->a:Lcom/koushikdutta/async/q;

    invoke-interface {v0}, Lcom/koushikdutta/async/q;->end()V

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/k;->c:Lcom/koushikdutta/async/l;

    invoke-virtual {v0}, Lcom/koushikdutta/async/l;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/koushikdutta/async/k;->d:Lcom/koushikdutta/async/a/g;

    if-eqz v0, :cond_2

    .line 52
    invoke-interface {v0}, Lcom/koushikdutta/async/a/g;->onWriteable()V

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/k;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/koushikdutta/async/k;->a()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/koushikdutta/async/l;Z)V
    .locals 2

    .line 63
    invoke-virtual {p0}, Lcom/koushikdutta/async/k;->getServer()Lcom/koushikdutta/async/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/h;->getAffinity()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/koushikdutta/async/k;->getServer()Lcom/koushikdutta/async/h;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/async/k$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/koushikdutta/async/k$2;-><init>(Lcom/koushikdutta/async/k;Lcom/koushikdutta/async/l;Z)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/h;->run(Ljava/lang/Runnable;)V

    return-void

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/k;->isBuffering()Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/koushikdutta/async/k;->a:Lcom/koushikdutta/async/q;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/q;->write(Lcom/koushikdutta/async/l;)V

    .line 76
    :cond_1
    invoke-virtual {p1}, Lcom/koushikdutta/async/l;->remaining()I

    move-result v0

    if-lez v0, :cond_3

    .line 77
    invoke-virtual {p1}, Lcom/koushikdutta/async/l;->remaining()I

    move-result v0

    iget v1, p0, Lcom/koushikdutta/async/k;->e:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-eqz p2, :cond_2

    .line 79
    invoke-virtual {p1}, Lcom/koushikdutta/async/l;->remaining()I

    move-result v0

    :cond_2
    if-lez v0, :cond_3

    .line 81
    iget-object p2, p0, Lcom/koushikdutta/async/k;->c:Lcom/koushikdutta/async/l;

    invoke-virtual {p1, p2, v0}, Lcom/koushikdutta/async/l;->get(Lcom/koushikdutta/async/l;I)V

    :cond_3
    return-void
.end method

.method public end()V
    .locals 2

    .line 119
    invoke-virtual {p0}, Lcom/koushikdutta/async/k;->getServer()Lcom/koushikdutta/async/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/h;->getAffinity()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/koushikdutta/async/k;->getServer()Lcom/koushikdutta/async/h;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/async/k$3;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/k$3;-><init>(Lcom/koushikdutta/async/k;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/h;->run(Ljava/lang/Runnable;)V

    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/k;->c:Lcom/koushikdutta/async/l;

    invoke-virtual {v0}, Lcom/koushikdutta/async/l;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 130
    iput-boolean v0, p0, Lcom/koushikdutta/async/k;->f:Z

    return-void

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/k;->a:Lcom/koushikdutta/async/q;

    invoke-interface {v0}, Lcom/koushikdutta/async/q;->end()V

    return-void
.end method

.method public forceBuffering(Z)V
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/koushikdutta/async/k;->b:Z

    if-nez p1, :cond_0

    .line 26
    invoke-direct {p0}, Lcom/koushikdutta/async/k;->a()V

    :cond_0
    return-void
.end method

.method public getClosedCallback()Lcom/koushikdutta/async/a/a;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/koushikdutta/async/k;->a:Lcom/koushikdutta/async/q;

    invoke-interface {v0}, Lcom/koushikdutta/async/q;->getClosedCallback()Lcom/koushikdutta/async/a/a;

    move-result-object v0

    return-object v0
.end method

.method public getDataSink()Lcom/koushikdutta/async/q;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/koushikdutta/async/k;->a:Lcom/koushikdutta/async/q;

    return-object v0
.end method

.method public getMaxBuffer()I
    .locals 1

    .line 103
    iget v0, p0, Lcom/koushikdutta/async/k;->e:I

    return v0
.end method

.method public getServer()Lcom/koushikdutta/async/h;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/koushikdutta/async/k;->a:Lcom/koushikdutta/async/q;

    invoke-interface {v0}, Lcom/koushikdutta/async/q;->getServer()Lcom/koushikdutta/async/h;

    move-result-object v0

    return-object v0
.end method

.method public getWriteableCallback()Lcom/koushikdutta/async/a/g;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/koushikdutta/async/k;->d:Lcom/koushikdutta/async/a/g;

    return-object v0
.end method

.method public isBuffering()Z
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/koushikdutta/async/k;->c:Lcom/koushikdutta/async/l;

    invoke-virtual {v0}, Lcom/koushikdutta/async/l;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/koushikdutta/async/k;->b:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/koushikdutta/async/k;->a:Lcom/koushikdutta/async/q;

    invoke-interface {v0}, Lcom/koushikdutta/async/q;->isOpen()Z

    move-result v0

    return v0
.end method

.method public remaining()I
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/koushikdutta/async/k;->c:Lcom/koushikdutta/async/l;

    invoke-virtual {v0}, Lcom/koushikdutta/async/l;->remaining()I

    move-result v0

    return v0
.end method

.method public setClosedCallback(Lcom/koushikdutta/async/a/a;)V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/koushikdutta/async/k;->a:Lcom/koushikdutta/async/q;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/q;->setClosedCallback(Lcom/koushikdutta/async/a/a;)V

    return-void
.end method

.method public setDataSink(Lcom/koushikdutta/async/q;)V
    .locals 1

    .line 30
    iput-object p1, p0, Lcom/koushikdutta/async/k;->a:Lcom/koushikdutta/async/q;

    .line 31
    iget-object p1, p0, Lcom/koushikdutta/async/k;->a:Lcom/koushikdutta/async/q;

    new-instance v0, Lcom/koushikdutta/async/k$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/k$1;-><init>(Lcom/koushikdutta/async/k;)V

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/q;->setWriteableCallback(Lcom/koushikdutta/async/a/g;)V

    return-void
.end method

.method public setMaxBuffer(I)V
    .locals 1

    .line 107
    sget-boolean v0, Lcom/koushikdutta/async/k;->g:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 108
    :cond_1
    :goto_0
    iput p1, p0, Lcom/koushikdutta/async/k;->e:I

    return-void
.end method

.method public setWriteableCallback(Lcom/koushikdutta/async/a/g;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/koushikdutta/async/k;->d:Lcom/koushikdutta/async/a/g;

    return-void
.end method

.method public write(Lcom/koushikdutta/async/l;)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/k;->a(Lcom/koushikdutta/async/l;Z)V

    return-void
.end method
