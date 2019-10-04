.class final Lcom/koushikdutta/async/http/e/a$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/e/a$1$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/e/a$1$1;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/e/a$1$1;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/koushikdutta/async/http/e/a$1$1$1;->a:Lcom/koushikdutta/async/http/e/a$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(Ljava/lang/Exception;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/a$1$1$1;->a:Lcom/koushikdutta/async/http/e/a$1$1;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/e/a$1$1;->resume()V

    if-eqz p1, :cond_0

    .line 100
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/a$1$1$1;->a:Lcom/koushikdutta/async/http/e/a$1$1;

    invoke-static {v0, p1}, Lcom/koushikdutta/async/http/e/a$1$1;->a(Lcom/koushikdutta/async/http/e/a$1$1;Ljava/lang/Exception;)V

    return-void

    .line 103
    :cond_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/e/a$1$1$1;->a:Lcom/koushikdutta/async/http/e/a$1$1;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/koushikdutta/async/http/e/a$1$1;->j:Z

    .line 104
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/e/a$1$1;->a()V

    return-void
.end method
