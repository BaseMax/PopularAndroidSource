.class final Lcom/koushikdutta/async/http/e/a$1$1$2;
.super Lcom/koushikdutta/async/http/e/e;
.source "SourceFile"


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
.method constructor <init>(Lcom/koushikdutta/async/http/e/a$1$1;Lcom/koushikdutta/async/j;Lcom/koushikdutta/async/http/e/c;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/koushikdutta/async/http/e/a$1$1$2;->a:Lcom/koushikdutta/async/http/e/a$1$1;

    invoke-direct {p0, p2, p3}, Lcom/koushikdutta/async/http/e/e;-><init>(Lcom/koushikdutta/async/j;Lcom/koushikdutta/async/http/e/c;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .line 142
    invoke-super {p0}, Lcom/koushikdutta/async/http/e/e;->a()V

    .line 143
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/a$1$1$2;->b:Lcom/koushikdutta/async/j;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/j;->setEndCallback(Lcom/koushikdutta/async/a/a;)V

    .line 144
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/a$1$1$2;->a:Lcom/koushikdutta/async/http/e/a$1$1;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/koushikdutta/async/http/e/a$1$1;->g:Z

    .line 146
    invoke-static {v0}, Lcom/koushikdutta/async/http/e/a$1$1;->a(Lcom/koushikdutta/async/http/e/a$1$1;)V

    return-void
.end method

.method protected final a(Ljava/lang/Exception;)V
    .locals 1

    .line 132
    invoke-super {p0, p1}, Lcom/koushikdutta/async/http/e/e;->a(Ljava/lang/Exception;)V

    if-eqz p1, :cond_0

    .line 134
    iget-object p1, p0, Lcom/koushikdutta/async/http/e/a$1$1$2;->a:Lcom/koushikdutta/async/http/e/a$1$1;

    iget-object p1, p1, Lcom/koushikdutta/async/http/e/a$1$1;->k:Lcom/koushikdutta/async/j;

    new-instance v0, Lcom/koushikdutta/async/a/d$a;

    invoke-direct {v0}, Lcom/koushikdutta/async/a/d$a;-><init>()V

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/j;->setDataCallback(Lcom/koushikdutta/async/a/d;)V

    .line 135
    iget-object p1, p0, Lcom/koushikdutta/async/http/e/a$1$1$2;->a:Lcom/koushikdutta/async/http/e/a$1$1;

    iget-object p1, p1, Lcom/koushikdutta/async/http/e/a$1$1;->k:Lcom/koushikdutta/async/j;

    new-instance v0, Lcom/koushikdutta/async/a/a$a;

    invoke-direct {v0}, Lcom/koushikdutta/async/a/a$a;-><init>()V

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/j;->setEndCallback(Lcom/koushikdutta/async/a/a;)V

    .line 136
    iget-object p1, p0, Lcom/koushikdutta/async/http/e/a$1$1$2;->a:Lcom/koushikdutta/async/http/e/a$1$1;

    iget-object p1, p1, Lcom/koushikdutta/async/http/e/a$1$1;->k:Lcom/koushikdutta/async/j;

    invoke-interface {p1}, Lcom/koushikdutta/async/j;->close()V

    :cond_0
    return-void
.end method
