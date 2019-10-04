.class abstract Lcom/koushikdutta/async/http/f;
.super Lcom/koushikdutta/async/v;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/http/b$h;
.implements Lcom/koushikdutta/async/http/e;
.implements Lcom/koushikdutta/async/j;


# static fields
.field static final synthetic p:Z


# instance fields
.field private d:Lcom/koushikdutta/async/a/a;

.field private e:Lcom/koushikdutta/async/http/d;

.field private f:Lcom/koushikdutta/async/j;

.field private g:Z

.field protected j:Lcom/koushikdutta/async/http/n;

.field k:Z

.field l:I

.field m:Ljava/lang/String;

.field n:Ljava/lang/String;

.field o:Lcom/koushikdutta/async/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-class v0, Lcom/koushikdutta/async/http/f;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/koushikdutta/async/http/f;->p:Z

    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/http/d;)V
    .locals 1

    .line 110
    invoke-direct {p0}, Lcom/koushikdutta/async/v;-><init>()V

    .line 50
    new-instance v0, Lcom/koushikdutta/async/http/f$2;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/f$2;-><init>(Lcom/koushikdutta/async/http/f;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/f;->d:Lcom/koushikdutta/async/a/a;

    const/4 v0, 0x0

    .line 114
    iput-boolean v0, p0, Lcom/koushikdutta/async/http/f;->k:Z

    const/4 v0, 0x1

    .line 170
    iput-boolean v0, p0, Lcom/koushikdutta/async/http/f;->g:Z

    .line 111
    iput-object p1, p0, Lcom/koushikdutta/async/http/f;->e:Lcom/koushikdutta/async/http/d;

    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/f;)Lcom/koushikdutta/async/j;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/koushikdutta/async/http/f;->f:Lcom/koushikdutta/async/j;

    return-object p0
.end method

