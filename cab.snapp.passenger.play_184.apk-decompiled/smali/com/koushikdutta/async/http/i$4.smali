.class final Lcom/koushikdutta/async/http/i$4;
.super Lcom/koushikdutta/async/a/d$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/i;->a(Lcom/koushikdutta/async/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/j;

.field final synthetic b:Lcom/koushikdutta/async/http/i;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/i;Lcom/koushikdutta/async/j;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/koushikdutta/async/http/i$4;->b:Lcom/koushikdutta/async/http/i;

    iput-object p2, p0, Lcom/koushikdutta/async/http/i$4;->a:Lcom/koushikdutta/async/j;

    invoke-direct {p0}, Lcom/koushikdutta/async/a/d$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataAvailable(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/l;)V
    .locals 0

    .line 327
    invoke-super {p0, p1, p2}, Lcom/koushikdutta/async/a/d$a;->onDataAvailable(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/l;)V

    .line 328
    invoke-virtual {p2}, Lcom/koushikdutta/async/l;->recycle()V

    .line 329
    iget-object p1, p0, Lcom/koushikdutta/async/http/i$4;->a:Lcom/koushikdutta/async/j;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/koushikdutta/async/j;->setClosedCallback(Lcom/koushikdutta/async/a/a;)V

    .line 330
    iget-object p1, p0, Lcom/koushikdutta/async/http/i$4;->a:Lcom/koushikdutta/async/j;

    invoke-interface {p1}, Lcom/koushikdutta/async/j;->close()V

    return-void
.end method
