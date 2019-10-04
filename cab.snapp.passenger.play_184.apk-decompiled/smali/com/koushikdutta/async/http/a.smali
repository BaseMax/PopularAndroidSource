.class public Lcom/koushikdutta/async/http/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/http/a$h;,
        Lcom/koushikdutta/async/http/a$b;,
        Lcom/koushikdutta/async/http/a$d;,
        Lcom/koushikdutta/async/http/a$e;,
        Lcom/koushikdutta/async/http/a$g;,
        Lcom/koushikdutta/async/http/a$a;,
        Lcom/koushikdutta/async/http/a$f;,
        Lcom/koushikdutta/async/http/a$c;
    }
.end annotation


# static fields
.field static final synthetic f:Z

.field private static g:Lcom/koushikdutta/async/http/a;


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/koushikdutta/async/http/b;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/koushikdutta/async/http/spdy/o;

.field c:Lcom/koushikdutta/async/http/i;

.field d:Lcom/koushikdutta/async/http/p;

.field e:Lcom/koushikdutta/async/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const-class v0, Lcom/koushikdutta/async/http/a;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/koushikdutta/async/http/a;->f:Z

    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/h;)V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/a;->a:Ljava/util/List;

    .line 73
    iput-object p1, p0, Lcom/koushikdutta/async/http/a;->e:Lcom/koushikdutta/async/h;

    .line 74
    new-instance p1, Lcom/koushikdutta/async/http/i;

    invoke-direct {p1, p0}, Lcom/koushikdutta/async/http/i;-><init>(Lcom/koushikdutta/async/http/a;)V

    iput-object p1, p0, Lcom/koushikdutta/async/http/a;->c:Lcom/koushikdutta/async/http/i;

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/a;->insertMiddleware(Lcom/koushikdutta/async/http/b;)V

    .line 75
    new-instance p1, Lcom/koushikdutta/async/http/spdy/o;

    invoke-direct {p1, p0}, Lcom/koushikdutta/async/http/spdy/o;-><init>(Lcom/koushikdutta/async/http/a;)V

    iput-object p1, p0, Lcom/koushikdutta/async/http/a;->b:Lcom/koushikdutta/async/http/spdy/o;

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/a;->insertMiddleware(Lcom/koushikdutta/async/http/b;)V

    .line 76
    new-instance p1, Lcom/koushikdutta/async/http/p;

    invoke-direct {p1}, Lcom/koushikdutta/async/http/p;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/http/a;->d:Lcom/koushikdutta/async/http/p;

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/a;->insertMiddleware(Lcom/koushikdutta/async/http/b;)V

    .line 77
    iget-object p1, p0, Lcom/koushikdutta/async/http/a;->b:Lcom/koushikdutta/async/http/spdy/o;

    new-instance v0, Lcom/koushikdutta/async/http/x;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/x;-><init>()V

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/spdy/o;->addEngineConfigurator(Lcom/koushikdutta/async/http/g;)V

    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/d;)J
    .locals 2

    .line 2199
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/d;->getTimeout()I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method private a(Lcom/koushikdutta/async/http/a$c;Ljava/lang/Exception;Lcom/koushikdutta/async/http/f;Lcom/koushikdutta/async/http/d;Lcom/koushikdutta/async/http/c/a;)V
    .locals 2

    .line 158
    sget-boolean v0, Lcom/koushikdutta/async/http/a;->f:Z

    if-nez v0, :cond_1

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 159
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/a;->e:Lcom/koushikdutta/async/h;

    iget-object v1, p1, Lcom/koushikdutta/async/http/a$c;->scheduled:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/h;->removeAllCallbacks(Ljava/lang/Object;)V

    if-eqz p2, :cond_2

    const-string v0, "Connection error"

    .line 162
    invoke-virtual {p4, v0, p2}, Lcom/koushikdutta/async/http/d;->loge(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 163
    invoke-virtual {p1, p2}, Lcom/koushikdutta/async/http/a$c;->setComplete(Ljava/lang/Exception;)Z

    move-result p1

    goto :goto_1

    :cond_2
    const-string v0, "Connection successful"

    .line 166
    invoke-virtual {p4, v0}, Lcom/koushikdutta/async/http/d;->logd(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p1, p3}, Lcom/koushikdutta/async/http/a$c;->setComplete(Ljava/lang/Object;)Z

    move-result p1

    :goto_1
    if-eqz p1, :cond_5

    .line 170
    invoke-interface {p5, p2, p3}, Lcom/koushikdutta/async/http/c/a;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/http/e;)V

    .line 171
    sget-boolean p1, Lcom/koushikdutta/async/http/a;->f:Z

    if-nez p1, :cond_4

    if-nez p2, :cond_4

    invoke-virtual {p3}, Lcom/koushikdutta/async/http/f;->socket()Lcom/koushikdutta/async/j;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p3}, Lcom/koushikdutta/async/http/f;->getDataCallback()Lcom/koushikdutta/async/a/d;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-virtual {p3}, Lcom/koushikdutta/async/http/f;->isPaused()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_2
    return-void

    :cond_5
    if-eqz p3, :cond_6

    .line 177
    new-instance p1, Lcom/koushikdutta/async/a/d$a;

    invoke-direct {p1}, Lcom/koushikdutta/async/a/d$a;-><init>()V

    invoke-virtual {p3, p1}, Lcom/koushikdutta/async/http/f;->setDataCallback(Lcom/koushikdutta/async/a/d;)V

    .line 178
    invoke-virtual {p3}, Lcom/koushikdutta/async/http/f;->close()V

    :cond_6
    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/a;Lcom/koushikdutta/async/http/a$c;Ljava/lang/Exception;Lcom/koushikdutta/async/http/f;Lcom/koushikdutta/async/http/d;Lcom/koushikdutta/async/http/c/a;)V
    .locals 0

    .line 51
    invoke-direct/range {p0 .. p5}, Lcom/koushikdutta/async/http/a;->a(Lcom/koushikdutta/async/http/a$c;Ljava/lang/Exception;Lcom/koushikdutta/async/http/f;Lcom/koushikdutta/async/http/d;Lcom/koushikdutta/async/http/c/a;)V

    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/a;Lcom/koushikdutta/async/http/c/b;Lcom/koushikdutta/async/b/i;Lcom/koushikdutta/async/http/e;Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 8

    .line 2531
    new-instance v7, Lcom/koushikdutta/async/http/a$9;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/koushikdutta/async/http/a$9;-><init>(Lcom/koushikdutta/async/http/a;Lcom/koushikdutta/async/http/c/b;Lcom/koushikdutta/async/b/i;Lcom/koushikdutta/async/http/e;Ljava/lang/Exception;Ljava/lang/Object;)V

    .line 2537
    iget-object p0, p0, Lcom/koushikdutta/async/http/a;->e:Lcom/koushikdutta/async/h;

    invoke-virtual {p0, v7}, Lcom/koushikdutta/async/h;->post(Ljava/lang/Runnable;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/a;Lcom/koushikdutta/async/http/d;ILcom/koushikdutta/async/http/a$c;Lcom/koushikdutta/async/http/c/a;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/http/a;->b(Lcom/koushikdutta/async/http/d;ILcom/koushikdutta/async/http/a$c;Lcom/koushikdutta/async/http/c/a;)V

    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/a;Lcom/koushikdutta/async/http/d;ILcom/koushikdutta/async/http/a$c;Lcom/koushikdutta/async/http/c/a;Lcom/koushikdutta/async/http/b$g;)V
    .locals 9

    .line 1318
    new-instance v8, Lcom/koushikdutta/async/http/a$6;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p1

    move-object v5, p4

    move-object v6, p5

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/koushikdutta/async/http/a$6;-><init>(Lcom/koushikdutta/async/http/a;Lcom/koushikdutta/async/http/d;Lcom/koushikdutta/async/http/a$c;Lcom/koushikdutta/async/http/d;Lcom/koushikdutta/async/http/c/a;Lcom/koushikdutta/async/http/b$g;I)V

    .line 1451
    new-instance p1, Lcom/koushikdutta/async/http/a$7;

    invoke-direct {p1, p0, v8}, Lcom/koushikdutta/async/http/a$7;-><init>(Lcom/koushikdutta/async/http/a;Lcom/koushikdutta/async/http/f;)V

    iput-object p1, p5, Lcom/koushikdutta/async/http/b$g;->sendHeadersCallback:Lcom/koushikdutta/async/a/a;

    .line 1460
    new-instance p1, Lcom/koushikdutta/async/http/a$8;

    invoke-direct {p1, p0, v8}, Lcom/koushikdutta/async/http/a$8;-><init>(Lcom/koushikdutta/async/http/a;Lcom/koushikdutta/async/http/f;)V

    iput-object p1, p5, Lcom/koushikdutta/async/http/b$g;->receiveHeadersCallback:Lcom/koushikdutta/async/a/a;

    .line 1469
    iput-object v8, p5, Lcom/koushikdutta/async/http/b$g;->response:Lcom/koushikdutta/async/http/b$h;

    .line 1470
    iget-object p1, p5, Lcom/koushikdutta/async/http/b$g;->socket:Lcom/koushikdutta/async/j;

    invoke-virtual {v8, p1}, Lcom/koushikdutta/async/http/f;->a(Lcom/koushikdutta/async/j;)V

    .line 1472
    iget-object p0, p0, Lcom/koushikdutta/async/http/a;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/koushikdutta/async/http/b;

    .line 1473
    invoke-interface {p1, p5}, Lcom/koushikdutta/async/http/b;->exchangeHeaders(Lcom/koushikdutta/async/http/b$c;)Z

    move-result p1

    if-eqz p1, :cond_0

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/c/b;Lcom/koushikdutta/async/b/i;Lcom/koushikdutta/async/http/e;Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    if-eqz p3, :cond_0

    .line 2521
    invoke-virtual {p1, p3}, Lcom/koushikdutta/async/b/i;->setComplete(Ljava/lang/Exception;)Z

    move-result p1

    goto :goto_0

    .line 2523
    :cond_0
    invoke-virtual {p1, p4}, Lcom/koushikdutta/async/b/i;->setComplete(Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_1

    if-eqz p0, :cond_1

    .line 2527
    invoke-interface {p0, p3, p2, p4}, Lcom/koushikdutta/async/http/c/b;->onCompleted(Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/c/b;Lcom/koushikdutta/async/http/e;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 2547
    invoke-interface {p0, p1}, Lcom/koushikdutta/async/http/c/b;->onConnect(Lcom/koushikdutta/async/http/e;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/c/b;Lcom/koushikdutta/async/http/e;JJ)V
    .locals 0

    if-eqz p0, :cond_0

    .line 3542
    invoke-interface/range {p0 .. p5}, Lcom/koushikdutta/async/http/c/b;->onProgress(Lcom/koushikdutta/async/http/e;JJ)V

    :cond_0
    return-void
.end method

.method private a(Lcom/koushikdutta/async/http/d;ILcom/koushikdutta/async/http/a$c;Lcom/koushikdutta/async/http/c/a;)V
    .locals 8

    .line 183
    iget-object v0, p0, Lcom/koushikdutta/async/http/a;->e:Lcom/koushikdutta/async/h;

    invoke-virtual {v0}, Lcom/koushikdutta/async/h;->isAffinityThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/http/a;->b(Lcom/koushikdutta/async/http/d;ILcom/koushikdutta/async/http/a$c;Lcom/koushikdutta/async/http/c/a;)V

    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/a;->e:Lcom/koushikdutta/async/h;

    new-instance v7, Lcom/koushikdutta/async/http/a$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/koushikdutta/async/http/a$1;-><init>(Lcom/koushikdutta/async/http/a;Lcom/koushikdutta/async/http/d;ILcom/koushikdutta/async/http/a$c;Lcom/koushikdutta/async/http/c/a;)V

    invoke-virtual {v0, v7}, Lcom/koushikdutta/async/h;->post(Ljava/lang/Runnable;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/d;Lcom/koushikdutta/async/http/d;Ljava/lang/String;)V
    .locals 1

    .line 2203
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/d;->getHeaders()Lcom/koushikdutta/async/http/n;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/koushikdutta/async/http/n;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2204
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2205
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/d;->getHeaders()Lcom/koushikdutta/async/http/n;

    move-result-object p1

    invoke-virtual {p1, p2, p0}, Lcom/koushikdutta/async/http/n;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/n;

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/koushikdutta/async/http/a;Lcom/koushikdutta/async/http/d;ILcom/koushikdutta/async/http/a$c;Lcom/koushikdutta/async/http/c/a;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/http/a;->a(Lcom/koushikdutta/async/http/d;ILcom/koushikdutta/async/http/a$c;Lcom/koushikdutta/async/http/c/a;)V

    return-void
.end method

.method static synthetic b(Lcom/koushikdutta/async/http/d;)V
    .locals 0

    .line 51
    invoke-static {p0}, Lcom/koushikdutta/async/http/a;->c(Lcom/koushikdutta/async/http/d;)V

    return-void
.end method

.method private b(Lcom/koushikdutta/async/http/d;ILcom/koushikdutta/async/http/a$c;Lcom/koushikdutta/async/http/c/a;)V
    .locals 12

    move-object v7, p0

    move-object v8, p1

    move-object v9, p3

    .line 209
    sget-boolean v0, Lcom/koushikdutta/async/http/a;->f:Z

    if-nez v0, :cond_1

    iget-object v0, v7, Lcom/koushikdutta/async/http/a;->e:Lcom/koushikdutta/async/h;

    invoke-virtual {v0}, Lcom/koushikdutta/async/h;->isAffinityThread()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    const/16 v0, 0xf

    move v6, p2

    if-le v6, v0, :cond_2

    .line 211
    new-instance v2, Lcom/koushikdutta/async/http/v;

    const-string v0, "too many redirects"

    invoke-direct {v2, v0}, Lcom/koushikdutta/async/http/v;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v4, p1

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/http/a;->a(Lcom/koushikdutta/async/http/a$c;Ljava/lang/Exception;Lcom/koushikdutta/async/http/f;Lcom/koushikdutta/async/http/d;Lcom/koushikdutta/async/http/c/a;)V

    return-void

    .line 214
    :cond_2
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/d;->getUri()Landroid/net/Uri;

    .line 215
    new-instance v10, Lcom/koushikdutta/async/http/b$g;

    invoke-direct {v10}, Lcom/koushikdutta/async/http/b$g;-><init>()V

    .line 216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v8, Lcom/koushikdutta/async/http/d;->g:J

    .line 217
    iput-object v8, v10, Lcom/koushikdutta/async/http/b$g;->request:Lcom/koushikdutta/async/http/d;

    const-string v0, "Executing request."

    .line 219
    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/d;->logd(Ljava/lang/String;)V

    .line 221
    iget-object v0, v7, Lcom/koushikdutta/async/http/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/http/b;

    .line 222
    invoke-interface {v1, v10}, Lcom/koushikdutta/async/http/b;->onRequest(Lcom/koushikdutta/async/http/b$e;)V

    goto :goto_1

    .line 235
    :cond_3
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/d;->getTimeout()I

    move-result v0

    if-lez v0, :cond_4

    .line 237
    new-instance v11, Lcom/koushikdutta/async/http/a$4;

    move-object v0, v11

    move-object v1, p0

    move-object v2, v10

    move-object v3, p3

    move-object v4, p1

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/http/a$4;-><init>(Lcom/koushikdutta/async/http/a;Lcom/koushikdutta/async/http/b$g;Lcom/koushikdutta/async/http/a$c;Lcom/koushikdutta/async/http/d;Lcom/koushikdutta/async/http/c/a;)V

    iput-object v11, v9, Lcom/koushikdutta/async/http/a$c;->timeoutRunnable:Ljava/lang/Runnable;

    .line 249
    iget-object v0, v7, Lcom/koushikdutta/async/http/a;->e:Lcom/koushikdutta/async/h;

    iget-object v1, v9, Lcom/koushikdutta/async/http/a$c;->timeoutRunnable:Ljava/lang/Runnable;

    .line 1199
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/d;->getTimeout()I

    move-result v2

    int-to-long v2, v2

    .line 249
    invoke-virtual {v0, v1, v2, v3}, Lcom/koushikdutta/async/h;->postDelayed(Ljava/lang/Runnable;J)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v9, Lcom/koushikdutta/async/http/a$c;->scheduled:Ljava/lang/Object;

    .line 253
    :cond_4
    new-instance v11, Lcom/koushikdutta/async/http/a$5;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object/from16 v4, p4

    move-object v5, v10

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/koushikdutta/async/http/a$5;-><init>(Lcom/koushikdutta/async/http/a;Lcom/koushikdutta/async/http/d;Lcom/koushikdutta/async/http/a$c;Lcom/koushikdutta/async/http/c/a;Lcom/koushikdutta/async/http/b$g;I)V

    iput-object v11, v10, Lcom/koushikdutta/async/http/b$g;->connectCallback:Lcom/koushikdutta/async/a/b;

    .line 291
    invoke-static {p1}, Lcom/koushikdutta/async/http/a;->c(Lcom/koushikdutta/async/http/d;)V

    .line 294
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/d;->getBody()Lcom/koushikdutta/async/http/a/a;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 295
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/d;->getHeaders()Lcom/koushikdutta/async/http/n;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/n;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 296
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/d;->getHeaders()Lcom/koushikdutta/async/http/n;

    move-result-object v0

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/d;->getBody()Lcom/koushikdutta/async/http/a/a;

    move-result-object v2

    invoke-interface {v2}, Lcom/koushikdutta/async/http/a/a;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/http/n;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/n;

    .line 300
    :cond_5
    iget-object v0, v7, Lcom/koushikdutta/async/http/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/http/b;

    .line 301
    invoke-interface {v1, v10}, Lcom/koushikdutta/async/http/b;->getSocket(Lcom/koushikdutta/async/http/b$a;)Lcom/koushikdutta/async/b/a;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 303
    iput-object v1, v10, Lcom/koushikdutta/async/http/b$g;->socketCancellable:Lcom/koushikdutta/async/b/a;

    .line 304
    invoke-virtual {p3, v1}, Lcom/koushikdutta/async/http/a$c;->setParent(Lcom/koushikdutta/async/b/a;)Lcom/koushikdutta/async/b/i;

    return-void

    .line 308
    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invalid uri="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/d;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " middlewares="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lcom/koushikdutta/async/http/a;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v4, p1

    move-object/from16 v5, p4

    .line 309
    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/http/a;->a(Lcom/koushikdutta/async/http/a$c;Ljava/lang/Exception;Lcom/koushikdutta/async/http/f;Lcom/koushikdutta/async/http/d;Lcom/koushikdutta/async/http/c/a;)V

    return-void
.end method

.method private static c(Lcom/koushikdutta/async/http/d;)V
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/koushikdutta/async/http/d;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    .line 88
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/d;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 96
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Proxy;

    .line 97
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-eq v1, v2, :cond_2

    return-void

    .line 99
    :cond_2
    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v1

    instance-of v1, v1, Ljava/net/InetSocketAddress;

    if-nez v1, :cond_3

    return-void

    .line 101
    :cond_3
    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 103
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_4

    .line 104
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 107
    :cond_4
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 109
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 111
    :cond_5
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    .line 113
    :goto_0
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/koushikdutta/async/http/d;->enableProxy(Ljava/lang/String;I)V

    :catch_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/koushikdutta/async/http/a;
    .locals 2

    .line 54
    sget-object v0, Lcom/koushikdutta/async/http/a;->g:Lcom/koushikdutta/async/http/a;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/koushikdutta/async/http/a;

    invoke-static {}, Lcom/koushikdutta/async/h;->getDefault()Lcom/koushikdutta/async/h;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/http/a;-><init>(Lcom/koushikdutta/async/h;)V

    sput-object v0, Lcom/koushikdutta/async/http/a;->g:Lcom/koushikdutta/async/http/a;

    .line 57
    :cond_0
    sget-object v0, Lcom/koushikdutta/async/http/a;->g:Lcom/koushikdutta/async/http/a;

    return-object v0
.end method


# virtual methods
.method public execute(Lcom/koushikdutta/async/http/d;Lcom/koushikdutta/async/http/c/a;)Lcom/koushikdutta/async/b/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/http/d;",
            "Lcom/koushikdutta/async/http/c/a;",
            ")",
            "Lcom/koushikdutta/async/b/e<",
            "Lcom/koushikdutta/async/http/e;",
            ">;"
        }
    .end annotation

    .line 126
    new-instance v0, Lcom/koushikdutta/async/http/a$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/koushikdutta/async/http/a$c;-><init>(Lcom/koushikdutta/async/http/a;B)V

    invoke-direct {p0, p1, v1, v0, p2}, Lcom/koushikdutta/async/http/a;->a(Lcom/koushikdutta/async/http/d;ILcom/koushikdutta/async/http/a$c;Lcom/koushikdutta/async/http/c/a;)V

    return-object v0
.end method

.method public execute(Ljava/lang/String;Lcom/koushikdutta/async/http/c/a;)Lcom/koushikdutta/async/b/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/koushikdutta/async/http/c/a;",
            ")",
            "Lcom/koushikdutta/async/b/e<",
            "Lcom/koushikdutta/async/http/e;",
            ">;"
        }
    .end annotation

    .line 131
    new-instance v0, Lcom/koushikdutta/async/http/c;

    invoke-direct {v0, p1}, Lcom/koushikdutta/async/http/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/koushikdutta/async/http/a;->execute(Lcom/koushikdutta/async/http/d;Lcom/koushikdutta/async/http/c/a;)Lcom/koushikdutta/async/b/e;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lcom/koushikdutta/async/http/d;Lcom/koushikdutta/async/c/a;Lcom/koushikdutta/async/http/c/b;)Lcom/koushikdutta/async/b/i;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/koushikdutta/async/http/d;",
            "Lcom/koushikdutta/async/c/a<",
            "TT;>;",
            "Lcom/koushikdutta/async/http/c/b<",
            "TT;>;)",
            "Lcom/koushikdutta/async/b/i<",
            "TT;>;"
        }
    .end annotation

    .line 632
    new-instance v0, Lcom/koushikdutta/async/http/a$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/koushikdutta/async/http/a$c;-><init>(Lcom/koushikdutta/async/http/a;B)V

    .line 633
    new-instance v2, Lcom/koushikdutta/async/b/i;

    invoke-direct {v2}, Lcom/koushikdutta/async/b/i;-><init>()V

    .line 634
    new-instance v3, Lcom/koushikdutta/async/http/a$2;

    invoke-direct {v3, p0, p3, v2, p2}, Lcom/koushikdutta/async/http/a$2;-><init>(Lcom/koushikdutta/async/http/a;Lcom/koushikdutta/async/http/c/b;Lcom/koushikdutta/async/b/i;Lcom/koushikdutta/async/c/a;)V

    invoke-direct {p0, p1, v1, v0, v3}, Lcom/koushikdutta/async/http/a;->a(Lcom/koushikdutta/async/http/d;ILcom/koushikdutta/async/http/a$c;Lcom/koushikdutta/async/http/c/a;)V

    .line 655
    invoke-virtual {v2, v0}, Lcom/koushikdutta/async/b/i;->setParent(Lcom/koushikdutta/async/b/a;)Lcom/koushikdutta/async/b/i;

    return-object v2
