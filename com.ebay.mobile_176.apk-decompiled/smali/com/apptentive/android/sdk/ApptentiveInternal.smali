.class public Lcom/apptentive/android/sdk/ApptentiveInternal;
.super Ljava/lang/Object;
.source "ApptentiveInternal.java"

# interfaces
.implements Lcom/apptentive/android/sdk/ApptentiveInstance;
.implements Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apptentive/android/sdk/ApptentiveInternal$PushAction;
    }
.end annotation


# static fields
.field private static final NULL_INSTANCE:Lcom/apptentive/android/sdk/ApptentiveInstance;

.field private static volatile sApptentiveInternal:Lcom/apptentive/android/sdk/ApptentiveInternal;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private final appContext:Landroid/content/Context;

.field private appDefaultAppCompatThemeId:I

.field private appPackageName:Ljava/lang/String;

.field private final appRelease:Lcom/apptentive/android/sdk/storage/AppRelease;

.field private final apptentiveHttpClient:Lcom/apptentive/android/sdk/comm/ApptentiveHttpClient;

.field private final apptentiveKey:Ljava/lang/String;

.field private final apptentiveSignature:Ljava/lang/String;

.field private apptentiveToolbarTheme:Landroid/content/res/Resources$Theme;

.field private authenticationFailedListenerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/apptentive/android/sdk/Apptentive$AuthenticationFailedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final conversationManager:Lcom/apptentive/android/sdk/conversation/ConversationManager;

.field private customData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private defaultAppDisplayName:Ljava/lang/String;

.field private final globalSharedPrefs:Landroid/content/SharedPreferences;

.field private final interactionUpdateListeners:Ljava/util/concurrent/LinkedBlockingQueue;

.field private loginInProgress:Z

.field private final loginMutex:Ljava/lang/Object;

.field private onSurveyFinishedListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/apptentive/android/sdk/module/survey/OnSurveyFinishedListener;",
            ">;"
        }
    .end annotation
.end field

.field private ratingProvider:Lcom/apptentive/android/sdk/module/rating/IRatingProvider;

.field private ratingProviderArgs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private serverUrl:Ljava/lang/String;

.field private statusBarColorDefault:I

.field private final taskManager:Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 142
    new-instance v0, Lcom/apptentive/android/sdk/ApptentiveNullInstance;

    invoke-direct {v0}, Lcom/apptentive/android/sdk/ApptentiveNullInstance;-><init>()V

    sput-object v0, Lcom/apptentive/android/sdk/ApptentiveInternal;->NULL_INSTANCE:Lcom/apptentive/android/sdk/ApptentiveInstance;

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;Lcom/apptentive/android/sdk/ApptentiveConfiguration;)V
    .locals 5

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "this app"

    .line 106
    iput-object v0, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->defaultAppDisplayName:Ljava/lang/String;

    .line 113
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->interactionUpdateListeners:Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->authenticationFailedListenerRef:Ljava/lang/ref/WeakReference;

    .line 950
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->loginMutex:Ljava/lang/Object;

    if-eqz p2, :cond_0

    .line 161
    invoke-virtual {p2}, Lcom/apptentive/android/sdk/ApptentiveConfiguration;->getApptentiveKey()Ljava/lang/String;

    move-result-object v0

    .line 162
    invoke-virtual {p2}, Lcom/apptentive/android/sdk/ApptentiveConfiguration;->getApptentiveSignature()Ljava/lang/String;

    move-result-object v1

    .line 163
    invoke-virtual {p2}, Lcom/apptentive/android/sdk/ApptentiveConfiguration;->getBaseURL()Ljava/lang/String;

    move-result-object v2

    .line 165
    iput-object v0, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->apptentiveKey:Ljava/lang/String;

    .line 166
    iput-object v1, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->apptentiveSignature:Ljava/lang/String;

    .line 167
    iput-object v2, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->serverUrl:Ljava/lang/String;

    .line 169
    invoke-virtual {p2}, Lcom/apptentive/android/sdk/ApptentiveConfiguration;->shouldEncryptStorage()Z

    move-result v2

    .line 170
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p2}, Lcom/apptentive/android/sdk/ApptentiveConfiguration;->getEncryption()Lcom/apptentive/android/sdk/Encryption;

    move-result-object p2

    invoke-static {v3, p2, v2}, Lcom/apptentive/android/sdk/encryption/SecurityManager;->getEncryption(Landroid/content/Context;Lcom/apptentive/android/sdk/Encryption;Z)Lcom/apptentive/android/sdk/Encryption;

    move-result-object p2

    .line 172
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->appContext:Landroid/content/Context;

    const-string v2, "APPTENTIVE"

    const/4 v3, 0x0

    .line 174
    invoke-virtual {p1, v2, v3}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->globalSharedPrefs:Landroid/content/SharedPreferences;

    .line 175
    new-instance v2, Lcom/apptentive/android/sdk/comm/ApptentiveHttpClient;

    iget-object v3, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->globalSharedPrefs:Landroid/content/SharedPreferences;

    invoke-direct {p0, v3}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getEndpointBase(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v1, v3}, Lcom/apptentive/android/sdk/comm/ApptentiveHttpClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->apptentiveHttpClient:Lcom/apptentive/android/sdk/comm/ApptentiveHttpClient;

    .line 177
    new-instance v0, Lcom/apptentive/android/sdk/conversation/ConversationManager;

    iget-object v1, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->appContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->appContext:Landroid/content/Context;

    const-string v3, "apptentive/conversations"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/apptentive/android/sdk/util/Util;->getInternalDir(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/apptentive/android/sdk/conversation/ConversationManager;-><init>(Landroid/content/Context;Ljava/io/File;Lcom/apptentive/android/sdk/Encryption;)V

    iput-object v0, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->conversationManager:Lcom/apptentive/android/sdk/conversation/ConversationManager;

    .line 179
    invoke-static {p1, p0}, Lcom/apptentive/android/sdk/storage/AppReleaseManager;->generateCurrentAppRelease(Landroid/content/Context;Lcom/apptentive/android/sdk/ApptentiveInternal;)Lcom/apptentive/android/sdk/storage/AppRelease;

    move-result-object p1

    iput-object p1, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->appRelease:Lcom/apptentive/android/sdk/storage/AppRelease;

    .line 180
    new-instance p1, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;

    iget-object v0, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->appContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->apptentiveHttpClient:Lcom/apptentive/android/sdk/comm/ApptentiveHttpClient;

    invoke-direct {p1, v0, v1, p2}, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;-><init>(Landroid/content/Context;Lcom/apptentive/android/sdk/comm/ApptentiveHttpClient;Lcom/apptentive/android/sdk/Encryption;)V

    iput-object p1, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->taskManager:Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;

    .line 182
    invoke-static {}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;->defaultCenter()Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;

    move-result-object p1

    const-string p2, "CONVERSATION_STATE_DID_CHANGE"

    .line 183
    invoke-virtual {p1, p2, p0}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;->addObserver(Ljava/lang/String;Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationObserver;)Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;

    move-result-object p1

    const-string p2, "CONVERSATION_WILL_LOGOUT"

    .line 184
    invoke-virtual {p1, p2, p0}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;->addObserver(Ljava/lang/String;Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationObserver;)Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;

    move-result-object p1

    const-string p2, "AUTHENTICATION_FAILED"

    .line 185
    invoke-virtual {p1, p2, p0}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;->addObserver(Ljava/lang/String;Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationObserver;)Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;

    move-result-object p1

    const-string p2, "INTERACTION_MANIFEST_FETCHED"

    .line 186
    invoke-virtual {p1, p2, p0}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;->addObserver(Ljava/lang/String;Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationObserver;)Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;

    move-result-object p1

    const-string p2, "APP_ENTERED_FOREGROUND"

    .line 187
    invoke-virtual {p1, p2, p0}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;->addObserver(Ljava/lang/String;Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationObserver;)Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;

    move-result-object p1

    const-string p2, "APP_ENTERED_BACKGROUND"

    .line 188
    invoke-virtual {p1, p2, p0}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;->addObserver(Ljava/lang/String;Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationObserver;)Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;

    move-result-object p1

    const-string p2, "CONFIGURATION_FETCH_DID_FINISH"

    .line 189
    invoke-virtual {p1, p2, p0}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;->addObserver(Ljava/lang/String;Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationObserver;)Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;

    return-void

    .line 158
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Configuration is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "this app"

    .line 106
    iput-object v0, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->defaultAppDisplayName:Ljava/lang/String;

    .line 113
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->interactionUpdateListeners:Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->authenticationFailedListenerRef:Ljava/lang/ref/WeakReference;

    .line 950
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->loginMutex:Ljava/lang/Object;

    .line 146
    iput-object v0, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->taskManager:Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;

    .line 147
    iput-object v0, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->globalSharedPrefs:Landroid/content/SharedPreferences;

    .line 148
    iput-object v0, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->apptentiveKey:Ljava/lang/String;

    .line 149
    iput-object v0, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->apptentiveSignature:Ljava/lang/String;

    .line 150
    iput-object v0, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->apptentiveHttpClient:Lcom/apptentive/android/sdk/comm/ApptentiveHttpClient;

    .line 151
    iput-object v0, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->conversationManager:Lcom/apptentive/android/sdk/conversation/ConversationManager;

    .line 152
    iput-object p1, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->appContext:Landroid/content/Context;

    .line 153
    iput-object v0, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->appRelease:Lcom/apptentive/android/sdk/storage/AppRelease;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/Exception;)V
    .locals 0

    .line 81
    invoke-static {p0}, Lcom/apptentive/android/sdk/ApptentiveInternal;->logException(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$100()Lcom/apptentive/android/sdk/ApptentiveInternal;
    .locals 1

    .line 81
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveInternal;->sApptentiveInternal:Lcom/apptentive/android/sdk/ApptentiveInternal;

    return-object v0
.end method

.method static synthetic access$200(Lcom/apptentive/android/sdk/ApptentiveInternal;)Z
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/apptentive/android/sdk/ApptentiveInternal;->start()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/apptentive/android/sdk/ApptentiveInternal;)Ljava/lang/Object;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->loginMutex:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$400(Lcom/apptentive/android/sdk/ApptentiveInternal;)Z
    .locals 0

    .line 81
    iget-boolean p0, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->loginInProgress:Z

    return p0
