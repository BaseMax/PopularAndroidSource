.class final Lcom/koushikdutta/async/http/e/a$1$1$3;
.super Lcom/koushikdutta/async/a/d$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/e/a$1$1;->onCompleted(Ljava/lang/Exception;)V
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

    .line 175
    iput-object p1, p0, Lcom/koushikdutta/async/http/e/a$1$1$3;->a:Lcom/koushikdutta/async/http/e/a$1$1;

    invoke-direct {p0}, Lcom/koushikdutta/async/a/d$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataAvailable(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/l;)V
    .locals 0

    .line 178
    invoke-super {p0, p1, p2}, Lcom/koushikdutta/async/a/d$a;->onDataAvailable(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/l;)V

    .line 179
    iget-object p1, p0, Lcom/koushikdutta/async/http/e/a$1$1$3;->a:Lcom/koushikdutta/async/http/e/a$1$1;

    iget-object p1, p1, Lcom/koushikdutta/async/http/e/a$1$1;->m:Lcom/koushikdutta/async/j;

    invoke-interface {p1}, Lcom/koushikdutta/async/j;->close()V

    return-void
.end method