.end method

.method public executeByteBufferList(Lcom/koushikdutta/async/http/d;Lcom/koushikdutta/async/http/a$a;)Lcom/koushikdutta/async/b/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/http/d;",
            "Lcom/koushikdutta/async/http/a$a;",
            ")",
            "Lcom/koushikdutta/async/b/e<",
            "Lcom/koushikdutta/async/l;",
            ">;"
        }
    .end annotation

    .line 503
    new-instance v0, Lcom/koushikdutta/async/c/b;

    invoke-direct {v0}, Lcom/koushikdutta/async/c/b;-><init>()V

    invoke-virtual {p0, p1, v0, p2}, Lcom/koushikdutta/async/http/a;->execute(Lcom/koushikdutta/async/http/d;Lcom/koushikdutta/async/c/a;Lcom/koushikdutta/async/http/c/b;)Lcom/koushikdutta/async/b/i;

    move-result-object p1

    return-object p1
.end method

.method public executeFile(Lcom/koushikdutta/async/http/d;Ljava/lang/String;Lcom/koushikdutta/async/http/a$b;)Lcom/koushikdutta/async/b/e;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/http/d;",
            "Ljava/lang/String;",
            "Lcom/koushikdutta/async/http/a$b;",
            ")",
            "Lcom/koushikdutta/async/b/e<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 551
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 552
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 555
    :try_start_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v0, 0x2000

    invoke-direct {v2, p2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 562
    new-instance p2, Lcom/koushikdutta/async/http/a$c;

    const/4 v6, 0x0

    invoke-direct {p2, p0, v6}, Lcom/koushikdutta/async/http/a$c;-><init>(Lcom/koushikdutta/async/http/a;B)V

    .line 563
    new-instance v7, Lcom/koushikdutta/async/http/a$10;

    invoke-direct {v7, p0, p2, v2, v3}, Lcom/koushikdutta/async/http/a$10;-><init>(Lcom/koushikdutta/async/http/a;Lcom/koushikdutta/async/http/a$c;Ljava/io/OutputStream;Ljava/io/File;)V

    .line 580
    invoke-virtual {v7, p2}, Lcom/koushikdutta/async/b/i;->setParent(Lcom/koushikdutta/async/b/a;)Lcom/koushikdutta/async/b/i;

    .line 581
    new-instance v8, Lcom/koushikdutta/async/http/a$11;

    move-object v0, v8

    move-object v1, p0

    move-object v4, p3

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/http/a$11;-><init>(Lcom/koushikdutta/async/http/a;Ljava/io/OutputStream;Ljava/io/File;Lcom/koushikdutta/async/http/a$b;Lcom/koushikdutta/async/b/i;)V

    invoke-direct {p0, p1, v6, p2, v8}, Lcom/koushikdutta/async/http/a;->a(Lcom/koushikdutta/async/http/d;ILcom/koushikdutta/async/http/a$c;Lcom/koushikdutta/async/http/c/a;)V

    return-object v7

    :catch_0
    move-exception p1

    .line 558
    new-instance p2, Lcom/koushikdutta/async/b/i;

    invoke-direct {p2}, Lcom/koushikdutta/async/b/i;-><init>()V

    .line 559
    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/b/i;->setComplete(Ljava/lang/Exception;)Z

    return-object p2
.end method

.method public executeJSONArray(Lcom/koushikdutta/async/http/d;Lcom/koushikdutta/async/http/a$d;)Lcom/koushikdutta/async/b/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/http/d;",
            "Lcom/koushikdutta/async/http/a$d;",
            ")",
            "Lcom/koushikdutta/async/b/e<",
            "Lorg/a/a;",
            ">;"
        }
    .end annotation

    .line 515
    new-instance v0, Lcom/koushikdutta/async/c/d;

    invoke-direct {v0}, Lcom/koushikdutta/async/c/d;-><init>()V

    invoke-virtual {p0, p1, v0, p2}, Lcom/koushikdutta/async/http/a;->execute(Lcom/koushikdutta/async/http/d;Lcom/koushikdutta/async/c/a;Lcom/koushikdutta/async/http/c/b;)Lcom/koushikdutta/async/b/i;

    move-result-object p1

    return-object p1
