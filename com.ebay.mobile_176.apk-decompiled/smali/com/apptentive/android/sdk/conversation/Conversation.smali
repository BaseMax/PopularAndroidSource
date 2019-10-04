.class public Lcom/apptentive/android/sdk/conversation/Conversation;
.super Ljava/lang/Object;
.source "Conversation.java"

# interfaces
.implements Lcom/apptentive/android/sdk/storage/DataChangedListener;
.implements Lcom/apptentive/android/sdk/storage/DeviceDataChangedListener;
.implements Lcom/apptentive/android/sdk/storage/PersonDataChangedListener;
.implements Lcom/apptentive/android/sdk/util/Destroyable;


# instance fields
.field private conversationData:Lcom/apptentive/android/sdk/conversation/ConversationData;

.field private final conversationDataFile:Ljava/io/File;

.field private final conversationMessagesFile:Ljava/io/File;

.field private final deviceUpdateTask:Lcom/apptentive/android/sdk/util/threading/DispatchTask;

.field private encryption:Lcom/apptentive/android/sdk/Encryption;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final messageManager:Lcom/apptentive/android/sdk/module/messagecenter/MessageManager;

.field private final messageStore:Lcom/apptentive/android/sdk/conversation/FileMessageStore;

.field private payloadEncryptionKey:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final personUpdateTask:Lcom/apptentive/android/sdk/util/threading/DispatchTask;

.field private pollForInteractions:Ljava/lang/Boolean;

.field private prevState:Lcom/apptentive/android/sdk/conversation/ConversationState;

.field private final saveConversationTask:Lcom/apptentive/android/sdk/util/threading/DispatchTask;

.field private sessionId:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private state:Lcom/apptentive/android/sdk/conversation/ConversationState;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/io/File;Lcom/apptentive/android/sdk/Encryption;Ljava/lang/String;)V
    .locals 1
    .param p3    # Lcom/apptentive/android/sdk/Encryption;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    sget-object v0, Lcom/apptentive/android/sdk/conversation/ConversationState;->UNDEFINED:Lcom/apptentive/android/sdk/conversation/ConversationState;

    iput-object v0, p0, Lcom/apptentive/android/sdk/conversation/Conversation;->state:Lcom/apptentive/android/sdk/conversation/ConversationState;

    .line 125
    sget-object v0, Lcom/apptentive/android/sdk/conversation/ConversationState;->UNDEFINED:Lcom/apptentive/android/sdk/conversation/ConversationState;

    iput-object v0, p0, Lcom/apptentive/android/sdk/conversation/Conversation;->prevState:Lcom/apptentive/android/sdk/conversation/ConversationState;

    .line 133
    new-instance v0, Lcom/apptentive/android/sdk/conversation/Conversation$1;

    invoke-direct {v0, p0}, Lcom/apptentive/android/sdk/conversation/Conversation$1;-><init>(Lcom/apptentive/android/sdk/conversation/Conversation;)V

    iput-object v0, p0, Lcom/apptentive/android/sdk/conversation/Conversation;->saveConversationTask:Lcom/apptentive/android/sdk/util/threading/DispatchTask;

    .line 486
    new-instance v0, Lcom/apptentive/android/sdk/conversation/Conversation$3;

    invoke-direct {v0, p0}, Lcom/apptentive/android/sdk/conversation/Conversation$3;-><init>(Lcom/apptentive/android/sdk/conversation/Conversation;)V

    iput-object v0, p0, Lcom/apptentive/android/sdk/conversation/Conversation;->personUpdateTask:Lcom/apptentive/android/sdk/util/threading/DispatchTask;

    .line 502
    new-instance v0, Lcom/apptentive/android/sdk/conversation/Conversation$4;

    invoke-direct {v0, p0}, Lcom/apptentive/android/sdk/conversation/Conversation$4;-><init>(Lcom/apptentive/android/sdk/conversation/Conversation;)V

    iput-object v0, p0, Lcom/apptentive/android/sdk/conversation/Conversation;->deviceUpdateTask:Lcom/apptentive/android/sdk/util/threading/DispatchTask;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 162
    iput-object p1, p0, Lcom/apptentive/android/sdk/conversation/Conversation;->conversationDataFile:Ljava/io/File;

    .line 163
    iput-object p2, p0, Lcom/apptentive/android/sdk/conversation/Conversation;->conversationMessagesFile:Ljava/io/File;

    .line 164
    iput-object p3, p0, Lcom/apptentive/android/sdk/conversation/Conversation;->encryption:Lcom/apptentive/android/sdk/Encryption;

    .line 165
    iput-object p4, p0, Lcom/apptentive/android/sdk/conversation/Conversation;->payloadEncryptionKey:Ljava/lang/String;

    .line 167
    new-instance p1, Lcom/apptentive/android/sdk/conversation/ConversationData;

    invoke-direct {p1}, Lcom/apptentive/android/sdk/conversation/ConversationData;-><init>()V

    iput-object p1, p0, Lcom/apptentive/android/sdk/conversation/Conversation;->conversationData:Lcom/apptentive/android/sdk/conversation/ConversationData;

    .line 169
    new-instance p1, Lcom/apptentive/android/sdk/conversation/FileMessageStore;

    invoke-direct {p1, p2, p3}, Lcom/apptentive/android/sdk/conversation/FileMessageStore;-><init>(Ljava/io/File;Lcom/apptentive/android/sdk/Encryption;)V

    iput-object p1, p0, Lcom/apptentive/android/sdk/conversation/Conversation;->messageStore:Lcom/apptentive/android/sdk/conversation/FileMessageStore;

    .line 170
    iget-object p1, p0, Lcom/apptentive/android/sdk/conversation/Conversation;->messageStore:Lcom/apptentive/android/sdk/conversation/FileMessageStore;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/conversation/FileMessageStore;->migrateLegacyStorage()V

    .line 171
    new-instance p1, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager;

    iget-object p2, p0, Lcom/apptentive/android/sdk/conversation/Conversation;->messageStore:Lcom/apptentive/android/sdk/conversation/FileMessageStore;

    invoke-direct {p1, p0, p2}, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager;-><init>(Lcom/apptentive/android/sdk/conversation/Conversation;Lcom/apptentive/android/sdk/storage/MessageStore;)V

    iput-object p1, p0, Lcom/apptentive/android/sdk/conversation/Conversation;->messageManager:Lcom/apptentive/android/sdk/module/messagecenter/MessageManager;

    return-void

    .line 159
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Encryption is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 156
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Messages file is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 153
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Data file is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/apptentive/android/sdk/conversation/Conversation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apptentive/android/sdk/storage/SerializerException;
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/Conversation;->saveConversationData()V

    return-void
