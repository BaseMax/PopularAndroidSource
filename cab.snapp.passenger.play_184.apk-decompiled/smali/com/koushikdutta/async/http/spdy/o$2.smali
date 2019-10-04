.class final Lcom/koushikdutta/async/http/spdy/o$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/spdy/o;->createHandshakeCallback(Lcom/koushikdutta/async/http/b$a;Lcom/koushikdutta/async/a/b;)Lcom/koushikdutta/async/f$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/b$a;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/koushikdutta/async/a/b;

.field final synthetic d:Lcom/koushikdutta/async/http/spdy/o;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/spdy/o;Lcom/koushikdutta/async/http/b$a;Ljava/lang/String;Lcom/koushikdutta/async/a/b;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/o$2;->d:Lcom/koushikdutta/async/http/spdy/o;

    iput-object p2, p0, Lcom/koushikdutta/async/http/spdy/o$2;->a:Lcom/koushikdutta/async/http/b$a;

    iput-object p3, p0, Lcom/koushikdutta/async/http/spdy/o$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/koushikdutta/async/http/spdy/o$2;->c:Lcom/koushikdutta/async/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onHandshakeCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/e;)V
    .locals 4

    .line 198
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/o$2;->a:Lcom/koushikdutta/async/http/b$a;

    iget-object v0, v0, Lcom/koushikdutta/async/http/b$a;->request:Lcom/koushikdutta/async/http/d;

    const-string v1, "checking spdy handshake"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/d;->logv(Ljava/lang/String;)V

    if-nez p1, :cond_4

    .line 199
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/o$2;->d:Lcom/koushikdutta/async/http/spdy/o;

    iget-object v0, v0, Lcom/koushikdutta/async/http/spdy/o;->x:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 206
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/o$2;->d:Lcom/koushikdutta/async/http/spdy/o;

    iget-object p1, p1, Lcom/koushikdutta/async/http/spdy/o;->u:Ljava/lang/reflect/Field;

    invoke-interface {p2}, Lcom/koushikdutta/async/e;->getSSLEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 207
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/o$2;->d:Lcom/koushikdutta/async/http/spdy/o;

    iget-object p1, p1, Lcom/koushikdutta/async/http/spdy/o;->x:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    check-cast p1, [B

    if-nez p1, :cond_1

    .line 209
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/o$2;->d:Lcom/koushikdutta/async/http/spdy/o;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/o$2;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/o$2;->c:Lcom/koushikdutta/async/a/b;

    invoke-static {p1, v1, v2, v0, p2}, Lcom/koushikdutta/async/http/spdy/o;->a(Lcom/koushikdutta/async/http/spdy/o;Ljava/lang/String;Lcom/koushikdutta/async/a/b;Ljava/lang/Exception;Lcom/koushikdutta/async/e;)V

    .line 210
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/o$2;->d:Lcom/koushikdutta/async/http/spdy/o;

    iget-object p2, p0, Lcom/koushikdutta/async/http/spdy/o$2;->b:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/koushikdutta/async/http/spdy/o;->a(Lcom/koushikdutta/async/http/spdy/o;Ljava/lang/String;)V

    return-void

    .line 213
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    .line 214
    invoke-static {v1}, Lcom/koushikdutta/async/http/Protocol;->get(Ljava/lang/String;)Lcom/koushikdutta/async/http/Protocol;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 215
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/Protocol;->needsSpdyConnection()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p1, :cond_2

    goto :goto_0

    .line 225
    :cond_2
    new-instance p1, Lcom/koushikdutta/async/http/spdy/o$2$1;

    invoke-static {v1}, Lcom/koushikdutta/async/http/Protocol;->get(Ljava/lang/String;)Lcom/koushikdutta/async/http/Protocol;

    move-result-object v0

    invoke-direct {p1, p0, p2, v0}, Lcom/koushikdutta/async/http/spdy/o$2$1;-><init>(Lcom/koushikdutta/async/http/spdy/o$2;Lcom/koushikdutta/async/j;Lcom/koushikdutta/async/http/Protocol;)V

    .line 246
    :try_start_1
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/spdy/a;->sendConnectionPreface()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 248
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-void

    .line 216
    :cond_3
    :goto_0
    :try_start_2
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/o$2;->d:Lcom/koushikdutta/async/http/spdy/o;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/o$2;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/o$2;->c:Lcom/koushikdutta/async/a/b;

    invoke-static {p1, v1, v2, v0, p2}, Lcom/koushikdutta/async/http/spdy/o;->a(Lcom/koushikdutta/async/http/spdy/o;Ljava/lang/String;Lcom/koushikdutta/async/a/b;Ljava/lang/Exception;Lcom/koushikdutta/async/e;)V

    .line 217
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/o$2;->d:Lcom/koushikdutta/async/http/spdy/o;

    iget-object p2, p0, Lcom/koushikdutta/async/http/spdy/o$2;->b:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/koushikdutta/async/http/spdy/o;->a(Lcom/koushikdutta/async/http/spdy/o;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 222
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    .line 200
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/o$2;->d:Lcom/koushikdutta/async/http/spdy/o;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/o$2;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/o$2;->c:Lcom/koushikdutta/async/a/b;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/koushikdutta/async/http/spdy/o;->a(Lcom/koushikdutta/async/http/spdy/o;Ljava/lang/String;Lcom/koushikdutta/async/a/b;Ljava/lang/Exception;Lcom/koushikdutta/async/e;)V

    .line 201
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/o$2;->d:Lcom/koushikdutta/async/http/spdy/o;

    iget-object p2, p0, Lcom/koushikdutta/async/http/spdy/o$2;->b:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/koushikdutta/async/http/spdy/o;->a(Lcom/koushikdutta/async/http/spdy/o;Ljava/lang/String;)V

    return-void
.end method
