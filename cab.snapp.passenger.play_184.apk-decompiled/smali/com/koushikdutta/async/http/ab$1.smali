.class final Lcom/koushikdutta/async/http/ab$1;
.super Lcom/koushikdutta/async/http/r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/ab;->a(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/koushikdutta/async/http/ab;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/ab;Lcom/koushikdutta/async/n;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/koushikdutta/async/http/ab$1;->f:Lcom/koushikdutta/async/http/ab;

    invoke-direct {p0, p2}, Lcom/koushikdutta/async/http/r;-><init>(Lcom/koushikdutta/async/n;)V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/Exception;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/koushikdutta/async/http/ab$1;->f:Lcom/koushikdutta/async/http/ab;

    iget-object v0, v0, Lcom/koushikdutta/async/http/ab;->c:Lcom/koushikdutta/async/a/a;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/koushikdutta/async/http/ab$1;->f:Lcom/koushikdutta/async/http/ab;

    iget-object v0, v0, Lcom/koushikdutta/async/http/ab;->c:Lcom/koushikdutta/async/a/a;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/a/a;->onCompleted(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/koushikdutta/async/http/ab$1;->f:Lcom/koushikdutta/async/http/ab;

    invoke-static {v0}, Lcom/koushikdutta/async/http/ab;->a(Lcom/koushikdutta/async/http/ab;)Lcom/koushikdutta/async/http/z$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/koushikdutta/async/http/ab$1;->f:Lcom/koushikdutta/async/http/ab;

    invoke-static {v0}, Lcom/koushikdutta/async/http/ab;->a(Lcom/koushikdutta/async/http/ab;)Lcom/koushikdutta/async/http/z$c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/http/z$c;->onStringAvailable(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected final a([B)V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/koushikdutta/async/http/ab$1;->f:Lcom/koushikdutta/async/http/ab;

    new-instance v1, Lcom/koushikdutta/async/l;

    invoke-direct {v1, p1}, Lcom/koushikdutta/async/l;-><init>([B)V

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/ab;->a(Lcom/koushikdutta/async/http/ab;Lcom/koushikdutta/async/l;)V

    return-void
.end method

.method protected final b()V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/koushikdutta/async/http/ab$1;->f:Lcom/koushikdutta/async/http/ab;

    invoke-static {v0}, Lcom/koushikdutta/async/http/ab;->b(Lcom/koushikdutta/async/http/ab;)Lcom/koushikdutta/async/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/koushikdutta/async/j;->close()V

    return-void
.end method

.method protected final b(Ljava/lang/String;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/koushikdutta/async/http/ab$1;->f:Lcom/koushikdutta/async/http/ab;

    invoke-static {v0}, Lcom/koushikdutta/async/http/ab;->d(Lcom/koushikdutta/async/http/ab;)Lcom/koushikdutta/async/http/z$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/koushikdutta/async/http/ab$1;->f:Lcom/koushikdutta/async/http/ab;

    invoke-static {v0}, Lcom/koushikdutta/async/http/ab;->d(Lcom/koushikdutta/async/http/ab;)Lcom/koushikdutta/async/http/z$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/http/z$b;->onPongReceived(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected final b([B)V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/koushikdutta/async/http/ab$1;->f:Lcom/koushikdutta/async/http/ab;

    iget-object v0, v0, Lcom/koushikdutta/async/http/ab;->a:Lcom/koushikdutta/async/k;

    new-instance v1, Lcom/koushikdutta/async/l;

    invoke-direct {v1, p1}, Lcom/koushikdutta/async/l;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/k;->write(Lcom/koushikdutta/async/l;)V

    return-void
.end method

.method protected final c(Ljava/lang/String;)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/koushikdutta/async/http/ab$1;->f:Lcom/koushikdutta/async/http/ab;

    invoke-static {v0}, Lcom/koushikdutta/async/http/ab;->c(Lcom/koushikdutta/async/http/ab;)Lcom/koushikdutta/async/http/z$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/koushikdutta/async/http/ab$1;->f:Lcom/koushikdutta/async/http/ab;

    invoke-static {v0}, Lcom/koushikdutta/async/http/ab;->c(Lcom/koushikdutta/async/http/ab;)Lcom/koushikdutta/async/http/z$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/http/z$a;->onPingReceived(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