.end method

.method public executeJSONObject(Lcom/koushikdutta/async/http/d;Lcom/koushikdutta/async/http/a$e;)Lcom/koushikdutta/async/b/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/http/d;",
            "Lcom/koushikdutta/async/http/a$e;",
            ")",
            "Lcom/koushikdutta/async/b/e<",
            "Lorg/a/c;",
            ">;"
        }
    .end annotation

    .line 511
    new-instance v0, Lcom/koushikdutta/async/c/e;

    invoke-direct {v0}, Lcom/koushikdutta/async/c/e;-><init>()V

    invoke-virtual {p0, p1, v0, p2}, Lcom/koushikdutta/async/http/a;->execute(Lcom/koushikdutta/async/http/d;Lcom/koushikdutta/async/c/a;Lcom/koushikdutta/async/http/c/b;)Lcom/koushikdutta/async/b/i;

    move-result-object p1

    return-object p1
.end method

.method public executeString(Lcom/koushikdutta/async/http/d;Lcom/koushikdutta/async/http/a$g;)Lcom/koushikdutta/async/b/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/http/d;",
            "Lcom/koushikdutta/async/http/a$g;",
            ")",
            "Lcom/koushikdutta/async/b/e<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 507
    new-instance v0, Lcom/koushikdutta/async/c/f;

    invoke-direct {v0}, Lcom/koushikdutta/async/c/f;-><init>()V

    invoke-virtual {p0, p1, v0, p2}, Lcom/koushikdutta/async/http/a;->execute(Lcom/koushikdutta/async/http/d;Lcom/koushikdutta/async/c/a;Lcom/koushikdutta/async/http/c/b;)Lcom/koushikdutta/async/b/i;

    move-result-object p1

    return-object p1
