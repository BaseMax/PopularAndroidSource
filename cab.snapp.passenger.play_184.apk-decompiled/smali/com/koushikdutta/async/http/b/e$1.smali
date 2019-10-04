.class final Lcom/koushikdutta/async/http/b/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/b/e;->getSocket(Lcom/koushikdutta/async/http/b$a;)Lcom/koushikdutta/async/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/b$a;

.field final synthetic b:Lcom/koushikdutta/async/http/b/e$e;

.field final synthetic c:Lcom/koushikdutta/async/http/b/e;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/b/e;Lcom/koushikdutta/async/http/b$a;Lcom/koushikdutta/async/http/b/e$e;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/koushikdutta/async/http/b/e$1;->c:Lcom/koushikdutta/async/http/b/e;

    iput-object p2, p0, Lcom/koushikdutta/async/http/b/e$1;->a:Lcom/koushikdutta/async/http/b$a;

    iput-object p3, p0, Lcom/koushikdutta/async/http/b/e$1;->b:Lcom/koushikdutta/async/http/b/e$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 177
    iget-object v0, p0, Lcom/koushikdutta/async/http/b/e$1;->a:Lcom/koushikdutta/async/http/b$a;

    iget-object v0, v0, Lcom/koushikdutta/async/http/b$a;->connectCallback:Lcom/koushikdutta/async/a/b;

    iget-object v1, p0, Lcom/koushikdutta/async/http/b/e$1;->b:Lcom/koushikdutta/async/http/b/e$e;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lcom/koushikdutta/async/a/b;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/j;)V

    .line 178
    iget-object v0, p0, Lcom/koushikdutta/async/http/b/e$1;->b:Lcom/koushikdutta/async/http/b/e$e;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/b/e$e;->a()V

    return-void
.end method
