.class final Lcom/koushikdutta/async/http/a$11$1;
.super Lcom/koushikdutta/async/d/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/a$11;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/http/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/e;

.field final synthetic b:J

.field final synthetic c:Lcom/koushikdutta/async/http/a$11;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/a$11;Ljava/io/OutputStream;Lcom/koushikdutta/async/http/e;J)V
    .locals 0

    .line 600
    iput-object p1, p0, Lcom/koushikdutta/async/http/a$11$1;->c:Lcom/koushikdutta/async/http/a$11;

    iput-object p3, p0, Lcom/koushikdutta/async/http/a$11$1;->a:Lcom/koushikdutta/async/http/e;

    iput-wide p4, p0, Lcom/koushikdutta/async/http/a$11$1;->b:J

    invoke-direct {p0, p2}, Lcom/koushikdutta/async/d/d;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public final onDataAvailable(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/l;)V
    .locals 6

    .line 603
    iget-object v0, p0, Lcom/koushikdutta/async/http/a$11$1;->c:Lcom/koushikdutta/async/http/a$11;

    iget-wide v1, v0, Lcom/koushikdutta/async/http/a$11;->a:J

    invoke-virtual {p2}, Lcom/koushikdutta/async/l;->remaining()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/koushikdutta/async/http/a$11;->a:J

    .line 604
    invoke-super {p0, p1, p2}, Lcom/koushikdutta/async/d/d;->onDataAvailable(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/l;)V

    .line 605
    iget-object p1, p0, Lcom/koushikdutta/async/http/a$11$1;->c:Lcom/koushikdutta/async/http/a$11;

    iget-object v0, p1, Lcom/koushikdutta/async/http/a$11;->d:Lcom/koushikdutta/async/http/a$b;

    iget-object v1, p0, Lcom/koushikdutta/async/http/a$11$1;->a:Lcom/koushikdutta/async/http/e;

    iget-object p1, p0, Lcom/koushikdutta/async/http/a$11$1;->c:Lcom/koushikdutta/async/http/a$11;

    iget-wide v2, p1, Lcom/koushikdutta/async/http/a$11;->a:J

    iget-wide v4, p0, Lcom/koushikdutta/async/http/a$11$1;->b:J

    invoke-static/range {v0 .. v5}, Lcom/koushikdutta/async/http/a;->a(Lcom/koushikdutta/async/http/c/b;Lcom/koushikdutta/async/http/e;JJ)V

    return-void
.end method