.end method

.method public getMiddleware()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/koushikdutta/async/http/b;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/koushikdutta/async/http/a;->a:Ljava/util/List;

    return-object v0
.end method

.method public getSSLSocketMiddleware()Lcom/koushikdutta/async/http/spdy/o;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/koushikdutta/async/http/a;->b:Lcom/koushikdutta/async/http/spdy/o;

    return-object v0
.end method

.method public getServer()Lcom/koushikdutta/async/h;
    .locals 1

    .line 702
    iget-object v0, p0, Lcom/koushikdutta/async/http/a;->e:Lcom/koushikdutta/async/h;

    return-object v0
.end method

.method public getSocketMiddleware()Lcom/koushikdutta/async/http/i;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/koushikdutta/async/http/a;->c:Lcom/koushikdutta/async/http/i;

    return-object v0
.end method

.method public insertMiddleware(Lcom/koushikdutta/async/http/b;)V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/koushikdutta/async/http/a;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public websocket(Lcom/koushikdutta/async/http/d;Ljava/lang/String;Lcom/koushikdutta/async/http/a$h;)Lcom/koushikdutta/async/b/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/http/d;",
            "Ljava/lang/String;",
            "Lcom/koushikdutta/async/http/a$h;",
            ")",
            "Lcom/koushikdutta/async/b/e<",
            "Lcom/koushikdutta/async/http/z;",
            ">;"
        }
    .end annotation

    .line 664
    invoke-static {p1, p2}, Lcom/koushikdutta/async/http/ab;->addWebSocketUpgradeHeaders(Lcom/koushikdutta/async/http/d;Ljava/lang/String;)V

    .line 665
    new-instance p2, Lcom/koushikdutta/async/b/i;

    invoke-direct {p2}, Lcom/koushikdutta/async/b/i;-><init>()V

    .line 666
    new-instance v0, Lcom/koushikdutta/async/http/a$3;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/koushikdutta/async/http/a$3;-><init>(Lcom/koushikdutta/async/http/a;Lcom/koushikdutta/async/b/i;Lcom/koushikdutta/async/http/a$h;Lcom/koushikdutta/async/http/d;)V

    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/http/a;->execute(Lcom/koushikdutta/async/http/d;Lcom/koushikdutta/async/http/c/a;)Lcom/koushikdutta/async/b/e;

    move-result-object p1

    .line 691
    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/b/i;->setParent(Lcom/koushikdutta/async/b/a;)Lcom/koushikdutta/async/b/i;

    return-object p2
.end method

.method public websocket(Ljava/lang/String;Ljava/lang/String;Lcom/koushikdutta/async/http/a$h;)Lcom/koushikdutta/async/b/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/koushikdutta/async/http/a$h;",
            ")",
            "Lcom/koushikdutta/async/b/e<",
            "Lcom/koushikdutta/async/http/z;",
            ">;"
        }
    .end annotation

    .line 697
    new-instance v0, Lcom/koushikdutta/async/http/c;

    const-string v1, "ws://"

    const-string v2, "http://"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "wss://"

    const-string v2, "https://"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/koushikdutta/async/http/c;-><init>(Ljava/lang/String;)V

    .line 698
    invoke-virtual {p0, v0, p2, p3}, Lcom/koushikdutta/async/http/a;->websocket(Lcom/koushikdutta/async/http/d;Ljava/lang/String;Lcom/koushikdutta/async/http/a$h;)Lcom/koushikdutta/async/b/e;

    move-result-object p1

    return-object p1
.end method
