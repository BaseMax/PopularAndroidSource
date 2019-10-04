.class final Lcom/koushikdutta/async/http/e/a$1$1;
.super Lcom/koushikdutta/async/http/e/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/e/a$1;->onAccepted(Lcom/koushikdutta/async/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field d:Lcom/koushikdutta/async/http/e/g;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Z

.field h:Z

.field i:Lcom/koushikdutta/async/http/e/e;

.field j:Z

.field final synthetic k:Lcom/koushikdutta/async/j;

.field final synthetic l:Lcom/koushikdutta/async/http/e/a$1;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/e/a$1;Lcom/koushikdutta/async/j;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/koushikdutta/async/http/e/a$1$1;->l:Lcom/koushikdutta/async/http/e/a$1;

    iput-object p2, p0, Lcom/koushikdutta/async/http/e/a$1$1;->k:Lcom/koushikdutta/async/j;

    invoke-direct {p0}, Lcom/koushikdutta/async/http/e/c;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/e/a$1$1;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/koushikdutta/async/http/e/a$1$1;->c()V

    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/e/a$1$1;Ljava/lang/Exception;)V
    .locals 0

    .line 72
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/e/a$1$1;->report(Ljava/lang/Exception;)V

    return-void
.end method

.method private c()V
    .locals 2

    .line 190
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/e/a$1$1;->h:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/koushikdutta/async/http/e/a$1$1;->g:Z

    if-eqz v0, :cond_1

    .line 191
    sget-object v0, Lcom/koushikdutta/async/http/Protocol;->HTTP_1_1:Lcom/koushikdutta/async/http/Protocol;

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/e/a$1$1;->getHeaders()Lcom/koushikdutta/async/http/n;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/q;->isKeepAlive(Lcom/koushikdutta/async/http/Protocol;Lcom/koushikdutta/async/http/n;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/a$1$1;->l:Lcom/koushikdutta/async/http/e/a$1;

    iget-object v1, p0, Lcom/koushikdutta/async/http/e/a$1$1;->k:Lcom/koushikdutta/async/j;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/e/a$1;->onAccepted(Lcom/koushikdutta/async/j;)V

    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/a$1$1;->k:Lcom/koushikdutta/async/j;

    invoke-interface {v0}, Lcom/koushikdutta/async/j;->close()V

    :cond_1
    return-void
.end method


# virtual methods
.method protected final a(Lcom/koushikdutta/async/http/n;)Lcom/koushikdutta/async/http/a/a;
    .locals 0

    .line 83
    invoke-static {p1}, Lcom/koushikdutta/async/http/e/a;->a(Lcom/koushikdutta/async/http/n;)Lcom/koushikdutta/async/http/a/a;

    move-result-object p1

    return-object p1
.end method

.method protected final a()V
    .locals 5

    .line 88
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/e/a$1$1;->getHeaders()Lcom/koushikdutta/async/http/n;

    move-result-object v0

    .line 92
    iget-boolean v1, p0, Lcom/koushikdutta/async/http/e/a$1$1;->j:Z

    if-nez v1, :cond_0

    const-string v1, "Expect"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/n;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "100-continue"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/e/a$1$1;->pause()V

    .line 95
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/a$1$1;->m:Lcom/koushikdutta/async/j;

    const-string v1, "HTTP/1.1 100 Continue\r\n\r\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    new-instance v2, Lcom/koushikdutta/async/http/e/a$1$1$1;

    invoke-direct {v2, p0}, Lcom/koushikdutta/async/http/e/a$1$1$1;-><init>(Lcom/koushikdutta/async/http/e/a$1$1;)V

    invoke-static {v0, v1, v2}, Lcom/koushikdutta/async/af;->writeAll(Lcom/koushikdutta/async/q;[BLcom/koushikdutta/async/a/a;)V

    return-void

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/e/a$1$1;->getStatusLine()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 113
    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/koushikdutta/async/http/e/a$1$1;->e:Ljava/lang/String;

    .line 114
    iget-object v1, p0, Lcom/koushikdutta/async/http/e/a$1$1;->e:Ljava/lang/String;

    const-string v2, "\\?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/koushikdutta/async/http/e/a$1$1;->f:Ljava/lang/String;

    .line 115
    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/koushikdutta/async/http/e/a$1$1;->p:Ljava/lang/String;

    .line 116
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/a$1$1;->l:Lcom/koushikdutta/async/http/e/a$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/e/a$1;->a:Lcom/koushikdutta/async/http/e/a;

    iget-object v0, v0, Lcom/koushikdutta/async/http/e/a;->d:Ljava/util/Hashtable;

    monitor-enter v0

    .line 117
    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/async/http/e/a$1$1;->l:Lcom/koushikdutta/async/http/e/a$1;

    iget-object v1, v1, Lcom/koushikdutta/async/http/e/a$1;->a:Lcom/koushikdutta/async/http/e/a;

    iget-object v1, v1, Lcom/koushikdutta/async/http/e/a;->d:Ljava/util/Hashtable;

    iget-object v2, p0, Lcom/koushikdutta/async/http/e/a$1$1;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 119
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/koushikdutta/async/http/e/a$a;

    .line 120
    iget-object v3, v2, Lcom/koushikdutta/async/http/e/a$a;->a:Ljava/util/regex/Pattern;

    iget-object v4, p0, Lcom/koushikdutta/async/http/e/a$1$1;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 121
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 122
    iput-object v3, p0, Lcom/koushikdutta/async/http/e/a$1$1;->n:Ljava/util/regex/Matcher;

    .line 123
    iget-object v1, v2, Lcom/koushikdutta/async/http/e/a$a;->b:Lcom/koushikdutta/async/http/e/g;

    iput-object v1, p0, Lcom/koushikdutta/async/http/e/a$1$1;->d:Lcom/koushikdutta/async/http/e/g;

    .line 128
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    new-instance v0, Lcom/koushikdutta/async/http/e/a$1$1$2;

    iget-object v1, p0, Lcom/koushikdutta/async/http/e/a$1$1;->k:Lcom/koushikdutta/async/j;

    invoke-direct {v0, p0, v1, p0}, Lcom/koushikdutta/async/http/e/a$1$1$2;-><init>(Lcom/koushikdutta/async/http/e/a$1$1;Lcom/koushikdutta/async/j;Lcom/koushikdutta/async/http/e/c;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/e/a$1$1;->i:Lcom/koushikdutta/async/http/e/e;

    .line 152
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/a$1$1;->d:Lcom/koushikdutta/async/http/e/g;

    if-nez v0, :cond_3

    .line 153
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/a$1$1;->i:Lcom/koushikdutta/async/http/e/e;

    const/16 v1, 0x194

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/e/e;->code(I)Lcom/koushikdutta/async/http/e/d;

    .line 154
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/a$1$1;->i:Lcom/koushikdutta/async/http/e/e;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/e/e;->end()V

    return-void

    .line 158
    :cond_3
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/e/a$1$1;->getBody()Lcom/koushikdutta/async/http/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/koushikdutta/async/http/a/a;->readFullyOnRequest()Z

    move-result v0

    if-nez v0, :cond_4

    .line 159
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/a$1$1;->d:Lcom/koushikdutta/async/http/e/g;

    iget-object v1, p0, Lcom/koushikdutta/async/http/e/a$1$1;->i:Lcom/koushikdutta/async/http/e/e;

    invoke-static {v0, p0, v1}, Lcom/koushikdutta/async/http/e/a;->a(Lcom/koushikdutta/async/http/e/g;Lcom/koushikdutta/async/http/e/b;Lcom/koushikdutta/async/http/e/d;)V

    return-void

    .line 161
    :cond_4
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/e/a$1$1;->h:Z

    if-eqz v0, :cond_5

    .line 162
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/a$1$1;->d:Lcom/koushikdutta/async/http/e/g;

    iget-object v1, p0, Lcom/koushikdutta/async/http/e/a$1$1;->i:Lcom/koushikdutta/async/http/e/e;

    invoke-static {v0, p0, v1}, Lcom/koushikdutta/async/http/e/a;->a(Lcom/koushikdutta/async/http/e/g;Lcom/koushikdutta/async/http/e/b;Lcom/koushikdutta/async/http/e/d;)V

    :cond_5
    return-void

    :catchall_0
    move-exception v1

    .line 128
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_0
    throw v1

    :goto_1
    goto :goto_0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/a$1$1;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final getQuery()Lcom/koushikdutta/async/http/s;
    .locals 3

    .line 207
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/a$1$1;->e:Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "\\?"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 208
    array-length v2, v0

    if-ge v2, v1, :cond_0

    .line 209
    new-instance v0, Lcom/koushikdutta/async/http/s;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/s;-><init>()V

    return-object v0

    :cond_0
    const/4 v1, 0x1

    .line 210
    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/koushikdutta/async/http/s;->parseQuery(Ljava/lang/String;)Lcom/koushikdutta/async/http/s;

    move-result-object v0

    return-object v0
.end method

.method public final onCompleted(Ljava/lang/Exception;)V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/a$1$1;->i:Lcom/koushikdutta/async/http/e/e;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/e/e;->code()I

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 171
    iput-boolean v0, p0, Lcom/koushikdutta/async/http/e/a$1$1;->h:Z

    .line 172
    invoke-super {p0, p1}, Lcom/koushikdutta/async/http/e/c;->onCompleted(Ljava/lang/Exception;)V

    .line 175
    iget-object p1, p0, Lcom/koushikdutta/async/http/e/a$1$1;->m:Lcom/koushikdutta/async/j;

    new-instance v0, Lcom/koushikdutta/async/http/e/a$1$1$3;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/e/a$1$1$3;-><init>(Lcom/koushikdutta/async/http/e/a$1$1;)V

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/j;->setDataCallback(Lcom/koushikdutta/async/a/d;)V

    .line 182
    invoke-direct {p0}, Lcom/koushikdutta/async/http/e/a$1$1;->c()V

    .line 184
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/e/a$1$1;->getBody()Lcom/koushikdutta/async/http/a/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/koushikdutta/async/http/a/a;->readFullyOnRequest()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 185
    iget-object p1, p0, Lcom/koushikdutta/async/http/e/a$1$1;->d:Lcom/koushikdutta/async/http/e/g;

    iget-object v0, p0, Lcom/koushikdutta/async/http/e/a$1$1;->i:Lcom/koushikdutta/async/http/e/e;

    invoke-static {p1, p0, v0}, Lcom/koushikdutta/async/http/e/a;->a(Lcom/koushikdutta/async/http/e/g;Lcom/koushikdutta/async/http/e/b;Lcom/koushikdutta/async/http/e/d;)V

    :cond_1
    return-void
.end method
