.class final Lcom/koushikdutta/async/http/h$2$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/h$2$1;->onCompleted(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/h$2$1;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/h$2$1;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/koushikdutta/async/http/h$2$1$2;->a:Lcom/koushikdutta/async/http/h$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(Ljava/lang/Exception;)V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/koushikdutta/async/http/h$2$1$2;->a:Lcom/koushikdutta/async/http/h$2$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/h$2$1;->a:Lcom/koushikdutta/async/j;

    invoke-interface {v0}, Lcom/koushikdutta/async/j;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 151
    new-instance p1, Ljava/io/IOException;

    const-string v0, "socket closed before proxy connect response"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/h$2$1$2;->a:Lcom/koushikdutta/async/http/h$2$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/h$2$1;->b:Lcom/koushikdutta/async/http/h$2;

    iget-object v0, v0, Lcom/koushikdutta/async/http/h$2;->a:Lcom/koushikdutta/async/a/b;

    iget-object v1, p0, Lcom/koushikdutta/async/http/h$2$1$2;->a:Lcom/koushikdutta/async/http/h$2$1;

    iget-object v1, v1, Lcom/koushikdutta/async/http/h$2$1;->a:Lcom/koushikdutta/async/j;

    invoke-interface {v0, p1, v1}, Lcom/koushikdutta/async/a/b;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/j;)V

    return-void
.end method
