.class Lcom/koushikdutta/ion/IonRequestBuilder$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/ion/IonRequestBuilder;->recursiveResolveRequest(Lcom/koushikdutta/async/http/d;)Lcom/koushikdutta/async/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field inRequest:Lcom/koushikdutta/async/http/d;

.field runner:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/koushikdutta/ion/IonRequestBuilder;

.field final synthetic val$request:Lcom/koushikdutta/async/http/d;

.field final synthetic val$ret:Lcom/koushikdutta/async/b/i;


# direct methods
.method constructor <init>(Lcom/koushikdutta/ion/IonRequestBuilder;Lcom/koushikdutta/async/http/d;Lcom/koushikdutta/async/b/i;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$3;->this$0:Lcom/koushikdutta/ion/IonRequestBuilder;

    iput-object p2, p0, Lcom/koushikdutta/ion/IonRequestBuilder$3;->val$request:Lcom/koushikdutta/async/http/d;

    iput-object p3, p0, Lcom/koushikdutta/ion/IonRequestBuilder$3;->val$ret:Lcom/koushikdutta/async/b/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    iget-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$3;->val$request:Lcom/koushikdutta/async/http/d;

    iput-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$3;->inRequest:Lcom/koushikdutta/async/http/d;

    .line 355
    iput-object p0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$3;->runner:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 359
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$3;->this$0:Lcom/koushikdutta/ion/IonRequestBuilder;

    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$3;->inRequest:Lcom/koushikdutta/async/http/d;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/ion/IonRequestBuilder;->resolveRequest(Lcom/koushikdutta/async/http/d;)Lcom/koushikdutta/async/b/e;

    move-result-object v0

    if-nez v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$3;->val$ret:Lcom/koushikdutta/async/b/i;

    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$3;->inRequest:Lcom/koushikdutta/async/http/d;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/b/i;->setComplete(Ljava/lang/Object;)Z

    return-void

    .line 364
    :cond_0
    new-instance v1, Lcom/koushikdutta/ion/IonRequestBuilder$3$1;

    invoke-direct {v1, p0}, Lcom/koushikdutta/ion/IonRequestBuilder$3$1;-><init>(Lcom/koushikdutta/ion/IonRequestBuilder$3;)V

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/b/e;->setCallback(Lcom/koushikdutta/async/b/f;)Lcom/koushikdutta/async/b/e;

    return-void
.end method
