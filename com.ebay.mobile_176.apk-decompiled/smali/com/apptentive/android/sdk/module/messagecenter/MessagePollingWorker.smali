.class Lcom/apptentive/android/sdk/module/messagecenter/MessagePollingWorker;
.super Ljava/lang/Object;
.source "MessagePollingWorker.java"

# interfaces
.implements Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$MessageFetchListener;
.implements Lcom/apptentive/android/sdk/util/Destroyable;


# instance fields
.field private final backgroundPollingInterval:J

.field private final conf:Lcom/apptentive/android/sdk/model/Configuration;

.field private final foregroundPollingInterval:J

.field private messageCenterInForeground:Z

.field private final messageManager:Lcom/apptentive/android/sdk/module/messagecenter/MessageManager;

.field private messagePollingTask:Lcom/apptentive/android/sdk/util/threading/DispatchTask;


# direct methods
.method constructor <init>(Lcom/apptentive/android/sdk/module/messagecenter/MessageManager;)V
    .locals 5

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 45
    iput-object p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/MessagePollingWorker;->messageManager:Lcom/apptentive/android/sdk/module/messagecenter/MessageManager;

    .line 47
    invoke-static {}, Lcom/apptentive/android/sdk/model/Configuration;->load()Lcom/apptentive/android/sdk/model/Configuration;

    move-result-object p1

    iput-object p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/MessagePollingWorker;->conf:Lcom/apptentive/android/sdk/model/Configuration;

    .line 48
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/MessagePollingWorker;->conf:Lcom/apptentive/android/sdk/model/Configuration;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/model/Configuration;->getMessageCenterBgPoll()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/MessagePollingWorker;->backgroundPollingInterval:J

    .line 49
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/MessagePollingWorker;->conf:Lcom/apptentive/android/sdk/model/Configuration;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/model/Configuration;->getMessageCenterFgPoll()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/MessagePollingWorker;->foregroundPollingInterval:J

    .line 50
    sget-object p1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->MESSAGES:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v0, "Message Polling Worker: bg=%d, fg=%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/apptentive/android/sdk/module/messagecenter/MessagePollingWorker;->backgroundPollingInterval:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v3, p0, Lcom/apptentive/android/sdk/module/messagecenter/MessagePollingWorker;->foregroundPollingInterval:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v0, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 42
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Message manager is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/apptentive/android/sdk/module/messagecenter/MessagePollingWorker;)Z
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/apptentive/android/sdk/module/messagecenter/MessagePollingWorker;->isPolling()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/apptentive/android/sdk/module/messagecenter/MessagePollingWorker;)Lcom/apptentive/android/sdk/conversation/Conversation;
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/apptentive/android/sdk/module/messagecenter/MessagePollingWorker;->getConversation()Lcom/apptentive/android/sdk/conversation/Conversation;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/apptentive/android/sdk/module/messagecenter/MessagePollingWorker;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/apptentive/android/sdk/module/messagecenter/MessagePollingWorker;->messageCenterInForeground:Z

    return p0
.end method

.method static synthetic access$300(Lcom/apptentive/android/sdk/module/messagecenter/MessagePollingWorker;)Lcom/apptentive/android/sdk/model/Configuration;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/apptentive/android/sdk/module/messagecenter/MessagePollingWorker;->conf:Lcom/apptentive/android/sdk/model/Configuration;

    return-object p0
.end method

.method static synthetic access$400(Lcom/apptentive/android/sdk/module/messagecenter/MessagePollingWorker;)Lcom/apptentive/android/sdk/module/messagecenter/MessageManager;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/apptentive/android/sdk/module/messagecenter/MessagePollingWorker;->messageManager:Lcom/apptentive/android/sdk/module/messagecenter/MessageManager;

    return-object p0
.end method

.method private createPollingTask()Lcom/apptentive/android/sdk/util/threading/DispatchTask;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 155
    new-instance v0, Lcom/apptentive/android/sdk/module/messagecenter/MessagePollingWorker$1;

    invoke-direct {v0, p0}, Lcom/apptentive/android/sdk/module/messagecenter/MessagePollingWorker$1;-><init>(Lcom/apptentive/android/sdk/module/messagecenter/MessagePollingWorker;)V

    return-object v0
.end method

.method private getConversation()Lcom/apptentive/android/sdk/conversation/Conversation;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/MessagePollingWorker;->messageManager:Lcom/apptentive/android/sdk/module/messagecenter/MessageManager;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager;->getConversation()Lcom/apptentive/android/sdk/conversation/Conversation;

    move-result-object v0

    return-object v0
.end method

.method private getLocalConversationIdentifier()Ljava/lang/String;
    .locals 1

    .line 142
    invoke-direct {p0}, Lcom/apptentive/android/sdk/module/messagecenter/MessagePollingWorker;->getConversation()Lcom/apptentive/android/sdk/conversation/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getLocalIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPollingInterval()J
    .locals 2

    .line 120
    iget-boolean v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/MessagePollingWorker;->messageCenterInForeground:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/MessagePollingWorker;->foregroundPollingInterval:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/MessagePollingWorker;->backgroundPollingInterval:J

    :goto_0
    return-wide v0
.end method