.method private c()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/koushikdutta/async/http/f;->f:Lcom/koushikdutta/async/j;

    new-instance v1, Lcom/koushikdutta/async/http/f$3;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/http/f$3;-><init>(Lcom/koushikdutta/async/http/f;)V

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/j;->setDataCallback(Lcom/koushikdutta/async/a/d;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    return-void
.end method

.method final a(Lcom/koushikdutta/async/j;)V
    .locals 1

    .line 26
    iput-object p1, p0, Lcom/koushikdutta/async/http/f;->f:Lcom/koushikdutta/async/j;

    .line 27
    iget-object p1, p0, Lcom/koushikdutta/async/http/f;->f:Lcom/koushikdutta/async/j;

    if-nez p1, :cond_0

    return-void

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/f;->d:Lcom/koushikdutta/async/a/a;

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/j;->setEndCallback(Lcom/koushikdutta/async/a/a;)V

    return-void
.end method

.method protected a(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method protected final b()V
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/koushikdutta/async/http/f;->e:Lcom/koushikdutta/async/http/d;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/d;->getBody()Lcom/koushikdutta/async/http/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v1, p0, Lcom/koushikdutta/async/http/f;->e:Lcom/koushikdutta/async/http/d;

    new-instance v2, Lcom/koushikdutta/async/http/f$1;

    invoke-direct {v2, p0}, Lcom/koushikdutta/async/http/f$1;-><init>(Lcom/koushikdutta/async/http/f;)V

    invoke-interface {v0, v1, p0, v2}, Lcom/koushikdutta/async/http/a/a;->write(Lcom/koushikdutta/async/http/d;Lcom/koushikdutta/async/q;Lcom/koushikdutta/async/a/a;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/f;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public charset()Ljava/lang/String;
    .locals 2

    .line 236
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/f;->headers()Lcom/koushikdutta/async/http/n;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/n;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/koushikdutta/async/http/s;->parseSemicolonDelimited(Ljava/lang/String;)Lcom/koushikdutta/async/http/s;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "charset"

    .line 238
    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/s;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public close()V
    .locals 0

    .line 103
    invoke-super {p0}, Lcom/koushikdutta/async/v;->close()V

    .line 104
    invoke-direct {p0}, Lcom/koushikdutta/async/http/f;->c()V

    return-void
.end method

.method public code()I
    .locals 1

    .line 130
    iget v0, p0, Lcom/koushikdutta/async/http/f;->l:I

    return v0
.end method

.method public code(I)Lcom/koushikdutta/async/http/b$h;
    .locals 0

    .line 135
    iput p1, p0, Lcom/koushikdutta/async/http/f;->l:I

    return-object p0
.end method

.method public emitter(Lcom/koushikdutta/async/n;)Lcom/koushikdutta/async/http/b$h;
    .locals 0

    .line 73
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/f;->setDataEmitter(Lcom/koushikdutta/async/n;)V

    return-object p0
.end method

.method public emitter()Lcom/koushikdutta/async/n;
    .locals 1

    .line 68
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/f;->getDataEmitter()Lcom/koushikdutta/async/n;

    move-result-object v0

    return-object v0
.end method

.method public end()V
    .locals 2

    .line 200
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "end called?"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public getClosedCallback()Lcom/koushikdutta/async/a/a;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/koushikdutta/async/http/f;->o:Lcom/koushikdutta/async/q;

    invoke-interface {v0}, Lcom/koushikdutta/async/q;->getClosedCallback()Lcom/koushikdutta/async/a/a;

    move-result-object v0

    return-object v0
.end method

.method public getRequest()Lcom/koushikdutta/async/http/d;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/koushikdutta/async/http/f;->e:Lcom/koushikdutta/async/http/d;

    return-object v0
.end method

.method public getServer()Lcom/koushikdutta/async/h;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/koushikdutta/async/http/f;->f:Lcom/koushikdutta/async/j;

    invoke-interface {v0}, Lcom/koushikdutta/async/j;->getServer()Lcom/koushikdutta/async/h;

    move-result-object v0

    return-object v0
.end method

.method public getWriteableCallback()Lcom/koushikdutta/async/a/g;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/koushikdutta/async/http/f;->o:Lcom/koushikdutta/async/q;

    invoke-interface {v0}, Lcom/koushikdutta/async/q;->getWriteableCallback()Lcom/koushikdutta/async/a/g;

    move-result-object v0

    return-object v0
.end method

.method public headers(Lcom/koushikdutta/async/http/n;)Lcom/koushikdutta/async/http/b$h;
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/koushikdutta/async/http/f;->j:Lcom/koushikdutta/async/http/n;

    return-object p0
.end method

.method public headers()Lcom/koushikdutta/async/http/n;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/koushikdutta/async/http/f;->j:Lcom/koushikdutta/async/http/n;

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/koushikdutta/async/http/f;->o:Lcom/koushikdutta/async/q;

    invoke-interface {v0}, Lcom/koushikdutta/async/q;->isOpen()Z

    move-result v0

    return v0
.end method

.method public message(Ljava/lang/String;)Lcom/koushikdutta/async/http/b$h;
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/koushikdutta/async/http/f;->n:Ljava/lang/String;

    return-object p0
.end method

.method public message()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/koushikdutta/async/http/f;->n:Ljava/lang/String;

    return-object v0
.end method

.method public protocol(Ljava/lang/String;)Lcom/koushikdutta/async/http/b$h;
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/koushikdutta/async/http/f;->m:Ljava/lang/String;

    return-object p0
.end method

.method public protocol()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/koushikdutta/async/http/f;->m:Ljava/lang/String;

    return-object v0
.end method

.method public report(Ljava/lang/Exception;)V
    .locals 1

    .line 92
    invoke-super {p0, p1}, Lcom/koushikdutta/async/v;->report(Ljava/lang/Exception;)V

    .line 94
    invoke-direct {p0}, Lcom/koushikdutta/async/http/f;->c()V

    .line 95
    iget-object p1, p0, Lcom/koushikdutta/async/http/f;->f:Lcom/koushikdutta/async/j;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/j;->setWriteableCallback(Lcom/koushikdutta/async/a/g;)V

    .line 96
    iget-object p1, p0, Lcom/koushikdutta/async/http/f;->f:Lcom/koushikdutta/async/j;

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/j;->setClosedCallback(Lcom/koushikdutta/async/a/a;)V

    .line 97
    iget-object p1, p0, Lcom/koushikdutta/async/http/f;->f:Lcom/koushikdutta/async/j;

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/j;->setEndCallback(Lcom/koushikdutta/async/a/a;)V

    const/4 p1, 0x1

    .line 98
    iput-boolean p1, p0, Lcom/koushikdutta/async/http/f;->k:Z

    return-void
.end method

.method public setClosedCallback(Lcom/koushikdutta/async/a/a;)V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/koushikdutta/async/http/f;->o:Lcom/koushikdutta/async/q;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/q;->setClosedCallback(Lcom/koushikdutta/async/a/a;)V

    return-void
.end method

.method public setWriteableCallback(Lcom/koushikdutta/async/a/g;)V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/koushikdutta/async/http/f;->o:Lcom/koushikdutta/async/q;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/q;->setWriteableCallback(Lcom/koushikdutta/async/a/g;)V

    return-void
.end method

.method public sink(Lcom/koushikdutta/async/q;)Lcom/koushikdutta/async/http/b$h;
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/koushikdutta/async/http/f;->o:Lcom/koushikdutta/async/q;

    return-object p0
.end method

.method public sink()Lcom/koushikdutta/async/q;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/koushikdutta/async/http/f;->o:Lcom/koushikdutta/async/q;

    return-object v0
.end method

.method public socket()Lcom/koushikdutta/async/j;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/koushikdutta/async/http/f;->f:Lcom/koushikdutta/async/j;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 165
    iget-object v0, p0, Lcom/koushikdutta/async/http/f;->j:Lcom/koushikdutta/async/http/n;

    if-nez v0, :cond_0

    .line 166
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 167
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/koushikdutta/async/http/f;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/koushikdutta/async/http/f;->l:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/koushikdutta/async/http/f;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/n;->toPrefixString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/koushikdutta/async/l;)V
    .locals 2

    .line 1172
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/f;->g:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 1174
    iput-boolean v0, p0, Lcom/koushikdutta/async/http/f;->g:Z

    .line 1175
    sget-boolean v0, Lcom/koushikdutta/async/http/f;->p:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/koushikdutta/async/http/f;->e:Lcom/koushikdutta/async/http/d;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/d;->getHeaders()Lcom/koushikdutta/async/http/n;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/n;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 1176
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/koushikdutta/async/http/f;->p:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/koushikdutta/async/http/f;->e:Lcom/koushikdutta/async/http/d;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/d;->getHeaders()Lcom/koushikdutta/async/http/n;

    move-result-object v0

    const-string v1, "Transfer-Encoding"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/n;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/koushikdutta/async/http/f;->e:Lcom/koushikdutta/async/http/d;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/d;->getHeaders()Lcom/koushikdutta/async/http/n;

    move-result-object v0

    invoke-static {v0}, Lcom/koushikdutta/async/http/q;->contentLength(Lcom/koushikdutta/async/http/n;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 195
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/f;->o:Lcom/koushikdutta/async/q;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/q;->write(Lcom/koushikdutta/async/l;)V

    return-void
.end method
