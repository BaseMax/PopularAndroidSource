.class Lcom/koushikdutta/ion/IonRequestBuilder$5;
.super Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/ion/IonRequestBuilder;->execute(Lcom/koushikdutta/async/q;ZLjava/lang/Object;Ljava/lang/Runnable;)Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform<",
        "TT;>;"
    }
.end annotation


# instance fields
.field self:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/koushikdutta/ion/IonRequestBuilder;

.field final synthetic val$close:Z

.field final synthetic val$result:Ljava/lang/Object;

.field final synthetic val$sink:Lcom/koushikdutta/async/q;


# direct methods
.method constructor <init>(Lcom/koushikdutta/ion/IonRequestBuilder;Ljava/lang/Runnable;ZLcom/koushikdutta/async/q;Ljava/lang/Object;)V
    .locals 0

    .line 611
    iput-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$5;->this$0:Lcom/koushikdutta/ion/IonRequestBuilder;

    iput-boolean p3, p0, Lcom/koushikdutta/ion/IonRequestBuilder$5;->val$close:Z

    iput-object p4, p0, Lcom/koushikdutta/ion/IonRequestBuilder$5;->val$sink:Lcom/koushikdutta/async/q;

    iput-object p5, p0, Lcom/koushikdutta/ion/IonRequestBuilder$5;->val$result:Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;-><init>(Lcom/koushikdutta/ion/IonRequestBuilder;Ljava/lang/Runnable;)V

    .line 619
    iput-object p0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$5;->self:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .line 614
    invoke-super {p0}, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->cleanup()V

    .line 615
    iget-boolean v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$5;->val$close:Z

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$5;->val$sink:Lcom/koushikdutta/async/q;

    invoke-interface {v0}, Lcom/koushikdutta/async/q;->end()V

    :cond_0
    return-void
.end method

.method protected transform(Lcom/koushikdutta/ion/Loader$LoaderEmitter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 622
    invoke-super {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->transform(Lcom/koushikdutta/ion/Loader$LoaderEmitter;)V

    .line 623
    iget-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$5;->emitter:Lcom/koushikdutta/async/n;

    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$5;->val$sink:Lcom/koushikdutta/async/q;

    new-instance v1, Lcom/koushikdutta/ion/IonRequestBuilder$5$1;

    invoke-direct {v1, p0}, Lcom/koushikdutta/ion/IonRequestBuilder$5$1;-><init>(Lcom/koushikdutta/ion/IonRequestBuilder$5;)V

    invoke-static {p1, v0, v1}, Lcom/koushikdutta/async/af;->pump(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/q;Lcom/koushikdutta/async/a/a;)V

    return-void
.end method

.method public bridge synthetic transform(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 611
    check-cast p1, Lcom/koushikdutta/ion/Loader$LoaderEmitter;

    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder$5;->transform(Lcom/koushikdutta/ion/Loader$LoaderEmitter;)V

    return-void
.end method
