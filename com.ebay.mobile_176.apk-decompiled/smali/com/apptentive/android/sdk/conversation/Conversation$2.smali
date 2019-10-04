.class Lcom/apptentive/android/sdk/conversation/Conversation$2;
.super Ljava/lang/Object;
.source "Conversation.java"

# interfaces
.implements Lcom/apptentive/android/sdk/network/HttpRequest$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/conversation/Conversation;->fetchInteractions(Landroid/content/Context;)V
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
.field final synthetic this$0:Lcom/apptentive/android/sdk/conversation/Conversation;


# direct methods
.method constructor <init>(Lcom/apptentive/android/sdk/conversation/Conversation;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/apptentive/android/sdk/conversation/Conversation$2;->this$0:Lcom/apptentive/android/sdk/conversation/Conversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private notifyFinish(Z)V
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/Conversation$2;->this$0:Lcom/apptentive/android/sdk/conversation/Conversation;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/conversation/Conversation;->hasActiveState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getInstance()Lcom/apptentive/android/sdk/ApptentiveInstance;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/apptentive/android/sdk/ApptentiveInstance;->notifyInteractionUpdated(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCancel(Lcom/apptentive/android/sdk/network/HttpJsonRequest;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onCancel(Lcom/apptentive/android/sdk/network/HttpRequest;)V
    .locals 0

    .line 242
    check-cast p1, Lcom/apptentive/android/sdk/network/HttpJsonRequest;

    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/conversation/Conversation$2;->onCancel(Lcom/apptentive/android/sdk/network/HttpJsonRequest;)V

    return-void
.end method

.method public onFail(Lcom/apptentive/android/sdk/network/HttpJsonRequest;Ljava/lang/String;)V
    .locals 2

    .line 282
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getInstance()Lcom/apptentive/android/sdk/ApptentiveInstance;

    move-result-object p2

    invoke-interface {p2}, Lcom/apptentive/android/sdk/ApptentiveInstance;->getGlobalSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object p2

    .line 285
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/network/HttpJsonRequest;->getResponseCode()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 286
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "messageCenterServerErrorLastAttempt"

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 290
    :cond_0
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "messageCenterServerErrorLastAttempt"

    const/4 v1, 0x1

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 293
    :goto_0
    sget-object p1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string p2, "Fetching new Interactions task failed"

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->w(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 296
    invoke-direct {p0, v0}, Lcom/apptentive/android/sdk/conversation/Conversation$2;->notifyFinish(Z)V

    return-void
.end method

.method public bridge synthetic onFail(Lcom/apptentive/android/sdk/network/HttpRequest;Ljava/lang/String;)V
    .locals 0

    .line 242
    check-cast p1, Lcom/apptentive/android/sdk/network/HttpJsonRequest;

    invoke-virtual {p0, p1, p2}, Lcom/apptentive/android/sdk/conversation/Conversation$2;->onFail(Lcom/apptentive/android/sdk/network/HttpJsonRequest;Ljava/lang/String;)V

    return-void
.end method

.method public onFinish(Lcom/apptentive/android/sdk/network/HttpJsonRequest;)V
    .locals 8

    .line 246
    invoke-static {}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;->defaultCenter()Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;

    move-result-object v0

    const-string v1, "INTERACTION_MANIFEST_FETCHED"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "manifest"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 247
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/network/HttpJsonRequest;->getResponseData()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;->postNotification(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "Cache-Control"

    .line 250
    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/network/HttpJsonRequest;->getResponseHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 251
    invoke-static {v0}, Lcom/apptentive/android/sdk/util/Util;->parseCacheControlHeader(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x7080

    .line 253
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 255
    :cond_0
    iget-object v1, p0, Lcom/apptentive/android/sdk/conversation/Conversation$2;->this$0:Lcom/apptentive/android/sdk/conversation/Conversation;

    invoke-static {}, Lcom/apptentive/android/sdk/util/Util;->currentTimeSeconds()D

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v6, v0

    add-double/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Lcom/apptentive/android/sdk/conversation/Conversation;->setInteractionExpiration(D)V

    .line 257
    :try_start_0
    new-instance v0, Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionManifest;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/network/HttpJsonRequest;->getResponseData()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionManifest;-><init>(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionManifest;->getInteractions()Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interactions;

    move-result-object p1

    .line 259
    invoke-virtual {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionManifest;->getTargets()Lcom/apptentive/android/sdk/module/engagement/interaction/model/Targets;

    move-result-object v0

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 261
    iget-object v1, p0, Lcom/apptentive/android/sdk/conversation/Conversation$2;->this$0:Lcom/apptentive/android/sdk/conversation/Conversation;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Targets;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/apptentive/android/sdk/conversation/Conversation;->setTargets(Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/Conversation$2;->this$0:Lcom/apptentive/android/sdk/conversation/Conversation;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interactions;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/apptentive/android/sdk/conversation/Conversation;->setInteractions(Ljava/lang/String;)V

    goto :goto_0

    .line 264
    :cond_1
    sget-object p1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v0, "Unable to save interactionManifest."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 267
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "Invalid InteractionManifest received."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, p1, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/Conversation$2;->this$0:Lcom/apptentive/android/sdk/conversation/Conversation;

    invoke-static {v0, p1}, Lcom/apptentive/android/sdk/conversation/Conversation;->access$100(Lcom/apptentive/android/sdk/conversation/Conversation;Ljava/lang/Exception;)V

    .line 270
    :goto_0
    sget-object p1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v0, "Fetching new Interactions task finished"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    invoke-direct {p0, v5}, Lcom/apptentive/android/sdk/conversation/Conversation$2;->notifyFinish(Z)V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/apptentive/android/sdk/network/HttpRequest;)V
    .locals 0

    .line 242
    check-cast p1, Lcom/apptentive/android/sdk/network/HttpJsonRequest;

    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/conversation/Conversation$2;->onFinish(Lcom/apptentive/android/sdk/network/HttpJsonRequest;)V

    return-void
.end method
