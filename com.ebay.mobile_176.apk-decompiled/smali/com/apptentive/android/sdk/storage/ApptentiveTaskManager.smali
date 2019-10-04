.class public Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;
.super Ljava/lang/Object;
.source "ApptentiveTaskManager.java"

# interfaces
.implements Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationObserver;
.implements Lcom/apptentive/android/sdk/storage/EventStore;
.implements Lcom/apptentive/android/sdk/storage/PayloadSender$Listener;


# instance fields
.field private appInBackground:Z

.field private final dbHelper:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;

.field private final payloadSender:Lcom/apptentive/android/sdk/storage/PayloadSender;

.field private final singleThreadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/apptentive/android/sdk/comm/ApptentiveHttpClient;Lcom/apptentive/android/sdk/Encryption;)V
    .locals 10

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;->appInBackground:Z

    .line 71
    new-instance v1, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;

    invoke-direct {v1, p1, p3}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;-><init>(Landroid/content/Context;Lcom/apptentive/android/sdk/Encryption;)V

    iput-object v1, p0, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;->dbHelper:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;

    .line 78
    new-instance p1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;-><init>()V

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-wide/16 v5, 0x1e

    move-object v2, p1

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object p1, p0, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;->singleThreadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 84
    iget-object p1, p0, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;->singleThreadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 87
    new-instance p1, Lcom/apptentive/android/sdk/storage/PayloadSender;

    new-instance p3, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager$1;

    invoke-direct {p3, p0}, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager$1;-><init>(Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;)V

    invoke-direct {p1, p2, p3}, Lcom/apptentive/android/sdk/storage/PayloadSender;-><init>(Lcom/apptentive/android/sdk/storage/PayloadRequestSender;Lcom/apptentive/android/sdk/network/HttpRequestRetryPolicy;)V

    iput-object p1, p0, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;->payloadSender:Lcom/apptentive/android/sdk/storage/PayloadSender;

    .line 94
    iget-object p1, p0, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;->payloadSender:Lcom/apptentive/android/sdk/storage/PayloadSender;

    invoke-virtual {p1, p0}, Lcom/apptentive/android/sdk/storage/PayloadSender;->setListener(Lcom/apptentive/android/sdk/storage/PayloadSender$Listener;)V

    .line 96
    invoke-static {}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;->defaultCenter()Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;

    move-result-object p1

    const-string p2, "CONVERSATION_STATE_DID_CHANGE"

    .line 97
    invoke-virtual {p1, p2, p0}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;->addObserver(Ljava/lang/String;Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationObserver;)Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;

    move-result-object p1

    const-string p2, "APP_ENTERED_BACKGROUND"

    .line 98
    invoke-virtual {p1, p2, p0}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;->addObserver(Ljava/lang/String;Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationObserver;)Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;

    move-result-object p1

    const-string p2, "APP_ENTERED_FOREGROUND"

    .line 99
    invoke-virtual {p1, p2, p0}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;->addObserver(Ljava/lang/String;Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationObserver;)Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;

    return-void
.end method

.method static synthetic access$000(Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;)Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;->dbHelper:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;

    return-object p0
.end method

