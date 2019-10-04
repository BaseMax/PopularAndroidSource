.class final Lcom/koushikdutta/async/http/a/f$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/a/f;->write(Lcom/koushikdutta/async/http/d;Lcom/koushikdutta/async/q;Lcom/koushikdutta/async/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/a/g;

.field final synthetic b:Lcom/koushikdutta/async/q;

.field final synthetic c:Lcom/koushikdutta/async/http/a/f;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/a/f;Lcom/koushikdutta/async/http/a/g;Lcom/koushikdutta/async/q;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/koushikdutta/async/http/a/f$4;->c:Lcom/koushikdutta/async/http/a/f;

    iput-object p2, p0, Lcom/koushikdutta/async/http/a/f$4;->a:Lcom/koushikdutta/async/http/a/g;

    iput-object p3, p0, Lcom/koushikdutta/async/http/a/f$4;->b:Lcom/koushikdutta/async/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onContinue(Lcom/koushikdutta/async/b/b;Lcom/koushikdutta/async/a/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 154
    iget-object p1, p0, Lcom/koushikdutta/async/http/a/f$4;->a:Lcom/koushikdutta/async/http/a/g;

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/a/g;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    .line 156
    iget-object p1, p0, Lcom/koushikdutta/async/http/a/f$4;->c:Lcom/koushikdutta/async/http/a/f;

    iget v2, p1, Lcom/koushikdutta/async/http/a/f;->j:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    long-to-int v0, v2

    iput v0, p1, Lcom/koushikdutta/async/http/a/f;->j:I

    .line 157
    :cond_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/a/f$4;->a:Lcom/koushikdutta/async/http/a/g;

    iget-object v0, p0, Lcom/koushikdutta/async/http/a/f$4;->b:Lcom/koushikdutta/async/q;

    invoke-virtual {p1, v0, p2}, Lcom/koushikdutta/async/http/a/g;->write(Lcom/koushikdutta/async/q;Lcom/koushikdutta/async/a/a;)V

    return-void
.end method
