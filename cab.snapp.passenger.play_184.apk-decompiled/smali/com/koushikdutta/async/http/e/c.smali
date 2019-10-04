.class public abstract Lcom/koushikdutta/async/http/e/c;
.super Lcom/koushikdutta/async/v;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/a;
.implements Lcom/koushikdutta/async/http/e/b;


# instance fields
.field private d:Ljava/lang/String;

.field private e:Lcom/koushikdutta/async/http/n;

.field private f:Lcom/koushikdutta/async/a/a;

.field m:Lcom/koushikdutta/async/j;

.field n:Ljava/util/regex/Matcher;

.field o:Lcom/koushikdutta/async/y$a;

.field p:Ljava/lang/String;

.field q:Lcom/koushikdutta/async/http/a/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lcom/koushikdutta/async/v;-><init>()V

    .line 19
    new-instance v0, Lcom/koushikdutta/async/http/n;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/n;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/e/c;->e:Lcom/koushikdutta/async/http/n;

    .line 27
    new-instance v0, Lcom/koushikdutta/async/http/e/c$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/e/c$1;-><init>(Lcom/koushikdutta/async/http/e/c;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/e/c;->f:Lcom/koushikdutta/async/a/a;

    .line 51
    new-instance v0, Lcom/koushikdutta/async/http/e/c$2;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/e/c$2;-><init>(Lcom/koushikdutta/async/http/e/c;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/e/c;->o:Lcom/koushikdutta/async/y$a;

    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/e/c;)Ljava/lang/String;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/koushikdutta/async/http/e/c;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/e/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/koushikdutta/async/http/e/c;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/koushikdutta/async/http/e/c;)Lcom/koushikdutta/async/http/n;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/koushikdutta/async/http/e/c;->e:Lcom/koushikdutta/async/http/n;

    return-object p0
.end method

.method protected static b()V
    .locals 2

    .line 44
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "not http!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/koushikdutta/async/http/e/c;)Lcom/koushikdutta/async/a/a;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/koushikdutta/async/http/e/c;->f:Lcom/koushikdutta/async/a/a;

    return-object p0
.end method


# virtual methods
.method protected a(Lcom/koushikdutta/async/http/n;)Lcom/koushikdutta/async/http/a/a;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected abstract a()V
.end method

.method public getBody()Lcom/koushikdutta/async/http/a/a;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/c;->q:Lcom/koushikdutta/async/http/a/a;

    return-object v0
.end method

.method public getDataCallback()Lcom/koushikdutta/async/a/d;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/c;->m:Lcom/koushikdutta/async/j;

    invoke-interface {v0}, Lcom/koushikdutta/async/j;->getDataCallback()Lcom/koushikdutta/async/a/d;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Lcom/koushikdutta/async/http/n;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/c;->e:Lcom/koushikdutta/async/http/n;

    return-object v0
.end method

.method public getMatcher()Ljava/util/regex/Matcher;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/c;->n:Ljava/util/regex/Matcher;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/c;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getSocket()Lcom/koushikdutta/async/j;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/c;->m:Lcom/koushikdutta/async/j;

    return-object v0
.end method

.method public getStatusLine()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/c;->m:Lcom/koushikdutta/async/j;

    invoke-interface {v0}, Lcom/koushikdutta/async/j;->isChunked()Z

    move-result v0

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/c;->m:Lcom/koushikdutta/async/j;

    invoke-interface {v0}, Lcom/koushikdutta/async/j;->isPaused()Z

    move-result v0

    return v0
.end method

.method public onCompleted(Ljava/lang/Exception;)V
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/e/c;->report(Ljava/lang/Exception;)V

    return-void
.end method

.method public pause()V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/c;->m:Lcom/koushikdutta/async/j;

    invoke-interface {v0}, Lcom/koushikdutta/async/j;->pause()V

    return-void
.end method

.method public resume()V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/c;->m:Lcom/koushikdutta/async/j;

    invoke-interface {v0}, Lcom/koushikdutta/async/j;->resume()V

    return-void
.end method

.method public setDataCallback(Lcom/koushikdutta/async/a/d;)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/c;->m:Lcom/koushikdutta/async/j;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/j;->setDataCallback(Lcom/koushikdutta/async/a/d;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/c;->e:Lcom/koushikdutta/async/http/n;

    if-nez v0, :cond_0

    .line 153
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/koushikdutta/async/http/e/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/n;->toPrefixString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
