.class final Lcom/koushikdutta/async/http/h$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/h;->wrapCallback(Lcom/koushikdutta/async/http/b$a;Landroid/net/Uri;IZLcom/koushikdutta/async/a/b;)Lcom/koushikdutta/async/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/a/b;

.field final synthetic b:Z

.field final synthetic c:Lcom/koushikdutta/async/http/b$a;

.field final synthetic d:Landroid/net/Uri;

.field final synthetic e:I

.field final synthetic f:Lcom/koushikdutta/async/http/h;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/h;Lcom/koushikdutta/async/a/b;ZLcom/koushikdutta/async/http/b$a;Landroid/net/Uri;I)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/koushikdutta/async/http/h$2;->f:Lcom/koushikdutta/async/http/h;

    iput-object p2, p0, Lcom/koushikdutta/async/http/h$2;->a:Lcom/koushikdutta/async/a/b;

    iput-boolean p3, p0, Lcom/koushikdutta/async/http/h$2;->b:Z

    iput-object p4, p0, Lcom/koushikdutta/async/http/h$2;->c:Lcom/koushikdutta/async/http/b$a;

    iput-object p5, p0, Lcom/koushikdutta/async/http/h$2;->d:Landroid/net/Uri;

    iput p6, p0, Lcom/koushikdutta/async/http/h$2;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/j;)V
    .locals 6

    if-eqz p1, :cond_0

    .line 101
    iget-object v0, p0, Lcom/koushikdutta/async/http/h$2;->a:Lcom/koushikdutta/async/a/b;

    invoke-interface {v0, p1, p2}, Lcom/koushikdutta/async/a/b;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/j;)V

    return-void

    .line 105
    :cond_0
    iget-boolean p1, p0, Lcom/koushikdutta/async/http/h$2;->b:Z

    if-nez p1, :cond_1

    .line 106
    iget-object v0, p0, Lcom/koushikdutta/async/http/h$2;->f:Lcom/koushikdutta/async/http/h;

    iget-object v2, p0, Lcom/koushikdutta/async/http/h$2;->c:Lcom/koushikdutta/async/http/b$a;

    iget-object v3, p0, Lcom/koushikdutta/async/http/h$2;->d:Landroid/net/Uri;

    iget v4, p0, Lcom/koushikdutta/async/http/h$2;->e:I

    iget-object v5, p0, Lcom/koushikdutta/async/http/h$2;->a:Lcom/koushikdutta/async/a/b;

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/koushikdutta/async/http/h;->a(Lcom/koushikdutta/async/j;Lcom/koushikdutta/async/http/b$a;Landroid/net/Uri;ILcom/koushikdutta/async/a/b;)V

    return-void

    .line 113
    :cond_1
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/koushikdutta/async/http/h$2;->d:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/koushikdutta/async/http/h$2;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/koushikdutta/async/http/h$2;->d:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "CONNECT %s:%s HTTP/1.1\r\nHost: %s\r\n\r\n"

    invoke-static {p1, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 114
    iget-object v0, p0, Lcom/koushikdutta/async/http/h$2;->c:Lcom/koushikdutta/async/http/b$a;

    iget-object v0, v0, Lcom/koushikdutta/async/http/b$a;->request:Lcom/koushikdutta/async/http/d;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Proxying: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/d;->logv(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    new-instance v0, Lcom/koushikdutta/async/http/h$2$1;

    invoke-direct {v0, p0, p2}, Lcom/koushikdutta/async/http/h$2$1;-><init>(Lcom/koushikdutta/async/http/h$2;Lcom/koushikdutta/async/j;)V

    invoke-static {p2, p1, v0}, Lcom/koushikdutta/async/af;->writeAll(Lcom/koushikdutta/async/q;[BLcom/koushikdutta/async/a/a;)V

    return-void
.end method
