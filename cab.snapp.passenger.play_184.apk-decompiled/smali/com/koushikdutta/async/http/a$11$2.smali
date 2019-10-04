.class final Lcom/koushikdutta/async/http/a$11$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/a$11;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/http/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/e;

.field final synthetic b:Lcom/koushikdutta/async/http/a$11;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/a$11;Lcom/koushikdutta/async/http/e;)V
    .locals 0

    .line 608
    iput-object p1, p0, Lcom/koushikdutta/async/http/a$11$2;->b:Lcom/koushikdutta/async/http/a$11;

    iput-object p2, p0, Lcom/koushikdutta/async/http/a$11$2;->a:Lcom/koushikdutta/async/http/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(Ljava/lang/Exception;)V
    .locals 6

    .line 612
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/a$11$2;->b:Lcom/koushikdutta/async/http/a$11;

    iget-object v0, v0, Lcom/koushikdutta/async/http/a$11;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    :goto_0
    move-object v4, p1

    if-eqz v4, :cond_0

    .line 618
    iget-object p1, p0, Lcom/koushikdutta/async/http/a$11$2;->b:Lcom/koushikdutta/async/http/a$11;

    iget-object p1, p1, Lcom/koushikdutta/async/http/a$11;->c:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 619
    iget-object p1, p0, Lcom/koushikdutta/async/http/a$11$2;->b:Lcom/koushikdutta/async/http/a$11;

    iget-object v0, p1, Lcom/koushikdutta/async/http/a$11;->f:Lcom/koushikdutta/async/http/a;

    iget-object p1, p0, Lcom/koushikdutta/async/http/a$11$2;->b:Lcom/koushikdutta/async/http/a$11;

    iget-object v1, p1, Lcom/koushikdutta/async/http/a$11;->d:Lcom/koushikdutta/async/http/a$b;

    iget-object p1, p0, Lcom/koushikdutta/async/http/a$11$2;->b:Lcom/koushikdutta/async/http/a$11;

    iget-object v2, p1, Lcom/koushikdutta/async/http/a$11;->e:Lcom/koushikdutta/async/b/i;

    iget-object v3, p0, Lcom/koushikdutta/async/http/a$11$2;->a:Lcom/koushikdutta/async/http/e;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/koushikdutta/async/http/a;->a(Lcom/koushikdutta/async/http/a;Lcom/koushikdutta/async/http/c/b;Lcom/koushikdutta/async/b/i;Lcom/koushikdutta/async/http/e;Ljava/lang/Exception;Ljava/lang/Object;)V

    return-void

    .line 622
    :cond_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/a$11$2;->b:Lcom/koushikdutta/async/http/a$11;

    iget-object v0, p1, Lcom/koushikdutta/async/http/a$11;->f:Lcom/koushikdutta/async/http/a;

    iget-object p1, p0, Lcom/koushikdutta/async/http/a$11$2;->b:Lcom/koushikdutta/async/http/a$11;

    iget-object v1, p1, Lcom/koushikdutta/async/http/a$11;->d:Lcom/koushikdutta/async/http/a$b;

    iget-object p1, p0, Lcom/koushikdutta/async/http/a$11$2;->b:Lcom/koushikdutta/async/http/a$11;

    iget-object v2, p1, Lcom/koushikdutta/async/http/a$11;->e:Lcom/koushikdutta/async/b/i;

    iget-object v3, p0, Lcom/koushikdutta/async/http/a$11$2;->a:Lcom/koushikdutta/async/http/e;

    const/4 v4, 0x0

    iget-object p1, p0, Lcom/koushikdutta/async/http/a$11$2;->b:Lcom/koushikdutta/async/http/a$11;

    iget-object v5, p1, Lcom/koushikdutta/async/http/a$11;->c:Ljava/io/File;

    invoke-static/range {v0 .. v5}, Lcom/koushikdutta/async/http/a;->a(Lcom/koushikdutta/async/http/a;Lcom/koushikdutta/async/http/c/b;Lcom/koushikdutta/async/b/i;Lcom/koushikdutta/async/http/e;Ljava/lang/Exception;Ljava/lang/Object;)V

    return-void
.end method
