.class Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;
.super Lcom/koushikdutta/async/b/j;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/ion/future/ResponseFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/ion/IonRequestBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EmitterTransform"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/koushikdutta/async/b/j<",
        "TT;",
        "Lcom/koushikdutta/ion/Loader$LoaderEmitter;",
        ">;",
        "Lcom/koushikdutta/ion/future/ResponseFuture<",
        "TT;>;"
    }
.end annotation


# instance fields
.field cancelCallback:Ljava/lang/Runnable;

.field emitter:Lcom/koushikdutta/async/n;

.field finalRequest:Lcom/koushikdutta/async/http/d;

.field headers:Lcom/koushikdutta/ion/HeadersResponse;

.field initialRequest:Lcom/koushikdutta/async/http/d;

.field servedFrom:Lcom/koushikdutta/ion/ResponseServedFrom;

.field final synthetic this$0:Lcom/koushikdutta/ion/IonRequestBuilder;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/ion/IonRequestBuilder;Ljava/lang/Runnable;)V
    .locals 2

    .line 466
    iput-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->this$0:Lcom/koushikdutta/ion/IonRequestBuilder;

    invoke-direct {p0}, Lcom/koushikdutta/async/b/j;-><init>()V

    .line 467
    iput-object p2, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->cancelCallback:Ljava/lang/Runnable;

    .line 468
    iget-object p2, p1, Lcom/koushikdutta/ion/IonRequestBuilder;->ion:Lcom/koushikdutta/ion/Ion;

    iget-object v0, p1, Lcom/koushikdutta/ion/IonRequestBuilder;->contextReference:Lcom/koushikdutta/ion/ContextReference;

    invoke-virtual {v0}, Lcom/koushikdutta/ion/ContextReference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, p0, v0}, Lcom/koushikdutta/ion/Ion;->addFutureInFlight(Lcom/koushikdutta/async/b/e;Ljava/lang/Object;)V

    .line 469
    iget-object p2, p1, Lcom/koushikdutta/ion/IonRequestBuilder;->groups:Ljava/util/ArrayList;

    if-nez p2, :cond_0

    return-void

    .line 471
    :cond_0
    iget-object p2, p1, Lcom/koushikdutta/ion/IonRequestBuilder;->groups:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 472
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 474
    iget-object v1, p1, Lcom/koushikdutta/ion/IonRequestBuilder;->ion:Lcom/koushikdutta/ion/Ion;

    invoke-virtual {v1, p0, v0}, Lcom/koushikdutta/ion/Ion;->addFutureInFlight(Lcom/koushikdutta/async/b/e;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public cancelCleanup()V
    .locals 1

    .line 480
    invoke-super {p0}, Lcom/koushikdutta/async/b/j;->cancelCleanup()V

    .line 481
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->emitter:Lcom/koushikdutta/async/n;

    if-eqz v0, :cond_0

    .line 482
    invoke-interface {v0}, Lcom/koushikdutta/async/n;->close()V

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->cancelCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 484
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method public error(Ljava/lang/Exception;)V
    .locals 2

    .line 490
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->this$0:Lcom/koushikdutta/ion/IonRequestBuilder;

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/koushikdutta/ion/IonRequestBuilder;->access$000(Lcom/koushikdutta/ion/IonRequestBuilder;Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;Ljava/lang/Exception;Ljava/lang/Object;)V

    return-void
.end method

.method public getResponse(Ljava/lang/Exception;Ljava/lang/Object;)Lcom/koushikdutta/ion/Response;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "TT;)",
            "Lcom/koushikdutta/ion/Response<",
            "TT;>;"
        }
    .end annotation

    .line 446
    new-instance v6, Lcom/koushikdutta/ion/Response;

    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->finalRequest:Lcom/koushikdutta/async/http/d;

    iget-object v2, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->servedFrom:Lcom/koushikdutta/ion/ResponseServedFrom;

    iget-object v3, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->headers:Lcom/koushikdutta/ion/HeadersResponse;

    move-object v0, v6

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/ion/Response;-><init>(Lcom/koushikdutta/async/http/d;Lcom/koushikdutta/ion/ResponseServedFrom;Lcom/koushikdutta/ion/HeadersResponse;Ljava/lang/Exception;Ljava/lang/Object;)V

    return-object v6
.end method

