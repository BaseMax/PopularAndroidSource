.class public Lcom/apptentive/android/sdk/conversation/ConversationProxy;
.super Ljava/lang/Object;
.source "ConversationProxy.java"

# interfaces
.implements Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationObserver;


# instance fields
.field private final conversation:Lcom/apptentive/android/sdk/conversation/Conversation;

.field private hasActiveState:Z

.field private messageCenterPendingAttachments:Ljava/lang/String;

.field private messageCenterPendingMessage:Ljava/lang/String;

.field private messageCenterWhoCardPreviouslyDisplayed:Z

.field private personEmail:Ljava/lang/String;

.field private personName:Ljava/lang/String;

.field private unreadMessageCount:I


# direct methods
.method public constructor <init>(Lcom/apptentive/android/sdk/conversation/Conversation;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 40
    iput-object p1, p0, Lcom/apptentive/android/sdk/conversation/ConversationProxy;->conversation:Lcom/apptentive/android/sdk/conversation/Conversation;

    .line 41
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/ConversationProxy;->synchronize()V

    .line 42
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/ConversationProxy;->registerNotifications()V

    return-void

    .line 38
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Conversation is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/apptentive/android/sdk/conversation/ConversationProxy;)Lcom/apptentive/android/sdk/conversation/Conversation;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/apptentive/android/sdk/conversation/ConversationProxy;->conversation:Lcom/apptentive/android/sdk/conversation/Conversation;

    return-object p0
.end method

.method private registerNotifications()V
    .locals 2

    .line 48
    invoke-static {}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;->defaultCenter()Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;

    move-result-object v0

    const-string v1, "CONVERSATION_DATA_DID_CHANGE"

    .line 49
    invoke-virtual {v0, v1, p0}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;->addObserver(Ljava/lang/String;Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationObserver;)Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;

    move-result-object v0

    const-string v1, "CONVERSATION_STATE_DID_CHANGE"

    .line 50
    invoke-virtual {v0, v1, p0}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;->addObserver(Ljava/lang/String;Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationObserver;)Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;

    move-result-object v0

    const-string v1, "MESSAGE_STORE_DID_CHANGE"

    .line 51
    invoke-virtual {v0, v1, p0}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;->addObserver(Ljava/lang/String;Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationObserver;)Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;

    return-void
.end method

.method private declared-synchronized synchronize()V
    .locals 1

    monitor-enter p0

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationProxy;->conversation:Lcom/apptentive/android/sdk/conversation/Conversation;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getPerson()Lcom/apptentive/android/sdk/storage/Person;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/storage/Person;->getEmail()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationProxy;->personEmail:Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationProxy;->conversation:Lcom/apptentive/android/sdk/conversation/Conversation;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getPerson()Lcom/apptentive/android/sdk/storage/Person;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/storage/Person;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationProxy;->personName:Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationProxy;->conversation:Lcom/apptentive/android/sdk/conversation/Conversation;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getMessageCenterPendingMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationProxy;->messageCenterPendingMessage:Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationProxy;->conversation:Lcom/apptentive/android/sdk/conversation/Conversation;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getMessageCenterPendingAttachments()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationProxy;->messageCenterPendingAttachments:Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationProxy;->conversation:Lcom/apptentive/android/sdk/conversation/Conversation;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/conversation/Conversation;->hasActiveState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationProxy;->hasActiveState:Z

    .line 69
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationProxy;->conversation:Lcom/apptentive/android/sdk/conversation/Conversation;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/conversation/Conversation;->isMessageCenterWhoCardPreviouslyDisplayed()Z

    move-result v0

    iput-boolean v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationProxy;->messageCenterWhoCardPreviouslyDisplayed:Z

    .line 70
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationProxy;->conversation:Lcom/apptentive/android/sdk/conversation/Conversation;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getMessageManager()Lcom/apptentive/android/sdk/module/messagecenter/MessageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager;->getUnreadMessageCount()I

    move-result v0

    iput v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationProxy;->unreadMessageCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 63
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public addPayload(Lcom/apptentive/android/sdk/model/SurveyResponsePayload;)V
    .locals 1

    .line 78
    new-instance v0, Lcom/apptentive/android/sdk/conversation/ConversationProxy$1;

    invoke-direct {v0, p0, p1}, Lcom/apptentive/android/sdk/conversation/ConversationProxy$1;-><init>(Lcom/apptentive/android/sdk/conversation/ConversationProxy;Lcom/apptentive/android/sdk/model/SurveyResponsePayload;)V

    invoke-static {v0}, Lcom/apptentive/android/sdk/ApptentiveHelper;->dispatchOnConversationQueue(Lcom/apptentive/android/sdk/util/threading/DispatchTask;)V

    return-void
