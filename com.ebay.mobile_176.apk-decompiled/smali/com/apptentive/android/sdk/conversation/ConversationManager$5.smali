.class Lcom/apptentive/android/sdk/conversation/ConversationManager$5;
.super Ljava/lang/Object;
.source "ConversationManager.java"

# interfaces
.implements Lcom/apptentive/android/sdk/network/HttpRequest$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/conversation/ConversationManager;->fetchAppConfigurationGuarded(Lcom/apptentive/android/sdk/conversation/Conversation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/apptentive/android/sdk/network/HttpRequest$Listener<",
        "Lcom/apptentive/android/sdk/network/HttpJsonRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apptentive/android/sdk/conversation/ConversationManager;

.field final synthetic val$conversation:Lcom/apptentive/android/sdk/conversation/Conversation;


# direct methods
.method constructor <init>(Lcom/apptentive/android/sdk/conversation/ConversationManager;Lcom/apptentive/android/sdk/conversation/Conversation;)V
    .locals 0

    .line 628
    iput-object p1, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$5;->this$0:Lcom/apptentive/android/sdk/conversation/ConversationManager;

    iput-object p2, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$5;->val$conversation:Lcom/apptentive/android/sdk/conversation/Conversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/apptentive/android/sdk/network/HttpJsonRequest;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onCancel(Lcom/apptentive/android/sdk/network/HttpRequest;)V
    .locals 0

    .line 628
    check-cast p1, Lcom/apptentive/android/sdk/network/HttpJsonRequest;

    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/conversation/ConversationManager$5;->onCancel(Lcom/apptentive/android/sdk/network/HttpJsonRequest;)V

    return-void
.end method

.method public onFail(Lcom/apptentive/android/sdk/network/HttpJsonRequest;Ljava/lang/String;)V
    .locals 3

    .line 662
    sget-object p1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->APP_CONFIGURATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v0, "App configuration request failed: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p1, v0, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onFail(Lcom/apptentive/android/sdk/network/HttpRequest;Ljava/lang/String;)V
    .locals 0

    .line 628
    check-cast p1, Lcom/apptentive/android/sdk/network/HttpJsonRequest;

    invoke-virtual {p0, p1, p2}, Lcom/apptentive/android/sdk/conversation/ConversationManager$5;->onFail(Lcom/apptentive/android/sdk/network/HttpJsonRequest;Ljava/lang/String;)V

    return-void
.end method

.method public onFinish(Lcom/apptentive/android/sdk/network/HttpJsonRequest;)V
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "Cache-Control"

    .line 632
    invoke-virtual {p1, v3}, Lcom/apptentive/android/sdk/network/HttpJsonRequest;->getResponseHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 633
    invoke-static {v3}, Lcom/apptentive/android/sdk/util/Util;->parseCacheControlHeader(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_0

    const v3, 0x15180

    .line 635
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 637
    :cond_0
    sget-object v4, Lcom/apptentive/android/sdk/ApptentiveLogTag;->APP_CONFIGURATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v5, "Caching configuration for %d seconds."

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v3, v6, v2

    invoke-static {v4, v5, v6}, Lcom/apptentive/android/sdk/ApptentiveLog;->d(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 638
    new-instance v4, Lcom/apptentive/android/sdk/model/Configuration;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/network/HttpJsonRequest;->getResponseObject()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Lcom/apptentive/android/sdk/model/Configuration;-><init>(Ljava/lang/String;)V

    .line 639
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v7, p1

    add-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Lcom/apptentive/android/sdk/model/Configuration;->setConfigurationCacheExpirationMillis(J)V

    .line 640
    invoke-virtual {v4}, Lcom/apptentive/android/sdk/model/Configuration;->save()V

    .line 642
    invoke-static {}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;->defaultCenter()Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;

    move-result-object p1

    const-string v3, "CONFIGURATION_FETCH_DID_FINISH"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "configuration"

    aput-object v6, v5, v2

    aput-object v4, v5, v1

    const-string v4, "conversation"

    aput-object v4, v5, v0

    const/4 v4, 0x3

    iget-object v6, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$5;->val$conversation:Lcom/apptentive/android/sdk/conversation/Conversation;

    aput-object v6, v5, v4

    .line 643
    invoke-virtual {p1, v3, v5}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;->postNotification(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 648
    sget-object v3, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v4, "Exception while parsing app configuration response"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, p1, v4, v5}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 649
    invoke-static {p1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    .line 651
    invoke-static {}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;->defaultCenter()Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;

    move-result-object p1

    const-string v3, "CONFIGURATION_FETCH_DID_FINISH"

    new-array v0, v0, [Ljava/lang/Object;

    const-string v4, "configuration"

    aput-object v4, v0, v2

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 652
    invoke-virtual {p1, v3, v0}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;->postNotification(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/apptentive/android/sdk/network/HttpRequest;)V
    .locals 0

    .line 628
    check-cast p1, Lcom/apptentive/android/sdk/network/HttpJsonRequest;

    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/conversation/ConversationManager$5;->onFinish(Lcom/apptentive/android/sdk/network/HttpJsonRequest;)V

    return-void
.end method
