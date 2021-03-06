.class public final Lcom/apptentive/android/sdk/debug/LogMonitor;
.super Ljava/lang/Object;
.source "LogMonitor.java"


# static fields
.field private static currentSession:Lcom/apptentive/android/sdk/debug/LogMonitorSession;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-static {p0, p1, p2}, Lcom/apptentive/android/sdk/debug/LogMonitor;->startSessionGuarded(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/Exception;)V
    .locals 0

    .line 32
    invoke-static {p0}, Lcom/apptentive/android/sdk/debug/LogMonitor;->logException(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;Lcom/apptentive/android/sdk/debug/LogMonitorSession;)V
    .locals 0

    .line 32
    invoke-static {p0, p1}, Lcom/apptentive/android/sdk/debug/LogMonitor;->startSession(Landroid/content/Context;Lcom/apptentive/android/sdk/debug/LogMonitorSession;)V

    return-void
.end method

.method static synthetic access$300()Lcom/apptentive/android/sdk/debug/LogMonitorSession;
    .locals 1

    .line 32
    sget-object v0, Lcom/apptentive/android/sdk/debug/LogMonitor;->currentSession:Lcom/apptentive/android/sdk/debug/LogMonitorSession;

    return-object v0
.end method

.method static synthetic access$302(Lcom/apptentive/android/sdk/debug/LogMonitorSession;)Lcom/apptentive/android/sdk/debug/LogMonitorSession;
    .locals 0

    .line 32
    sput-object p0, Lcom/apptentive/android/sdk/debug/LogMonitor;->currentSession:Lcom/apptentive/android/sdk/debug/LogMonitorSession;

    return-object p0
.end method

.method private static createTokenVerificationRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/apptentive/android/sdk/network/HttpRequest$Listener;)Lcom/apptentive/android/sdk/network/HttpRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/apptentive/android/sdk/network/HttpRequest$Listener<",
            "Lcom/apptentive/android/sdk/network/HttpJsonRequest;",
            ">;)",
            "Lcom/apptentive/android/sdk/network/HttpRequest;"
        }
    .end annotation

    const-string v0, "https://api.apptentive.com/debug_token/verify"

    .line 198
    new-instance v1, Lcom/apptentive/android/sdk/network/HttpJsonRequest;

    invoke-static {p2}, Lcom/apptentive/android/sdk/debug/LogMonitor;->createVerityRequestObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-direct {v1, v0, p2}, Lcom/apptentive/android/sdk/network/HttpJsonRequest;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    const-string p2, "VERIFICATION_REQUEST"

    .line 199
    invoke-virtual {v1, p2}, Lcom/apptentive/android/sdk/network/HttpRequest;->setTag(Ljava/lang/String;)V

    .line 200
    sget-object p2, Lcom/apptentive/android/sdk/network/HttpRequestMethod;->POST:Lcom/apptentive/android/sdk/network/HttpRequestMethod;

    invoke-virtual {v1, p2}, Lcom/apptentive/android/sdk/network/HttpRequest;->setMethod(Lcom/apptentive/android/sdk/network/HttpRequestMethod;)V

    .line 201
    invoke-static {}, Lcom/apptentive/android/sdk/network/HttpRequestManager;->sharedManager()Lcom/apptentive/android/sdk/network/HttpRequestManager;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/apptentive/android/sdk/network/HttpRequest;->setRequestManager(Lcom/apptentive/android/sdk/network/HttpRequestManager;)V

    const-string p2, "X-API-Version"

    const/16 v0, 0x9

    .line 202
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p2, v0}, Lcom/apptentive/android/sdk/network/HttpRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "APPTENTIVE-KEY"

    .line 203
    invoke-virtual {v1, p2, p0}, Lcom/apptentive/android/sdk/network/HttpRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "APPTENTIVE-SIGNATURE"

    .line 204
    invoke-virtual {v1, p0, p1}, Lcom/apptentive/android/sdk/network/HttpRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "Content-Type"

    const-string p1, "application/json"

    .line 205
    invoke-virtual {v1, p0, p1}, Lcom/apptentive/android/sdk/network/HttpRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "Accept"

    const-string p1, "application/json"

    .line 206
    invoke-virtual {v1, p0, p1}, Lcom/apptentive/android/sdk/network/HttpRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "User-Agent"

    const-string p1, "Apptentive/%s (Android)"

    const/4 p2, 0x1

    .line 207
    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {}, Lcom/apptentive/android/sdk/util/Constants;->getApptentiveSdkVersion()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, p2, v2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Lcom/apptentive/android/sdk/network/HttpRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 208
    invoke-static {}, Lcom/apptentive/android/sdk/debug/LogMonitor;->createVerityRequestRetryPolicy()Lcom/apptentive/android/sdk/network/HttpRequestRetryPolicy;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/apptentive/android/sdk/network/HttpRequest;->setRetryPolicy(Lcom/apptentive/android/sdk/network/HttpRequestRetryPolicy;)Lcom/apptentive/android/sdk/network/HttpRequest;

    .line 209
    invoke-virtual {v1, p3}, Lcom/apptentive/android/sdk/network/HttpRequest;->addListener(Lcom/apptentive/android/sdk/network/HttpRequest$Listener;)V

    return-object v1
.end method

