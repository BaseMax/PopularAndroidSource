.class public abstract Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;
.super Lcom/apptentive/android/sdk/util/threading/DispatchTask;
.source "ConversationDispatchTask.java"


# instance fields
.field private final callback:Lcom/apptentive/android/sdk/Apptentive$BooleanCallback;

.field private final callbackQueue:Lcom/apptentive/android/sdk/util/threading/DispatchQueue;

.field private description:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, v0, v0}, Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;-><init>(Lcom/apptentive/android/sdk/Apptentive$BooleanCallback;Lcom/apptentive/android/sdk/util/threading/DispatchQueue;)V

    return-void
.end method

.method public constructor <init>(Lcom/apptentive/android/sdk/Apptentive$BooleanCallback;)V
    .locals 1
    .param p1    # Lcom/apptentive/android/sdk/Apptentive$BooleanCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;-><init>(Lcom/apptentive/android/sdk/Apptentive$BooleanCallback;Lcom/apptentive/android/sdk/util/threading/DispatchQueue;)V

    return-void
.end method

.method public constructor <init>(Lcom/apptentive/android/sdk/Apptentive$BooleanCallback;Lcom/apptentive/android/sdk/util/threading/DispatchQueue;)V
    .locals 1
    .param p1    # Lcom/apptentive/android/sdk/Apptentive$BooleanCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/apptentive/android/sdk/util/threading/DispatchQueue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 36
    invoke-direct {p0}, Lcom/apptentive/android/sdk/util/threading/DispatchTask;-><init>()V

    const-string v0, "dispatch task"

    .line 26
    iput-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;->description:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;->callback:Lcom/apptentive/android/sdk/Apptentive$BooleanCallback;

    .line 38
    iput-object p2, p0, Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;->callbackQueue:Lcom/apptentive/android/sdk/util/threading/DispatchQueue;

    return-void
.end method

.method static synthetic access$000(Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;)Lcom/apptentive/android/sdk/Apptentive$BooleanCallback;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;->callback:Lcom/apptentive/android/sdk/Apptentive$BooleanCallback;

    return-object p0
.end method

.method private executeGuarded()V
    .locals 6

    .line 54
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getInstance()Lcom/apptentive/android/sdk/ApptentiveInstance;

    move-result-object v0

    .line 55
    invoke-interface {v0}, Lcom/apptentive/android/sdk/ApptentiveInstance;->isNull()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    .line 56
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "Unable to %s: Apptentive SDK is not initialized."

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;->description:Ljava/lang/String;

    aput-object v5, v4, v3

    invoke-static {v0, v1, v4}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    invoke-direct {p0, v2}, Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;->notifyFailure(Ljava/lang/Throwable;)V

    return-void

    .line 61
    :cond_0
    invoke-interface {v0}, Lcom/apptentive/android/sdk/ApptentiveInstance;->getConversation()Lcom/apptentive/android/sdk/conversation/Conversation;

    move-result-object v0

    if-nez v0, :cond_1

    .line 63
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "Unable to %s: no active conversation."

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;->description:Ljava/lang/String;

    aput-object v5, v4, v3

    invoke-static {v0, v1, v4}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    invoke-direct {p0, v2}, Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;->notifyFailure(Ljava/lang/Throwable;)V

    return-void

    .line 68
    :cond_1
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;->execute(Lcom/apptentive/android/sdk/conversation/Conversation;)Z

    move-result v0

    .line 69
    invoke-direct {p0, v0}, Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;->invokeCallback(Z)V

    return-void
.end method

.method private invokeCallback(Z)V
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;->callback:Lcom/apptentive/android/sdk/Apptentive$BooleanCallback;

    if-eqz v0, :cond_1

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;->callbackQueue:Lcom/apptentive/android/sdk/util/threading/DispatchQueue;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;->callbackQueue:Lcom/apptentive/android/sdk/util/threading/DispatchQueue;

    new-instance v1, Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask$1;

    invoke-direct {v1, p0, p1}, Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask$1;-><init>(Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;Z)V

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/util/threading/DispatchQueue;->dispatchAsync(Lcom/apptentive/android/sdk/util/threading/DispatchTask;)V

    goto :goto_0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;->callback:Lcom/apptentive/android/sdk/Apptentive$BooleanCallback;

    invoke-interface {v0, p1}, Lcom/apptentive/android/sdk/Apptentive$BooleanCallback;->onFinish(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 88
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "Exception while invoking callback"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;->logException(Ljava/lang/Exception;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private logException(Ljava/lang/Exception;)V
    .locals 0

    .line 125
    invoke-static {p1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method private notifyFailure(Ljava/lang/Throwable;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 97
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;->onExecuteError(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;->onExecuteFail()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 102
    :goto_0
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "Exception while handling task failure"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;->logException(Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 6

    .line 44
    :try_start_0
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;->executeGuarded()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 46
    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v2, "Exception while trying to %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;->description:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    invoke-direct {p0, v0}, Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;->logException(Ljava/lang/Exception;)V

    .line 49
    invoke-direct {p0, v0}, Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;->notifyFailure(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected abstract execute(Lcom/apptentive/android/sdk/conversation/Conversation;)Z
.end method

.method protected onExecuteError(Ljava/lang/Throwable;)V
    .locals 1

    .line 108
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;->onExecuteFail()V

    const/4 v0, 0x0

    .line 109
    invoke-static {p1, v0, v0}, Lcom/apptentive/android/sdk/module/metric/MetricModule;->sendError(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onExecuteFail()V
    .locals 1

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, v0}, Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;->invokeCallback(Z)V

    return-void
.end method

.method public setDescription(Ljava/lang/String;)Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;
    .locals 1

    .line 117
    invoke-static {p1}, Lcom/apptentive/android/sdk/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    iput-object p1, p0, Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;->description:Ljava/lang/String;

    return-object p0

    .line 118
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Description is null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