.end method

.method public declared-synchronized getAppRelease()Lcom/apptentive/android/sdk/storage/AppRelease;
    .locals 1

    monitor-enter p0

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationProxy;->conversation:Lcom/apptentive/android/sdk/conversation/Conversation;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getAppRelease()Lcom/apptentive/android/sdk/storage/AppRelease;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getConversationToken()Ljava/lang/String;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationProxy;->conversation:Lcom/apptentive/android/sdk/conversation/Conversation;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getConversationToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getDevice()Lcom/apptentive/android/sdk/storage/Device;
    .locals 1

    monitor-enter p0

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationProxy;->conversation:Lcom/apptentive/android/sdk/conversation/Conversation;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getDevice()Lcom/apptentive/android/sdk/storage/Device;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getEventData()Lcom/apptentive/android/sdk/storage/EventData;
    .locals 1

    monitor-enter p0

    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationProxy;->conversation:Lcom/apptentive/android/sdk/conversation/Conversation;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getEventData()Lcom/apptentive/android/sdk/storage/EventData;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getInteractions()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationProxy;->conversation:Lcom/apptentive/android/sdk/conversation/Conversation;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getInteractions()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMessageCenterPendingAttachments()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationProxy;->messageCenterPendingAttachments:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMessageCenterPendingMessage()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationProxy;->messageCenterPendingMessage:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPerson()Lcom/apptentive/android/sdk/storage/Person;
    .locals 1

    monitor-enter p0

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationProxy;->conversation:Lcom/apptentive/android/sdk/conversation/Conversation;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getPerson()Lcom/apptentive/android/sdk/storage/Person;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPersonEmail()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationProxy;->personEmail:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPersonName()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationProxy;->personName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUnreadMessageCount()I
    .locals 1

    monitor-enter p0

    .line 174
    :try_start_0
    iget v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationProxy;->unreadMessageCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getVersionHistory()Lcom/apptentive/android/sdk/storage/VersionHistory;
    .locals 1

    monitor-enter p0

    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationProxy;->conversation:Lcom/apptentive/android/sdk/conversation/Conversation;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getVersionHistory()Lcom/apptentive/android/sdk/storage/VersionHistory;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasActiveState()Z
    .locals 1

    monitor-enter p0

    .line 170
    :try_start_0
    iget-boolean v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationProxy;->hasActiveState:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isMessageCenterWhoCardPreviouslyDisplayed()Z
    .locals 1

    monitor-enter p0

    .line 166
    :try_start_0
    iget-boolean v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationProxy;->messageCenterWhoCardPreviouslyDisplayed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onReceiveNotification(Lcom/apptentive/android/sdk/notifications/ApptentiveNotification;)V
    .locals 0

    monitor-enter p0

    .line 56
    :try_start_0
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/ConversationProxy;->synchronize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 55
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMessageCenterInForeground(Z)V
    .locals 1

    monitor-enter p0

    .line 157
    :try_start_0
    new-instance v0, Lcom/apptentive/android/sdk/conversation/ConversationProxy$7;

    invoke-direct {v0, p0, p1}, Lcom/apptentive/android/sdk/conversation/ConversationProxy$7;-><init>(Lcom/apptentive/android/sdk/conversation/ConversationProxy;Z)V

    invoke-static {v0}, Lcom/apptentive/android/sdk/ApptentiveHelper;->dispatchOnConversationQueue(Lcom/apptentive/android/sdk/util/threading/DispatchTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 156
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMessageCenterPendingAttachments(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 133
    :try_start_0
    iput-object p1, p0, Lcom/apptentive/android/sdk/conversation/ConversationProxy;->messageCenterPendingAttachments:Ljava/lang/String;

    .line 134
    new-instance v0, Lcom/apptentive/android/sdk/conversation/ConversationProxy$5;

    invoke-direct {v0, p0, p1}, Lcom/apptentive/android/sdk/conversation/ConversationProxy$5;-><init>(Lcom/apptentive/android/sdk/conversation/ConversationProxy;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/apptentive/android/sdk/ApptentiveHelper;->dispatchOnConversationQueue(Lcom/apptentive/android/sdk/util/threading/DispatchTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 132
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMessageCenterPendingMessage(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 119
    :try_start_0
    iput-object p1, p0, Lcom/apptentive/android/sdk/conversation/ConversationProxy;->messageCenterPendingMessage:Ljava/lang/String;

    .line 120
    new-instance v0, Lcom/apptentive/android/sdk/conversation/ConversationProxy$4;

    invoke-direct {v0, p0, p1}, Lcom/apptentive/android/sdk/conversation/ConversationProxy$4;-><init>(Lcom/apptentive/android/sdk/conversation/ConversationProxy;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/apptentive/android/sdk/ApptentiveHelper;->dispatchOnConversationQueue(Lcom/apptentive/android/sdk/util/threading/DispatchTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 118
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMessageCenterWhoCardPreviouslyDisplayed(Z)V
    .locals 1

    monitor-enter p0

    .line 147
    :try_start_0
    iput-boolean p1, p0, Lcom/apptentive/android/sdk/conversation/ConversationProxy;->messageCenterWhoCardPreviouslyDisplayed:Z

    .line 148
    new-instance v0, Lcom/apptentive/android/sdk/conversation/ConversationProxy$6;

    invoke-direct {v0, p0, p1}, Lcom/apptentive/android/sdk/conversation/ConversationProxy$6;-><init>(Lcom/apptentive/android/sdk/conversation/ConversationProxy;Z)V

    invoke-static {v0}, Lcom/apptentive/android/sdk/ApptentiveHelper;->dispatchOnConversationQueue(Lcom/apptentive/android/sdk/util/threading/DispatchTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 146
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setPersonEmail(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 95
    :try_start_0
    iput-object p1, p0, Lcom/apptentive/android/sdk/conversation/ConversationProxy;->personEmail:Ljava/lang/String;

    .line 96
    new-instance v0, Lcom/apptentive/android/sdk/conversation/ConversationProxy$2;

    invoke-direct {v0, p0, p1}, Lcom/apptentive/android/sdk/conversation/ConversationProxy$2;-><init>(Lcom/apptentive/android/sdk/conversation/ConversationProxy;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/apptentive/android/sdk/ApptentiveHelper;->dispatchOnConversationQueue(Lcom/apptentive/android/sdk/util/threading/DispatchTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 94
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setPersonName(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 109
    :try_start_0
    iput-object p1, p0, Lcom/apptentive/android/sdk/conversation/ConversationProxy;->personName:Ljava/lang/String;

    .line 110
    new-instance v0, Lcom/apptentive/android/sdk/conversation/ConversationProxy$3;

    invoke-direct {v0, p0, p1}, Lcom/apptentive/android/sdk/conversation/ConversationProxy$3;-><init>(Lcom/apptentive/android/sdk/conversation/ConversationProxy;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/apptentive/android/sdk/ApptentiveHelper;->dispatchOnConversationQueue(Lcom/apptentive/android/sdk/util/threading/DispatchTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 108
    monitor-exit p0

    throw p1
.end method