.method protected transform(Lcom/koushikdutta/ion/Loader$LoaderEmitter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 495
    invoke-virtual {p1}, Lcom/koushikdutta/ion/Loader$LoaderEmitter;->getDataEmitter()Lcom/koushikdutta/async/n;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->emitter:Lcom/koushikdutta/async/n;

    .line 496
    invoke-virtual {p1}, Lcom/koushikdutta/ion/Loader$LoaderEmitter;->getServedFrom()Lcom/koushikdutta/ion/ResponseServedFrom;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->servedFrom:Lcom/koushikdutta/ion/ResponseServedFrom;

    .line 497
    invoke-virtual {p1}, Lcom/koushikdutta/ion/Loader$LoaderEmitter;->getHeaders()Lcom/koushikdutta/ion/HeadersResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->headers:Lcom/koushikdutta/ion/HeadersResponse;

    .line 498
    invoke-virtual {p1}, Lcom/koushikdutta/ion/Loader$LoaderEmitter;->getRequest()Lcom/koushikdutta/async/http/d;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->finalRequest:Lcom/koushikdutta/async/http/d;

    .line 500
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->this$0:Lcom/koushikdutta/ion/IonRequestBuilder;

    iget-object v0, v0, Lcom/koushikdutta/ion/IonRequestBuilder;->headersCallback:Lcom/koushikdutta/ion/HeadersCallback;

    if-eqz v0, :cond_0

    .line 501
    invoke-virtual {p1}, Lcom/koushikdutta/ion/Loader$LoaderEmitter;->getHeaders()Lcom/koushikdutta/ion/HeadersResponse;

    move-result-object v0

    .line 503
    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->this$0:Lcom/koushikdutta/ion/IonRequestBuilder;

    iget-object v1, v1, Lcom/koushikdutta/ion/IonRequestBuilder;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$2;

    invoke-direct {v2, p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$2;-><init>(Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;Lcom/koushikdutta/ion/HeadersResponse;)V

    invoke-static {v1, v2}, Lcom/koushikdutta/async/h;->post(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 512
    :cond_0
    invoke-virtual {p1}, Lcom/koushikdutta/ion/Loader$LoaderEmitter;->length()J

    move-result-wide v0

    .line 514
    iget-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->emitter:Lcom/koushikdutta/async/n;

    instance-of v2, p1, Lcom/koushikdutta/async/r;

    if-nez v2, :cond_1

    .line 515
    new-instance p1, Lcom/koushikdutta/async/v;

    invoke-direct {p1}, Lcom/koushikdutta/async/v;-><init>()V

    .line 516
    iget-object v2, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->emitter:Lcom/koushikdutta/async/n;

    invoke-interface {p1, v2}, Lcom/koushikdutta/async/r;->setDataEmitter(Lcom/koushikdutta/async/n;)V

    goto :goto_0

    .line 519
    :cond_1
    check-cast p1, Lcom/koushikdutta/async/r;

    .line 521
    :goto_0
    iput-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->emitter:Lcom/koushikdutta/async/n;

    .line 522
    new-instance v2, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$3;

    invoke-direct {v2, p0, v0, v1}, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$3;-><init>(Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;J)V

    invoke-interface {p1, v2}, Lcom/koushikdutta/async/r;->setDataTracker(Lcom/koushikdutta/async/r$a;)V

    return-void
.end method

.method public bridge synthetic transform(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 437
    check-cast p1, Lcom/koushikdutta/ion/Loader$LoaderEmitter;

    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->transform(Lcom/koushikdutta/ion/Loader$LoaderEmitter;)V

    return-void
.end method

.method public withResponse()Lcom/koushikdutta/async/b/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/koushikdutta/async/b/e<",
            "Lcom/koushikdutta/ion/Response<",
            "TT;>;>;"
        }
    .end annotation

    .line 451
    new-instance v0, Lcom/koushikdutta/async/b/i;

    invoke-direct {v0}, Lcom/koushikdutta/async/b/i;-><init>()V

    .line 452
    new-instance v1, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$1;

    invoke-direct {v1, p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$1;-><init>(Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;Lcom/koushikdutta/async/b/i;)V

    invoke-virtual {p0, v1}, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->setCallback(Lcom/koushikdutta/async/b/f;)Lcom/koushikdutta/async/b/i;

    .line 462
    invoke-virtual {v0, p0}, Lcom/koushikdutta/async/b/i;->setParent(Lcom/koushikdutta/async/b/a;)Lcom/koushikdutta/async/b/i;

    return-object v0
.end method
