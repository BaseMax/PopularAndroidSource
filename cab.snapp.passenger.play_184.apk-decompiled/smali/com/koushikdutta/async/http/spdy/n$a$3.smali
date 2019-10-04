.class final Lcom/koushikdutta/async/http/spdy/n$a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/spdy/n$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/spdy/n$a;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/spdy/n$a;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/n$a$3;->a:Lcom/koushikdutta/async/http/spdy/n$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataAvailable(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/l;)V
    .locals 2

    .line 193
    invoke-virtual {p2}, Lcom/koushikdutta/async/l;->remaining()I

    move-result p1

    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/n$a$3;->a:Lcom/koushikdutta/async/http/spdy/n$a;

    iget v0, v0, Lcom/koushikdutta/async/http/spdy/n$a;->h:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 194
    invoke-virtual {p2}, Lcom/koushikdutta/async/l;->remaining()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/n$a$3;->a:Lcom/koushikdutta/async/http/spdy/n$a;

    iget-object v0, v0, Lcom/koushikdutta/async/http/spdy/n$a;->l:Lcom/koushikdutta/async/l;

    invoke-virtual {p2, v0, p1}, Lcom/koushikdutta/async/l;->get(Lcom/koushikdutta/async/l;I)V

    .line 196
    iget-object p2, p0, Lcom/koushikdutta/async/http/spdy/n$a$3;->a:Lcom/koushikdutta/async/http/spdy/n$a;

    iget-object p2, p2, Lcom/koushikdutta/async/http/spdy/n$a;->l:Lcom/koushikdutta/async/l;

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/n$a$3;->a:Lcom/koushikdutta/async/http/spdy/n$a;

    iget v1, v0, Lcom/koushikdutta/async/http/spdy/n$a;->h:I

    sub-int/2addr v1, p1

    iput v1, v0, Lcom/koushikdutta/async/http/spdy/n$a;->h:I

    .line 200
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/n$a$3;->a:Lcom/koushikdutta/async/http/spdy/n$a;

    .line 1126
    iget-object p1, p1, Lcom/koushikdutta/async/http/spdy/n$a;->c:Lcom/koushikdutta/async/http/spdy/e$a;

    .line 200
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/n$a$3;->a:Lcom/koushikdutta/async/http/spdy/n$a;

    iget v0, v0, Lcom/koushikdutta/async/http/spdy/n$a;->h:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/n$a$3;->a:Lcom/koushikdutta/async/http/spdy/n$a;

    iget-boolean v0, v0, Lcom/koushikdutta/async/http/spdy/n$a;->j:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/n$a$3;->a:Lcom/koushikdutta/async/http/spdy/n$a;

    iget v1, v1, Lcom/koushikdutta/async/http/spdy/n$a;->i:I

    invoke-interface {p1, v0, v1, p2}, Lcom/koushikdutta/async/http/spdy/e$a;->data(ZILcom/koushikdutta/async/l;)V

    .line 202
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/n$a$3;->a:Lcom/koushikdutta/async/http/spdy/n$a;

    iget p1, p1, Lcom/koushikdutta/async/http/spdy/n$a;->h:I

    if-nez p1, :cond_2

    .line 203
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/n$a$3;->a:Lcom/koushikdutta/async/http/spdy/n$a;

    .line 2126
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/spdy/n$a;->a()V

    :cond_2
    return-void
.end method
