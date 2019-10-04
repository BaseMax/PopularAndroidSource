.class final Lcom/koushikdutta/async/http/a$c;
.super Lcom/koushikdutta/async/b/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/async/b/i<",
        "Lcom/koushikdutta/async/http/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/a;

.field public scheduled:Ljava/lang/Object;

.field public socket:Lcom/koushikdutta/async/j;

.field public timeoutRunnable:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Lcom/koushikdutta/async/http/a;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/koushikdutta/async/http/a$c;->a:Lcom/koushikdutta/async/http/a;

    invoke-direct {p0}, Lcom/koushikdutta/async/b/i;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/koushikdutta/async/http/a;B)V
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/a$c;-><init>(Lcom/koushikdutta/async/http/a;)V

    return-void
.end method


# virtual methods
.method public final cancel()Z
    .locals 2

    .line 142
    invoke-super {p0}, Lcom/koushikdutta/async/b/i;->cancel()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/a$c;->socket:Lcom/koushikdutta/async/j;

    if-eqz v0, :cond_1

    .line 146
    new-instance v1, Lcom/koushikdutta/async/a/d$a;

    invoke-direct {v1}, Lcom/koushikdutta/async/a/d$a;-><init>()V

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/j;->setDataCallback(Lcom/koushikdutta/async/a/d;)V

    .line 147
    iget-object v0, p0, Lcom/koushikdutta/async/http/a$c;->socket:Lcom/koushikdutta/async/j;

    invoke-interface {v0}, Lcom/koushikdutta/async/j;->close()V

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/a$c;->scheduled:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 151
    iget-object v0, p0, Lcom/koushikdutta/async/http/a$c;->a:Lcom/koushikdutta/async/http/a;

    iget-object v0, v0, Lcom/koushikdutta/async/http/a;->e:Lcom/koushikdutta/async/h;

    iget-object v1, p0, Lcom/koushikdutta/async/http/a$c;->scheduled:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/h;->removeAllCallbacks(Ljava/lang/Object;)V

    :cond_2
    const/4 v0, 0x1

    return v0
.end method
