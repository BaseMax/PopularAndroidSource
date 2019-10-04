.class Lcom/koushikdutta/ion/IonRequestBuilder$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/b/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/ion/IonRequestBuilder$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/b/f<",
        "Lcom/koushikdutta/async/http/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/koushikdutta/ion/IonRequestBuilder$3;


# direct methods
.method constructor <init>(Lcom/koushikdutta/ion/IonRequestBuilder$3;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$3$1;->this$1:Lcom/koushikdutta/ion/IonRequestBuilder$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/http/d;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 368
    iget-object p2, p0, Lcom/koushikdutta/ion/IonRequestBuilder$3$1;->this$1:Lcom/koushikdutta/ion/IonRequestBuilder$3;

    iget-object p2, p2, Lcom/koushikdutta/ion/IonRequestBuilder$3;->val$ret:Lcom/koushikdutta/async/b/i;

    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/b/i;->setComplete(Ljava/lang/Exception;)Z

    return-void

    .line 371
    :cond_0
    iget-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$3$1;->this$1:Lcom/koushikdutta/ion/IonRequestBuilder$3;

    iput-object p2, p1, Lcom/koushikdutta/ion/IonRequestBuilder$3;->inRequest:Lcom/koushikdutta/async/http/d;

    .line 372
    iget-object p1, p1, Lcom/koushikdutta/ion/IonRequestBuilder$3;->runner:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public bridge synthetic onCompleted(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    .line 364
    check-cast p2, Lcom/koushikdutta/async/http/d;

    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/ion/IonRequestBuilder$3$1;->onCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/http/d;)V

    return-void
.end method
