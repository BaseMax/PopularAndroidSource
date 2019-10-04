.class final Lcom/koushikdutta/async/http/e/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/y$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/e/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/e/c;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/e/c;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/koushikdutta/async/http/e/c$2;->a:Lcom/koushikdutta/async/http/e/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStringAvailable(Ljava/lang/String;)V
    .locals 4

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/c$2;->a:Lcom/koushikdutta/async/http/e/c;

    invoke-static {v0}, Lcom/koushikdutta/async/http/e/c;->a(Lcom/koushikdutta/async/http/e/c;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/c$2;->a:Lcom/koushikdutta/async/http/e/c;

    invoke-static {v0, p1}, Lcom/koushikdutta/async/http/e/c;->a(Lcom/koushikdutta/async/http/e/c;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    iget-object p1, p0, Lcom/koushikdutta/async/http/e/c$2;->a:Lcom/koushikdutta/async/http/e/c;

    invoke-static {p1}, Lcom/koushikdutta/async/http/e/c;->a(Lcom/koushikdutta/async/http/e/c;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "HTTP/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 58
    invoke-static {}, Lcom/koushikdutta/async/http/e/c;->b()V

    .line 59
    iget-object p1, p0, Lcom/koushikdutta/async/http/e/c$2;->a:Lcom/koushikdutta/async/http/e/c;

    iget-object p1, p1, Lcom/koushikdutta/async/http/e/c;->m:Lcom/koushikdutta/async/j;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/j;->setDataCallback(Lcom/koushikdutta/async/a/d;)V

    return-void

    :cond_0
    const-string v0, "\r"

    .line 62
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/c$2;->a:Lcom/koushikdutta/async/http/e/c;

    invoke-static {v0}, Lcom/koushikdutta/async/http/e/c;->b(Lcom/koushikdutta/async/http/e/c;)Lcom/koushikdutta/async/http/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/n;->addLine(Ljava/lang/String;)Lcom/koushikdutta/async/http/n;

    return-void

    .line 66
    :cond_1
    iget-object p1, p0, Lcom/koushikdutta/async/http/e/c$2;->a:Lcom/koushikdutta/async/http/e/c;

    iget-object p1, p1, Lcom/koushikdutta/async/http/e/c;->m:Lcom/koushikdutta/async/j;

    sget-object v0, Lcom/koushikdutta/async/http/Protocol;->HTTP_1_1:Lcom/koushikdutta/async/http/Protocol;

    iget-object v1, p0, Lcom/koushikdutta/async/http/e/c$2;->a:Lcom/koushikdutta/async/http/e/c;

    invoke-static {v1}, Lcom/koushikdutta/async/http/e/c;->b(Lcom/koushikdutta/async/http/e/c;)Lcom/koushikdutta/async/http/n;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/koushikdutta/async/http/q;->getBodyDecoder(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/http/Protocol;Lcom/koushikdutta/async/http/n;Z)Lcom/koushikdutta/async/n;

    move-result-object p1

    .line 68
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/c$2;->a:Lcom/koushikdutta/async/http/e/c;

    iget-object v1, p0, Lcom/koushikdutta/async/http/e/c$2;->a:Lcom/koushikdutta/async/http/e/c;

    invoke-static {v1}, Lcom/koushikdutta/async/http/e/c;->c(Lcom/koushikdutta/async/http/e/c;)Lcom/koushikdutta/async/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/koushikdutta/async/http/e/c$2;->a:Lcom/koushikdutta/async/http/e/c;

    invoke-static {v2}, Lcom/koushikdutta/async/http/e/c;->b(Lcom/koushikdutta/async/http/e/c;)Lcom/koushikdutta/async/http/n;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/koushikdutta/async/http/q;->getBody(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/a/a;Lcom/koushikdutta/async/http/n;)Lcom/koushikdutta/async/http/a/a;

    move-result-object v1

    iput-object v1, v0, Lcom/koushikdutta/async/http/e/c;->q:Lcom/koushikdutta/async/http/a/a;

    .line 69
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/c$2;->a:Lcom/koushikdutta/async/http/e/c;

    iget-object v0, v0, Lcom/koushikdutta/async/http/e/c;->q:Lcom/koushikdutta/async/http/a/a;

    if-nez v0, :cond_2

    .line 70
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/c$2;->a:Lcom/koushikdutta/async/http/e/c;

    iget-object v1, p0, Lcom/koushikdutta/async/http/e/c$2;->a:Lcom/koushikdutta/async/http/e/c;

    iget-object v2, p0, Lcom/koushikdutta/async/http/e/c$2;->a:Lcom/koushikdutta/async/http/e/c;

    invoke-static {v2}, Lcom/koushikdutta/async/http/e/c;->b(Lcom/koushikdutta/async/http/e/c;)Lcom/koushikdutta/async/http/n;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/http/e/c;->a(Lcom/koushikdutta/async/http/n;)Lcom/koushikdutta/async/http/a/a;

    move-result-object v1

    iput-object v1, v0, Lcom/koushikdutta/async/http/e/c;->q:Lcom/koushikdutta/async/http/a/a;

    .line 71
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/c$2;->a:Lcom/koushikdutta/async/http/e/c;

    iget-object v0, v0, Lcom/koushikdutta/async/http/e/c;->q:Lcom/koushikdutta/async/http/a/a;

    if-nez v0, :cond_2

    .line 72
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/c$2;->a:Lcom/koushikdutta/async/http/e/c;

    new-instance v1, Lcom/koushikdutta/async/http/e/k;

    iget-object v2, p0, Lcom/koushikdutta/async/http/e/c$2;->a:Lcom/koushikdutta/async/http/e/c;

    invoke-static {v2}, Lcom/koushikdutta/async/http/e/c;->b(Lcom/koushikdutta/async/http/e/c;)Lcom/koushikdutta/async/http/n;

    move-result-object v2

    const-string v3, "Content-Type"

    invoke-virtual {v2, v3}, Lcom/koushikdutta/async/http/n;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/koushikdutta/async/http/e/k;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/koushikdutta/async/http/e/c;->q:Lcom/koushikdutta/async/http/a/a;

    .line 74
    :cond_2
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/c$2;->a:Lcom/koushikdutta/async/http/e/c;

    iget-object v0, v0, Lcom/koushikdutta/async/http/e/c;->q:Lcom/koushikdutta/async/http/a/a;

    iget-object v1, p0, Lcom/koushikdutta/async/http/e/c$2;->a:Lcom/koushikdutta/async/http/e/c;

    invoke-static {v1}, Lcom/koushikdutta/async/http/e/c;->c(Lcom/koushikdutta/async/http/e/c;)Lcom/koushikdutta/async/a/a;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/koushikdutta/async/http/a/a;->parse(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/a/a;)V

    .line 75
    iget-object p1, p0, Lcom/koushikdutta/async/http/e/c$2;->a:Lcom/koushikdutta/async/http/e/c;

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/e/c;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception p1

    .line 79
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/c$2;->a:Lcom/koushikdutta/async/http/e/c;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/e/c;->onCompleted(Ljava/lang/Exception;)V

    return-void
.end method
