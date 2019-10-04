.class public final Lcom/koushikdutta/async/http/e/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/http/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/http/a/a<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field a:I

.field b:Lcom/koushikdutta/async/n;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/n;Ljava/lang/String;I)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lcom/koushikdutta/async/http/e/k;->a:I

    .line 18
    iput-object p2, p0, Lcom/koushikdutta/async/http/e/k;->c:Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/koushikdutta/async/http/e/k;->b:Lcom/koushikdutta/async/n;

    .line 20
    iput p3, p0, Lcom/koushikdutta/async/http/e/k;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lcom/koushikdutta/async/http/e/k;->a:I

    .line 13
    iput-object p1, p0, Lcom/koushikdutta/async/http/e/k;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/e/k;->get()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final get()Ljava/lang/Void;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getContentType()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/k;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getEmitter()Lcom/koushikdutta/async/n;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/k;->b:Lcom/koushikdutta/async/n;

    return-object v0
.end method

.method public final length()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/koushikdutta/async/http/e/k;->a:I

    return v0
.end method

.method public final parse(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/a/a;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/koushikdutta/async/http/e/k;->b:Lcom/koushikdutta/async/n;

    .line 65
    invoke-interface {p1, p2}, Lcom/koushikdutta/async/n;->setEndCallback(Lcom/koushikdutta/async/a/a;)V

    .line 66
    new-instance p2, Lcom/koushikdutta/async/a/d$a;

    invoke-direct {p2}, Lcom/koushikdutta/async/a/d$a;-><init>()V

    invoke-interface {p1, p2}, Lcom/koushikdutta/async/n;->setDataCallback(Lcom/koushikdutta/async/a/d;)V

    return-void
.end method

.method public final readFullyOnRequest()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final setCallbacks(Lcom/koushikdutta/async/a/d;Lcom/koushikdutta/async/a/a;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/k;->b:Lcom/koushikdutta/async/n;

    invoke-interface {v0, p2}, Lcom/koushikdutta/async/n;->setEndCallback(Lcom/koushikdutta/async/a/a;)V

    .line 54
    iget-object p2, p0, Lcom/koushikdutta/async/http/e/k;->b:Lcom/koushikdutta/async/n;

    invoke-interface {p2, p1}, Lcom/koushikdutta/async/n;->setDataCallback(Lcom/koushikdutta/async/a/d;)V

    return-void
.end method

.method public final write(Lcom/koushikdutta/async/http/d;Lcom/koushikdutta/async/q;Lcom/koushikdutta/async/a/a;)V
    .locals 0

    .line 25
    iget-object p1, p0, Lcom/koushikdutta/async/http/e/k;->b:Lcom/koushikdutta/async/n;

    invoke-static {p1, p2, p3}, Lcom/koushikdutta/async/af;->pump(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/q;Lcom/koushikdutta/async/a/a;)V

    .line 26
    iget-object p1, p0, Lcom/koushikdutta/async/http/e/k;->b:Lcom/koushikdutta/async/n;

    invoke-interface {p1}, Lcom/koushikdutta/async/n;->isPaused()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 27
    iget-object p1, p0, Lcom/koushikdutta/async/http/e/k;->b:Lcom/koushikdutta/async/n;

    invoke-interface {p1}, Lcom/koushikdutta/async/n;->resume()V

    :cond_0
    return-void
.end method