.method private isPolling()Z
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/MessagePollingWorker;->messagePollingTask:Lcom/apptentive/android/sdk/util/threading/DispatchTask;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private notifyStartPolling(J)V
    .locals 5

    .line 126
    invoke-static {}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;->defaultCenter()Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;

    move-result-object v0

    const-string v1, "MESSAGES_STARTED_POLLING"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "interval"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 128
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    .line 127
    invoke-virtual {v0, v1, v2}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;->postNotification(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private notifyStopPolling()V
    .locals 2

    .line 132
    invoke-static {}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;->defaultCenter()Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;

    move-result-object v0

    const-string v1, "MESSAGES_STOPPED_POLLING"

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;->postNotification(Ljava/lang/String;)V

    return-void
.end method

.method private startPolling(Z)V
    .locals 4

    if-eqz p1, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/messagecenter/MessagePollingWorker;->stopPolling()V

    .line 102
    :cond_0
    invoke-direct {p0}, Lcom/apptentive/android/sdk/module/messagecenter/MessagePollingWorker;->isPolling()Z

    move-result p1

    if-nez p1, :cond_1

    .line 103
    sget-object p1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->MESSAGES:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v0, "Start polling messages (%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/apptentive/android/sdk/module/messagecenter/MessagePollingWorker;->getLocalConversationIdentifier()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v0, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    invoke-direct {p0}, Lcom/apptentive/android/sdk/module/messagecenter/MessagePollingWorker;->createPollingTask()Lcom/apptentive/android/sdk/util/threading/DispatchTask;

    move-result-object p1

    iput-object p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/MessagePollingWorker;->messagePollingTask:Lcom/apptentive/android/sdk/util/threading/DispatchTask;

    .line 105
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/MessagePollingWorker;->messagePollingTask:Lcom/apptentive/android/sdk/util/threading/DispatchTask;

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/apptentive/android/sdk/ApptentiveHelper;->dispatchOnConversationQueueOnce(Lcom/apptentive/android/sdk/util/threading/DispatchTask;J)Z

    .line 106
    invoke-direct {p0}, Lcom/apptentive/android/sdk/module/messagecenter/MessagePollingWorker;->getPollingInterval()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/apptentive/android/sdk/module/messagecenter/MessagePollingWorker;->notifyStartPolling(J)V

    :cond_1
    return-void
.end method


# virtual methods
.method appWentToBackground()V
    .locals 0

    .line 76
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/messagecenter/MessagePollingWorker;->stopPolling()V

    return-void
.end method

.method appWentToForeground()V
    .locals 0

    .line 72
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/messagecenter/MessagePollingWorker;->startPolling()V

    return-void
.end method

.method public destroy()V
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/messagecenter/MessagePollingWorker;->stopPolling()V

    return-void
.end method

.method isMessageCenterInForeground()Z
    .locals 1

    .line 146
    iget-boolean v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/MessagePollingWorker;->messageCenterInForeground:Z

    return v0
.end method

.method public onFetchFinish(Lcom/apptentive/android/sdk/module/messagecenter/MessageManager;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apptentive/android/sdk/module/messagecenter/MessageManager;",
            "Ljava/util/List<",
            "Lcom/apptentive/android/sdk/model/ApptentiveMessage;",
            ">;)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Lcom/apptentive/android/sdk/module/messagecenter/MessagePollingWorker;->isPolling()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 63
    invoke-direct {p0}, Lcom/apptentive/android/sdk/module/messagecenter/MessagePollingWorker;->getPollingInterval()J

    move-result-wide p1

    .line 64
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->MESSAGES:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "Scheduled polling messages in %d sec"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-wide/16 v4, 0x3e8

    div-long v4, p1, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/MessagePollingWorker;->messagePollingTask:Lcom/apptentive/android/sdk/util/threading/DispatchTask;

    invoke-static {v0, p1, p2}, Lcom/apptentive/android/sdk/ApptentiveHelper;->dispatchOnConversationQueueOnce(Lcom/apptentive/android/sdk/util/threading/DispatchTask;J)Z

    :cond_0
    return-void
.end method

.method setMessageCenterInForeground(Z)V
    .locals 0

    .line 87
    iput-boolean p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/MessagePollingWorker;->messageCenterInForeground:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 89
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/module/messagecenter/MessagePollingWorker;->startPolling(Z)V

    :cond_0
    return-void
.end method

.method startPolling()V
    .locals 1

    const/4 v0, 0x0

    .line 94
    invoke-direct {p0, v0}, Lcom/apptentive/android/sdk/module/messagecenter/MessagePollingWorker;->startPolling(Z)V

    return-void
.end method

.method stopPolling()V
    .locals 5

    .line 111
    invoke-direct {p0}, Lcom/apptentive/android/sdk/module/messagecenter/MessagePollingWorker;->isPolling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->MESSAGES:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "Stop polling messages (%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/apptentive/android/sdk/module/messagecenter/MessagePollingWorker;->getLocalConversationIdentifier()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/MessagePollingWorker;->messagePollingTask:Lcom/apptentive/android/sdk/util/threading/DispatchTask;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/util/threading/DispatchTask;->cancel()V

    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/MessagePollingWorker;->messagePollingTask:Lcom/apptentive/android/sdk/util/threading/DispatchTask;

    .line 115
    invoke-direct {p0}, Lcom/apptentive/android/sdk/module/messagecenter/MessagePollingWorker;->notifyStopPolling()V

    :cond_0
    return-void
.end method
