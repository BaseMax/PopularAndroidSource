.class public Lcom/koushikdutta/async/v;
.super Lcom/koushikdutta/async/o;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/d;
.implements Lcom/koushikdutta/async/f/b;
.implements Lcom/koushikdutta/async/n;
.implements Lcom/koushikdutta/async/r;


# instance fields
.field c:Z

.field private d:Lcom/koushikdutta/async/n;

.field private e:Lcom/koushikdutta/async/r$a;

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/koushikdutta/async/o;-><init>()V

    return-void
.end method


# virtual methods
.method public charset()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/koushikdutta/async/v;->d:Lcom/koushikdutta/async/n;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 102
    :cond_0
    invoke-interface {v0}, Lcom/koushikdutta/async/n;->charset()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Lcom/koushikdutta/async/v;->c:Z

    .line 94
    iget-object v0, p0, Lcom/koushikdutta/async/v;->d:Lcom/koushikdutta/async/n;

    if-eqz v0, :cond_0

    .line 95
    invoke-interface {v0}, Lcom/koushikdutta/async/n;->close()V

    :cond_0
    return-void
.end method

.method public getBytesRead()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/koushikdutta/async/v;->f:I

    return v0
.end method

.method public getDataEmitter()Lcom/koushikdutta/async/n;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/koushikdutta/async/v;->d:Lcom/koushikdutta/async/n;

    return-object v0
.end method

.method public getDataTracker()Lcom/koushikdutta/async/r$a;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/koushikdutta/async/v;->e:Lcom/koushikdutta/async/r$a;

    return-object v0
.end method

.method public getServer()Lcom/koushikdutta/async/h;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/koushikdutta/async/v;->d:Lcom/koushikdutta/async/n;

    invoke-interface {v0}, Lcom/koushikdutta/async/n;->getServer()Lcom/koushikdutta/async/h;

    move-result-object v0

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/koushikdutta/async/v;->d:Lcom/koushikdutta/async/n;

    invoke-interface {v0}, Lcom/koushikdutta/async/n;->isChunked()Z

    move-result v0

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/koushikdutta/async/v;->d:Lcom/koushikdutta/async/n;

    invoke-interface {v0}, Lcom/koushikdutta/async/n;->isPaused()Z

    move-result v0

    return v0
.end method

.method public onDataAvailable(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/l;)V
    .locals 1

    .line 48
    iget-boolean p1, p0, Lcom/koushikdutta/async/v;->c:Z

    if-eqz p1, :cond_0

    .line 51
    invoke-virtual {p2}, Lcom/koushikdutta/async/l;->recycle()V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 55
    iget p1, p0, Lcom/koushikdutta/async/v;->f:I

    invoke-virtual {p2}, Lcom/koushikdutta/async/l;->remaining()I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lcom/koushikdutta/async/v;->f:I

    .line 56
    :cond_1
    invoke-static {p0, p2}, Lcom/koushikdutta/async/af;->emitAllData(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/l;)V

    if-eqz p2, :cond_2

    .line 58
    iget p1, p0, Lcom/koushikdutta/async/v;->f:I

    invoke-virtual {p2}, Lcom/koushikdutta/async/l;->remaining()I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/koushikdutta/async/v;->f:I

    .line 59
    :cond_2
    iget-object p1, p0, Lcom/koushikdutta/async/v;->e:Lcom/koushikdutta/async/r$a;

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 60
    iget p2, p0, Lcom/koushikdutta/async/v;->f:I

    invoke-interface {p1, p2}, Lcom/koushikdutta/async/r$a;->onData(I)V

    :cond_3
    return-void
.end method

.method public pause()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/koushikdutta/async/v;->d:Lcom/koushikdutta/async/n;

    invoke-interface {v0}, Lcom/koushikdutta/async/n;->pause()V

    return-void
.end method

.method public resume()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/koushikdutta/async/v;->d:Lcom/koushikdutta/async/n;

    invoke-interface {v0}, Lcom/koushikdutta/async/n;->resume()V

    return-void
.end method

.method public setDataEmitter(Lcom/koushikdutta/async/n;)V
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/koushikdutta/async/v;->d:Lcom/koushikdutta/async/n;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 17
    invoke-interface {v0, v1}, Lcom/koushikdutta/async/n;->setDataCallback(Lcom/koushikdutta/async/a/d;)V

    .line 19
    :cond_0
    iput-object p1, p0, Lcom/koushikdutta/async/v;->d:Lcom/koushikdutta/async/n;

    .line 20
    iget-object p1, p0, Lcom/koushikdutta/async/v;->d:Lcom/koushikdutta/async/n;

    invoke-interface {p1, p0}, Lcom/koushikdutta/async/n;->setDataCallback(Lcom/koushikdutta/async/a/d;)V

    .line 21
    iget-object p1, p0, Lcom/koushikdutta/async/v;->d:Lcom/koushikdutta/async/n;

    new-instance v0, Lcom/koushikdutta/async/v$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/v$1;-><init>(Lcom/koushikdutta/async/v;)V

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/n;->setEndCallback(Lcom/koushikdutta/async/a/a;)V

    return-void
.end method

.method public setDataTracker(Lcom/koushikdutta/async/r$a;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/koushikdutta/async/v;->e:Lcom/koushikdutta/async/r$a;

    return-void
.end method
