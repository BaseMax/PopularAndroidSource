.class Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client$1;
.super Ljava/lang/Object;
.source "AdyenThreeDs2Client.java"

# interfaces
.implements Lcom/adyen/threeds2/ChallengeStatusReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;->challengeShopper(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client$OnAdyenCompleteListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;

.field final synthetic val$listener:Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client$OnAdyenCompleteListener;

.field final synthetic val$sessionId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client$OnAdyenCompleteListener;Ljava/lang/String;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client$1;->this$0:Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;

    iput-object p2, p0, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client$1;->val$listener:Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client$OnAdyenCompleteListener;

    iput-object p3, p0, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client$1;->val$sessionId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelled()V
    .locals 3

    .line 277
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client$1;->this$0:Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;

    invoke-virtual {v0}, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;->closeTransaction()V

    .line 278
    invoke-static {}, Lcom/ebay/mobile/screenshare/ScreenShareUtil;->getInstance()Lcom/ebay/mobile/screenshare/ScreenShareUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/mobile/screenshare/ScreenShareUtil;->resume()V

    .line 279
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client$1;->this$0:Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client$1;->val$sessionId:Ljava/lang/String;

    const-string v2, "ADYEN_3DS2_CHALLENGE_CANCELLED"

    invoke-static {v0, v1, v2}, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;->access$000(Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public completed(Lcom/adyen/threeds2/CompletionEvent;)V
    .locals 3

    .line 265
    invoke-interface {p1}, Lcom/adyen/threeds2/CompletionEvent;->getTransactionStatus()Ljava/lang/String;

    move-result-object p1

    .line 266
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "transStatus"

    .line 267
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    invoke-static {}, Lcom/ebay/mobile/screenshare/ScreenShareUtil;->getInstance()Lcom/ebay/mobile/screenshare/ScreenShareUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ebay/mobile/screenshare/ScreenShareUtil;->resume()V

    .line 269
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client$1;->val$listener:Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client$OnAdyenCompleteListener;

    invoke-interface {p1, v0}, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client$OnAdyenCompleteListener;->onChallengeComplete(Ljava/util/Map;)V

    .line 270
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client$1;->this$0:Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;

    const-string v0, "challenge"

    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client$1;->val$sessionId:Ljava/lang/String;

    const-string v2, "operation_completed"

    invoke-virtual {p1, v0, v1, v2}, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;->reportAdyenOperationToApls(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client$1;->this$0:Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;

    invoke-virtual {p1}, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;->closeTransaction()V

    return-void
.end method

.method public protocolError(Lcom/adyen/threeds2/ProtocolErrorEvent;)V
    .locals 4

    .line 293
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client$1;->this$0:Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;

    invoke-virtual {v0}, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;->closeTransaction()V

    .line 294
    invoke-static {}, Lcom/ebay/mobile/screenshare/ScreenShareUtil;->getInstance()Lcom/ebay/mobile/screenshare/ScreenShareUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/mobile/screenshare/ScreenShareUtil;->resume()V

    .line 295
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client$1;->this$0:Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client$1;->val$sessionId:Ljava/lang/String;

    const-string v2, "ADYEN_3DS2_PROTOCOL_ERROR"

    .line 296
    invoke-interface {p1}, Lcom/adyen/threeds2/ProtocolErrorEvent;->getErrorMessage()Lcom/adyen/threeds2/ErrorMessage;

    move-result-object v3

    invoke-interface {v3}, Lcom/adyen/threeds2/ErrorMessage;->getErrorCode()Ljava/lang/String;

    move-result-object v3

    .line 297
    invoke-interface {p1}, Lcom/adyen/threeds2/ProtocolErrorEvent;->getErrorMessage()Lcom/adyen/threeds2/ErrorMessage;

    move-result-object p1

    invoke-interface {p1}, Lcom/adyen/threeds2/ErrorMessage;->getErrorDescription()Ljava/lang/String;

    move-result-object p1

    .line 295
    invoke-static {v0, v1, v2, v3, p1}, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;->access$100(Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public runtimeError(Lcom/adyen/threeds2/RuntimeErrorEvent;)V
    .locals 2

    .line 303
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client$1;->this$0:Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;

    invoke-virtual {p1}, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;->closeTransaction()V

    .line 304
    invoke-static {}, Lcom/ebay/mobile/screenshare/ScreenShareUtil;->getInstance()Lcom/ebay/mobile/screenshare/ScreenShareUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ebay/mobile/screenshare/ScreenShareUtil;->resume()V

    .line 305
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client$1;->this$0:Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;

    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client$1;->val$sessionId:Ljava/lang/String;

    const-string v1, "ADYEN_3DS2_RUNTIME_ERROR"

    invoke-static {p1, v0, v1}, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;->access$000(Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public timedout()V
    .locals 3

    .line 285
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client$1;->this$0:Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;

    invoke-virtual {v0}, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;->closeTransaction()V

    .line 286
    invoke-static {}, Lcom/ebay/mobile/screenshare/ScreenShareUtil;->getInstance()Lcom/ebay/mobile/screenshare/ScreenShareUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/mobile/screenshare/ScreenShareUtil;->resume()V

    .line 287
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client$1;->this$0:Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client$1;->val$sessionId:Ljava/lang/String;

    const-string v2, "ADYEN_3DS2_CHALLENGE_TIMEOUT"

    invoke-static {v0, v1, v2}, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;->access$000(Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