.method static synthetic access$100(Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;->sendNextPayloadSync()V

    return-void
.end method

.method static synthetic access$200(Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;->singleThreadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object p0
.end method

.method private getOldestUnsentPayloadSync()Lcom/apptentive/android/sdk/model/PayloadData;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;->dbHelper:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->getOldestUnsentPayload()Lcom/apptentive/android/sdk/model/PayloadData;

    move-result-object v0

    return-object v0
.end method

.method private retrySending(J)V
    .locals 5

    .line 233
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->PAYLOADS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "Retry sending payloads in %d ms"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->d(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveHelper;->conversationQueue()Lcom/apptentive/android/sdk/util/threading/DispatchQueue;

    move-result-object v0

    new-instance v1, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager$8;

    invoke-direct {v1, p0}, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager$8;-><init>(Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;)V

    invoke-virtual {v0, v1, p1, p2}, Lcom/apptentive/android/sdk/util/threading/DispatchQueue;->dispatchAsync(Lcom/apptentive/android/sdk/util/threading/DispatchTask;J)V

    return-void
.end method

.method private sendNextPayload()V
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;->singleThreadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager$9;

    invoke-direct {v1, p0}, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager$9;-><init>(Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private sendNextPayloadSync()V
    .locals 3

    .line 271
    iget-boolean v0, p0, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;->appInBackground:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 272
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->PAYLOADS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v2, "Can\'t send the next payload: the app is in the background"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;->payloadSender:Lcom/apptentive/android/sdk/storage/PayloadSender;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/storage/PayloadSender;->isSendingPayload()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->PAYLOADS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v2, "Can\'t send the next payload: payload sender is busy"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 283
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;->getOldestUnsentPayloadSync()Lcom/apptentive/android/sdk/model/PayloadData;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_2

    return-void

    .line 294
    :cond_2
    iget-object v1, p0, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;->payloadSender:Lcom/apptentive/android/sdk/storage/PayloadSender;

    invoke-virtual {v1, v0}, Lcom/apptentive/android/sdk/storage/PayloadSender;->sendPayload(Lcom/apptentive/android/sdk/model/PayloadData;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 298
    new-instance v1, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager$10;

    invoke-direct {v1, p0, v0}, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager$10;-><init>(Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;Lcom/apptentive/android/sdk/model/PayloadData;)V

    invoke-static {v1}, Lcom/apptentive/android/sdk/ApptentiveHelper;->dispatchOnConversationQueue(Lcom/apptentive/android/sdk/util/threading/DispatchTask;)V

    :cond_3
    return-void

    :catch_0
    move-exception v0

    const-string v2, "Exception while peeking the next payload for sending"

    .line 285
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public addCompoundMessageFiles(Ljava/util/List;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/apptentive/android/sdk/model/StoredFile;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;->singleThreadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager$7;

    invoke-direct {v1, p0, p1}, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager$7;-><init>(Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public addPayload(Lcom/apptentive/android/sdk/model/Payload;)V
    .locals 4

    .line 107
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->PAYLOADS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "Adding payload: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;->singleThreadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager$2;

    invoke-direct {v1, p0, p1}, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager$2;-><init>(Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;Lcom/apptentive/android/sdk/model/Payload;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public deleteAllPayloads()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;->singleThreadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager$4;

    invoke-direct {v1, p0}, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager$4;-><init>(Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public deleteAssociatedFiles(Ljava/lang/String;)V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;->singleThreadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager$5;

    invoke-direct {v1, p0, p1}, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager$5;-><init>(Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public deletePayload(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 124
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;->singleThreadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager$3;

    invoke-direct {v1, p0, p1}, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager$3;-><init>(Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public getAssociatedFiles(Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/util/List<",
            "Lcom/apptentive/android/sdk/model/StoredFile;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;->singleThreadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager$6;

    invoke-direct {v1, p0, p1}, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager$6;-><init>(Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public onFinishSending(Lcom/apptentive/android/sdk/storage/PayloadSender;Lcom/apptentive/android/sdk/model/PayloadData;ZLjava/lang/String;ILorg/json/JSONObject;)V
    .locals 7

    .line 197
    invoke-static {}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;->defaultCenter()Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;

    move-result-object p1

    const-string v0, "PAYLOAD_DID_FINISH_SEND"

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "payload"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-string/jumbo v4, "successful"

    const/4 v5, 0x2

    aput-object v4, v1, v5

    if-nez p4, :cond_0

    if-nez p3, :cond_0

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    const/4 v6, 0x3

    aput-object v4, v1, v6

    const/4 v4, 0x4

    const-string/jumbo v6, "responseCode"

    aput-object v6, v1, v4

    const/4 v4, 0x5

    .line 201
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v4

    const/4 v4, 0x6

    const-string/jumbo v6, "responseData"

    aput-object v6, v1, v4

    const/4 v4, 0x7

    aput-object p6, v1, v4

    .line 198
    invoke-virtual {p1, v0, v1}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;->postNotification(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p3, :cond_1

    .line 205
    sget-object p1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->PAYLOADS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string p3, "Payload sending was cancelled: %s"

    new-array p4, v2, [Ljava/lang/Object;

    aput-object p2, p4, v3

    invoke-static {p1, p3, p4}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    if-eqz p4, :cond_4

    .line 210
    sget-object p1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->PAYLOADS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string p3, "Payload sending failed: %s\n%s"

    new-array p6, v5, [Ljava/lang/Object;

    aput-object p2, p6, v3

    aput-object p4, p6, v2

    invoke-static {p1, p3, p6}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    iget-boolean p1, p0, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;->appInBackground:Z

    const-wide/16 p3, 0x1388

    if-eqz p1, :cond_2

    .line 212
    sget-object p1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->PAYLOADS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string p2, "The app went to the background so we won\'t remove the payload from the queue"

    new-array p5, v3, [Ljava/lang/Object;

    invoke-static {p1, p2, p5}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    invoke-direct {p0, p3, p4}, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;->retrySending(J)V

    return-void

    :cond_2
    const/4 p1, -0x1

    if-ne p5, p1, :cond_3

    .line 216
    sget-object p1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->PAYLOADS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string p2, "Payload failed to send due to a connection error."

    new-array p5, v3, [Ljava/lang/Object;

    invoke-static {p1, p2, p5}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    invoke-direct {p0, p3, p4}, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;->retrySending(J)V

    return-void

    :cond_3
    const/16 p1, 0x1f4

    if-lt p5, p1, :cond_5

    .line 220
    sget-object p1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->PAYLOADS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string p2, "Payload failed to send due to a server error."

    new-array p5, v3, [Ljava/lang/Object;

    invoke-static {p1, p2, p5}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    invoke-direct {p0, p3, p4}, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;->retrySending(J)V

    return-void

    .line 225
    :cond_4
    sget-object p1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->PAYLOADS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string p3, "Payload was successfully sent: %s"

    new-array p4, v2, [Ljava/lang/Object;

    aput-object p2, p4, v3

    invoke-static {p1, p3, p4}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    :cond_5
    invoke-virtual {p2}, Lcom/apptentive/android/sdk/model/PayloadData;->getNonce()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;->deletePayload(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveNotification(Lcom/apptentive/android/sdk/notifications/ApptentiveNotification;)V
    .locals 9

    .line 312
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveHelper;->checkConversationQueue()V

    const-string v0, "CONVERSATION_STATE_DID_CHANGE"

    .line 314
    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotification;->hasName(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v0, "conversation"

    .line 315
    const-class v3, Lcom/apptentive/android/sdk/conversation/Conversation;

    invoke-virtual {p1, v0, v3}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotification;->getUserInfo(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apptentive/android/sdk/conversation/Conversation;

    .line 316
    invoke-static {p1}, Lcom/apptentive/android/sdk/debug/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 317
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/conversation/Conversation;->getState()Lcom/apptentive/android/sdk/conversation/ConversationState;

    move-result-object v0

    sget-object v3, Lcom/apptentive/android/sdk/conversation/ConversationState;->UNDEFINED:Lcom/apptentive/android/sdk/conversation/ConversationState;

    invoke-static {v0, v3}, Lcom/apptentive/android/sdk/debug/Assert;->assertNotEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 318
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/conversation/Conversation;->hasActiveState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 319
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/conversation/Conversation;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .line 320
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/conversation/Conversation;->getConversationToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    .line 321
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/conversation/Conversation;->getLocalIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    .line 322
    sget-object v0, Lcom/apptentive/android/sdk/conversation/ConversationState;->LEGACY_PENDING:Lcom/apptentive/android/sdk/conversation/ConversationState;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/conversation/Conversation;->getPrevState()Lcom/apptentive/android/sdk/conversation/ConversationState;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/apptentive/android/sdk/conversation/ConversationState;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 324
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v3, "Conversation %s state changed %s -> %s."

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v5, v4, v2

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/conversation/Conversation;->getPrevState()Lcom/apptentive/android/sdk/conversation/ConversationState;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x2

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/conversation/Conversation;->getState()Lcom/apptentive/android/sdk/conversation/ConversationState;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v0, v3, v4}, Lcom/apptentive/android/sdk/ApptentiveLog;->d(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 328
    sget-object v0, Lcom/apptentive/android/sdk/conversation/ConversationState;->ANONYMOUS:Lcom/apptentive/android/sdk/conversation/ConversationState;

    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/conversation/Conversation;->hasState(Lcom/apptentive/android/sdk/conversation/ConversationState;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 329
    iget-object p1, p0, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;->singleThreadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager$11;

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager$11;-><init>(Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-string v0, "APP_ENTERED_FOREGROUND"

    .line 343
    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotification;->hasName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 344
    iput-boolean v2, p0, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;->appInBackground:Z

    .line 345
    invoke-direct {p0}, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;->sendNextPayload()V

    goto :goto_0

    :cond_1
    const-string v0, "APP_ENTERED_BACKGROUND"

    .line 346
    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotification;->hasName(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 347
    iput-boolean v1, p0, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;->appInBackground:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public reset(Landroid/content/Context;)V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;->dbHelper:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;

    invoke-virtual {v0, p1}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->reset(Landroid/content/Context;)V

    return-void
.end method
