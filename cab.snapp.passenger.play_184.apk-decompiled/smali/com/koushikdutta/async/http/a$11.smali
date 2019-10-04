.class final Lcom/koushikdutta/async/http/a$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/http/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/a;->executeFile(Lcom/koushikdutta/async/http/d;Ljava/lang/String;Lcom/koushikdutta/async/http/a$b;)Lcom/koushikdutta/async/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:J

.field final synthetic b:Ljava/io/OutputStream;

.field final synthetic c:Ljava/io/File;

.field final synthetic d:Lcom/koushikdutta/async/http/a$b;

.field final synthetic e:Lcom/koushikdutta/async/b/i;

.field final synthetic f:Lcom/koushikdutta/async/http/a;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/a;Ljava/io/OutputStream;Ljava/io/File;Lcom/koushikdutta/async/http/a$b;Lcom/koushikdutta/async/b/i;)V
    .locals 0

    .line 581
    iput-object p1, p0, Lcom/koushikdutta/async/http/a$11;->f:Lcom/koushikdutta/async/http/a;

    iput-object p2, p0, Lcom/koushikdutta/async/http/a$11;->b:Ljava/io/OutputStream;

    iput-object p3, p0, Lcom/koushikdutta/async/http/a$11;->c:Ljava/io/File;

    iput-object p4, p0, Lcom/koushikdutta/async/http/a$11;->d:Lcom/koushikdutta/async/http/a$b;

    iput-object p5, p0, Lcom/koushikdutta/async/http/a$11;->e:Lcom/koushikdutta/async/b/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 p1, 0x0

    .line 582
    iput-wide p1, p0, Lcom/koushikdutta/async/http/a$11;->a:J

    return-void
.end method


# virtual methods
.method public final onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/http/e;)V
    .locals 7

    if-eqz p1, :cond_0

    .line 588
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/a$11;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 592
    :catch_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/a$11;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 593
    iget-object v1, p0, Lcom/koushikdutta/async/http/a$11;->f:Lcom/koushikdutta/async/http/a;

    iget-object v2, p0, Lcom/koushikdutta/async/http/a$11;->d:Lcom/koushikdutta/async/http/a$b;

    iget-object v3, p0, Lcom/koushikdutta/async/http/a$11;->e:Lcom/koushikdutta/async/b/i;

    const/4 v6, 0x0

    move-object v4, p2

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Lcom/koushikdutta/async/http/a;->a(Lcom/koushikdutta/async/http/a;Lcom/koushikdutta/async/http/c/b;Lcom/koushikdutta/async/b/i;Lcom/koushikdutta/async/http/e;Ljava/lang/Exception;Ljava/lang/Object;)V

    return-void

    .line 596
    :cond_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/a$11;->d:Lcom/koushikdutta/async/http/a$b;

    invoke-static {p1, p2}, Lcom/koushikdutta/async/http/a;->a(Lcom/koushikdutta/async/http/c/b;Lcom/koushikdutta/async/http/e;)V

    .line 598
    invoke-interface {p2}, Lcom/koushikdutta/async/http/e;->headers()Lcom/koushikdutta/async/http/n;

    move-result-object p1

    invoke-static {p1}, Lcom/koushikdutta/async/http/q;->contentLength(Lcom/koushikdutta/async/http/n;)I

    move-result p1

    int-to-long v4, p1

    .line 600
    new-instance p1, Lcom/koushikdutta/async/http/a$11$1;

    iget-object v2, p0, Lcom/koushikdutta/async/http/a$11;->b:Ljava/io/OutputStream;

    move-object v0, p1

    move-object v1, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/http/a$11$1;-><init>(Lcom/koushikdutta/async/http/a$11;Ljava/io/OutputStream;Lcom/koushikdutta/async/http/e;J)V

    invoke-interface {p2, p1}, Lcom/koushikdutta/async/http/e;->setDataCallback(Lcom/koushikdutta/async/a/d;)V

    .line 608
    new-instance p1, Lcom/koushikdutta/async/http/a$11$2;

    invoke-direct {p1, p0, p2}, Lcom/koushikdutta/async/http/a$11$2;-><init>(Lcom/koushikdutta/async/http/a$11;Lcom/koushikdutta/async/http/e;)V

    invoke-interface {p2, p1}, Lcom/koushikdutta/async/http/e;->setEndCallback(Lcom/koushikdutta/async/a/a;)V

    return-void
.end method