.method private static createVerityRequestObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    .line 215
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "debug_token"

    .line 216
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 220
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Token is invalid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static createVerityRequestRetryPolicy()Lcom/apptentive/android/sdk/network/HttpRequestRetryPolicy;
    .locals 1

    .line 225
    new-instance v0, Lcom/apptentive/android/sdk/debug/LogMonitor$4;

    invoke-direct {v0}, Lcom/apptentive/android/sdk/debug/LogMonitor$4;-><init>()V

    return-object v0
.end method

.method private static logException(Ljava/lang/Exception;)V
    .locals 0

    .line 238
    invoke-static {p0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static readAccessTokenFromClipboard(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 174
    invoke-static {p0}, Lcom/apptentive/android/sdk/util/Util;->getClipboardText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 176
    invoke-static {p0}, Lcom/apptentive/android/sdk/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "\\s+"

    const-string v2, ""

    .line 181
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.apptentive.debug:"

    .line 183
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const-string v0, "com.apptentive.debug:"

    .line 188
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static startSession(Landroid/content/Context;Lcom/apptentive/android/sdk/debug/LogMonitorSession;)V
    .locals 0

    .line 149
    sput-object p1, Lcom/apptentive/android/sdk/debug/LogMonitor;->currentSession:Lcom/apptentive/android/sdk/debug/LogMonitorSession;

    .line 150
    invoke-virtual {p1, p0}, Lcom/apptentive/android/sdk/debug/LogMonitorSession;->start(Landroid/content/Context;)V

    return-void
.end method

.method public static startSession(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 62
    new-instance v0, Lcom/apptentive/android/sdk/debug/LogMonitor$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/apptentive/android/sdk/debug/LogMonitor$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/apptentive/android/sdk/ApptentiveHelper;->dispatchOnConversationQueue(Lcom/apptentive/android/sdk/util/threading/DispatchTask;)V

    return-void
.end method

.method private static startSessionGuarded(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 76
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveHelper;->checkConversationQueue()V

    .line 79
    sget-object v0, Lcom/apptentive/android/sdk/debug/LogMonitor;->currentSession:Lcom/apptentive/android/sdk/debug/LogMonitorSession;

    if-eqz v0, :cond_0

    return-void

    .line 84
    :cond_0
    invoke-static {p0}, Lcom/apptentive/android/sdk/debug/LogMonitorSessionIO;->readCurrentSession(Landroid/content/Context;)Lcom/apptentive/android/sdk/debug/LogMonitorSession;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 86
    sget-object p1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->TROUBLESHOOT:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string p2, "Previous Apptentive Log Monitor session loaded from persistent storage: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-static {p1, p2, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->i(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    invoke-static {p0, v0}, Lcom/apptentive/android/sdk/debug/LogMonitor;->startSession(Landroid/content/Context;Lcom/apptentive/android/sdk/debug/LogMonitorSession;)V

    return-void

    .line 92
    :cond_1
    invoke-static {p0}, Lcom/apptentive/android/sdk/debug/LogMonitor;->readAccessTokenFromClipboard(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 96
    sget-object p0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->TROUBLESHOOT:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string p1, "No access token found in clipboard"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    const-string v2, ""

    .line 101
    invoke-static {p0, v2}, Lcom/apptentive/android/sdk/util/Util;->setClipboardText(Landroid/content/Context;Ljava/lang/String;)V

    .line 104
    invoke-static {}, Lcom/apptentive/android/sdk/network/HttpRequestManager;->sharedManager()Lcom/apptentive/android/sdk/network/HttpRequestManager;

    move-result-object v2

    const-string v3, "VERIFICATION_REQUEST"

    invoke-virtual {v2, v3}, Lcom/apptentive/android/sdk/network/HttpRequestManager;->findRequest(Ljava/lang/String;)Lcom/apptentive/android/sdk/network/HttpRequest;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 106
    sget-object p0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->TROUBLESHOOT:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string p1, "Another access token verification request is running"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 111
    :cond_3
    new-instance v1, Lcom/apptentive/android/sdk/debug/LogMonitor$2;

    invoke-direct {v1, v0, p0}, Lcom/apptentive/android/sdk/debug/LogMonitor$2;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {p1, p2, v0, v1}, Lcom/apptentive/android/sdk/debug/LogMonitor;->createTokenVerificationRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/apptentive/android/sdk/network/HttpRequest$Listener;)Lcom/apptentive/android/sdk/network/HttpRequest;

    move-result-object p0

    .line 144
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveHelper;->conversationQueue()Lcom/apptentive/android/sdk/util/threading/DispatchQueue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/network/HttpRequest;->setCallbackQueue(Lcom/apptentive/android/sdk/util/threading/DispatchQueue;)V

    .line 145
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/network/HttpRequest;->start()V

    return-void
.end method

.method static stopSession(Landroid/content/Context;)V
    .locals 1

    .line 154
    new-instance v0, Lcom/apptentive/android/sdk/debug/LogMonitor$3;

    invoke-direct {v0, p0}, Lcom/apptentive/android/sdk/debug/LogMonitor$3;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/apptentive/android/sdk/ApptentiveHelper;->dispatchOnConversationQueue(Lcom/apptentive/android/sdk/util/threading/DispatchTask;)V

    return-void
.end method
