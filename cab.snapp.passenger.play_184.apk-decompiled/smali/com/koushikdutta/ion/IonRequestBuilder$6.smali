.class Lcom/koushikdutta/ion/IonRequestBuilder$6;
.super Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/ion/IonRequestBuilder;->execute(Lcom/koushikdutta/async/c/a;Ljava/lang/Runnable;)Lcom/koushikdutta/ion/future/ResponseFuture;
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

.field final synthetic val$parser:Lcom/koushikdutta/async/c/a;


# direct methods
.method constructor <init>(Lcom/koushikdutta/ion/IonRequestBuilder;Ljava/lang/Runnable;Lcom/koushikdutta/async/c/a;)V
    .locals 0

    .line 655
    iput-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$6;->this$0:Lcom/koushikdutta/ion/IonRequestBuilder;

    iput-object p3, p0, Lcom/koushikdutta/ion/IonRequestBuilder$6;->val$parser:Lcom/koushikdutta/async/c/a;

    invoke-direct {p0, p1, p2}, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;-><init>(Lcom/koushikdutta/ion/IonRequestBuilder;Ljava/lang/Runnable;)V

    .line 656
    iput-object p0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$6;->self:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

    return-void
.end method


# virtual methods
.method protected transform(Lcom/koushikdutta/ion/Loader$LoaderEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 659
    invoke-super {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->transform(Lcom/koushikdutta/ion/Loader$LoaderEmitter;)V

    .line 660
    iget-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$6;->val$parser:Lcom/koushikdutta/async/c/a;

    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$6;->emitter:Lcom/koushikdutta/async/n;

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/c/a;->parse(Lcom/koushikdutta/async/n;)Lcom/koushikdutta/async/b/e;

    move-result-object p1

    new-instance v0, Lcom/koushikdutta/ion/IonRequestBuilder$6$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/ion/IonRequestBuilder$6$1;-><init>(Lcom/koushikdutta/ion/IonRequestBuilder$6;)V

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/b/e;->setCallback(Lcom/koushikdutta/async/b/f;)Lcom/koushikdutta/async/b/e;

    return-void
.end method

.method public bridge synthetic transform(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 655
    check-cast p1, Lcom/koushikdutta/ion/Loader$LoaderEmitter;

    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder$6;->transform(Lcom/koushikdutta/ion/Loader$LoaderEmitter;)V

    return-void
.end method
