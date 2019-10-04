.class Lcom/apptentive/android/sdk/network/HttpRequest$2;
.super Lcom/apptentive/android/sdk/util/threading/DispatchTask;
.source "HttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apptentive/android/sdk/network/HttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apptentive/android/sdk/network/HttpRequest;


# direct methods
.method constructor <init>(Lcom/apptentive/android/sdk/network/HttpRequest;)V
    .locals 0

    .line 367
    iput-object p1, p0, Lcom/apptentive/android/sdk/network/HttpRequest$2;->this$0:Lcom/apptentive/android/sdk/network/HttpRequest;

    invoke-direct {p0}, Lcom/apptentive/android/sdk/util/threading/DispatchTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 2

    .line 370
    iget-object v0, p0, Lcom/apptentive/android/sdk/network/HttpRequest$2;->this$0:Lcom/apptentive/android/sdk/network/HttpRequest;

    iget-boolean v0, v0, Lcom/apptentive/android/sdk/network/HttpRequest;->retrying:Z

    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/Assert;->assertTrue(Z)V

    .line 371
    iget-object v0, p0, Lcom/apptentive/android/sdk/network/HttpRequest$2;->this$0:Lcom/apptentive/android/sdk/network/HttpRequest;

    iget-object v0, v0, Lcom/apptentive/android/sdk/network/HttpRequest;->requestManager:Lcom/apptentive/android/sdk/network/HttpRequestManager;

    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 372
    iget-object v0, p0, Lcom/apptentive/android/sdk/network/HttpRequest$2;->this$0:Lcom/apptentive/android/sdk/network/HttpRequest;

    iget-object v0, v0, Lcom/apptentive/android/sdk/network/HttpRequest;->requestManager:Lcom/apptentive/android/sdk/network/HttpRequestManager;

    iget-object v1, p0, Lcom/apptentive/android/sdk/network/HttpRequest$2;->this$0:Lcom/apptentive/android/sdk/network/HttpRequest;

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/network/HttpRequestManager;->dispatchRequest(Lcom/apptentive/android/sdk/network/HttpRequest;)V

    return-void
.end method