.end method

.method static synthetic access$402(Lcom/apptentive/android/sdk/ApptentiveInternal;Z)Z
    .locals 0

    .line 81
    iput-boolean p1, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->loginInProgress:Z

    return p1
.end method

.method static synthetic access$500(Lcom/apptentive/android/sdk/ApptentiveInternal;Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/apptentive/android/sdk/ApptentiveInternal;->engageInternal(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private canShowMessageCenterInternal()Z
    .locals 1

    .line 862
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getConversation()Lcom/apptentive/android/sdk/conversation/Conversation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 863
    invoke-static {v0}, Lcom/apptentive/android/sdk/ApptentiveInternal;->canShowMessageCenterInternal(Lcom/apptentive/android/sdk/conversation/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static canShowMessageCenterInternal(Lcom/apptentive/android/sdk/conversation/Conversation;)Z
    .locals 3

    const-string v0, "app"

    const-string/jumbo v1, "show_message_center"

    const-string v2, "com.apptentive"

    .line 867
    invoke-static {p0, v0, v1, v2}, Lcom/apptentive/android/sdk/module/engagement/EngagementModule;->canShowInteraction(Lcom/apptentive/android/sdk/conversation/Conversation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static checkRegistered()Z
    .locals 4

    .line 919
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->isApptentiveRegistered()Z

    move-result v0

    if-nez v0, :cond_0

    .line 920
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "Apptentive SDK is not initialized."

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private checkSendVersionChanges(Lcom/apptentive/android/sdk/conversation/Conversation;)V
    .locals 14

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 557
    sget-object p1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "Can\'t check session data changes: session data is not initialized"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 564
    :cond_0
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/conversation/Conversation;->getVersionHistory()Lcom/apptentive/android/sdk/storage/VersionHistory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apptentive/android/sdk/storage/VersionHistory;->getLastVersionSeen()Lcom/apptentive/android/sdk/storage/VersionHistoryItem;

    move-result-object v1

    .line 565
    iget-object v2, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->appRelease:Lcom/apptentive/android/sdk/storage/AppRelease;

    invoke-virtual {v2}, Lcom/apptentive/android/sdk/storage/AppRelease;->getVersionCode()I

    move-result v2

    .line 566
    iget-object v3, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->appRelease:Lcom/apptentive/android/sdk/storage/AppRelease;

    invoke-virtual {v3}, Lcom/apptentive/android/sdk/storage/AppRelease;->getVersionName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v1, :cond_1

    move-object v6, v4

    :goto_0
    const/4 v1, 0x1

    goto :goto_2

    .line 574
    :cond_1
    invoke-virtual {v1}, Lcom/apptentive/android/sdk/storage/VersionHistoryItem;->getVersionCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 575
    new-instance v6, Lcom/apptentive/android/sdk/Apptentive$Version;

    invoke-direct {v6}, Lcom/apptentive/android/sdk/Apptentive$Version;-><init>()V

    .line 577
    invoke-virtual {v1}, Lcom/apptentive/android/sdk/storage/VersionHistoryItem;->getVersionName()Ljava/lang/String;

    move-result-object v1

    .line 578
    invoke-virtual {v6, v1}, Lcom/apptentive/android/sdk/Apptentive$Version;->setVersion(Ljava/lang/String;)V

    .line 579
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7, v4}, Lcom/apptentive/android/sdk/util/ObjectUtils;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v6}, Lcom/apptentive/android/sdk/Apptentive$Version;->getVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    move-object v6, v4

    move-object v4, v1

    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    move-object v6, v4

    move-object v4, v1

    goto :goto_0

    .line 585
    :goto_2
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/conversation/Conversation;->getLastSeenSdkVersion()Ljava/lang/String;

    move-result-object v7

    .line 586
    invoke-static {}, Lcom/apptentive/android/sdk/util/Constants;->getApptentiveSdkVersion()Ljava/lang/String;

    move-result-object v8

    .line 587
    invoke-static {v7, v8}, Lcom/apptentive/android/sdk/util/StringUtils;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    xor-int/2addr v9, v5

    const/4 v10, 0x2

    if-eqz v1, :cond_4

    .line 592
    sget-object v11, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v12, "Application version was changed: Name: %s => %s, Code: %d => %d"

    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v4, v13, v0

    aput-object v3, v13, v5

    aput-object v6, v13, v10

    const/4 v4, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v13, v4

    invoke-static {v11, v12, v13}, Lcom/apptentive/android/sdk/ApptentiveLog;->i(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 593
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/conversation/Conversation;->getVersionHistory()Lcom/apptentive/android/sdk/storage/VersionHistory;

    move-result-object v4

    invoke-static {}, Lcom/apptentive/android/sdk/util/Util;->currentTimeSeconds()D

    move-result-wide v11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v11, v12, v2, v3}, Lcom/apptentive/android/sdk/storage/VersionHistory;->updateVersionHistory(DLjava/lang/Integer;Ljava/lang/String;)V

    .line 596
    :cond_4
    iget-object v2, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->appContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/apptentive/android/sdk/storage/SdkManager;->generateCurrentSdk(Landroid/content/Context;)Lcom/apptentive/android/sdk/storage/Sdk;

    move-result-object v2

    if-eqz v9, :cond_5

    .line 598
    sget-object v3, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v4, "SDK version was changed: %s => %s"

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v7, v6, v0

    aput-object v8, v6, v5

    invoke-static {v3, v4, v6}, Lcom/apptentive/android/sdk/ApptentiveLog;->i(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 599
    invoke-virtual {p1, v8}, Lcom/apptentive/android/sdk/conversation/Conversation;->setLastSeenSdkVersion(Ljava/lang/String;)V

    .line 600
    invoke-virtual {p1, v2}, Lcom/apptentive/android/sdk/conversation/Conversation;->setSdk(Lcom/apptentive/android/sdk/storage/Sdk;)V

    :cond_5
    if-nez v1, :cond_6

    if-eqz v9, :cond_7

    .line 604
    :cond_6
    iget-object v0, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->appRelease:Lcom/apptentive/android/sdk/storage/AppRelease;

    invoke-static {v2, v0}, Lcom/apptentive/android/sdk/storage/AppReleaseManager;->getPayload(Lcom/apptentive/android/sdk/storage/Sdk;Lcom/apptentive/android/sdk/storage/AppRelease;)Lcom/apptentive/android/sdk/model/SdkAndAppReleasePayload;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/conversation/Conversation;->addPayload(Lcom/apptentive/android/sdk/model/Payload;)V

    .line 605
    iget-object v0, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->appRelease:Lcom/apptentive/android/sdk/storage/AppRelease;

    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/conversation/Conversation;->setAppRelease(Lcom/apptentive/android/sdk/storage/AppRelease;)V

    .line 606
    invoke-virtual {p1, v2}, Lcom/apptentive/android/sdk/conversation/Conversation;->setSdk(Lcom/apptentive/android/sdk/storage/Sdk;)V

    .line 607
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/ApptentiveInternal;->invalidateCaches(Lcom/apptentive/android/sdk/conversation/Conversation;)V

    :cond_7
    return-void
.end method

.method static createInstance(Landroid/app/Application;Lcom/apptentive/android/sdk/ApptentiveConfiguration;)V
    .locals 9
    .param p0    # Landroid/app/Application;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/apptentive/android/sdk/ApptentiveConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 213
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/ApptentiveConfiguration;->getApptentiveKey()Ljava/lang/String;

    move-result-object v0

    .line 214
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/ApptentiveConfiguration;->getApptentiveSignature()Ljava/lang/String;

    move-result-object v1

    .line 217
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/ApptentiveConfiguration;->shouldSanitizeLogMessages()Z

    move-result v2

    invoke-static {v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->setShouldSanitizeLogMessages(Z)V

    .line 220
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/ApptentiveConfiguration;->getLogLevel()Lcom/apptentive/android/sdk/ApptentiveLog$Level;

    move-result-object v2

    invoke-static {v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->overrideLogLevel(Lcom/apptentive/android/sdk/ApptentiveLog$Level;)V

    .line 223
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/ApptentiveConfiguration;->isTroubleshootingModeEnabled()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 225
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->initializeLogWriter(Landroid/content/Context;I)V

    .line 228
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/apptentive/android/sdk/debug/LogMonitor;->startSession(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 230
    :cond_0
    sget-object v2, Lcom/apptentive/android/sdk/ApptentiveLogTag;->TROUBLESHOOT:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v5, "Troubleshooting is disabled in the app configuration"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v2, v5, v6}, Lcom/apptentive/android/sdk/ApptentiveLog;->i(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    :goto_0
    const-class v2, Lcom/apptentive/android/sdk/ApptentiveInternal;

    monitor-enter v2

    .line 234
    :try_start_0
    sget-object v5, Lcom/apptentive/android/sdk/ApptentiveInternal;->sApptentiveInternal:Lcom/apptentive/android/sdk/ApptentiveInternal;

    if-nez v5, :cond_1

    const-string v5, "Registering Apptentive Android SDK %s"

    const/4 v6, 0x1

    .line 235
    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {}, Lcom/apptentive/android/sdk/util/Constants;->getApptentiveSdkVersion()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v5, v7}, Lcom/apptentive/android/sdk/ApptentiveLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v5, "ApptentiveKey=%s ApptentiveSignature=%s"

    .line 236
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    aput-object v1, v3, v6

    invoke-static {v5, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    new-instance v0, Lcom/apptentive/android/sdk/ApptentiveInternal;

    invoke-direct {v0, p0, p1}, Lcom/apptentive/android/sdk/ApptentiveInternal;-><init>(Landroid/app/Application;Lcom/apptentive/android/sdk/ApptentiveConfiguration;)V

    sput-object v0, Lcom/apptentive/android/sdk/ApptentiveInternal;->sApptentiveInternal:Lcom/apptentive/android/sdk/ApptentiveInternal;

    .line 238
    new-instance p1, Lcom/apptentive/android/sdk/ApptentiveInternal$1;

    invoke-direct {p1}, Lcom/apptentive/android/sdk/ApptentiveInternal$1;-><init>()V

    invoke-static {p1}, Lcom/apptentive/android/sdk/ApptentiveHelper;->dispatchOnConversationQueue(Lcom/apptentive/android/sdk/util/threading/DispatchTask;)V

    .line 245
    invoke-static {p0}, Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks;->register(Landroid/app/Application;)V

    goto :goto_1

    :cond_1
    const-string p0, "Apptentive instance is already initialized"

    .line 247
    new-array p1, v4, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/apptentive/android/sdk/ApptentiveLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    :goto_1
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static dismissAllInteractions()V
    .locals 2

    .line 1066
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveHelper;->isConversationQueue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1067
    new-instance v0, Lcom/apptentive/android/sdk/ApptentiveInternal$4;

    invoke-direct {v0}, Lcom/apptentive/android/sdk/ApptentiveInternal$4;-><init>()V

    invoke-static {v0}, Lcom/apptentive/android/sdk/ApptentiveHelper;->dispatchOnConversationQueue(Lcom/apptentive/android/sdk/util/threading/DispatchTask;)V

    return-void

    .line 1076
    :cond_0
    invoke-static {}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;->defaultCenter()Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;

    move-result-object v0

    const-string v1, "INTERACTIONS_SHOULD_DISMISS"

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;->postNotification(Ljava/lang/String;)V

    return-void
.end method

.method private engageInternal(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    .line 1146
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getConversation()Lcom/apptentive/android/sdk/conversation/Conversation;

    move-result-object v0

    const-string v1, "Attempted to engage \'%s\' internal event without an active conversation"

    const/4 v2, 0x1

    .line 1147
    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v0, v1, v3}, Lcom/apptentive/android/sdk/debug/Assert;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    .line 1148
    invoke-static {p1, v0, p2}, Lcom/apptentive/android/sdk/module/engagement/EngagementModule;->engageInternal(Landroid/content/Context;Lcom/apptentive/android/sdk/conversation/Conversation;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method static generatePendingIntentFromApptentivePushData(Lcom/apptentive/android/sdk/conversation/Conversation;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 4

    .line 782
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->PUSH:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "Generating Apptentive push PendingIntent."

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->d(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 783
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 785
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "conversation_id"

    .line 788
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 791
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/apptentive/android/sdk/util/StringUtils;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 792
    sget-object p0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->PUSH:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string p1, "Can\'t generate pending intent from Apptentive push data: push conversation id doesn\'t match active conversation"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/apptentive/android/sdk/ApptentiveLog;->i(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 797
    :cond_0
    sget-object p1, Lcom/apptentive/android/sdk/ApptentiveInternal$PushAction;->unknown:Lcom/apptentive/android/sdk/ApptentiveInternal$PushAction;

    const-string v3, "action"

    .line 798
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p1, "action"

    .line 799
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/apptentive/android/sdk/ApptentiveInternal$PushAction;->parse(Ljava/lang/String;)Lcom/apptentive/android/sdk/ApptentiveInternal$PushAction;

    move-result-object p1

    .line 801
    :cond_1
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveInternal$5;->$SwitchMap$com$apptentive$android$sdk$ApptentiveInternal$PushAction:[I

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/ApptentiveInternal$PushAction;->ordinal()I

    move-result v3

    aget v0, v0, v3

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    .line 812
    sget-object p0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->PUSH:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v0, "Unknown Apptentive push notification action: \"%s\""

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/ApptentiveInternal$PushAction;->name()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {p0, v0, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->w(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 804
    :cond_2
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getMessageManager()Lcom/apptentive/android/sdk/module/messagecenter/MessageManager;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 806
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager;->startMessagePreFetchTask()V

    .line 809
    :cond_3
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getInstance()Lcom/apptentive/android/sdk/ApptentiveInstance;

    move-result-object p1

    invoke-interface {p1}, Lcom/apptentive/android/sdk/ApptentiveInstance;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/apptentive/android/sdk/ApptentiveInternal;->prepareMessageCenterPendingIntent(Landroid/content/Context;Lcom/apptentive/android/sdk/conversation/Conversation;)Landroid/app/PendingIntent;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 815
    sget-object p1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->PUSH:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v0, "Error parsing JSON from push notification."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p0, v0, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 816
    invoke-static {p0}, Lcom/apptentive/android/sdk/ApptentiveInternal;->logException(Ljava/lang/Exception;)V

    :cond_4
    :goto_0
    return-object v1
.end method

.method static getApptentivePushNotificationData(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_0

    .line 710
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->PUSH:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "Got an Intent."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 711
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getApptentivePushNotificationData(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static getApptentivePushNotificationData(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p0, :cond_5

    const-string v2, "com.parse.Data"

    .line 725
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 726
    sget-object v2, Lcom/apptentive/android/sdk/ApptentiveLogTag;->PUSH:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v3, "Got a Parse Push."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "com.parse.Data"

    .line 727
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 729
    sget-object p0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->PUSH:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v2, "com.parse.Data is null."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 733
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "apptentive"

    .line 734
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    .line 736
    sget-object v3, Lcom/apptentive/android/sdk/ApptentiveLogTag;->PUSH:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v4, "com.parse.Data is corrupt: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v1

    invoke-static {v3, v4, v5}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 737
    invoke-static {v2}, Lcom/apptentive/android/sdk/ApptentiveInternal;->logException(Ljava/lang/Exception;)V

    return-object v0

    :cond_1
    const-string v2, "com.urbanairship.push.EXTRA_PUSH_MESSAGE_BUNDLE"

    .line 740
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 741
    sget-object v2, Lcom/apptentive/android/sdk/ApptentiveLogTag;->PUSH:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v3, "Got an Urban Airship push."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "com.urbanairship.push.EXTRA_PUSH_MESSAGE_BUNDLE"

    .line 742
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_2

    .line 744
    sget-object p0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->PUSH:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v2, "Urban Airship push extras bundle is null"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_2
    const-string v0, "apptentive"

    .line 747
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string v2, "apptentive"

    .line 748
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 750
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->PUSH:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v2, "Found apptentive push data."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "apptentive"

    .line 751
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 753
    :cond_4
    sget-object p0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->PUSH:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v2, "Got an unrecognizable push."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 756
    :cond_5
    sget-object p0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->PUSH:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v2, "Push bundle was null."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method static getApptentivePushNotificationData(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_0

    const-string v0, "apptentive"

    .line 762
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getEndpointBase(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "serverUrl"

    const/4 v1, 0x0

    .line 929
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "https://api.apptentive.com"

    .line 932
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string/jumbo v1, "serverUrl"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-object v0
.end method

.method public static getInstance()Lcom/apptentive/android/sdk/ApptentiveInstance;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 259
    const-class v0, Lcom/apptentive/android/sdk/ApptentiveInternal;

    monitor-enter v0

    .line 260
    :try_start_0
    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveInternal;->sApptentiveInternal:Lcom/apptentive/android/sdk/ApptentiveInternal;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveInternal;->sApptentiveInternal:Lcom/apptentive/android/sdk/ApptentiveInternal;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveInternal;->NULL_INSTANCE:Lcom/apptentive/android/sdk/ApptentiveInstance;

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 261
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private invalidateCaches(Lcom/apptentive/android/sdk/conversation/Conversation;)V
    .locals 2

    .line 615
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveHelper;->checkConversationQueue()V

    const-wide/16 v0, 0x0

    .line 617
    invoke-virtual {p1, v0, v1}, Lcom/apptentive/android/sdk/conversation/Conversation;->setInteractionExpiration(D)V

    .line 618
    invoke-static {}, Lcom/apptentive/android/sdk/model/Configuration;->load()Lcom/apptentive/android/sdk/model/Configuration;

    move-result-object p1

    .line 619
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/apptentive/android/sdk/model/Configuration;->setConfigurationCacheExpirationMillis(J)V

    .line 620
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/model/Configuration;->save()V

    return-void
.end method

.method public static isApptentiveRegistered()Z
    .locals 1

    .line 193
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveInternal;->sApptentiveInternal:Lcom/apptentive/android/sdk/ApptentiveInternal;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isConversationActive()Z
    .locals 1

    .line 197
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveInternal;->sApptentiveInternal:Lcom/apptentive/android/sdk/ApptentiveInternal;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveInternal;->sApptentiveInternal:Lcom/apptentive/android/sdk/ApptentiveInternal;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getConversation()Lcom/apptentive/android/sdk/conversation/Conversation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static logException(Ljava/lang/Exception;)V
    .locals 0

    .line 1190
    invoke-static {p0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method private onAppEnterBackground()V
    .locals 1

    .line 441
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveHelper;->checkConversationQueue()V

    .line 442
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/apptentive/android/sdk/ApptentiveInternal;->onAppExit(Landroid/content/Context;)V

    return-void
.end method

.method private onAppEnterForeground()V
    .locals 3

    .line 430
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveHelper;->checkConversationQueue()V

    .line 433
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveLog;->isLogWriterInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->appContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->apptentiveKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->apptentiveSignature:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/apptentive/android/sdk/debug/LogMonitor;->startSession(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    :cond_0
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/apptentive/android/sdk/ApptentiveInternal;->onAppLaunch(Landroid/content/Context;)V

    return-void
.end method

.method private onAppExit(Landroid/content/Context;)V
    .locals 1

    .line 421
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveHelper;->checkConversationQueue()V

    .line 423
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->isConversationActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    sget-object v0, Lcom/apptentive/android/sdk/model/EventPayload$EventLabel;->app__exit:Lcom/apptentive/android/sdk/model/EventPayload$EventLabel;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/model/EventPayload$EventLabel;->getLabelName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/apptentive/android/sdk/ApptentiveInternal;->engageInternal(Landroid/content/Context;Ljava/lang/String;)Z

    .line 425
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getConversation()Lcom/apptentive/android/sdk/conversation/Conversation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/conversation/Conversation;->endSession()V

    :cond_0
    return-void
.end method

.method private onAppLaunch(Landroid/content/Context;)V
    .locals 2

    .line 409
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveHelper;->checkConversationQueue()V

    .line 411
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->isConversationActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 412
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getConversation()Lcom/apptentive/android/sdk/conversation/Conversation;

    move-result-object v0

    .line 413
    invoke-virtual {v0}, Lcom/apptentive/android/sdk/conversation/Conversation;->hasSession()Z

    move-result v1

    if-nez v1, :cond_0

    .line 414
    invoke-virtual {v0}, Lcom/apptentive/android/sdk/conversation/Conversation;->startSession()V

    .line 416
    :cond_0
    sget-object v0, Lcom/apptentive/android/sdk/model/EventPayload$EventLabel;->app__launch:Lcom/apptentive/android/sdk/model/EventPayload$EventLabel;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/model/EventPayload$EventLabel;->getLabelName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/apptentive/android/sdk/ApptentiveInternal;->engageInternal(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_1
    return-void
.end method

.method public static prepareMessageCenterPendingIntent(Landroid/content/Context;Lcom/apptentive/android/sdk/conversation/Conversation;)Landroid/app/PendingIntent;
    .locals 2

    .line 901
    invoke-static {p1}, Lcom/apptentive/android/sdk/ApptentiveInternal;->canShowMessageCenterInternal(Lcom/apptentive/android/sdk/conversation/Conversation;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 902
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 903
    const-class v0, Lcom/apptentive/android/sdk/ApptentiveViewActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v0, "fragmentType"

    const/4 v1, 0x4

    .line 904
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "fragmentExtraData"

    const-string/jumbo v1, "show_message_center"

    .line 905
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 907
    :cond_0
    invoke-static {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/MessageCenterInteraction;->generateMessageCenterErrorIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    const/high16 v1, 0x48000000    # 131072.0f

    .line 909
    invoke-static {p0, v0, p1, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method private setApplicationDefaultTheme(I)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 289
    :try_start_0
    iget-object v1, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 292
    iget-object v1, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    .line 293
    invoke-virtual {v1, p1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 295
    sget-object v3, Landroidx/appcompat/R$styleable;->AppCompatTheme:[I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :try_start_1
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTheme_colorPrimaryDark:I

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 299
    iput p1, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->appDefaultAppCompatThemeId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    :try_start_2
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return v2

    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    const-string v1, "Theme Res id not found"

    .line 307
    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 308
    invoke-static {p1}, Lcom/apptentive/android/sdk/ApptentiveInternal;->logException(Ljava/lang/Exception;)V

    :cond_1
    :goto_0
    return v0
.end method

.method public static setInstance(Lcom/apptentive/android/sdk/ApptentiveInternal;)V
    .locals 0

    .line 276
    sput-object p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->sApptentiveInternal:Lcom/apptentive/android/sdk/ApptentiveInternal;

    return-void
.end method

.method private start()Z
    .locals 7

    .line 503
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveHelper;->checkConversationQueue()V

    .line 513
    iget-object v0, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->conversationManager:Lcom/apptentive/android/sdk/conversation/ConversationManager;

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->loadActiveConversation(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 515
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v2, "There is no active conversation. The SDK will be disabled until a conversation becomes active."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->w(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iput-object v0, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->apptentiveToolbarTheme:Landroid/content/res/Resources$Theme;

    const/4 v0, 0x1

    .line 521
    :try_start_0
    iget-object v2, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->appContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->appPackageName:Ljava/lang/String;

    .line 522
    iget-object v2, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->appContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 523
    iget-object v3, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->appPackageName:Ljava/lang/String;

    const/16 v4, 0x82

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 524
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 527
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->theme:I

    invoke-direct {p0, v4}, Lcom/apptentive/android/sdk/ApptentiveInternal;->setApplicationDefaultTheme(I)Z

    .line 529
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->defaultAppDisplayName:Ljava/lang/String;

    .line 532
    iget-object v2, v3, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_2

    .line 534
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 536
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v6, "com.apptentive.android.sdk.comm.NetworkStateReceiver"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 537
    :cond_1
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "NetworkStateReceiver has been removed from Apptentive SDK, please make sure it\'s also removed from manifest file"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 543
    :cond_2
    invoke-direct {p0}, Lcom/apptentive/android/sdk/ApptentiveInternal;->tryInitializeApptimizeSDK()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "Unexpected error while reading application or package info."

    .line 546
    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 547
    invoke-static {v2}, Lcom/apptentive/android/sdk/ApptentiveInternal;->logException(Ljava/lang/Exception;)V

    const/4 v2, 0x0

    :goto_1
    const-string v3, "Application Info:\n\tApptentive Key: %s\n\tApptentive Key: %s\n\tDebuggable APK: %b\n\tDefault locale: %s"

    const/4 v4, 0x4

    .line 551
    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->apptentiveKey:Ljava/lang/String;

    aput-object v5, v4, v1

    iget-object v1, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->apptentiveSignature:Ljava/lang/String;

    aput-object v1, v4, v0

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->appRelease:Lcom/apptentive/android/sdk/storage/AppRelease;

    invoke-virtual {v1}, Lcom/apptentive/android/sdk/storage/AppRelease;->isDebug()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method

.method private storeManifestResponse(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1157
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/apptentive/android/sdk/ApptentiveLog;->getLogsDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    const-string v1, "apptentive-engagement-manifest.txt"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1158
    invoke-static {v0, p2}, Lcom/apptentive/android/sdk/util/Util;->writeText(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1160
    sget-object p2, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v0, "Exception while trying to save engagement manifest data"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2, p1, v0, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1161
    invoke-static {p1}, Lcom/apptentive/android/sdk/ApptentiveInternal;->logException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private tryInitializeApptimizeSDK()V
    .locals 0

    .line 1009
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveHelper;->checkConversationQueue()V

    .line 1013
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/ApptentiveInternal;->tryUpdateApptimizeData()V

    return-void
.end method

.method private updateConversationAdvertiserIdentifier(Lcom/apptentive/android/sdk/conversation/Conversation;)V
    .locals 3

    .line 1170
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveHelper;->checkConversationQueue()V

    .line 1173
    :try_start_0
    invoke-static {}, Lcom/apptentive/android/sdk/model/Configuration;->load()Lcom/apptentive/android/sdk/model/Configuration;

    move-result-object v0

    .line 1174
    invoke-virtual {v0}, Lcom/apptentive/android/sdk/model/Configuration;->isCollectingAdID()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1175
    invoke-static {}, Lcom/apptentive/android/sdk/util/AdvertiserManager;->getAdvertisingIdClientInfo()Lcom/apptentive/android/sdk/util/AdvertiserManager$AdvertisingIdClientInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1176
    invoke-virtual {v0}, Lcom/apptentive/android/sdk/util/AdvertiserManager$AdvertisingIdClientInfo;->isLimitAdTrackingEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/util/AdvertiserManager$AdvertisingIdClientInfo;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1177
    :goto_0
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/conversation/Conversation;->getDevice()Lcom/apptentive/android/sdk/storage/Device;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/storage/Device;->setAdvertiserId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1180
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->ADVERTISER_ID:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "Exception while updating conversation advertiser id"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, p1, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1181
    invoke-static {p1}, Lcom/apptentive/android/sdk/ApptentiveInternal;->logException(Ljava/lang/Exception;)V

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public addInteractionUpdateListener(Lcom/apptentive/android/sdk/module/engagement/interaction/InteractionManager$InteractionUpdateListener;)V
    .locals 1

    .line 663
    iget-object v0, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->interactionUpdateListeners:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAndClearCustomData()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 871
    iget-object v0, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->customData:Ljava/util/Map;

    const/4 v1, 0x0

    .line 872
    iput-object v1, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->customData:Ljava/util/Map;

    return-object v0
.end method

.method public getAppRelease()Lcom/apptentive/android/sdk/storage/AppRelease;
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->appRelease:Lcom/apptentive/android/sdk/storage/AppRelease;

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->appContext:Landroid/content/Context;

    return-object v0
.end method

.method public getApplicationVersionCode()I
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->appRelease:Lcom/apptentive/android/sdk/storage/AppRelease;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/storage/AppRelease;->getVersionCode()I

    move-result v0

    return v0
.end method

.method public getApplicationVersionName()Ljava/lang/String;
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->appRelease:Lcom/apptentive/android/sdk/storage/AppRelease;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/storage/AppRelease;->getVersionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApptentiveHttpClient()Lcom/apptentive/android/sdk/comm/ApptentiveHttpClient;
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->apptentiveHttpClient:Lcom/apptentive/android/sdk/comm/ApptentiveHttpClient;

    return-object v0
.end method

.method public getApptentiveKey()Ljava/lang/String;
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->apptentiveKey:Ljava/lang/String;

    return-object v0
.end method

.method public getApptentiveSignature()Ljava/lang/String;
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->apptentiveSignature:Ljava/lang/String;

    return-object v0
.end method

.method public getApptentiveTaskManager()Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->taskManager:Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;

    return-object v0
.end method

.method public getApptentiveToolbarTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->apptentiveToolbarTheme:Landroid/content/res/Resources$Theme;

    return-object v0
.end method

.method public getConversation()Lcom/apptentive/android/sdk/conversation/Conversation;
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->conversationManager:Lcom/apptentive/android/sdk/conversation/ConversationManager;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->getActiveConversation()Lcom/apptentive/android/sdk/conversation/Conversation;

    move-result-object v0

    return-object v0
.end method

.method public getConversationManager()Lcom/apptentive/android/sdk/conversation/ConversationManager;
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->conversationManager:Lcom/apptentive/android/sdk/conversation/ConversationManager;

    return-object v0
.end method

.method public getConversationProxy()Lcom/apptentive/android/sdk/conversation/ConversationProxy;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 369
    iget-object v0, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->conversationManager:Lcom/apptentive/android/sdk/conversation/ConversationManager;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->getActiveConversationProxy()Lcom/apptentive/android/sdk/conversation/ConversationProxy;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTaskStackTopActivity()Landroid/app/Activity;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 343
    invoke-static {}, Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks;->getCurrentTopActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultAppDisplayName()Ljava/lang/String;
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->defaultAppDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultStatusBarColor()I
    .locals 1

    .line 361
    iget v0, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->statusBarColorDefault:I

    return v0
.end method

.method public getGlobalSharedPrefs()Landroid/content/SharedPreferences;
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->globalSharedPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getOnSurveyFinishedListener()Lcom/apptentive/android/sdk/module/survey/OnSurveyFinishedListener;
    .locals 1

    .line 658
    iget-object v0, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->onSurveyFinishedListener:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->onSurveyFinishedListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apptentive/android/sdk/module/survey/OnSurveyFinishedListener;

    :goto_0
    return-object v0
.end method

.method public getRatingProvider()Lcom/apptentive/android/sdk/module/rating/IRatingProvider;
    .locals 1

    .line 624
    iget-object v0, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->ratingProvider:Lcom/apptentive/android/sdk/module/rating/IRatingProvider;

    if-nez v0, :cond_0

    .line 625
    new-instance v0, Lcom/apptentive/android/sdk/module/rating/impl/GooglePlayRatingProvider;

    invoke-direct {v0}, Lcom/apptentive/android/sdk/module/rating/impl/GooglePlayRatingProvider;-><init>()V

    iput-object v0, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->ratingProvider:Lcom/apptentive/android/sdk/module/rating/IRatingProvider;

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->ratingProvider:Lcom/apptentive/android/sdk/module/rating/IRatingProvider;

    return-object v0
.end method

.method public getRatingProviderArgs()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 636
    iget-object v0, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->ratingProviderArgs:Ljava/util/Map;

    return-object v0
.end method

.method public getServerUrl()Ljava/lang/String;
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->serverUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "https://api.apptentive.com"

    return-object v0

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->serverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isAppUsingAppCompatTheme()Z
    .locals 1

    .line 319
    iget v0, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->appDefaultAppCompatThemeId:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isApptentiveDebuggable()Z
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->appRelease:Lcom/apptentive/android/sdk/storage/AppRelease;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/storage/AppRelease;->isDebug()Z

    move-result v0

    return v0
.end method

.method public isNull()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public login(Ljava/lang/String;Lcom/apptentive/android/sdk/Apptentive$LoginCallback;)V
    .locals 2

    .line 954
    iget-object v0, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->loginMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 955
    :try_start_0
    iget-boolean v1, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->loginInProgress:Z

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    const-string p1, "Another login request is currently in progress"

    .line 957
    invoke-interface {p2, p1}, Lcom/apptentive/android/sdk/Apptentive$LoginCallback;->onLoginFail(Ljava/lang/String;)V

    .line 959
    :cond_0
    monitor-exit v0

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 962
    iput-boolean v1, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->loginInProgress:Z

    .line 964
    new-instance v1, Lcom/apptentive/android/sdk/ApptentiveInternal$3;

    invoke-direct {v1, p0, p2}, Lcom/apptentive/android/sdk/ApptentiveInternal$3;-><init>(Lcom/apptentive/android/sdk/ApptentiveInternal;Lcom/apptentive/android/sdk/Apptentive$LoginCallback;)V

    .line 995
    iget-object p2, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->conversationManager:Lcom/apptentive/android/sdk/conversation/ConversationManager;

    invoke-virtual {p2, p1, v1}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->login(Ljava/lang/String;Lcom/apptentive/android/sdk/Apptentive$LoginCallback;)V

    .line 996
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public logout()V
    .locals 1

    .line 1001
    iget-object v0, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->conversationManager:Lcom/apptentive/android/sdk/conversation/ConversationManager;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->logout()V

    return-void
.end method

.method public notifyAuthenticationFailedListener(Lcom/apptentive/android/sdk/Apptentive$AuthenticationFailedReason;Ljava/lang/String;)V
    .locals 2

    .line 676
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveHelper;->checkConversationQueue()V

    .line 677
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->isConversationActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 678
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getConversation()Lcom/apptentive/android/sdk/conversation/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getConversationId()Ljava/lang/String;

    move-result-object v0

    .line 679
    invoke-static {v0, p2}, Lcom/apptentive/android/sdk/util/StringUtils;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 680
    iget-object p2, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->authenticationFailedListenerRef:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->authenticationFailedListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/apptentive/android/sdk/Apptentive$AuthenticationFailedListener;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 683
    invoke-static {}, Lcom/apptentive/android/sdk/util/threading/DispatchQueue;->mainQueue()Lcom/apptentive/android/sdk/util/threading/DispatchQueue;

    move-result-object v0

    new-instance v1, Lcom/apptentive/android/sdk/ApptentiveInternal$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/apptentive/android/sdk/ApptentiveInternal$2;-><init>(Lcom/apptentive/android/sdk/ApptentiveInternal;Lcom/apptentive/android/sdk/Apptentive$AuthenticationFailedListener;Lcom/apptentive/android/sdk/Apptentive$AuthenticationFailedReason;)V

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/util/threading/DispatchQueue;->dispatchAsync(Lcom/apptentive/android/sdk/util/threading/DispatchTask;)V

    :cond_1
    return-void
.end method

.method public notifyInteractionUpdated(Z)V
    .locals 5

    .line 882
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveHelper;->checkConversationQueue()V

    .line 884
    invoke-static {}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;->defaultCenter()Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;

    move-result-object v0

    const-string v1, "INTERACTIONS_DID_FETCH"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "successful"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 886
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 885
    invoke-virtual {v0, v1, v2}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;->postNotification(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 888
    iget-object v0, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->interactionUpdateListeners:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 890
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 891
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apptentive/android/sdk/module/engagement/interaction/InteractionManager$InteractionUpdateListener;

    if-eqz v1, :cond_0

    .line 894
    invoke-interface {v1, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/InteractionManager$InteractionUpdateListener;->onInteractionUpdated(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onReceiveNotification(Lcom/apptentive/android/sdk/notifications/ApptentiveNotification;)V
    .locals 3

    .line 1081
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveHelper;->checkConversationQueue()V

    const-string v0, "CONVERSATION_STATE_DID_CHANGE"

    .line 1083
    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotification;->hasName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "conversation"

    .line 1084
    const-class v1, Lcom/apptentive/android/sdk/conversation/Conversation;

    invoke-virtual {p1, v0, v1}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotification;->getRequiredUserInfo(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apptentive/android/sdk/conversation/Conversation;

    .line 1085
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/conversation/Conversation;->hasActiveState()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1088
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/conversation/Conversation;->hasSession()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1089
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/conversation/Conversation;->startSession()V

    .line 1092
    :cond_0
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/ApptentiveInternal;->checkSendVersionChanges(Lcom/apptentive/android/sdk/conversation/Conversation;)V

    .line 1093
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/ApptentiveInternal;->updateConversationAdvertiserIdentifier(Lcom/apptentive/android/sdk/conversation/Conversation;)V

    goto/16 :goto_0

    :cond_1
    const-string v0, "CONVERSATION_WILL_LOGOUT"

    .line 1095
    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotification;->hasName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "conversation"

    .line 1096
    const-class v1, Lcom/apptentive/android/sdk/conversation/Conversation;

    invoke-virtual {p1, v0, v1}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotification;->getRequiredUserInfo(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apptentive/android/sdk/conversation/Conversation;

    .line 1097
    new-instance v0, Lcom/apptentive/android/sdk/model/LogoutPayload;

    invoke-direct {v0}, Lcom/apptentive/android/sdk/model/LogoutPayload;-><init>()V

    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/conversation/Conversation;->addPayload(Lcom/apptentive/android/sdk/model/Payload;)V

    goto/16 :goto_0

    :cond_2
    const-string v0, "AUTHENTICATION_FAILED"

    .line 1098
    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotification;->hasName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "conversationId"

    .line 1099
    const-class v1, Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotification;->getUserInfo(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "authenticationFailedReason"

    .line 1100
    const-class v2, Lcom/apptentive/android/sdk/Apptentive$AuthenticationFailedReason;

    invoke-virtual {p1, v1, v2}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotification;->getUserInfo(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apptentive/android/sdk/Apptentive$AuthenticationFailedReason;

    .line 1101
    invoke-virtual {p0, p1, v0}, Lcom/apptentive/android/sdk/ApptentiveInternal;->notifyAuthenticationFailedListener(Lcom/apptentive/android/sdk/Apptentive$AuthenticationFailedReason;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string v0, "INTERACTION_MANIFEST_FETCHED"

    .line 1102
    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotification;->hasName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "manifest"

    .line 1103
    const-class v1, Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotification;->getRequiredUserInfo(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1104
    iget-object v0, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->appContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/apptentive/android/sdk/ApptentiveInternal;->storeManifestResponse(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "APP_ENTERED_FOREGROUND"

    .line 1105
    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotification;->hasName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1106
    invoke-direct {p0}, Lcom/apptentive/android/sdk/ApptentiveInternal;->onAppEnterForeground()V

    .line 1108
    invoke-static {}, Lcom/apptentive/android/sdk/model/Configuration;->load()Lcom/apptentive/android/sdk/model/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/model/Configuration;->isCollectingAdID()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1110
    iget-object p1, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->appContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/apptentive/android/sdk/util/AdvertiserManager;->updateAdvertisingIdClientInfo(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1112
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getConversation()Lcom/apptentive/android/sdk/conversation/Conversation;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 1114
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/ApptentiveInternal;->updateConversationAdvertiserIdentifier(Lcom/apptentive/android/sdk/conversation/Conversation;)V

    goto :goto_0

    :cond_5
    const-string v0, "APP_ENTERED_BACKGROUND"

    .line 1118
    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotification;->hasName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1119
    invoke-direct {p0}, Lcom/apptentive/android/sdk/ApptentiveInternal;->onAppEnterBackground()V

    goto :goto_0

    :cond_6
    const-string v0, "CONFIGURATION_FETCH_DID_FINISH"

    .line 1120
    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotification;->hasName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "configuration"

    .line 1121
    const-class v1, Lcom/apptentive/android/sdk/model/Configuration;

    invoke-virtual {p1, v0, v1}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotification;->getUserInfo(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apptentive/android/sdk/model/Configuration;

    if-nez p1, :cond_7

    return-void

    .line 1126
    :cond_7
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/model/Configuration;->isCollectingAdID()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1128
    iget-object v0, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/apptentive/android/sdk/util/AdvertiserManager;->updateAdvertisingIdClientInfo(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1130
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getConversation()Lcom/apptentive/android/sdk/conversation/Conversation;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1132
    invoke-direct {p0, v0}, Lcom/apptentive/android/sdk/ApptentiveInternal;->updateConversationAdvertiserIdentifier(Lcom/apptentive/android/sdk/conversation/Conversation;)V

    .line 1137
    :cond_8
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/model/Configuration;->isCollectingApptimizeData()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1138
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/ApptentiveInternal;->tryUpdateApptimizeData()V

    :cond_9
    :goto_0
    return-void
.end method

.method public putRatingProviderArg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 641
    iget-object v0, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->ratingProviderArgs:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 642
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->ratingProviderArgs:Ljava/util/Map;

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->ratingProviderArgs:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeInteractionUpdateListener(Lcom/apptentive/android/sdk/module/engagement/interaction/InteractionManager$InteractionUpdateListener;)V
    .locals 1

    .line 668
    iget-object v0, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->interactionUpdateListeners:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public resetSdkState()V
    .locals 2

    .line 877
    iget-object v0, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->globalSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 878
    iget-object v0, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->taskManager:Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;

    iget-object v1, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->appContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;->reset(Landroid/content/Context;)V

    return-void
.end method

.method public setAuthenticationFailedListener(Lcom/apptentive/android/sdk/Apptentive$AuthenticationFailedListener;)V
    .locals 1

    .line 672
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->authenticationFailedListenerRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setOnSurveyFinishedListener(Lcom/apptentive/android/sdk/module/survey/OnSurveyFinishedListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 650
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->onSurveyFinishedListener:Ljava/lang/ref/WeakReference;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 652
    iput-object p1, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->onSurveyFinishedListener:Ljava/lang/ref/WeakReference;

    :goto_0
    return-void
.end method

.method public setRatingProvider(Lcom/apptentive/android/sdk/module/rating/IRatingProvider;)V
    .locals 0
    .param p1    # Lcom/apptentive/android/sdk/module/rating/IRatingProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 632
    iput-object p1, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->ratingProvider:Lcom/apptentive/android/sdk/module/rating/IRatingProvider;

    return-void
.end method

.method public showAboutInternal(Landroid/content/Context;Z)V
    .locals 3

    .line 768
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 769
    const-class v1, Lcom/apptentive/android/sdk/ApptentiveViewActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "fragmentType"

    const/4 v2, 0x1

    .line 770
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "fragmentExtraData"

    .line 771
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 772
    instance-of p2, p1, Landroid/app/Activity;

    if-nez p2, :cond_0

    const/high16 p2, 0x18000000

    .line 773
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 775
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public showMessageCenterFallback(Landroid/content/Context;)V
    .locals 0

    .line 857
    invoke-static {p1}, Lcom/apptentive/android/sdk/module/engagement/EngagementModule;->launchMessageCenterErrorActivity(Landroid/content/Context;)V

    return-void
.end method

.method public showMessageCenterInternal(Landroid/content/Context;Ljava/util/Map;)Z
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 825
    invoke-direct {p0}, Lcom/apptentive/android/sdk/ApptentiveInternal;->canShowMessageCenterInternal()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    .line 827
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 828
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 829
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 830
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 832
    instance-of v3, v2, Ljava/lang/String;

    if-nez v3, :cond_0

    instance-of v3, v2, Ljava/lang/Boolean;

    if-nez v3, :cond_0

    instance-of v3, v2, Ljava/lang/Long;

    if-nez v3, :cond_0

    instance-of v3, v2, Ljava/lang/Double;

    if-nez v3, :cond_0

    instance-of v3, v2, Ljava/lang/Float;

    if-nez v3, :cond_0

    instance-of v3, v2, Ljava/lang/Integer;

    if-nez v3, :cond_0

    instance-of v3, v2, Ljava/lang/Short;

    if-nez v3, :cond_0

    .line 839
    sget-object v3, Lcom/apptentive/android/sdk/ApptentiveLogTag;->MESSAGES:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v4, "Removing invalid customData type: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v3, v4, v5}, Lcom/apptentive/android/sdk/ApptentiveLog;->w(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 840
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 845
    :cond_1
    iput-object p2, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->customData:Ljava/util/Map;

    const-string/jumbo p2, "show_message_center"

    .line 846
    invoke-direct {p0, p1, p2}, Lcom/apptentive/android/sdk/ApptentiveInternal;->engageInternal(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 p1, 0x0

    .line 848
    iput-object p1, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->customData:Ljava/util/Map;

    goto :goto_1

    .line 851
    :cond_2
    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/ApptentiveInternal;->showMessageCenterFallback(Landroid/content/Context;)V

    :cond_3
    :goto_1
    return v1
.end method

.method tryUpdateApptimizeData()V
    .locals 9

    .line 1017
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveHelper;->checkConversationQueue()V

    .line 1019
    invoke-static {}, Lcom/apptentive/android/sdk/model/Configuration;->load()Lcom/apptentive/android/sdk/model/Configuration;

    move-result-object v0

    .line 1020
    invoke-virtual {v0}, Lcom/apptentive/android/sdk/model/Configuration;->isCollectingApptimizeData()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1024
    :cond_0
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getConversation()Lcom/apptentive/android/sdk/conversation/Conversation;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1026
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->PARTNERS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v2, "Unable to update Apptimize data: no active conversation"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->w(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1030
    :cond_1
    invoke-static {}, Lcom/apptentive/android/sdk/partners/apptimize/ApptentiveApptimize;->isApptimizeSDKAvailable()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1031
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->PARTNERS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v2, "Unable to initialize Apptimize SDK support: SDK integration not found"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->w(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1035
    :cond_2
    invoke-static {}, Lcom/apptentive/android/sdk/partners/apptimize/ApptentiveApptimize;->isSupportedLibraryVersion()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_3

    .line 1036
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->PARTNERS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v2, "Unable to update Apptimize data: unsupported library version \'%s\'"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/apptentive/android/sdk/partners/apptimize/ApptentiveApptimize;->getLibraryVersion()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v2, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->w(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1040
    :cond_3
    invoke-static {}, Lcom/apptentive/android/sdk/partners/apptimize/ApptentiveApptimize;->getTestInfo()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 1041
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    if-nez v4, :cond_4

    goto :goto_2

    .line 1046
    :cond_4
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/apptentive/android/sdk/partners/apptimize/ApptentiveApptimizeTestInfo;

    if-nez v4, :cond_5

    goto :goto_0

    .line 1051
    :cond_5
    invoke-virtual {v4}, Lcom/apptentive/android/sdk/partners/apptimize/ApptentiveApptimizeTestInfo;->getTestName()Ljava/lang/String;

    move-result-object v5

    .line 1052
    invoke-virtual {v4}, Lcom/apptentive/android/sdk/partners/apptimize/ApptentiveApptimizeTestInfo;->getEnrolledVariantName()Ljava/lang/String;

    move-result-object v6

    .line 1054
    invoke-virtual {v4}, Lcom/apptentive/android/sdk/partners/apptimize/ApptentiveApptimizeTestInfo;->userHasParticipated()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "participated"

    goto :goto_1

    :cond_6
    const-string v4, "enrolled"

    :goto_1
    const-string v7, "Apptimize: %s %s"

    const/4 v8, 0x2

    .line 1055
    new-array v8, v8, [Ljava/lang/Object;

    aput-object v5, v8, v1

    aput-object v4, v8, v3

    invoke-static {v7, v8}, Lcom/apptentive/android/sdk/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1056
    invoke-virtual {v0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getDevice()Lcom/apptentive/android/sdk/storage/Device;

    move-result-object v5

    invoke-virtual {v5}, Lcom/apptentive/android/sdk/storage/Device;->getCustomData()Lcom/apptentive/android/sdk/storage/CustomData;

    move-result-object v5

    invoke-virtual {v5, v4, v6}, Lcom/apptentive/android/sdk/storage/CustomData;->put(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    goto :goto_0

    :cond_7
    return-void

    .line 1042
    :cond_8
    :goto_2
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->PARTNERS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v2, "Unable to update Apptimize data: no experiments"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->w(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public updateApptentiveInteractionTheme(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V
    .locals 5

    .line 461
    instance-of v0, p1, Landroid/app/Activity;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 463
    sget v0, Lcom/apptentive/android/sdk/R$style;->ApptentiveTheme_Base_Versioned:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 467
    :cond_0
    iget v0, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->appDefaultAppCompatThemeId:I

    if-eqz v0, :cond_1

    .line 468
    iget v0, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->appDefaultAppCompatThemeId:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 473
    :cond_1
    sget v0, Lcom/apptentive/android/sdk/R$style;->ApptentiveBaseFrameTheme:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 476
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "ApptentiveThemeOverride"

    const-string/jumbo v3, "style"

    .line 477
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 476
    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 479
    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 486
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_3

    const v0, 0x106000d

    .line 487
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 488
    new-array v0, v1, [I

    const v2, 0x1010451

    const/4 v3, 0x0

    aput v2, v0, v3

    invoke-virtual {p2, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 490
    :try_start_0
    invoke-virtual {v0, v3, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->statusBarColorDefault:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 492
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw p1

    .line 497
    :cond_3
    :goto_0
    sget p1, Lcom/apptentive/android/sdk/R$attr;->apptentiveToolbarTheme:I

    invoke-static {p2, p1}, Lcom/apptentive/android/sdk/util/Util;->getResourceIdFromAttribute(Landroid/content/res/Resources$Theme;I)I

    move-result p1

    .line 498
    iget-object v0, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->apptentiveToolbarTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v0, p2}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 499
    iget-object p2, p0, Lcom/apptentive/android/sdk/ApptentiveInternal;->apptentiveToolbarTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {p2, p1, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    return-void
.end method
