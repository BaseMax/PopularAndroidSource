.class Lcom/koushikdutta/ion/IonRequestBuilder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/ion/IonRequestBuilder;->postExecute(Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;Ljava/lang/Exception;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/ion/IonRequestBuilder;

.field final synthetic val$ex:Ljava/lang/Exception;

.field final synthetic val$future:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

.field final synthetic val$value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/koushikdutta/ion/IonRequestBuilder;Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$1;->this$0:Lcom/koushikdutta/ion/IonRequestBuilder;

    iput-object p2, p0, Lcom/koushikdutta/ion/IonRequestBuilder$1;->val$future:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

    iput-object p3, p0, Lcom/koushikdutta/ion/IonRequestBuilder$1;->val$ex:Ljava/lang/Exception;

    iput-object p4, p0, Lcom/koushikdutta/ion/IonRequestBuilder$1;->val$value:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 234
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$1;->this$0:Lcom/koushikdutta/ion/IonRequestBuilder;

    iget-object v0, v0, Lcom/koushikdutta/ion/IonRequestBuilder;->contextReference:Lcom/koushikdutta/ion/ContextReference;

    invoke-virtual {v0}, Lcom/koushikdutta/ion/ContextReference;->isAlive()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$1;->val$future:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

    iget-object v1, v1, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->initialRequest:Lcom/koushikdutta/async/http/d;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "context has died: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/http/d;->logd(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$1;->val$future:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

    invoke-virtual {v0}, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->cancelSilently()Z

    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$1;->val$ex:Ljava/lang/Exception;

    if-eqz v0, :cond_1

    .line 244
    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$1;->val$future:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->setComplete(Ljava/lang/Exception;)Z

    return-void

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$1;->val$future:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$1;->val$value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->setComplete(Ljava/lang/Object;)Z

    return-void
.end method
