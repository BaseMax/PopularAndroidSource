.class Lcom/apptentive/android/sdk/network/HttpRequest$1;
.super Lcom/apptentive/android/sdk/util/threading/DispatchTask;
.source "HttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/network/HttpRequest;->dispatchSync(Lcom/apptentive/android/sdk/util/threading/DispatchQueue;)V
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

    .line 261
    iput-object p1, p0, Lcom/apptentive/android/sdk/network/HttpRequest$1;->this$0:Lcom/apptentive/android/sdk/network/HttpRequest;

    invoke-direct {p0}, Lcom/apptentive/android/sdk/util/threading/DispatchTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/apptentive/android/sdk/network/HttpRequest$1;->this$0:Lcom/apptentive/android/sdk/network/HttpRequest;

    invoke-static {v0}, Lcom/apptentive/android/sdk/network/HttpRequest;->access$000(Lcom/apptentive/android/sdk/network/HttpRequest;)V

    return-void
.end method
