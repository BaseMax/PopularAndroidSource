.class final Lcom/koushikdutta/async/http/h$2$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/y$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/h$2$1;->onCompleted(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lcom/koushikdutta/async/http/h$2$1;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/h$2$1;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/koushikdutta/async/http/h$2$1$1;->b:Lcom/koushikdutta/async/http/h$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStringAvailable(Ljava/lang/String;)V
    .locals 6

    .line 128
    iget-object v0, p0, Lcom/koushikdutta/async/http/h$2$1$1;->b:Lcom/koushikdutta/async/http/h$2$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/h$2$1;->b:Lcom/koushikdutta/async/http/h$2;

    iget-object v0, v0, Lcom/koushikdutta/async/http/h$2;->c:Lcom/koushikdutta/async/http/b$a;

    iget-object v0, v0, Lcom/koushikdutta/async/http/b$a;->request:Lcom/koushikdutta/async/http/d;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/d;->logv(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/koushikdutta/async/http/h$2$1$1;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 130
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/koushikdutta/async/http/h$2$1$1;->a:Ljava/lang/String;

    .line 131
    iget-object p1, p0, Lcom/koushikdutta/async/http/h$2$1$1;->a:Ljava/lang/String;

    const-string v0, "HTTP/1.\\d 2\\d\\d .*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 132
    iget-object p1, p0, Lcom/koushikdutta/async/http/h$2$1$1;->b:Lcom/koushikdutta/async/http/h$2$1;

    iget-object p1, p1, Lcom/koushikdutta/async/http/h$2$1;->a:Lcom/koushikdutta/async/j;

    invoke-interface {p1, v1}, Lcom/koushikdutta/async/j;->setDataCallback(Lcom/koushikdutta/async/a/d;)V

    .line 133
    iget-object p1, p0, Lcom/koushikdutta/async/http/h$2$1$1;->b:Lcom/koushikdutta/async/http/h$2$1;

    iget-object p1, p1, Lcom/koushikdutta/async/http/h$2$1;->a:Lcom/koushikdutta/async/j;

    invoke-interface {p1, v1}, Lcom/koushikdutta/async/j;->setEndCallback(Lcom/koushikdutta/async/a/a;)V

    .line 134
    iget-object p1, p0, Lcom/koushikdutta/async/http/h$2$1$1;->b:Lcom/koushikdutta/async/http/h$2$1;

    iget-object p1, p1, Lcom/koushikdutta/async/http/h$2$1;->b:Lcom/koushikdutta/async/http/h$2;

    iget-object p1, p1, Lcom/koushikdutta/async/http/h$2;->a:Lcom/koushikdutta/async/a/b;

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "non 2xx status line: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/koushikdutta/async/http/h$2$1$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/koushikdutta/async/http/h$2$1$1;->b:Lcom/koushikdutta/async/http/h$2$1;

    iget-object v1, v1, Lcom/koushikdutta/async/http/h$2$1;->a:Lcom/koushikdutta/async/j;

    invoke-interface {p1, v0, v1}, Lcom/koushikdutta/async/a/b;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/j;)V

    return-void

    .line 137
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 138
    iget-object p1, p0, Lcom/koushikdutta/async/http/h$2$1$1;->b:Lcom/koushikdutta/async/http/h$2$1;

    iget-object p1, p1, Lcom/koushikdutta/async/http/h$2$1;->a:Lcom/koushikdutta/async/j;

    invoke-interface {p1, v1}, Lcom/koushikdutta/async/j;->setDataCallback(Lcom/koushikdutta/async/a/d;)V

    .line 139
    iget-object p1, p0, Lcom/koushikdutta/async/http/h$2$1$1;->b:Lcom/koushikdutta/async/http/h$2$1;

    iget-object p1, p1, Lcom/koushikdutta/async/http/h$2$1;->a:Lcom/koushikdutta/async/j;

    invoke-interface {p1, v1}, Lcom/koushikdutta/async/j;->setEndCallback(Lcom/koushikdutta/async/a/a;)V

    .line 140
    iget-object p1, p0, Lcom/koushikdutta/async/http/h$2$1$1;->b:Lcom/koushikdutta/async/http/h$2$1;

    iget-object p1, p1, Lcom/koushikdutta/async/http/h$2$1;->b:Lcom/koushikdutta/async/http/h$2;

    iget-object v0, p1, Lcom/koushikdutta/async/http/h$2;->f:Lcom/koushikdutta/async/http/h;

    iget-object p1, p0, Lcom/koushikdutta/async/http/h$2$1$1;->b:Lcom/koushikdutta/async/http/h$2$1;

    iget-object v1, p1, Lcom/koushikdutta/async/http/h$2$1;->a:Lcom/koushikdutta/async/j;

    iget-object p1, p0, Lcom/koushikdutta/async/http/h$2$1$1;->b:Lcom/koushikdutta/async/http/h$2$1;

    iget-object p1, p1, Lcom/koushikdutta/async/http/h$2$1;->b:Lcom/koushikdutta/async/http/h$2;

    iget-object v2, p1, Lcom/koushikdutta/async/http/h$2;->c:Lcom/koushikdutta/async/http/b$a;

    iget-object p1, p0, Lcom/koushikdutta/async/http/h$2$1$1;->b:Lcom/koushikdutta/async/http/h$2$1;

    iget-object p1, p1, Lcom/koushikdutta/async/http/h$2$1;->b:Lcom/koushikdutta/async/http/h$2;

    iget-object v3, p1, Lcom/koushikdutta/async/http/h$2;->d:Landroid/net/Uri;

    iget-object p1, p0, Lcom/koushikdutta/async/http/h$2$1$1;->b:Lcom/koushikdutta/async/http/h$2$1;

    iget-object p1, p1, Lcom/koushikdutta/async/http/h$2$1;->b:Lcom/koushikdutta/async/http/h$2;

    iget v4, p1, Lcom/koushikdutta/async/http/h$2;->e:I

    iget-object p1, p0, Lcom/koushikdutta/async/http/h$2$1$1;->b:Lcom/koushikdutta/async/http/h$2$1;

    iget-object p1, p1, Lcom/koushikdutta/async/http/h$2$1;->b:Lcom/koushikdutta/async/http/h$2;

    iget-object v5, p1, Lcom/koushikdutta/async/http/h$2;->a:Lcom/koushikdutta/async/a/b;

    invoke-virtual/range {v0 .. v5}, Lcom/koushikdutta/async/http/h;->a(Lcom/koushikdutta/async/j;Lcom/koushikdutta/async/http/b$a;Landroid/net/Uri;ILcom/koushikdutta/async/a/b;)V

    :cond_1
    return-void
.end method
