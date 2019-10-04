.class public Lcom/apptentive/android/sdk/conversation/ConversationManager;
.super Ljava/lang/Object;
.source "ConversationManager.java"


# static fields
.field private static final NULL_LOGIN_CALLBACK:Lcom/apptentive/android/sdk/Apptentive$LoginCallback;


# instance fields
.field private activeConversation:Lcom/apptentive/android/sdk/conversation/Conversation;

.field private activeConversationFailedToResolve:Z

.field private activeConversationProxy:Lcom/apptentive/android/sdk/conversation/ConversationProxy;

.field private appIsInForeground:Z

.field private final contextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private conversationMetadata:Lcom/apptentive/android/sdk/conversation/ConversationMetadata;

.field private final conversationsStorageDir:Ljava/io/File;

.field private final encryption:Lcom/apptentive/android/sdk/Encryption;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 774
    new-instance v0, Lcom/apptentive/android/sdk/conversation/ConversationManager$6;

    invoke-direct {v0}, Lcom/apptentive/android/sdk/conversation/ConversationManager$6;-><init>()V

    sput-object v0, Lcom/apptentive/android/sdk/conversation/ConversationManager;->NULL_LOGIN_CALLBACK:Lcom/apptentive/android/sdk/Apptentive$LoginCallback;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Lcom/apptentive/android/sdk/Encryption;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/apptentive/android/sdk/Encryption;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 119
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager;->contextRef:Ljava/lang/ref/WeakReference;

    .line 120
    iput-object p2, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager;->conversationsStorageDir:Ljava/io/File;

    .line 121
    iput-object p3, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager;->encryption:Lcom/apptentive/android/sdk/Encryption;

    .line 123
    invoke-static {}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;->defaultCenter()Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;

    move-result-object p1

    const-string p2, "APP_ENTERED_FOREGROUND"

    new-instance p3, Lcom/apptentive/android/sdk/conversation/ConversationManager$1;

    invoke-direct {p3, p0}, Lcom/apptentive/android/sdk/conversation/ConversationManager$1;-><init>(Lcom/apptentive/android/sdk/conversation/ConversationManager;)V

    .line 124
    invoke-virtual {p1, p2, p3}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;->addObserver(Ljava/lang/String;Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationObserver;)Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;

    .line 142
    invoke-static {}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;->defaultCenter()Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;

    move-result-object p1

    const-string p2, "APP_ENTERED_BACKGROUND"

    new-instance p3, Lcom/apptentive/android/sdk/conversation/ConversationManager$2;

    invoke-direct {p3, p0}, Lcom/apptentive/android/sdk/conversation/ConversationManager$2;-><init>(Lcom/apptentive/android/sdk/conversation/ConversationManager;)V

    .line 143
    invoke-virtual {p1, p2, p3}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;->addObserver(Ljava/lang/String;Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationObserver;)Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;

    return-void

    .line 116
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Encryption is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 112
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Conversation storage dir is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 108
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Context is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$002(Lcom/apptentive/android/sdk/conversation/ConversationManager;Z)Z
    .locals 0

    .line 74
    iput-boolean p1, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager;->appIsInForeground:Z

    return p1
.end method

.method static synthetic access$100(Lcom/apptentive/android/sdk/conversation/ConversationManager;)Lcom/apptentive/android/sdk/conversation/Conversation;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager;->activeConversation:Lcom/apptentive/android/sdk/conversation/Conversation;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/apptentive/android/sdk/conversation/ConversationManager;Lcom/apptentive/android/sdk/conversation/Conversation;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->setActiveConversation(Lcom/apptentive/android/sdk/conversation/Conversation;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/apptentive/android/sdk/conversation/ConversationManager;)Ljava/io/File;
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->generateConversationDataFilename()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/apptentive/android/sdk/conversation/ConversationManager;)Ljava/io/File;
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->generateMessagesFilename()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/apptentive/android/sdk/conversation/ConversationManager;)Landroid/content/Context;
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/apptentive/android/sdk/conversation/ConversationManager;Lcom/apptentive/android/sdk/conversation/Conversation;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->fetchAppConfiguration(Lcom/apptentive/android/sdk/conversation/Conversation;)V

    return-void
.end method

.method static synthetic access$400(Lcom/apptentive/android/sdk/conversation/ConversationManager;Lcom/apptentive/android/sdk/conversation/Conversation;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->handleConversationStateChange(Lcom/apptentive/android/sdk/conversation/Conversation;)V

    return-void
.end method

.method static synthetic access$500(Lcom/apptentive/android/sdk/conversation/ConversationManager;Lcom/apptentive/android/sdk/conversation/Conversation;Z)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->notifyFetchFinished(Lcom/apptentive/android/sdk/conversation/Conversation;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/apptentive/android/sdk/conversation/ConversationManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/apptentive/android/sdk/Apptentive$LoginCallback;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->sendLoginRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/apptentive/android/sdk/Apptentive$LoginCallback;)V

    return-void
.end method

.method static synthetic access$700(Lcom/apptentive/android/sdk/conversation/ConversationManager;Ljava/lang/String;)Lcom/apptentive/android/sdk/Encryption;
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->createPayloadEncryption(Ljava/lang/String;)Lcom/apptentive/android/sdk/Encryption;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/apptentive/android/sdk/conversation/ConversationManager;)Lcom/apptentive/android/sdk/conversation/ConversationMetadata;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager;->conversationMetadata:Lcom/apptentive/android/sdk/conversation/ConversationMetadata;

    return-object p0
.end method

.method static synthetic access$900(Lcom/apptentive/android/sdk/conversation/ConversationManager;Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;)Lcom/apptentive/android/sdk/conversation/Conversation;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apptentive/android/sdk/storage/SerializerException;,
            Lcom/apptentive/android/sdk/conversation/ConversationLoadException;
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->loadConversation(Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;)Lcom/apptentive/android/sdk/conversation/Conversation;

    move-result-object p0

    return-object p0
.end method

.method private createPayloadEncryption(Ljava/lang/String;)Lcom/apptentive/android/sdk/Encryption;
    .locals 1

    const-string v0, "AES/CBC/PKCS5Padding"

    .line 1162
    invoke-static {p1, v0}, Lcom/apptentive/android/sdk/encryption/EncryptionFactory;->createEncryption(Ljava/lang/String;Ljava/lang/String;)Lcom/apptentive/android/sdk/Encryption;

    move-result-object p1

    return-object p1
.end method