.end method

.method static synthetic access$100(Lcom/apptentive/android/sdk/conversation/Conversation;Ljava/lang/Exception;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/conversation/Conversation;->logException(Ljava/lang/Exception;)V

    return-void
.end method

.method private static generateSessionId()Ljava/lang/String;
    .locals 3

    .line 374
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 375
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x20

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private declared-synchronized getConversationData()Lcom/apptentive/android/sdk/conversation/ConversationData;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    monitor-enter p0

    .line 744
    :try_start_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/Conversation;->conversationData:Lcom/apptentive/android/sdk/conversation/ConversationData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private logException(Ljava/lang/Exception;)V
    .locals 0

    .line 531
    invoke-static {p1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method private notifyDataChanged()V
    .locals 5

    .line 469
    invoke-static {}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;->defaultCenter()Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;

    move-result-object v0

    const-string v1, "CONVERSATION_DATA_DID_CHANGE"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "conversation"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p0, v2, v3

    .line 470
    invoke-virtual {v0, v1, v2}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;->postNotification(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private notifyEventGenerated(Lcom/apptentive/android/sdk/model/EventPayload;)V
    .locals 5

    .line 200
    invoke-static {}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;->defaultCenter()Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;

    move-result-object v0

    const-string v1, "EVENT_GENERATED"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "event"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 201
    invoke-virtual {v0, v1, v2}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;->postNotification(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private declared-synchronized saveConversationData()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apptentive/android/sdk/storage/SerializerException;
        }
    .end annotation

    monitor-enter p0

    .line 396
    :try_start_0
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLog$Level;->VERBOSE:Lcom/apptentive/android/sdk/ApptentiveLog$Level;

    invoke-static {v0}, Lcom/apptentive/android/sdk/ApptentiveLog;->canLog(Lcom/apptentive/android/sdk/ApptentiveLog$Level;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 397
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v3, "Saving conversation data..."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 398
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v3, "EventData: %s"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getEventData()Lcom/apptentive/android/sdk/storage/EventData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/apptentive/android/sdk/storage/EventData;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 399
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v3, "Messages: %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/apptentive/android/sdk/conversation/Conversation;->messageManager:Lcom/apptentive/android/sdk/module/messagecenter/MessageManager;

    invoke-virtual {v5}, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager;->getMessageStore()Lcom/apptentive/android/sdk/storage/MessageStore;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 401
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 403
    new-instance v0, Lcom/apptentive/android/sdk/storage/EncryptedFileSerializer;

    iget-object v5, p0, Lcom/apptentive/android/sdk/conversation/Conversation;->conversationDataFile:Ljava/io/File;

    iget-object v6, p0, Lcom/apptentive/android/sdk/conversation/Conversation;->encryption:Lcom/apptentive/android/sdk/Encryption;

    invoke-direct {v0, v5, v6}, Lcom/apptentive/android/sdk/storage/EncryptedFileSerializer;-><init>(Ljava/io/File;Lcom/apptentive/android/sdk/Encryption;)V

    .line 404
    iget-object v5, p0, Lcom/apptentive/android/sdk/conversation/Conversation;->conversationData:Lcom/apptentive/android/sdk/conversation/ConversationData;

    invoke-virtual {v0, v5}, Lcom/apptentive/android/sdk/storage/FileSerializer;->serialize(Ljava/lang/Object;)V

    .line 405
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v5, "Conversation data saved (took %d ms)"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v8, 0x0

    sub-long/2addr v6, v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v5, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 395
    monitor-exit p0

    throw v0
.end method

.method private scheduleDeviceUpdate()V
    .locals 2

    .line 523
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveHelper;->conversationQueue()Lcom/apptentive/android/sdk/util/threading/DispatchQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/apptentive/android/sdk/conversation/Conversation;->deviceUpdateTask:Lcom/apptentive/android/sdk/util/threading/DispatchTask;

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/util/threading/DispatchQueue;->dispatchAsyncOnce(Lcom/apptentive/android/sdk/util/threading/DispatchTask;)Z

    return-void
.end method

.method private schedulePersonUpdate()V
    .locals 2

    .line 519
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveHelper;->conversationQueue()Lcom/apptentive/android/sdk/util/threading/DispatchQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/apptentive/android/sdk/conversation/Conversation;->personUpdateTask:Lcom/apptentive/android/sdk/util/threading/DispatchTask;

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/util/threading/DispatchQueue;->dispatchAsyncOnce(Lcom/apptentive/android/sdk/util/threading/DispatchTask;)Z

    return-void
.end method


# virtual methods
.method public addPayload(Lcom/apptentive/android/sdk/model/Payload;)V
    .locals 1

    .line 184
    instance-of v0, p1, Lcom/apptentive/android/sdk/model/EventPayload;

    if-eqz v0, :cond_0

    .line 185
    move-object v0, p1

    check-cast v0, Lcom/apptentive/android/sdk/model/EventPayload;

    invoke-direct {p0, v0}, Lcom/apptentive/android/sdk/conversation/Conversation;->notifyEventGenerated(Lcom/apptentive/android/sdk/model/EventPayload;)V

    .line 188
    :cond_0
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getLocalIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/model/Payload;->setLocalConversationIdentifier(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/model/Payload;->setConversationId(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getConversationToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/model/Payload;->setToken(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getEncryption()Lcom/apptentive/android/sdk/Encryption;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/model/Payload;->setEncryption(Lcom/apptentive/android/sdk/Encryption;)V

    .line 192
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/conversation/Conversation;->isAuthenticated()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/model/Payload;->setAuthenticated(Z)V

    .line 193
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/model/Payload;->setSessionId(Ljava/lang/String;)V

    .line 196
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getInstance()Lcom/apptentive/android/sdk/ApptentiveInstance;

    move-result-object v0

    invoke-interface {v0}, Lcom/apptentive/android/sdk/ApptentiveInstance;->getApptentiveTaskManager()Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;->addPayload(Lcom/apptentive/android/sdk/model/Payload;)V

    return-void
.end method

.method checkInternalConsistency()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 817
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/Conversation;->encryption:Lcom/apptentive/android/sdk/Encryption;

    if-eqz v0, :cond_2

    .line 821
    sget-object v0, Lcom/apptentive/android/sdk/conversation/Conversation$5;->$SwitchMap$com$apptentive$android$sdk$conversation$ConversationState:[I

    iget-object v1, p0, Lcom/apptentive/android/sdk/conversation/Conversation;->state:Lcom/apptentive/android/sdk/conversation/ConversationState;

    invoke-virtual {v1}, Lcom/apptentive/android/sdk/conversation/ConversationState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 831
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid conversation state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/apptentive/android/sdk/conversation/Conversation;->state:Lcom/apptentive/android/sdk/conversation/ConversationState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 823
    :pswitch_1
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/Conversation;->userId:Ljava/lang/String;

    invoke-static {v0}, Lcom/apptentive/android/sdk/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 826
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/Conversation;->payloadEncryptionKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/apptentive/android/sdk/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 827
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing payload encryption key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 824
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing user id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_0
    return-void

    .line 818
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing encryption"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public destroy()V
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/Conversation;->messageManager:Lcom/apptentive/android/sdk/module/messagecenter/MessageManager;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager;->destroy()V

    return-void
.end method

.method public endSession()V
    .locals 5

    .line 360
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/Conversation;->sessionId:Ljava/lang/String;

    const-string v1, "Session was not started"

    invoke-static {v0, v1}, Lcom/apptentive/android/sdk/debug/Assert;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "Ended session \'%s\'"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/apptentive/android/sdk/conversation/Conversation;->sessionId:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->d(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 362
    iput-object v0, p0, Lcom/apptentive/android/sdk/conversation/Conversation;->sessionId:Ljava/lang/String;

    return-void
.end method

.method public fetchInteractions(Landroid/content/Context;)V
    .locals 6

    .line 233
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/conversation/Conversation;->isPollForInteractions()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 234
    sget-object p1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v0, "Interaction polling is turned off. Skipping fetch."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->d(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 237
    :cond_0
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getInteractionExpiration()D

    move-result-wide v2

    invoke-static {}, Lcom/apptentive/android/sdk/util/Util;->currentTimeSeconds()D

    move-result-wide v4

    cmpg-double v0, v2, v4

    if-gez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 238
    invoke-static {p1}, Lcom/apptentive/android/sdk/util/RuntimeUtils;->isAppDebuggable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 311
    :cond_2
    sget-object p1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v0, "Interaction cache is still valid"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 239
    :cond_3
    :goto_1
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getInstance()Lcom/apptentive/android/sdk/ApptentiveInstance;

    move-result-object p1

    invoke-interface {p1}, Lcom/apptentive/android/sdk/ApptentiveInstance;->getApptentiveHttpClient()Lcom/apptentive/android/sdk/comm/ApptentiveHttpClient;

    move-result-object p1

    const-string v0, "fetch_interactions"

    .line 240
    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/comm/ApptentiveHttpClient;->findRequest(Ljava/lang/String;)Lcom/apptentive/android/sdk/network/HttpRequest;

    move-result-object v0

    if-nez v0, :cond_4

    .line 242
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getConversationToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getConversationId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/apptentive/android/sdk/conversation/Conversation$2;

    invoke-direct {v2, p0}, Lcom/apptentive/android/sdk/conversation/Conversation$2;-><init>(Lcom/apptentive/android/sdk/conversation/Conversation;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/apptentive/android/sdk/comm/ApptentiveHttpClient;->createFetchInteractionsRequest(Ljava/lang/String;Ljava/lang/String;Lcom/apptentive/android/sdk/network/HttpRequest$Listener;)Lcom/apptentive/android/sdk/network/HttpJsonRequest;

    move-result-object p1

    const-string v0, "fetch_interactions"

    .line 306
    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/network/HttpJsonRequest;->setTag(Ljava/lang/String;)V

    .line 307
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveHelper;->conversationQueue()Lcom/apptentive/android/sdk/util/threading/DispatchQueue;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/network/HttpJsonRequest;->setCallbackQueue(Lcom/apptentive/android/sdk/util/threading/DispatchQueue;)V

    .line 308
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/network/HttpJsonRequest;->start()V

    :cond_4
    :goto_2
    return-void
.end method

.method public getAppRelease()Lcom/apptentive/android/sdk/storage/AppRelease;
    .locals 1

    .line 646
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getConversationData()Lcom/apptentive/android/sdk/conversation/ConversationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/conversation/ConversationData;->getAppRelease()Lcom/apptentive/android/sdk/storage/AppRelease;

    move-result-object v0

    return-object v0
.end method

.method public getApplicableInteraction(Ljava/lang/String;Z)Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;
    .locals 4

    .line 212
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getTargets()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 215
    :try_start_0
    new-instance v0, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Targets;

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getTargets()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Targets;-><init>(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0, p1, p2}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Targets;->getApplicableInteraction(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getInteractions()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 220
    new-instance v1, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interactions;

    invoke-direct {v1, v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interactions;-><init>(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v1, p2}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interactions;->getInteraction(Ljava/lang/String;)Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    .line 225
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->INTERACTIONS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "Exception while getting applicable interaction: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, p2, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    invoke-direct {p0, p2}, Lcom/apptentive/android/sdk/conversation/Conversation;->logException(Ljava/lang/Exception;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public declared-synchronized getConversationDataFile()Ljava/io/File;
    .locals 1

    monitor-enter p0

    .line 752
    :try_start_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/Conversation;->conversationDataFile:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getConversationId()Ljava/lang/String;
    .locals 1

    .line 598
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getConversationData()Lcom/apptentive/android/sdk/conversation/ConversationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/conversation/ConversationData;->getConversationId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getConversationMessagesFile()Ljava/io/File;
    .locals 1

    monitor-enter p0

    .line 756
    :try_start_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/Conversation;->conversationMessagesFile:Ljava/io/File;
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

    .line 590
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getConversationData()Lcom/apptentive/android/sdk/conversation/ConversationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/conversation/ConversationData;->getConversationToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDevice()Lcom/apptentive/android/sdk/storage/Device;
    .locals 1

    .line 606
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getConversationData()Lcom/apptentive/android/sdk/conversation/ConversationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/conversation/ConversationData;->getDevice()Lcom/apptentive/android/sdk/storage/Device;

    move-result-object v0

    return-object v0
.end method

.method public getEncryption()Lcom/apptentive/android/sdk/Encryption;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 774
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/Conversation;->encryption:Lcom/apptentive/android/sdk/Encryption;

    return-object v0
.end method

.method public getEventData()Lcom/apptentive/android/sdk/storage/EventData;
    .locals 1

    .line 654
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getConversationData()Lcom/apptentive/android/sdk/conversation/ConversationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/conversation/ConversationData;->getEventData()Lcom/apptentive/android/sdk/storage/EventData;

    move-result-object v0

    return-object v0
.end method

.method public getInteractionExpiration()D
    .locals 2

    .line 726
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getConversationData()Lcom/apptentive/android/sdk/conversation/ConversationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/conversation/ConversationData;->getInteractionExpiration()D

    move-result-wide v0

    return-wide v0
.end method

.method public getInteractions()Ljava/lang/String;
    .locals 1

    .line 718
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getConversationData()Lcom/apptentive/android/sdk/conversation/ConversationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/conversation/ConversationData;->getInteractions()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastSeenSdkVersion()Ljava/lang/String;
    .locals 1

    .line 662
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getConversationData()Lcom/apptentive/android/sdk/conversation/ConversationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/conversation/ConversationData;->getLastSeenSdkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastSentDevice()Lcom/apptentive/android/sdk/storage/Device;
    .locals 1

    .line 614
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getConversationData()Lcom/apptentive/android/sdk/conversation/ConversationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/conversation/ConversationData;->getLastSentDevice()Lcom/apptentive/android/sdk/storage/Device;

    move-result-object v0

    return-object v0
.end method

.method public getLastSentPerson()Lcom/apptentive/android/sdk/storage/Person;
    .locals 1

    .line 630
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getConversationData()Lcom/apptentive/android/sdk/conversation/ConversationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/conversation/ConversationData;->getLastSentPerson()Lcom/apptentive/android/sdk/storage/Person;

    move-result-object v0

    return-object v0
.end method

.method public getLocalIdentifier()Ljava/lang/String;
    .locals 1

    .line 539
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getConversationData()Lcom/apptentive/android/sdk/conversation/ConversationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/conversation/ConversationData;->getLocalIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMParticleId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 734
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getConversationData()Lcom/apptentive/android/sdk/conversation/ConversationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/conversation/ConversationData;->getMParticleId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageCenterPendingAttachments()Ljava/lang/String;
    .locals 1

    .line 702
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getConversationData()Lcom/apptentive/android/sdk/conversation/ConversationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/conversation/ConversationData;->getMessageCenterPendingAttachments()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageCenterPendingMessage()Ljava/lang/String;
    .locals 1

    .line 694
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getConversationData()Lcom/apptentive/android/sdk/conversation/ConversationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/conversation/ConversationData;->getMessageCenterPendingMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageManager()Lcom/apptentive/android/sdk/module/messagecenter/MessageManager;
    .locals 1

    .line 748
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/Conversation;->messageManager:Lcom/apptentive/android/sdk/module/messagecenter/MessageManager;

    return-object v0
.end method

.method public getPayloadEncryptionKey()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 778
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/Conversation;->payloadEncryptionKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPerson()Lcom/apptentive/android/sdk/storage/Person;
    .locals 1

    .line 622
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getConversationData()Lcom/apptentive/android/sdk/conversation/ConversationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/conversation/ConversationData;->getPerson()Lcom/apptentive/android/sdk/storage/Person;

    move-result-object v0

    return-object v0
.end method

.method public getPrevState()Lcom/apptentive/android/sdk/conversation/ConversationState;
    .locals 1

    .line 547
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/Conversation;->prevState:Lcom/apptentive/android/sdk/conversation/ConversationState;

    return-object v0
.end method

.method public getSdk()Lcom/apptentive/android/sdk/storage/Sdk;
    .locals 1

    .line 638
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getConversationData()Lcom/apptentive/android/sdk/conversation/ConversationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/conversation/ConversationData;->getSdk()Lcom/apptentive/android/sdk/storage/Sdk;

    move-result-object v0

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 370
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/Conversation;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lcom/apptentive/android/sdk/conversation/ConversationState;
    .locals 1

    .line 543
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/Conversation;->state:Lcom/apptentive/android/sdk/conversation/ConversationState;

    return-object v0
.end method

.method public getTargets()Ljava/lang/String;
    .locals 1

    .line 710
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getConversationData()Lcom/apptentive/android/sdk/conversation/ConversationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/conversation/ConversationData;->getTargets()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 782
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/Conversation;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionHistory()Lcom/apptentive/android/sdk/storage/VersionHistory;
    .locals 1

    .line 670
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getConversationData()Lcom/apptentive/android/sdk/conversation/ConversationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/conversation/ConversationData;->getVersionHistory()Lcom/apptentive/android/sdk/storage/VersionHistory;

    move-result-object v0

    return-object v0
.end method

.method public hasActiveState()Z
    .locals 3

    const/4 v0, 0x2

    .line 586
    new-array v0, v0, [Lcom/apptentive/android/sdk/conversation/ConversationState;

    sget-object v1, Lcom/apptentive/android/sdk/conversation/ConversationState;->LOGGED_IN:Lcom/apptentive/android/sdk/conversation/ConversationState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/apptentive/android/sdk/conversation/ConversationState;->ANONYMOUS:Lcom/apptentive/android/sdk/conversation/ConversationState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/conversation/Conversation;->hasState([Lcom/apptentive/android/sdk/conversation/ConversationState;)Z

    move-result v0

    return v0
.end method

.method public hasSession()Z
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/Conversation;->sessionId:Ljava/lang/String;

    invoke-static {v0}, Lcom/apptentive/android/sdk/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasState(Lcom/apptentive/android/sdk/conversation/ConversationState;)Z
    .locals 1

    .line 560
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/Conversation;->state:Lcom/apptentive/android/sdk/conversation/ConversationState;

    invoke-virtual {v0, p1}, Lcom/apptentive/android/sdk/conversation/ConversationState;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public varargs hasState([Lcom/apptentive/android/sdk/conversation/ConversationState;)Z
    .locals 5

    .line 567
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 568
    iget-object v4, p0, Lcom/apptentive/android/sdk/conversation/Conversation;->state:Lcom/apptentive/android/sdk/conversation/ConversationState;

    invoke-virtual {v3, v4}, Lcom/apptentive/android/sdk/conversation/ConversationState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public isAuthenticated()Z
    .locals 1

    .line 579
    sget-object v0, Lcom/apptentive/android/sdk/conversation/ConversationState;->LOGGED_IN:Lcom/apptentive/android/sdk/conversation/ConversationState;

    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/conversation/Conversation;->hasState(Lcom/apptentive/android/sdk/conversation/ConversationState;)Z

    move-result v0

    return v0
.end method

.method public isMessageCenterFeatureUsed()Z
    .locals 1

    .line 678
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getConversationData()Lcom/apptentive/android/sdk/conversation/ConversationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/conversation/ConversationData;->isMessageCenterFeatureUsed()Z

    move-result v0

    return v0
.end method

.method public isMessageCenterWhoCardPreviouslyDisplayed()Z
    .locals 1

    .line 686
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getConversationData()Lcom/apptentive/android/sdk/conversation/ConversationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/conversation/ConversationData;->isMessageCenterWhoCardPreviouslyDisplayed()Z

    move-result v0

    return v0
.end method

.method public isPollForInteractions()Z
    .locals 3

    .line 316
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/Conversation;->pollForInteractions:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 317
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getInstance()Lcom/apptentive/android/sdk/ApptentiveInstance;

    move-result-object v0

    invoke-interface {v0}, Lcom/apptentive/android/sdk/ApptentiveInstance;->getGlobalSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pollForInteractions"

    const/4 v2, 0x1

    .line 318
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/apptentive/android/sdk/conversation/Conversation;->pollForInteractions:Ljava/lang/Boolean;

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/Conversation;->pollForInteractions:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method loadConversationData()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apptentive/android/sdk/storage/SerializerException;
        }
    .end annotation

    .line 434
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 436
    new-instance v2, Lcom/apptentive/android/sdk/storage/EncryptedFileSerializer;

    iget-object v3, p0, Lcom/apptentive/android/sdk/conversation/Conversation;->conversationDataFile:Ljava/io/File;

    iget-object v4, p0, Lcom/apptentive/android/sdk/conversation/Conversation;->encryption:Lcom/apptentive/android/sdk/Encryption;

    invoke-direct {v2, v3, v4}, Lcom/apptentive/android/sdk/storage/EncryptedFileSerializer;-><init>(Ljava/io/File;Lcom/apptentive/android/sdk/Encryption;)V

    .line 437
    sget-object v3, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v4, "Loading conversation data..."

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v6}, Lcom/apptentive/android/sdk/ApptentiveLog;->d(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 438
    invoke-virtual {v2}, Lcom/apptentive/android/sdk/storage/FileSerializer;->deserialize()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apptentive/android/sdk/conversation/ConversationData;

    iput-object v2, p0, Lcom/apptentive/android/sdk/conversation/Conversation;->conversationData:Lcom/apptentive/android/sdk/conversation/ConversationData;

    .line 439
    sget-object v2, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v3, "Conversation data loaded (took %d ms)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/apptentive/android/sdk/ApptentiveLog;->d(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method migrateConversationData()Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apptentive/android/sdk/storage/SerializerException;
        }
    .end annotation

    .line 414
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 415
    iget-object v2, p0, Lcom/apptentive/android/sdk/conversation/Conversation;->conversationDataFile:Ljava/io/File;

    invoke-static {v2}, Lcom/apptentive/android/sdk/util/Util;->getUnencryptedFilename(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 416
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    .line 418
    :try_start_0
    sget-object v5, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v6, "Migrating %sconversation data..."

    new-array v7, v3, [Ljava/lang/Object;

    sget-object v8, Lcom/apptentive/android/sdk/conversation/ConversationState;->LOGGED_IN:Lcom/apptentive/android/sdk/conversation/ConversationState;

    invoke-virtual {p0, v8}, Lcom/apptentive/android/sdk/conversation/Conversation;->hasState(Lcom/apptentive/android/sdk/conversation/ConversationState;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "encrypted "

    goto :goto_0

    :cond_0
    const-string v8, ""

    :goto_0
    aput-object v8, v7, v4

    invoke-static {v5, v6, v7}, Lcom/apptentive/android/sdk/ApptentiveLog;->d(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 419
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/conversation/Conversation;->isAuthenticated()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Lcom/apptentive/android/sdk/storage/EncryptedFileSerializer;

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getEncryption()Lcom/apptentive/android/sdk/Encryption;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Lcom/apptentive/android/sdk/storage/EncryptedFileSerializer;-><init>(Ljava/io/File;Lcom/apptentive/android/sdk/Encryption;)V

    goto :goto_1

    :cond_1
    new-instance v5, Lcom/apptentive/android/sdk/storage/FileSerializer;

    invoke-direct {v5, v2}, Lcom/apptentive/android/sdk/storage/FileSerializer;-><init>(Ljava/io/File;)V

    .line 421
    :goto_1
    invoke-virtual {v5}, Lcom/apptentive/android/sdk/storage/FileSerializer;->deserialize()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/apptentive/android/sdk/conversation/ConversationData;

    iput-object v5, p0, Lcom/apptentive/android/sdk/conversation/Conversation;->conversationData:Lcom/apptentive/android/sdk/conversation/ConversationData;

    .line 422
    sget-object v5, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v6, "Conversation data migrated (took %d ms)"

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v10, 0x0

    sub-long/2addr v8, v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, v4

    invoke-static {v5, v6, v7}, Lcom/apptentive/android/sdk/ApptentiveLog;->d(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 425
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    .line 426
    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v2, "Legacy conversation file deleted: %b"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v4

    invoke-static {v1, v2, v5}, Lcom/apptentive/android/sdk/ApptentiveLog;->d(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :catchall_0
    move-exception v0

    .line 425
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v1

    .line 426
    sget-object v2, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v3, v4

    const-string v1, "Legacy conversation file deleted: %b"

    invoke-static {v2, v1, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->d(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 427
    throw v0

    :cond_2
    return v4
.end method

.method public onDataChanged()V
    .locals 0

    .line 448
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/Conversation;->notifyDataChanged()V

    .line 449
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/conversation/Conversation;->scheduleSaveConversationData()V

    return-void
.end method

.method public onDeviceDataChanged()V
    .locals 0

    .line 454
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/Conversation;->notifyDataChanged()V

    .line 455
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/Conversation;->scheduleDeviceUpdate()V

    return-void
.end method

.method public onPersonDataChanged()V
    .locals 0

    .line 460
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/Conversation;->notifyDataChanged()V

    .line 461
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/Conversation;->schedulePersonUpdate()V

    return-void
.end method

.method public scheduleSaveConversationData()V
    .locals 3

    .line 383
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveHelper;->conversationDataQueue()Lcom/apptentive/android/sdk/util/threading/DispatchQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/apptentive/android/sdk/conversation/Conversation;->saveConversationTask:Lcom/apptentive/android/sdk/util/threading/DispatchTask;

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/util/threading/DispatchQueue;->dispatchAsyncOnce(Lcom/apptentive/android/sdk/util/threading/DispatchTask;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 385
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v2, "Scheduling conversation save."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 387
    :cond_0
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v2, "Conversation save already scheduled."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->d(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setAppRelease(Lcom/apptentive/android/sdk/storage/AppRelease;)V
    .locals 1

    .line 650
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getConversationData()Lcom/apptentive/android/sdk/conversation/ConversationData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apptentive/android/sdk/conversation/ConversationData;->setAppRelease(Lcom/apptentive/android/sdk/storage/AppRelease;)V

    return-void
.end method

.method public setConversationId(Ljava/lang/String;)V
    .locals 1

    .line 602
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getConversationData()Lcom/apptentive/android/sdk/conversation/ConversationData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apptentive/android/sdk/conversation/ConversationData;->setConversationId(Ljava/lang/String;)V

    return-void
.end method

.method public setConversationToken(Ljava/lang/String;)V
    .locals 1

    .line 594
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getConversationData()Lcom/apptentive/android/sdk/conversation/ConversationData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apptentive/android/sdk/conversation/ConversationData;->setConversationToken(Ljava/lang/String;)V

    return-void
.end method

.method public setDevice(Lcom/apptentive/android/sdk/storage/Device;)V
    .locals 1

    .line 610
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getConversationData()Lcom/apptentive/android/sdk/conversation/ConversationData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apptentive/android/sdk/conversation/ConversationData;->setDevice(Lcom/apptentive/android/sdk/storage/Device;)V

    return-void
.end method

.method public setEncryption(Lcom/apptentive/android/sdk/Encryption;)V
    .locals 1
    .param p1    # Lcom/apptentive/android/sdk/Encryption;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 763
    iput-object p1, p0, Lcom/apptentive/android/sdk/conversation/Conversation;->encryption:Lcom/apptentive/android/sdk/Encryption;

    .line 766
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/Conversation;->messageStore:Lcom/apptentive/android/sdk/conversation/FileMessageStore;

    invoke-virtual {v0, p1}, Lcom/apptentive/android/sdk/conversation/FileMessageStore;->updateEncryption(Lcom/apptentive/android/sdk/Encryption;)V

    return-void

    .line 761
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Encryption is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setEventData(Lcom/apptentive/android/sdk/storage/EventData;)V
    .locals 1

    .line 658
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getConversationData()Lcom/apptentive/android/sdk/conversation/ConversationData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apptentive/android/sdk/conversation/ConversationData;->setEventData(Lcom/apptentive/android/sdk/storage/EventData;)V

    return-void
.end method

.method public setInteractionExpiration(D)V
    .locals 1

    .line 730
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getConversationData()Lcom/apptentive/android/sdk/conversation/ConversationData;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/apptentive/android/sdk/conversation/ConversationData;->setInteractionExpiration(D)V

    return-void
.end method

.method public setInteractions(Ljava/lang/String;)V
    .locals 1

    .line 722
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getConversationData()Lcom/apptentive/android/sdk/conversation/ConversationData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apptentive/android/sdk/conversation/ConversationData;->setInteractions(Ljava/lang/String;)V

    return-void
.end method

.method public setLastSeenSdkVersion(Ljava/lang/String;)V
    .locals 1

    .line 666
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getConversationData()Lcom/apptentive/android/sdk/conversation/ConversationData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apptentive/android/sdk/conversation/ConversationData;->setLastSeenSdkVersion(Ljava/lang/String;)V

    return-void
.end method

.method public setLastSentDevice(Lcom/apptentive/android/sdk/storage/Device;)V
    .locals 1

    .line 618
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getConversationData()Lcom/apptentive/android/sdk/conversation/ConversationData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apptentive/android/sdk/conversation/ConversationData;->setLastSentDevice(Lcom/apptentive/android/sdk/storage/Device;)V

    return-void
.end method

.method public setLastSentPerson(Lcom/apptentive/android/sdk/storage/Person;)V
    .locals 1

    .line 634
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getConversationData()Lcom/apptentive/android/sdk/conversation/ConversationData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apptentive/android/sdk/conversation/ConversationData;->setLastSentPerson(Lcom/apptentive/android/sdk/storage/Person;)V

    return-void
.end method

.method public setMParticleId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 738
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getConversationData()Lcom/apptentive/android/sdk/conversation/ConversationData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apptentive/android/sdk/conversation/ConversationData;->setMParticleId(Ljava/lang/String;)V

    return-void
.end method

.method public setMessageCenterFeatureUsed(Z)V
    .locals 1

    .line 682
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getConversationData()Lcom/apptentive/android/sdk/conversation/ConversationData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apptentive/android/sdk/conversation/ConversationData;->setMessageCenterFeatureUsed(Z)V

    return-void
.end method

.method public setMessageCenterPendingAttachments(Ljava/lang/String;)V
    .locals 1

    .line 706
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getConversationData()Lcom/apptentive/android/sdk/conversation/ConversationData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apptentive/android/sdk/conversation/ConversationData;->setMessageCenterPendingAttachments(Ljava/lang/String;)V

    return-void
.end method

.method public setMessageCenterPendingMessage(Ljava/lang/String;)V
    .locals 1

    .line 698
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getConversationData()Lcom/apptentive/android/sdk/conversation/ConversationData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apptentive/android/sdk/conversation/ConversationData;->setMessageCenterPendingMessage(Ljava/lang/String;)V

    return-void
.end method

.method public setMessageCenterWhoCardPreviouslyDisplayed(Z)V
    .locals 1

    .line 690
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getConversationData()Lcom/apptentive/android/sdk/conversation/ConversationData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apptentive/android/sdk/conversation/ConversationData;->setMessageCenterWhoCardPreviouslyDisplayed(Z)V

    return-void
.end method

.method public setPayloadEncryptionKey(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 770
    iput-object p1, p0, Lcom/apptentive/android/sdk/conversation/Conversation;->payloadEncryptionKey:Ljava/lang/String;

    return-void
.end method

.method public setPerson(Lcom/apptentive/android/sdk/storage/Person;)V
    .locals 1

    .line 626
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getConversationData()Lcom/apptentive/android/sdk/conversation/ConversationData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apptentive/android/sdk/conversation/ConversationData;->setPerson(Lcom/apptentive/android/sdk/storage/Person;)V

    return-void
.end method

.method public setPollForInteractions(Z)V
    .locals 2

    .line 324
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/apptentive/android/sdk/conversation/Conversation;->pollForInteractions:Ljava/lang/Boolean;

    .line 325
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getInstance()Lcom/apptentive/android/sdk/ApptentiveInstance;

    move-result-object v0

    invoke-interface {v0}, Lcom/apptentive/android/sdk/ApptentiveInstance;->getGlobalSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 326
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pollForInteractions"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setPushIntegration(ILjava/lang/String;)V
    .locals 5

    .line 790
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "Setting push provider: %d with token %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 791
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getDevice()Lcom/apptentive/android/sdk/storage/Device;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/storage/Device;->getIntegrationConfig()Lcom/apptentive/android/sdk/storage/IntegrationConfig;

    move-result-object v0

    .line 792
    new-instance v1, Lcom/apptentive/android/sdk/storage/IntegrationConfigItem;

    invoke-direct {v1}, Lcom/apptentive/android/sdk/storage/IntegrationConfigItem;-><init>()V

    .line 793
    invoke-virtual {v1, p2}, Lcom/apptentive/android/sdk/storage/IntegrationConfigItem;->setToken(Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    .line 808
    sget-object p2, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v0, "Invalid pushProvider: %d"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-static {p2, v0, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 805
    :pswitch_0
    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/storage/IntegrationConfig;->setAmazonAwsSns(Lcom/apptentive/android/sdk/storage/IntegrationConfigItem;)V

    goto :goto_0

    .line 802
    :pswitch_1
    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/storage/IntegrationConfig;->setUrbanAirship(Lcom/apptentive/android/sdk/storage/IntegrationConfigItem;)V

    goto :goto_0

    .line 799
    :pswitch_2
    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/storage/IntegrationConfig;->setParse(Lcom/apptentive/android/sdk/storage/IntegrationConfigItem;)V

    goto :goto_0

    .line 796
    :pswitch_3
    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/storage/IntegrationConfig;->setApptentive(Lcom/apptentive/android/sdk/storage/IntegrationConfigItem;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setSdk(Lcom/apptentive/android/sdk/storage/Sdk;)V
    .locals 1

    .line 642
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getConversationData()Lcom/apptentive/android/sdk/conversation/ConversationData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apptentive/android/sdk/conversation/ConversationData;->setSdk(Lcom/apptentive/android/sdk/storage/Sdk;)V

    return-void
.end method

.method public setState(Lcom/apptentive/android/sdk/conversation/ConversationState;)V
    .locals 1

    .line 552
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/Conversation;->state:Lcom/apptentive/android/sdk/conversation/ConversationState;

    iput-object v0, p0, Lcom/apptentive/android/sdk/conversation/Conversation;->prevState:Lcom/apptentive/android/sdk/conversation/ConversationState;

    .line 553
    iput-object p1, p0, Lcom/apptentive/android/sdk/conversation/Conversation;->state:Lcom/apptentive/android/sdk/conversation/ConversationState;

    return-void
.end method

.method public setTargets(Ljava/lang/String;)V
    .locals 1

    .line 714
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getConversationData()Lcom/apptentive/android/sdk/conversation/ConversationData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apptentive/android/sdk/conversation/ConversationData;->setTargets(Ljava/lang/String;)V

    return-void
.end method

.method setUserId(Ljava/lang/String;)V
    .locals 0

    .line 786
    iput-object p1, p0, Lcom/apptentive/android/sdk/conversation/Conversation;->userId:Ljava/lang/String;

    return-void
.end method

.method public setVersionHistory(Lcom/apptentive/android/sdk/storage/VersionHistory;)V
    .locals 1

    .line 674
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getConversationData()Lcom/apptentive/android/sdk/conversation/ConversationData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apptentive/android/sdk/conversation/ConversationData;->setVersionHistory(Lcom/apptentive/android/sdk/storage/VersionHistory;)V

    return-void
.end method

.method public startListeningForChanges()V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/Conversation;->conversationData:Lcom/apptentive/android/sdk/conversation/ConversationData;

    invoke-virtual {v0, p0}, Lcom/apptentive/android/sdk/conversation/ConversationData;->setDataChangedListener(Lcom/apptentive/android/sdk/storage/DataChangedListener;)V

    .line 176
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/Conversation;->conversationData:Lcom/apptentive/android/sdk/conversation/ConversationData;

    invoke-virtual {v0, p0}, Lcom/apptentive/android/sdk/conversation/ConversationData;->setPersonDataListener(Lcom/apptentive/android/sdk/storage/PersonDataChangedListener;)V

    .line 177
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/Conversation;->conversationData:Lcom/apptentive/android/sdk/conversation/ConversationData;

    invoke-virtual {v0, p0}, Lcom/apptentive/android/sdk/conversation/ConversationData;->setDeviceDataListener(Lcom/apptentive/android/sdk/storage/DeviceDataChangedListener;)V

    return-void
.end method

.method public startSession()V
    .locals 5

    .line 354
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/Conversation;->sessionId:Ljava/lang/String;

    const-string v1, "Another session is active"

    invoke-static {v0, v1}, Lcom/apptentive/android/sdk/debug/Assert;->assertNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 355
    invoke-static {}, Lcom/apptentive/android/sdk/conversation/Conversation;->generateSessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apptentive/android/sdk/conversation/Conversation;->sessionId:Ljava/lang/String;

    .line 356
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "Started session \'%s\'"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/apptentive/android/sdk/conversation/Conversation;->sessionId:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->d(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public storeInteractionManifest(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 334
    :try_start_0
    new-instance v1, Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionManifest;

    invoke-direct {v1, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionManifest;-><init>(Ljava/lang/String;)V

    .line 335
    invoke-virtual {v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionManifest;->getInteractions()Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interactions;

    move-result-object p1

    .line 336
    invoke-virtual {v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionManifest;->getTargets()Lcom/apptentive/android/sdk/module/engagement/interaction/model/Targets;

    move-result-object v1

    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    .line 338
    invoke-virtual {v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Targets;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/apptentive/android/sdk/conversation/Conversation;->setTargets(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interactions;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/conversation/Conversation;->setInteractions(Ljava/lang/String;)V

    goto :goto_0

    .line 341
    :cond_0
    sget-object p1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "Unable to save InteractionManifest."

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 344
    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v2, "Invalid InteractionManifest received."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/apptentive/android/sdk/ApptentiveLog;->w(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 345
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/conversation/Conversation;->logException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "Conversation: localId=%s id=%s state=%s token=%s"

    const/4 v1, 0x4

    .line 841
    new-array v1, v1, [Ljava/lang/Object;

    .line 842
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getLocalIdentifier()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 843
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getConversationId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 844
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getState()Lcom/apptentive/android/sdk/conversation/ConversationState;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 845
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getConversationToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->hideIfSanitized(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 841
    invoke-static {v0, v1}, Lcom/apptentive/android/sdk/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