.method private fetchAppConfiguration(Lcom/apptentive/android/sdk/conversation/Conversation;)V
    .locals 3

    .line 599
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveHelper;->checkConversationQueue()V

    .line 601
    :try_start_0
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->fetchAppConfigurationGuarded(Lcom/apptentive/android/sdk/conversation/Conversation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 603
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "Exception while fetching app configuration"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, p1, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 604
    invoke-static {p1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private fetchAppConfigurationGuarded(Lcom/apptentive/android/sdk/conversation/Conversation;)V
    .locals 4

    .line 609
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->APP_CONFIGURATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "Fetching app configuration..."

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->d(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 611
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->getHttpClient()Lcom/apptentive/android/sdk/comm/ApptentiveHttpClient;

    move-result-object v0

    const-string v1, "fetch_app_configuration"

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/comm/ApptentiveHttpClient;->findRequest(Ljava/lang/String;)Lcom/apptentive/android/sdk/network/HttpRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 613
    sget-object p1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->APP_CONFIGURATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v0, "Can\'t fetch app configuration: another request already pending"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->d(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 617
    :cond_0
    invoke-static {}, Lcom/apptentive/android/sdk/model/Configuration;->load()Lcom/apptentive/android/sdk/model/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/model/Configuration;->hasConfigurationCacheExpired()Z

    move-result v0

    if-nez v0, :cond_1

    .line 619
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/apptentive/android/sdk/util/RuntimeUtils;->isAppDebuggable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 621
    sget-object p1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->APP_CONFIGURATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v0, "Can\'t fetch app configuration: the old configuration is still valid"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->d(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 626
    :cond_1
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->getHttpClient()Lcom/apptentive/android/sdk/comm/ApptentiveHttpClient;

    move-result-object v0

    .line 627
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/conversation/Conversation;->getConversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/conversation/Conversation;->getConversationToken()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/apptentive/android/sdk/conversation/ConversationManager$5;

    invoke-direct {v3, p0, p1}, Lcom/apptentive/android/sdk/conversation/ConversationManager$5;-><init>(Lcom/apptentive/android/sdk/conversation/ConversationManager;Lcom/apptentive/android/sdk/conversation/Conversation;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/apptentive/android/sdk/comm/ApptentiveHttpClient;->createAppConfigurationRequest(Ljava/lang/String;Ljava/lang/String;Lcom/apptentive/android/sdk/network/HttpRequest$Listener;)Lcom/apptentive/android/sdk/network/HttpJsonRequest;

    move-result-object p1

    const-string v0, "fetch_app_configuration"

    .line 665
    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/network/HttpJsonRequest;->setTag(Ljava/lang/String;)V

    .line 666
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveHelper;->conversationQueue()Lcom/apptentive/android/sdk/util/threading/DispatchQueue;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/network/HttpJsonRequest;->setCallbackQueue(Lcom/apptentive/android/sdk/util/threading/DispatchQueue;)V

    .line 667
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/network/HttpJsonRequest;->start()V

    return-void
.end method

.method private fetchConversationToken(Lcom/apptentive/android/sdk/conversation/Conversation;)Lcom/apptentive/android/sdk/network/HttpRequest;
    .locals 9

    .line 441
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveHelper;->checkConversationQueue()V

    .line 444
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->notifyFetchStarted(Lcom/apptentive/android/sdk/conversation/Conversation;)V

    .line 447
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 449
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v3, "Unable to fetch conversation token: context reference is lost"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/apptentive/android/sdk/ApptentiveLog;->w(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 450
    invoke-direct {p0, p1, v2}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->notifyFetchFinished(Lcom/apptentive/android/sdk/conversation/Conversation;Z)V

    return-object v1

    .line 455
    :cond_0
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->getHttpClient()Lcom/apptentive/android/sdk/comm/ApptentiveHttpClient;

    move-result-object v3

    const-string v4, "fetch_conversation_token"

    invoke-virtual {v3, v4}, Lcom/apptentive/android/sdk/comm/ApptentiveHttpClient;->findRequest(Ljava/lang/String;)Lcom/apptentive/android/sdk/network/HttpRequest;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 457
    sget-object p1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v0, "Conversation already fetching"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->d(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v3

    .line 461
    :cond_1
    sget-object v3, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v4, "Started fetching conversation token..."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->d(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 464
    new-instance v2, Lcom/apptentive/android/sdk/model/ConversationTokenRequest;

    invoke-direct {v2}, Lcom/apptentive/android/sdk/model/ConversationTokenRequest;-><init>()V

    .line 467
    invoke-static {v0}, Lcom/apptentive/android/sdk/storage/DeviceManager;->generateNewDevice(Landroid/content/Context;)Lcom/apptentive/android/sdk/storage/Device;

    move-result-object v6

    .line 468
    invoke-static {v0}, Lcom/apptentive/android/sdk/storage/SdkManager;->generateCurrentSdk(Landroid/content/Context;)Lcom/apptentive/android/sdk/storage/Sdk;

    move-result-object v8

    .line 469
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getInstance()Lcom/apptentive/android/sdk/ApptentiveInstance;

    move-result-object v0

    invoke-interface {v0}, Lcom/apptentive/android/sdk/ApptentiveInstance;->getAppRelease()Lcom/apptentive/android/sdk/storage/AppRelease;

    move-result-object v7

    .line 471
    invoke-static {v1, v6}, Lcom/apptentive/android/sdk/storage/DeviceManager;->getDiffPayload(Lcom/apptentive/android/sdk/storage/Device;Lcom/apptentive/android/sdk/storage/Device;)Lcom/apptentive/android/sdk/model/DevicePayload;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/apptentive/android/sdk/model/ConversationTokenRequest;->setDevice(Lcom/apptentive/android/sdk/model/DevicePayload;)V

    .line 472
    invoke-static {v8}, Lcom/apptentive/android/sdk/storage/SdkManager;->getPayload(Lcom/apptentive/android/sdk/storage/Sdk;)Lcom/apptentive/android/sdk/model/SdkPayload;

    move-result-object v0

    invoke-static {v7}, Lcom/apptentive/android/sdk/storage/AppReleaseManager;->getPayload(Lcom/apptentive/android/sdk/storage/AppRelease;)Lcom/apptentive/android/sdk/model/AppReleasePayload;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/apptentive/android/sdk/model/ConversationTokenRequest;->setSdkAndAppRelease(Lcom/apptentive/android/sdk/model/SdkPayload;Lcom/apptentive/android/sdk/model/AppReleasePayload;)V

    .line 474
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->getHttpClient()Lcom/apptentive/android/sdk/comm/ApptentiveHttpClient;

    move-result-object v0

    new-instance v1, Lcom/apptentive/android/sdk/conversation/ConversationManager$4;

    move-object v3, v1

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/apptentive/android/sdk/conversation/ConversationManager$4;-><init>(Lcom/apptentive/android/sdk/conversation/ConversationManager;Lcom/apptentive/android/sdk/conversation/Conversation;Lcom/apptentive/android/sdk/storage/Device;Lcom/apptentive/android/sdk/storage/AppRelease;Lcom/apptentive/android/sdk/storage/Sdk;)V

    .line 475
    invoke-virtual {v0, v2, v1}, Lcom/apptentive/android/sdk/comm/ApptentiveHttpClient;->createConversationTokenRequest(Lcom/apptentive/android/sdk/model/ConversationTokenRequest;Lcom/apptentive/android/sdk/network/HttpRequest$Listener;)Lcom/apptentive/android/sdk/network/HttpJsonRequest;

    move-result-object p1

    .line 536
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveHelper;->conversationQueue()Lcom/apptentive/android/sdk/util/threading/DispatchQueue;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/network/HttpRequest;->setCallbackQueue(Lcom/apptentive/android/sdk/util/threading/DispatchQueue;)V

    const-string v0, "fetch_conversation_token"

    .line 537
    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/network/HttpRequest;->setTag(Ljava/lang/String;)V

    .line 538
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/network/HttpRequest;->start()V

    return-object p1
.end method

.method private fetchLegacyConversation(Lcom/apptentive/android/sdk/conversation/Conversation;)Lcom/apptentive/android/sdk/network/HttpRequest;
    .locals 3

    .line 326
    invoke-static {p1}, Lcom/apptentive/android/sdk/debug/Assert;->assertNotNull(Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    .line 331
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/conversation/Conversation;->getState()Lcom/apptentive/android/sdk/conversation/ConversationState;

    move-result-object v0

    sget-object v1, Lcom/apptentive/android/sdk/conversation/ConversationState;->LEGACY_PENDING:Lcom/apptentive/android/sdk/conversation/ConversationState;

    invoke-static {v0, v1}, Lcom/apptentive/android/sdk/debug/Assert;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 333
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/conversation/Conversation;->getConversationToken()Ljava/lang/String;

    move-result-object v0

    .line 334
    invoke-static {v0}, Lcom/apptentive/android/sdk/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 338
    invoke-static {v0}, Lcom/apptentive/android/sdk/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Lcom/apptentive/android/sdk/debug/Assert;->assertFalse(Z)V

    .line 339
    invoke-static {v0}, Lcom/apptentive/android/sdk/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 343
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->getHttpClient()Lcom/apptentive/android/sdk/comm/ApptentiveHttpClient;

    move-result-object v1

    new-instance v2, Lcom/apptentive/android/sdk/conversation/ConversationManager$3;

    invoke-direct {v2, p0, p1}, Lcom/apptentive/android/sdk/conversation/ConversationManager$3;-><init>(Lcom/apptentive/android/sdk/conversation/ConversationManager;Lcom/apptentive/android/sdk/conversation/Conversation;)V

    .line 344
    invoke-virtual {v1, v0, v2}, Lcom/apptentive/android/sdk/comm/ApptentiveHttpClient;->createLegacyConversationIdRequest(Ljava/lang/String;Lcom/apptentive/android/sdk/network/HttpRequest$Listener;)Lcom/apptentive/android/sdk/network/HttpJsonRequest;

    move-result-object p1

    .line 390
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveHelper;->conversationQueue()Lcom/apptentive/android/sdk/util/threading/DispatchQueue;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/network/HttpRequest;->setCallbackQueue(Lcom/apptentive/android/sdk/util/threading/DispatchQueue;)V

    const-string v0, "fetch_conversation_token"

    .line 391
    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/network/HttpRequest;->setTag(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/network/HttpRequest;->start()V

    return-object p1

    .line 340
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Conversation is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 335
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Missing conversation token"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 328
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Conversation is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private generateConversationDataFilename()Ljava/io/File;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1169
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager;->conversationsStorageDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "conversation-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/apptentive/android/sdk/util/Util;->generateRandomFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/apptentive/android/sdk/util/Util;->getEncryptedFilename(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private generateMessagesFilename()Ljava/io/File;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1176
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager;->conversationsStorageDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "messages-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/apptentive/android/sdk/util/Util;->generateRandomFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/apptentive/android/sdk/util/Util;->getEncryptedFilename(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .line 1208
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method private getHttpClient()Lcom/apptentive/android/sdk/comm/ApptentiveHttpClient;
    .locals 1

    .line 1204
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getInstance()Lcom/apptentive/android/sdk/ApptentiveInstance;

    move-result-object v0

    invoke-interface {v0}, Lcom/apptentive/android/sdk/ApptentiveInstance;->getApptentiveHttpClient()Lcom/apptentive/android/sdk/comm/ApptentiveHttpClient;

    move-result-object v0

    return-object v0
.end method

.method private handleConversationStateChange(Lcom/apptentive/android/sdk/conversation/Conversation;)V
    .locals 6

    .line 560
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "Conversation state changed: %s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v0, v1, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->d(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 561
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveHelper;->checkConversationQueue()V

    if-eqz p1, :cond_0

    .line 563
    sget-object v0, Lcom/apptentive/android/sdk/conversation/ConversationState;->UNDEFINED:Lcom/apptentive/android/sdk/conversation/ConversationState;

    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/conversation/Conversation;->hasState(Lcom/apptentive/android/sdk/conversation/ConversationState;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/Assert;->assertTrue(Z)V

    if-eqz p1, :cond_3

    .line 565
    sget-object v0, Lcom/apptentive/android/sdk/conversation/ConversationState;->UNDEFINED:Lcom/apptentive/android/sdk/conversation/ConversationState;

    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/conversation/Conversation;->hasState(Lcom/apptentive/android/sdk/conversation/ConversationState;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 567
    invoke-static {}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;->defaultCenter()Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;

    move-result-object v0

    const-string v1, "CONVERSATION_STATE_DID_CHANGE"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "conversation"

    aput-object v5, v3, v4

    aput-object p1, v3, v2

    .line 568
    invoke-virtual {v0, v1, v3}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;->postNotification(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 571
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/conversation/Conversation;->hasActiveState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 572
    iget-boolean v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager;->appIsInForeground:Z

    if-eqz v0, :cond_1

    .line 574
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/conversation/Conversation;->fetchInteractions(Landroid/content/Context;)V

    .line 576
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/conversation/Conversation;->getMessageManager()Lcom/apptentive/android/sdk/module/messagecenter/MessageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager;->attemptToStartMessagePolling()V

    .line 580
    :cond_1
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->fetchAppConfiguration(Lcom/apptentive/android/sdk/conversation/Conversation;)V

    .line 583
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getInstance()Lcom/apptentive/android/sdk/ApptentiveInstance;

    move-result-object v0

    invoke-interface {v0}, Lcom/apptentive/android/sdk/ApptentiveInstance;->getGlobalSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "pushProvider"

    const/4 v2, -0x1

    .line 584
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v3, "pushToken"

    const/4 v4, 0x0

    .line 585
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eq v1, v2, :cond_2

    if-eqz v0, :cond_2

    .line 587
    invoke-virtual {p1, v1, v0}, Lcom/apptentive/android/sdk/conversation/Conversation;->setPushIntegration(ILjava/lang/String;)V

    .line 591
    :cond_2
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->updateMetadataItems(Lcom/apptentive/android/sdk/conversation/Conversation;)V

    .line 592
    sget-object p1, Lcom/apptentive/android/sdk/ApptentiveLog$Level;->VERBOSE:Lcom/apptentive/android/sdk/ApptentiveLog$Level;

    invoke-static {p1}, Lcom/apptentive/android/sdk/ApptentiveLog;->canLog(Lcom/apptentive/android/sdk/ApptentiveLog$Level;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 593
    iget-object p1, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager;->conversationMetadata:Lcom/apptentive/android/sdk/conversation/ConversationMetadata;

    const-string v0, "Updated Metadata"

    invoke-direct {p0, p1, v0}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->printMetadata(Lcom/apptentive/android/sdk/conversation/ConversationMetadata;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private loadActiveConversationGuarded()Lcom/apptentive/android/sdk/conversation/Conversation;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apptentive/android/sdk/conversation/ConversationLoadException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 207
    :try_start_0
    iget-object v1, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager;->conversationMetadata:Lcom/apptentive/android/sdk/conversation/ConversationMetadata;

    invoke-virtual {v1}, Lcom/apptentive/android/sdk/conversation/ConversationMetadata;->hasItems()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager;->conversationMetadata:Lcom/apptentive/android/sdk/conversation/ConversationMetadata;

    invoke-direct {p0, v1}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->loadConversationFromMetadata(Lcom/apptentive/android/sdk/conversation/ConversationMetadata;)Lcom/apptentive/android/sdk/conversation/Conversation;

    move-result-object v1

    return-object v1

    .line 212
    :cond_0
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->migrateLegacyConversation(Landroid/content/Context;)Lcom/apptentive/android/sdk/conversation/Conversation;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    return-object v1

    .line 224
    :cond_1
    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v2, "Creating \'anonymous\' conversation..."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/apptentive/android/sdk/ApptentiveLog;->i(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->generateConversationDataFilename()Ljava/io/File;

    move-result-object v0

    .line 226
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->generateMessagesFilename()Ljava/io/File;

    move-result-object v1

    .line 227
    new-instance v2, Lcom/apptentive/android/sdk/conversation/Conversation;

    iget-object v3, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager;->encryption:Lcom/apptentive/android/sdk/Encryption;

    const/4 v4, 0x0

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/apptentive/android/sdk/conversation/Conversation;-><init>(Ljava/io/File;Ljava/io/File;Lcom/apptentive/android/sdk/Encryption;Ljava/lang/String;)V

    .line 228
    sget-object v0, Lcom/apptentive/android/sdk/conversation/ConversationState;->ANONYMOUS_PENDING:Lcom/apptentive/android/sdk/conversation/ConversationState;

    invoke-virtual {v2, v0}, Lcom/apptentive/android/sdk/conversation/Conversation;->setState(Lcom/apptentive/android/sdk/conversation/ConversationState;)V

    .line 229
    invoke-direct {p0, v2}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->fetchConversationToken(Lcom/apptentive/android/sdk/conversation/Conversation;)Lcom/apptentive/android/sdk/network/HttpRequest;

    return-object v2

    :catch_0
    move-exception v1

    .line 217
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Exception while loading conversation"

    invoke-static {v1, v2, v0}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    invoke-static {v1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    .line 220
    new-instance v0, Lcom/apptentive/android/sdk/conversation/ConversationLoadException;

    const-string v2, "Unable to load conversation"

    invoke-direct {v0, v2, v1}, Lcom/apptentive/android/sdk/conversation/ConversationLoadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private loadConversation(Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;)Lcom/apptentive/android/sdk/conversation/Conversation;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apptentive/android/sdk/storage/SerializerException;,
            Lcom/apptentive/android/sdk/conversation/ConversationLoadException;
        }
    .end annotation

    .line 397
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveHelper;->checkConversationQueue()V

    .line 400
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager;->encryption:Lcom/apptentive/android/sdk/Encryption;

    .line 402
    sget-object v1, Lcom/apptentive/android/sdk/conversation/ConversationState;->LOGGED_IN:Lcom/apptentive/android/sdk/conversation/ConversationState;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->getConversationState()Lcom/apptentive/android/sdk/conversation/ConversationState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/apptentive/android/sdk/conversation/ConversationState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 403
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->getConversationEncryptionKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 407
    invoke-direct {p0, v0}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->createPayloadEncryption(Ljava/lang/String;)Lcom/apptentive/android/sdk/Encryption;

    move-result-object v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_0

    .line 405
    :cond_0
    new-instance p1, Lcom/apptentive/android/sdk/conversation/ConversationLoadException;

    const-string v0, "Missing conversation encryption key"

    invoke-direct {p1, v0}, Lcom/apptentive/android/sdk/conversation/ConversationLoadException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v1, 0x0

    .line 411
    :goto_0
    new-instance v2, Lcom/apptentive/android/sdk/conversation/Conversation;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->getDataFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->getMessagesFile()Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/apptentive/android/sdk/conversation/Conversation;-><init>(Ljava/io/File;Ljava/io/File;Lcom/apptentive/android/sdk/Encryption;Ljava/lang/String;)V

    .line 412
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->getConversationState()Lcom/apptentive/android/sdk/conversation/ConversationState;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/apptentive/android/sdk/conversation/Conversation;->setState(Lcom/apptentive/android/sdk/conversation/ConversationState;)V

    .line 413
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/apptentive/android/sdk/conversation/Conversation;->setUserId(Ljava/lang/String;)V

    .line 414
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->getConversationToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/apptentive/android/sdk/conversation/Conversation;->setConversationToken(Ljava/lang/String;)V

    .line 417
    invoke-virtual {v2}, Lcom/apptentive/android/sdk/conversation/Conversation;->migrateConversationData()Z

    move-result p1

    if-nez p1, :cond_2

    .line 421
    invoke-virtual {v2}, Lcom/apptentive/android/sdk/conversation/Conversation;->loadConversationData()V

    .line 425
    :cond_2
    invoke-virtual {v2}, Lcom/apptentive/android/sdk/conversation/Conversation;->checkInternalConsistency()V

    return-object v2
.end method

.method private loadConversationFromMetadata(Lcom/apptentive/android/sdk/conversation/ConversationMetadata;)Lcom/apptentive/android/sdk/conversation/Conversation;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apptentive/android/sdk/storage/SerializerException;,
            Lcom/apptentive/android/sdk/conversation/ConversationLoadException;
        }
    .end annotation

    .line 243
    sget-object v0, Lcom/apptentive/android/sdk/conversation/ConversationState;->LOGGED_IN:Lcom/apptentive/android/sdk/conversation/ConversationState;

    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/conversation/ConversationMetadata;->findItem(Lcom/apptentive/android/sdk/conversation/ConversationState;)Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 245
    sget-object p1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v2, "Loading \'logged-in\' conversation..."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v2, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->i(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    invoke-direct {p0, v0}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->loadConversation(Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;)Lcom/apptentive/android/sdk/conversation/Conversation;

    move-result-object p1

    return-object p1

    .line 250
    :cond_0
    sget-object v0, Lcom/apptentive/android/sdk/conversation/ConversationState;->ANONYMOUS:Lcom/apptentive/android/sdk/conversation/ConversationState;

    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/conversation/ConversationMetadata;->findItem(Lcom/apptentive/android/sdk/conversation/ConversationState;)Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 252
    sget-object p1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v2, "Loading \'anonymous\' conversation..."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v2, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->i(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    invoke-direct {p0, v0}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->loadConversation(Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;)Lcom/apptentive/android/sdk/conversation/Conversation;

    move-result-object p1

    return-object p1

    .line 257
    :cond_1
    sget-object v0, Lcom/apptentive/android/sdk/conversation/ConversationState;->ANONYMOUS_PENDING:Lcom/apptentive/android/sdk/conversation/ConversationState;

    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/conversation/ConversationMetadata;->findItem(Lcom/apptentive/android/sdk/conversation/ConversationState;)Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 259
    sget-object p1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v2, "Loading \'anonymous pending\' conversation..."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v2, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->i(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    invoke-direct {p0, v0}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->loadConversation(Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;)Lcom/apptentive/android/sdk/conversation/Conversation;

    move-result-object p1

    .line 261
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->fetchConversationToken(Lcom/apptentive/android/sdk/conversation/Conversation;)Lcom/apptentive/android/sdk/network/HttpRequest;

    return-object p1

    .line 266
    :cond_2
    sget-object v0, Lcom/apptentive/android/sdk/conversation/ConversationState;->LEGACY_PENDING:Lcom/apptentive/android/sdk/conversation/ConversationState;

    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/conversation/ConversationMetadata;->findItem(Lcom/apptentive/android/sdk/conversation/ConversationState;)Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 268
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v2, "Loading \'legacy pending\' conversation..."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->i(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->loadConversation(Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;)Lcom/apptentive/android/sdk/conversation/Conversation;

    move-result-object p1

    .line 270
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->fetchLegacyConversation(Lcom/apptentive/android/sdk/conversation/Conversation;)Lcom/apptentive/android/sdk/network/HttpRequest;

    return-object p1

    .line 275
    :cond_3
    sget-object p1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v0, "No active conversations to load: only \'logged-out\' conversations available"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->i(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private migrateLegacyConversation(Landroid/content/Context;)Lcom/apptentive/android/sdk/conversation/Conversation;
    .locals 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 284
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getInstance()Lcom/apptentive/android/sdk/ApptentiveInstance;

    move-result-object v0

    invoke-interface {v0}, Lcom/apptentive/android/sdk/ApptentiveInstance;->getGlobalSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "conversationToken"

    const/4 v2, 0x0

    .line 285
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 286
    invoke-static {v1}, Lcom/apptentive/android/sdk/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    .line 290
    :cond_0
    sget-object v3, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v4, "Migrating an existing legacy conversation to the new format..."

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v6}, Lcom/apptentive/android/sdk/ApptentiveLog;->i(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "conversationToken"

    .line 294
    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "pollForInteractions"

    .line 295
    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 296
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v3, "lastSeenSdkVersion"

    .line 298
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 299
    new-instance v4, Lcom/apptentive/android/sdk/Apptentive$Version;

    invoke-direct {v4}, Lcom/apptentive/android/sdk/Apptentive$Version;-><init>()V

    const-string v6, "4.0.0"

    .line 300
    invoke-virtual {v4, v6}, Lcom/apptentive/android/sdk/Apptentive$Version;->setVersion(Ljava/lang/String;)V

    .line 301
    new-instance v6, Lcom/apptentive/android/sdk/Apptentive$Version;

    invoke-direct {v6}, Lcom/apptentive/android/sdk/Apptentive$Version;-><init>()V

    .line 302
    invoke-virtual {v6, v3}, Lcom/apptentive/android/sdk/Apptentive$Version;->setVersion(Ljava/lang/String;)V

    if-eqz v3, :cond_1

    .line 303
    invoke-virtual {v6, v4}, Lcom/apptentive/android/sdk/Apptentive$Version;->compareTo(Lcom/apptentive/android/sdk/Apptentive$Version;)I

    move-result v3

    if-gez v3, :cond_1

    .line 304
    sget-object v3, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v4, "Creating \'legacy\' conversation..."

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v6}, Lcom/apptentive/android/sdk/ApptentiveLog;->i(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 306
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->generateConversationDataFilename()Ljava/io/File;

    move-result-object v3

    .line 307
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->generateMessagesFilename()Ljava/io/File;

    move-result-object v4

    .line 308
    new-instance v6, Lcom/apptentive/android/sdk/conversation/Conversation;

    iget-object v7, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager;->encryption:Lcom/apptentive/android/sdk/Encryption;

    invoke-direct {v6, v3, v4, v7, v2}, Lcom/apptentive/android/sdk/conversation/Conversation;-><init>(Ljava/io/File;Ljava/io/File;Lcom/apptentive/android/sdk/Encryption;Ljava/lang/String;)V

    .line 309
    sget-object v2, Lcom/apptentive/android/sdk/conversation/ConversationState;->LEGACY_PENDING:Lcom/apptentive/android/sdk/conversation/ConversationState;

    invoke-virtual {v6, v2}, Lcom/apptentive/android/sdk/conversation/Conversation;->setState(Lcom/apptentive/android/sdk/conversation/ConversationState;)V

    .line 310
    invoke-virtual {v6, v1}, Lcom/apptentive/android/sdk/conversation/Conversation;->setConversationToken(Ljava/lang/String;)V

    .line 313
    new-instance v1, Lcom/apptentive/android/sdk/migration/Migrator;

    invoke-direct {v1, p1, v0, v6}, Lcom/apptentive/android/sdk/migration/Migrator;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/apptentive/android/sdk/conversation/Conversation;)V

    .line 314
    invoke-virtual {v1}, Lcom/apptentive/android/sdk/migration/Migrator;->migrate()V

    .line 316
    sget-object p1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v0, "Fetching legacy conversation..."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 317
    invoke-direct {p0, v6}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->fetchLegacyConversation(Lcom/apptentive/android/sdk/conversation/Conversation;)Lcom/apptentive/android/sdk/network/HttpRequest;

    return-object v6

    :cond_1
    return-object v2
.end method

.method private notifyFetchFinished(Lcom/apptentive/android/sdk/conversation/Conversation;Z)V
    .locals 5

    .line 549
    invoke-static {}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;->defaultCenter()Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;

    move-result-object v0

    const-string v1, "CONVERSATION_TOKEN_DID_FETCH"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "conversation"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string/jumbo p1, "successful"

    const/4 v3, 0x2

    aput-object p1, v2, v3

    if-eqz p2, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    const/4 p2, 0x3

    aput-object p1, v2, p2

    .line 550
    invoke-virtual {v0, v1, v2}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;->postNotification(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private notifyFetchStarted(Lcom/apptentive/android/sdk/conversation/Conversation;)V
    .locals 5

    .line 543
    invoke-static {}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;->defaultCenter()Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;

    move-result-object v0

    const-string v1, "CONVERSATION_TOKEN_WILL_FETCH"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "conversation"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 544
    invoke-virtual {v0, v1, v2}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;->postNotification(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private printMetadata(Lcom/apptentive/android/sdk/conversation/ConversationMetadata;Ljava/lang/String;)V
    .locals 18

    .line 1123
    invoke-virtual/range {p1 .. p1}, Lcom/apptentive/android/sdk/conversation/ConversationMetadata;->getItems()Ljava/util/List;

    move-result-object v1

    .line 1124
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    .line 1125
    sget-object v2, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v6, "%s (%d item(s))"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v6, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1129
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v5

    new-array v2, v2, [[Ljava/lang/Object;

    const/16 v6, 0x8

    .line 1130
    new-array v7, v6, [Ljava/lang/Object;

    const-string/jumbo v8, "state"

    aput-object v8, v7, v4

    const-string v8, "localId"

    aput-object v8, v7, v5

    const-string v8, "conversationId"

    aput-object v8, v7, v3

    const-string/jumbo v8, "userId"

    const/4 v9, 0x3

    aput-object v8, v7, v9

    const-string v8, "dataFile"

    const/4 v10, 0x4

    aput-object v8, v7, v10

    const-string v8, "messagesFile"

    const/4 v11, 0x5

    aput-object v8, v7, v11

    const-string v8, "conversationToken"

    const/4 v12, 0x6

    aput-object v8, v7, v12

    const-string v8, "payloadEncryptionKey"

    const/4 v13, 0x7

    aput-object v8, v7, v13

    aput-object v7, v2, v4

    .line 1141
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x1

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;

    add-int/lit8 v15, v8, 0x1

    .line 1142
    new-array v13, v6, [Ljava/lang/Object;

    .line 1143
    invoke-virtual {v14}, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->getConversationState()Lcom/apptentive/android/sdk/conversation/ConversationState;

    move-result-object v17

    aput-object v17, v13, v4

    .line 1144
    invoke-virtual {v14}, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->getLocalConversationId()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v13, v5

    .line 1145
    invoke-virtual {v14}, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->getConversationId()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v13, v3

    .line 1146
    invoke-virtual {v14}, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->getUserId()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v13, v9

    .line 1147
    invoke-virtual {v14}, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->getDataFile()Ljava/io/File;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/apptentive/android/sdk/ApptentiveLog;->hideIfSanitized(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    aput-object v17, v13, v10

    .line 1148
    invoke-virtual {v14}, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->getMessagesFile()Ljava/io/File;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/apptentive/android/sdk/ApptentiveLog;->hideIfSanitized(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    aput-object v17, v13, v11

    .line 1149
    invoke-virtual {v14}, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->getConversationToken()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/apptentive/android/sdk/ApptentiveLog;->hideIfSanitized(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    aput-object v17, v13, v12

    .line 1150
    invoke-virtual {v14}, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->getConversationEncryptionKey()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/apptentive/android/sdk/ApptentiveLog;->hideIfSanitized(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    const/16 v16, 0x7

    aput-object v14, v13, v16

    aput-object v13, v2, v8

    move v8, v15

    const/4 v13, 0x7

    goto :goto_0

    .line 1154
    :cond_1
    sget-object v6, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v7, "%s (%d item(s))\n%s"

    new-array v8, v9, [Ljava/lang/Object;

    aput-object p2, v8, v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v5

    invoke-static {v2}, Lcom/apptentive/android/sdk/util/StringUtils;->table([[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v3

    invoke-static {v6, v7, v8}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private requestLoggedInConversation(Ljava/lang/String;Lcom/apptentive/android/sdk/Apptentive$LoginCallback;)V
    .locals 6

    .line 789
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveHelper;->checkConversationQueue()V

    if-eqz p2, :cond_7

    const/4 v0, 0x0

    .line 797
    :try_start_0
    invoke-static {p1}, Lcom/apptentive/android/sdk/util/Jwt;->decode(Ljava/lang/String;)Lcom/apptentive/android/sdk/util/Jwt;

    move-result-object v1

    .line 798
    invoke-virtual {v1}, Lcom/apptentive/android/sdk/util/Jwt;->getPayload()Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "sub"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 799
    invoke-static {v1}, Lcom/apptentive/android/sdk/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 800
    sget-object p1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "Error while extracting user id: Missing field \"sub\""

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, "Error while extracting user id: Missing field \"sub\""

    .line 801
    invoke-interface {p2, p1}, Lcom/apptentive/android/sdk/Apptentive$LoginCallback;->onLoginFail(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 814
    :cond_0
    iget-boolean v2, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager;->activeConversationFailedToResolve:Z

    if-eqz v2, :cond_1

    .line 815
    sget-object p1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "Unable to login: active conversation was not loaded"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, "Unable to login: active conversation was not loaded"

    .line 816
    invoke-interface {p2, p1}, Lcom/apptentive/android/sdk/Apptentive$LoginCallback;->onLoginFail(Ljava/lang/String;)V

    return-void

    .line 821
    :cond_1
    iget-object v2, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager;->activeConversation:Lcom/apptentive/android/sdk/conversation/Conversation;

    const/4 v3, 0x1

    if-nez v2, :cond_3

    .line 822
    sget-object v2, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v4, "No active conversation. Performing login..."

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/apptentive/android/sdk/ApptentiveLog;->d(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 825
    iget-object v2, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager;->conversationMetadata:Lcom/apptentive/android/sdk/conversation/ConversationMetadata;

    new-instance v4, Lcom/apptentive/android/sdk/conversation/ConversationManager$7;

    invoke-direct {v4, p0, v1}, Lcom/apptentive/android/sdk/conversation/ConversationManager$7;-><init>(Lcom/apptentive/android/sdk/conversation/ConversationManager;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/apptentive/android/sdk/conversation/ConversationMetadata;->findItem(Lcom/apptentive/android/sdk/conversation/ConversationMetadata$Filter;)Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;

    move-result-object v2

    if-nez v2, :cond_2

    .line 833
    sget-object v2, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v4, "No conversation found matching user: \'%s\'. Logging in as new user."

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v0

    invoke-static {v2, v4, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->w(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 834
    invoke-direct {p0, v1, p1, p2}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->sendFirstLoginRequest(Ljava/lang/String;Ljava/lang/String;Lcom/apptentive/android/sdk/Apptentive$LoginCallback;)V

    return-void

    .line 838
    :cond_2
    invoke-virtual {v2}, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->sendLoginRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/apptentive/android/sdk/Apptentive$LoginCallback;)V

    return-void

    .line 842
    :cond_3
    sget-object v2, Lcom/apptentive/android/sdk/conversation/ConversationManager$11;->$SwitchMap$com$apptentive$android$sdk$conversation$ConversationState:[I

    iget-object v4, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager;->activeConversation:Lcom/apptentive/android/sdk/conversation/Conversation;

    invoke-virtual {v4}, Lcom/apptentive/android/sdk/conversation/Conversation;->getState()Lcom/apptentive/android/sdk/conversation/ConversationState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/apptentive/android/sdk/conversation/ConversationState;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    .line 897
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected conversation state: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager;->activeConversation:Lcom/apptentive/android/sdk/conversation/Conversation;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getState()Lcom/apptentive/android/sdk/conversation/ConversationState;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/apptentive/android/sdk/debug/Assert;->assertFail(Ljava/lang/String;)V

    const-string p1, "internal error"

    .line 898
    invoke-interface {p2, p1}, Lcom/apptentive/android/sdk/Apptentive$LoginCallback;->onLoginFail(Ljava/lang/String;)V

    goto :goto_1

    .line 888
    :pswitch_0
    iget-object v2, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager;->activeConversation:Lcom/apptentive/android/sdk/conversation/Conversation;

    invoke-virtual {v2}, Lcom/apptentive/android/sdk/conversation/Conversation;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/apptentive/android/sdk/util/StringUtils;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 889
    sget-object v2, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v4, "Refreshing auth token for logged in user: \"%s\""

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v0

    invoke-static {v2, v4, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->w(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 890
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager;->activeConversation:Lcom/apptentive/android/sdk/conversation/Conversation;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->sendLoginRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/apptentive/android/sdk/Apptentive$LoginCallback;)V

    return-void

    :cond_4
    const-string p1, "Already logged in. You must log out first."

    .line 894
    invoke-interface {p2, p1}, Lcom/apptentive/android/sdk/Apptentive$LoginCallback;->onLoginFail(Ljava/lang/String;)V

    goto :goto_1

    .line 885
    :pswitch_1
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager;->activeConversation:Lcom/apptentive/android/sdk/conversation/Conversation;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->sendLoginRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/apptentive/android/sdk/Apptentive$LoginCallback;)V

    goto :goto_1

    .line 846
    :pswitch_2
    iget-object v2, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager;->activeConversation:Lcom/apptentive/android/sdk/conversation/Conversation;

    sget-object v3, Lcom/apptentive/android/sdk/conversation/ConversationState;->ANONYMOUS_PENDING:Lcom/apptentive/android/sdk/conversation/ConversationState;

    invoke-virtual {v2, v3}, Lcom/apptentive/android/sdk/conversation/Conversation;->hasState(Lcom/apptentive/android/sdk/conversation/ConversationState;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager;->activeConversation:Lcom/apptentive/android/sdk/conversation/Conversation;

    .line 847
    invoke-direct {p0, v2}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->fetchConversationToken(Lcom/apptentive/android/sdk/conversation/Conversation;)Lcom/apptentive/android/sdk/network/HttpRequest;

    move-result-object v2

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager;->activeConversation:Lcom/apptentive/android/sdk/conversation/Conversation;

    .line 848
    invoke-direct {p0, v2}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->fetchLegacyConversation(Lcom/apptentive/android/sdk/conversation/Conversation;)Lcom/apptentive/android/sdk/network/HttpRequest;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_6

    .line 850
    sget-object p1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "Unable to login: fetch request failed to send"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, "fetch request failed to send"

    .line 851
    invoke-interface {p2, p1}, Lcom/apptentive/android/sdk/Apptentive$LoginCallback;->onLoginFail(Ljava/lang/String;)V

    return-void

    .line 856
    :cond_6
    new-instance v0, Lcom/apptentive/android/sdk/conversation/ConversationManager$8;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/apptentive/android/sdk/conversation/ConversationManager$8;-><init>(Lcom/apptentive/android/sdk/conversation/ConversationManager;Ljava/lang/String;Ljava/lang/String;Lcom/apptentive/android/sdk/Apptentive$LoginCallback;)V

    invoke-virtual {v2, v0}, Lcom/apptentive/android/sdk/network/HttpRequest;->addListener(Lcom/apptentive/android/sdk/network/HttpRequest$Listener;)V

    :goto_1
    return-void

    :catch_0
    move-exception p1

    .line 806
    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v2, "Exception while extracting user id"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, v2, v0}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 807
    invoke-static {p1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    const-string p1, "Exception while extracting user id"

    .line 809
    invoke-interface {p2, p1}, Lcom/apptentive/android/sdk/Apptentive$LoginCallback;->onLoginFail(Ljava/lang/String;)V

    return-void

    .line 792
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Callback is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private resolveMetadata()Lcom/apptentive/android/sdk/conversation/ConversationMetadata;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apptentive/android/sdk/conversation/ConversationMetadataLoadException;
        }
    .end annotation

    .line 719
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveHelper;->checkConversationQueue()V

    const/4 v0, 0x0

    .line 723
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager;->conversationsStorageDir:Ljava/io/File;

    const-string v3, "conversation-v2.meta"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 724
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 725
    sget-object v2, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v4, "Loading metadata file: %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v0

    invoke-static {v2, v4, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 726
    const-class v2, Lcom/apptentive/android/sdk/conversation/ConversationMetadata;

    iget-object v3, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager;->encryption:Lcom/apptentive/android/sdk/Encryption;

    invoke-static {v1, v2, v3}, Lcom/apptentive/android/sdk/serialization/ObjectSerialization;->deserialize(Ljava/io/File;Ljava/lang/Class;Lcom/apptentive/android/sdk/Encryption;)Lcom/apptentive/android/sdk/serialization/SerializableObject;

    move-result-object v1

    check-cast v1, Lcom/apptentive/android/sdk/conversation/ConversationMetadata;

    return-object v1

    .line 730
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager;->conversationsStorageDir:Ljava/io/File;

    const-string v4, "conversation-v1.meta"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 731
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 732
    sget-object v2, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v4, "Loading legacy v1 metadata file: %s"

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v1, v5, v0

    invoke-static {v2, v4, v5}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 734
    :try_start_1
    const-class v2, Lcom/apptentive/android/sdk/conversation/ConversationMetadata;

    invoke-static {v1, v2}, Lcom/apptentive/android/sdk/serialization/ObjectSerialization;->deserialize(Ljava/io/File;Ljava/lang/Class;)Lcom/apptentive/android/sdk/serialization/SerializableObject;

    move-result-object v2

    check-cast v2, Lcom/apptentive/android/sdk/conversation/ConversationMetadata;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 737
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    .line 738
    sget-object v4, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v5, "Legacy metadata file deleted: %b"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v4, v5, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :catchall_0
    move-exception v2

    .line 737
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    .line 738
    sget-object v4, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v5, "Legacy metadata file deleted: %b"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v4, v5, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 739
    throw v2

    .line 742
    :cond_1
    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v2, "No metadata files"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 750
    new-instance v0, Lcom/apptentive/android/sdk/conversation/ConversationMetadata;

    invoke-direct {v0}, Lcom/apptentive/android/sdk/conversation/ConversationMetadata;-><init>()V

    return-object v0

    :catch_0
    move-exception v1

    .line 744
    sget-object v2, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "Exception while loading conversation metadata"

    invoke-static {v2, v1, v3, v0}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 745
    invoke-static {v1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    .line 747
    new-instance v0, Lcom/apptentive/android/sdk/conversation/ConversationMetadataLoadException;

    const-string v2, "Unable to load metadata"

    invoke-direct {v0, v2, v1}, Lcom/apptentive/android/sdk/conversation/ConversationMetadataLoadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private saveMetadata()V
    .locals 9

    .line 754
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveHelper;->checkConversationQueue()V

    const/4 v0, 0x0

    .line 757
    :try_start_0
    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLog$Level;->VERBOSE:Lcom/apptentive/android/sdk/ApptentiveLog$Level;

    invoke-static {v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->canLog(Lcom/apptentive/android/sdk/ApptentiveLog$Level;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 758
    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v3, "Saving metadata: "

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager;->conversationMetadata:Lcom/apptentive/android/sdk/conversation/ConversationMetadata;

    invoke-virtual {v5}, Lcom/apptentive/android/sdk/conversation/ConversationMetadata;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v1, v3, v4}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 760
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 761
    new-instance v1, Ljava/io/File;

    iget-object v5, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager;->conversationsStorageDir:Ljava/io/File;

    const-string v6, "conversation-v2.meta"

    invoke-direct {v1, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 762
    iget-object v5, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager;->conversationMetadata:Lcom/apptentive/android/sdk/conversation/ConversationMetadata;

    iget-object v6, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager;->encryption:Lcom/apptentive/android/sdk/Encryption;

    invoke-static {v1, v5, v6}, Lcom/apptentive/android/sdk/serialization/ObjectSerialization;->serialize(Ljava/io/File;Lcom/apptentive/android/sdk/serialization/SerializableObject;Lcom/apptentive/android/sdk/Encryption;)V

    .line 763
    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v5, "Saved metadata (took %d ms)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v8, 0x0

    sub-long/2addr v6, v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v5, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 765
    sget-object v2, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v3, "Exception while saving metadata"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v0}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 766
    invoke-static {v1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private sendFirstLoginRequest(Ljava/lang/String;Ljava/lang/String;Lcom/apptentive/android/sdk/Apptentive$LoginCallback;)V
    .locals 13

    .line 997
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveHelper;->checkConversationQueue()V

    .line 999
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getInstance()Lcom/apptentive/android/sdk/ApptentiveInstance;

    move-result-object v0

    invoke-interface {v0}, Lcom/apptentive/android/sdk/ApptentiveInstance;->getAppRelease()Lcom/apptentive/android/sdk/storage/AppRelease;

    move-result-object v0

    .line 1000
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/apptentive/android/sdk/storage/SdkManager;->generateCurrentSdk(Landroid/content/Context;)Lcom/apptentive/android/sdk/storage/Sdk;

    move-result-object v9

    .line 1001
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/apptentive/android/sdk/storage/DeviceManager;->generateNewDevice(Landroid/content/Context;)Lcom/apptentive/android/sdk/storage/Device;

    move-result-object v10

    .line 1003
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->getHttpClient()Lcom/apptentive/android/sdk/comm/ApptentiveHttpClient;

    move-result-object v11

    new-instance v12, Lcom/apptentive/android/sdk/conversation/ConversationManager$10;

    move-object v1, v12

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v0

    move-object v6, v9

    move-object v7, v10

    move-object/from16 v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/apptentive/android/sdk/conversation/ConversationManager$10;-><init>(Lcom/apptentive/android/sdk/conversation/ConversationManager;Ljava/lang/String;Ljava/lang/String;Lcom/apptentive/android/sdk/storage/AppRelease;Lcom/apptentive/android/sdk/storage/Sdk;Lcom/apptentive/android/sdk/storage/Device;Lcom/apptentive/android/sdk/Apptentive$LoginCallback;)V

    move-object v1, v11

    move-object v2, p2

    move-object v3, v0

    move-object v4, v9

    move-object v5, v10

    move-object v6, v12

    invoke-virtual/range {v1 .. v6}, Lcom/apptentive/android/sdk/comm/ApptentiveHttpClient;->createFirstLoginRequest(Ljava/lang/String;Lcom/apptentive/android/sdk/storage/AppRelease;Lcom/apptentive/android/sdk/storage/Sdk;Lcom/apptentive/android/sdk/storage/Device;Lcom/apptentive/android/sdk/network/HttpRequest$Listener;)Lcom/apptentive/android/sdk/network/HttpJsonRequest;

    move-result-object v0

    .line 1089
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveHelper;->conversationQueue()Lcom/apptentive/android/sdk/util/threading/DispatchQueue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/network/HttpJsonRequest;->setCallbackQueue(Lcom/apptentive/android/sdk/util/threading/DispatchQueue;)V

    .line 1090
    invoke-virtual {v0}, Lcom/apptentive/android/sdk/network/HttpJsonRequest;->start()V

    return-void
.end method

.method private sendLoginRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/apptentive/android/sdk/Apptentive$LoginCallback;)V
    .locals 2

    .line 904
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->getHttpClient()Lcom/apptentive/android/sdk/comm/ApptentiveHttpClient;

    move-result-object v0

    new-instance v1, Lcom/apptentive/android/sdk/conversation/ConversationManager$9;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/apptentive/android/sdk/conversation/ConversationManager$9;-><init>(Lcom/apptentive/android/sdk/conversation/ConversationManager;Ljava/lang/String;Ljava/lang/String;Lcom/apptentive/android/sdk/Apptentive$LoginCallback;)V

    invoke-virtual {v0, p1, p3, v1}, Lcom/apptentive/android/sdk/comm/ApptentiveHttpClient;->createLoginRequest(Ljava/lang/String;Ljava/lang/String;Lcom/apptentive/android/sdk/network/HttpRequest$Listener;)Lcom/apptentive/android/sdk/network/HttpJsonRequest;

    move-result-object p1

    .line 992
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveHelper;->conversationQueue()Lcom/apptentive/android/sdk/util/threading/DispatchQueue;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/apptentive/android/sdk/network/HttpJsonRequest;->setCallbackQueue(Lcom/apptentive/android/sdk/util/threading/DispatchQueue;)V

    .line 993
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/network/HttpJsonRequest;->start()V

    return-void
.end method

.method private setActiveConversation(Lcom/apptentive/android/sdk/conversation/Conversation;)V
    .locals 1
    .param p1    # Lcom/apptentive/android/sdk/conversation/Conversation;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1189
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveHelper;->checkConversationQueue()V

    .line 1190
    iput-object p1, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager;->activeConversation:Lcom/apptentive/android/sdk/conversation/Conversation;

    if-eqz p1, :cond_0

    .line 1191
    new-instance v0, Lcom/apptentive/android/sdk/conversation/ConversationProxy;

    invoke-direct {v0, p1}, Lcom/apptentive/android/sdk/conversation/ConversationProxy;-><init>(Lcom/apptentive/android/sdk/conversation/Conversation;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager;->activeConversationProxy:Lcom/apptentive/android/sdk/conversation/ConversationProxy;

    return-void
.end method

.method private updateMetadataItems(Lcom/apptentive/android/sdk/conversation/Conversation;)V
    .locals 6

    .line 671
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveHelper;->checkConversationQueue()V

    .line 673
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "Updating metadata: %s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v0, v1, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 676
    sget-object v0, Lcom/apptentive/android/sdk/conversation/ConversationState;->LOGGED_IN:Lcom/apptentive/android/sdk/conversation/ConversationState;

    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/conversation/Conversation;->hasState(Lcom/apptentive/android/sdk/conversation/ConversationState;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 677
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager;->conversationMetadata:Lcom/apptentive/android/sdk/conversation/ConversationMetadata;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/conversation/ConversationMetadata;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;

    .line 678
    sget-object v3, Lcom/apptentive/android/sdk/conversation/ConversationState;->LOGGED_IN:Lcom/apptentive/android/sdk/conversation/ConversationState;

    invoke-virtual {v1}, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->getConversationState()Lcom/apptentive/android/sdk/conversation/ConversationState;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/apptentive/android/sdk/conversation/ConversationState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 679
    sget-object v3, Lcom/apptentive/android/sdk/conversation/ConversationState;->LOGGED_OUT:Lcom/apptentive/android/sdk/conversation/ConversationState;

    invoke-virtual {v1, v3}, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->setConversationState(Lcom/apptentive/android/sdk/conversation/ConversationState;)V

    goto :goto_0

    .line 685
    :cond_1
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager;->conversationMetadata:Lcom/apptentive/android/sdk/conversation/ConversationMetadata;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/conversation/ConversationMetadata;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;

    const/4 v3, 0x0

    .line 686
    invoke-virtual {v1, v3}, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->setConversationEncryptionKey(Ljava/lang/String;)V

    .line 687
    invoke-virtual {v1, v3}, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->setConversationToken(Ljava/lang/String;)V

    goto :goto_1

    .line 691
    :cond_2
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager;->conversationMetadata:Lcom/apptentive/android/sdk/conversation/ConversationMetadata;

    invoke-virtual {v0, p1}, Lcom/apptentive/android/sdk/conversation/ConversationMetadata;->findItem(Lcom/apptentive/android/sdk/conversation/Conversation;)Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;

    move-result-object v0

    if-nez v0, :cond_3

    .line 693
    new-instance v0, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/conversation/Conversation;->getLocalIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/conversation/Conversation;->getConversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/conversation/Conversation;->getConversationDataFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/conversation/Conversation;->getConversationMessagesFile()Ljava/io/File;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;)V

    .line 694
    iget-object v1, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager;->conversationMetadata:Lcom/apptentive/android/sdk/conversation/ConversationMetadata;

    invoke-virtual {v1, v0}, Lcom/apptentive/android/sdk/conversation/ConversationMetadata;->addItem(Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;)V

    goto :goto_4

    .line 696
    :cond_3
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/conversation/Conversation;->getConversationId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/apptentive/android/sdk/conversation/ConversationState;->ANONYMOUS_PENDING:Lcom/apptentive/android/sdk/conversation/ConversationState;

    invoke-virtual {p1, v1}, Lcom/apptentive/android/sdk/conversation/Conversation;->hasState(Lcom/apptentive/android/sdk/conversation/ConversationState;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/apptentive/android/sdk/conversation/ConversationState;->LEGACY_PENDING:Lcom/apptentive/android/sdk/conversation/ConversationState;

    invoke-virtual {p1, v1}, Lcom/apptentive/android/sdk/conversation/Conversation;->hasState(Lcom/apptentive/android/sdk/conversation/ConversationState;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v1, 0x1

    :goto_3
    const-string v3, "Missing conversation id for state: %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/conversation/Conversation;->getState()Lcom/apptentive/android/sdk/conversation/ConversationState;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v1, v3, v2}, Lcom/apptentive/android/sdk/debug/Assert;->assertTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 697
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/conversation/Conversation;->getConversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->setConversationId(Ljava/lang/String;)V

    .line 700
    :goto_4
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/conversation/Conversation;->getState()Lcom/apptentive/android/sdk/conversation/ConversationState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->setConversationState(Lcom/apptentive/android/sdk/conversation/ConversationState;)V

    .line 701
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/conversation/Conversation;->hasActiveState()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 702
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/conversation/Conversation;->getConversationToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/apptentive/android/sdk/debug/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->setConversationToken(Ljava/lang/String;)V

    .line 705
    :cond_6
    sget-object v1, Lcom/apptentive/android/sdk/conversation/ConversationState;->LOGGED_IN:Lcom/apptentive/android/sdk/conversation/ConversationState;

    invoke-virtual {p1, v1}, Lcom/apptentive/android/sdk/conversation/Conversation;->hasState(Lcom/apptentive/android/sdk/conversation/ConversationState;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 706
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/conversation/Conversation;->getPayloadEncryptionKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/apptentive/android/sdk/debug/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->setConversationEncryptionKey(Ljava/lang/String;)V

    .line 707
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/conversation/Conversation;->getUserId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/apptentive/android/sdk/debug/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->setUserId(Ljava/lang/String;)V

    .line 711
    :cond_7
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->saveMetadata()V

    return-void
.end method


# virtual methods
.method public getActiveConversation()Lcom/apptentive/android/sdk/conversation/Conversation;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1184
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveHelper;->checkConversationQueue()V

    .line 1185
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager;->activeConversation:Lcom/apptentive/android/sdk/conversation/Conversation;

    return-object v0
.end method

.method public declared-synchronized getActiveConversationProxy()Lcom/apptentive/android/sdk/conversation/ConversationProxy;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 1195
    :try_start_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager;->activeConversationProxy:Lcom/apptentive/android/sdk/conversation/ConversationProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getConversationMetadata()Lcom/apptentive/android/sdk/conversation/ConversationMetadata;
    .locals 1

    .line 1199
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveHelper;->checkConversationQueue()V

    .line 1200
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager;->conversationMetadata:Lcom/apptentive/android/sdk/conversation/ConversationMetadata;

    return-object v0
.end method

.method public loadActiveConversation(Landroid/content/Context;)Z
    .locals 7

    .line 159
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveHelper;->checkConversationQueue()V

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 167
    :try_start_0
    sget-object v2, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v3, "Resolving metadata..."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->resolveMetadata()Lcom/apptentive/android/sdk/conversation/ConversationMetadata;

    move-result-object v2

    iput-object v2, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager;->conversationMetadata:Lcom/apptentive/android/sdk/conversation/ConversationMetadata;

    .line 169
    sget-object v2, Lcom/apptentive/android/sdk/ApptentiveLog$Level;->VERBOSE:Lcom/apptentive/android/sdk/ApptentiveLog$Level;

    invoke-static {v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->canLog(Lcom/apptentive/android/sdk/ApptentiveLog$Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    iget-object v2, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager;->conversationMetadata:Lcom/apptentive/android/sdk/conversation/ConversationMetadata;

    const-string v3, "Loaded Metadata"

    invoke-direct {p0, v2, v3}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->printMetadata(Lcom/apptentive/android/sdk/conversation/ConversationMetadata;Ljava/lang/String;)V

    .line 174
    :cond_0
    sget-object v2, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v3, "Loading active conversation..."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->loadActiveConversationGuarded()Lcom/apptentive/android/sdk/conversation/Conversation;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->setActiveConversation(Lcom/apptentive/android/sdk/conversation/Conversation;)V

    .line 177
    iget-object v2, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager;->activeConversation:Lcom/apptentive/android/sdk/conversation/Conversation;

    if-eqz v2, :cond_1

    .line 178
    invoke-static {}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;->defaultCenter()Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;

    move-result-object v2

    const-string v3, "CONVERSATION_LOAD_DID_FINISH"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "conversation"

    aput-object v5, v4, v1

    iget-object v5, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager;->activeConversation:Lcom/apptentive/android/sdk/conversation/Conversation;

    aput-object v5, v4, v0

    const-string/jumbo v5, "successful"

    aput-object v5, v4, p1

    const/4 v5, 0x3

    .line 181
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    .line 179
    invoke-virtual {v2, v3, v4}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;->postNotification(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    iget-object v2, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager;->activeConversation:Lcom/apptentive/android/sdk/conversation/Conversation;

    invoke-virtual {v2}, Lcom/apptentive/android/sdk/conversation/Conversation;->startListeningForChanges()V

    .line 184
    iget-object v2, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager;->activeConversation:Lcom/apptentive/android/sdk/conversation/Conversation;

    invoke-virtual {v2}, Lcom/apptentive/android/sdk/conversation/Conversation;->scheduleSaveConversationData()V

    .line 186
    iget-object v2, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager;->activeConversation:Lcom/apptentive/android/sdk/conversation/Conversation;

    invoke-direct {p0, v2}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->handleConversationStateChange(Lcom/apptentive/android/sdk/conversation/Conversation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v2

    .line 191
    sget-object v3, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v4, "Exception while loading active conversation"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3, v2, v4, v5}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    invoke-static {v2}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    .line 194
    iput-boolean v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager;->activeConversationFailedToResolve:Z

    .line 197
    :cond_1
    invoke-static {}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;->defaultCenter()Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;

    move-result-object v2

    const-string v3, "CONVERSATION_LOAD_DID_FINISH"

    new-array p1, p1, [Ljava/lang/Object;

    const-string/jumbo v4, "successful"

    aput-object v4, p1, v1

    .line 199
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, p1, v0

    .line 198
    invoke-virtual {v2, v3, p1}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;->postNotification(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 162
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Context is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public login(Ljava/lang/String;Lcom/apptentive/android/sdk/Apptentive$LoginCallback;)V
    .locals 0

    if-eqz p2, :cond_0

    goto :goto_0

    .line 785
    :cond_0
    sget-object p2, Lcom/apptentive/android/sdk/conversation/ConversationManager;->NULL_LOGIN_CALLBACK:Lcom/apptentive/android/sdk/Apptentive$LoginCallback;

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->requestLoggedInConversation(Ljava/lang/String;Lcom/apptentive/android/sdk/Apptentive$LoginCallback;)V

    return-void
.end method

.method public logout()V
    .locals 5

    .line 1094
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveHelper;->checkConversationQueue()V

    .line 1095
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager;->activeConversation:Lcom/apptentive/android/sdk/conversation/Conversation;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1096
    sget-object v0, Lcom/apptentive/android/sdk/conversation/ConversationManager$11;->$SwitchMap$com$apptentive$android$sdk$conversation$ConversationState:[I

    iget-object v2, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager;->activeConversation:Lcom/apptentive/android/sdk/conversation/Conversation;

    invoke-virtual {v2}, Lcom/apptentive/android/sdk/conversation/Conversation;->getState()Lcom/apptentive/android/sdk/conversation/ConversationState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/apptentive/android/sdk/conversation/ConversationState;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    .line 1109
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v2, "Attempted to logout() from Conversation, but the Active Conversation was not in LOGGED_IN state."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->w(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1098
    :cond_0
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v2, "Ending active conversation."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->d(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1099
    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager;->activeConversation:Lcom/apptentive/android/sdk/conversation/Conversation;

    const-string v3, "logout"

    invoke-static {v0, v2, v3}, Lcom/apptentive/android/sdk/module/engagement/EngagementModule;->engageInternal(Landroid/content/Context;Lcom/apptentive/android/sdk/conversation/Conversation;Ljava/lang/String;)Z

    .line 1101
    invoke-static {}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;->defaultCenter()Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;

    move-result-object v0

    const-string v2, "CONVERSATION_WILL_LOGOUT"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "conversation"

    aput-object v4, v3, v1

    const/4 v1, 0x1

    iget-object v4, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager;->activeConversation:Lcom/apptentive/android/sdk/conversation/Conversation;

    aput-object v4, v3, v1

    invoke-static {v3}, Lcom/apptentive/android/sdk/util/ObjectUtils;->toMap([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;->postNotification(Ljava/lang/String;Ljava/util/Map;)V

    .line 1102
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager;->activeConversation:Lcom/apptentive/android/sdk/conversation/Conversation;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/conversation/Conversation;->destroy()V

    .line 1103
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager;->activeConversation:Lcom/apptentive/android/sdk/conversation/Conversation;

    sget-object v1, Lcom/apptentive/android/sdk/conversation/ConversationState;->LOGGED_OUT:Lcom/apptentive/android/sdk/conversation/ConversationState;

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/conversation/Conversation;->setState(Lcom/apptentive/android/sdk/conversation/ConversationState;)V

    .line 1104
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager;->activeConversation:Lcom/apptentive/android/sdk/conversation/Conversation;

    invoke-direct {p0, v0}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->handleConversationStateChange(Lcom/apptentive/android/sdk/conversation/Conversation;)V

    const/4 v0, 0x0

    .line 1105
    invoke-direct {p0, v0}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->setActiveConversation(Lcom/apptentive/android/sdk/conversation/Conversation;)V

    .line 1106
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->dismissAllInteractions()V

    goto :goto_0

    .line 1113
    :cond_1
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v2, "Attempted to logout(), but there was no Active Conversation."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->w(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
