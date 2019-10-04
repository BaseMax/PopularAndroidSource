.class public Lcom/apptentive/android/sdk/comm/ApptentiveHttpClient;
.super Ljava/lang/Object;
.source "ApptentiveHttpClient.java"

# interfaces
.implements Lcom/apptentive/android/sdk/storage/PayloadRequestSender;


# static fields
.field public static final USER_AGENT_STRING:Ljava/lang/String; = "Apptentive/%s (Android)"


# instance fields
.field private final apptentiveKey:Ljava/lang/String;

.field private final apptentiveSignature:Ljava/lang/String;

.field private final serverURL:Ljava/lang/String;

.field private final userAgentString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {p1}, Lcom/apptentive/android/sdk/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 60
    invoke-static {p2}, Lcom/apptentive/android/sdk/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    invoke-static {p3}, Lcom/apptentive/android/sdk/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    iput-object p1, p0, Lcom/apptentive/android/sdk/comm/ApptentiveHttpClient;->apptentiveKey:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lcom/apptentive/android/sdk/comm/ApptentiveHttpClient;->apptentiveSignature:Ljava/lang/String;

    .line 70
    iput-object p3, p0, Lcom/apptentive/android/sdk/comm/ApptentiveHttpClient;->serverURL:Ljava/lang/String;

    const-string p1, "Apptentive/%s (Android)"

    const/4 p2, 0x1

    .line 71
    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    invoke-static {}, Lcom/apptentive/android/sdk/util/Constants;->getApptentiveSdkVersion()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, p3

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/apptentive/android/sdk/comm/ApptentiveHttpClient;->userAgentString:Ljava/lang/String;

    return-void

    .line 65
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Illegal server URL: \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Illegal Apptentive Signature: \'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 57
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Illegal Apptentive Key: \'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private createEndpointURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/apptentive/android/sdk/comm/ApptentiveHttpClient;->serverURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private createJsonRequest(Ljava/lang/String;Lorg/json/JSONObject;Lcom/apptentive/android/sdk/network/HttpRequestMethod;)Lcom/apptentive/android/sdk/network/HttpJsonRequest;
    .locals 1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 241
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/comm/ApptentiveHttpClient;->createEndpointURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 242
    new-instance v0, Lcom/apptentive/android/sdk/network/HttpJsonRequest;

    invoke-direct {v0, p1, p2}, Lcom/apptentive/android/sdk/network/HttpJsonRequest;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 243
    invoke-direct {p0, v0}, Lcom/apptentive/android/sdk/comm/ApptentiveHttpClient;->setupRequestDefaults(Lcom/apptentive/android/sdk/network/HttpRequest;)V

    .line 244
    invoke-virtual {v0, p3}, Lcom/apptentive/android/sdk/network/HttpJsonRequest;->setMethod(Lcom/apptentive/android/sdk/network/HttpRequestMethod;)V

    const-string p1, "Content-Type"

    const-string p2, "application/json"

    .line 245
    invoke-virtual {v0, p1, p2}, Lcom/apptentive/android/sdk/network/HttpJsonRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    .line 238
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Method is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 235
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Json is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 232
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Endpoint is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private createPayloadRequest(Lcom/apptentive/android/sdk/model/PayloadData;)Lcom/apptentive/android/sdk/network/HttpRequest;
    .locals 5

    .line 207
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/model/PayloadData;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/model/PayloadData;->getHttpRequestPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/apptentive/android/sdk/debug/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 209
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/model/PayloadData;->getHttpRequestMethod()Lcom/apptentive/android/sdk/network/HttpRequestMethod;

    move-result-object v2

    invoke-static {v2}, Lcom/apptentive/android/sdk/debug/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apptentive/android/sdk/network/HttpRequestMethod;

    .line 210
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/model/PayloadData;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/apptentive/android/sdk/debug/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 212
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/model/PayloadData;->getData()[B

    move-result-object v4

    invoke-direct {p0, v1, v4, v2, v3}, Lcom/apptentive/android/sdk/comm/ApptentiveHttpClient;->createRawRequest(Ljava/lang/String;[BLcom/apptentive/android/sdk/network/HttpRequestMethod;Ljava/lang/String;)Lcom/apptentive/android/sdk/network/RawHttpRequest;

    move-result-object v1

    .line 215
    invoke-static {v0}, Lcom/apptentive/android/sdk/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Authorization"

    .line 216
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bearer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/apptentive/android/sdk/network/HttpRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 219
    :cond_0
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/model/PayloadData;->isAuthenticated()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "APPTENTIVE-ENCRYPTED"

    .line 220
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, p1, v0}, Lcom/apptentive/android/sdk/network/HttpRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-object v1
.end method

.method private createRawRequest(Ljava/lang/String;[BLcom/apptentive/android/sdk/network/HttpRequestMethod;Ljava/lang/String;)Lcom/apptentive/android/sdk/network/RawHttpRequest;
    .locals 1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    .line 263
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/comm/ApptentiveHttpClient;->createEndpointURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 264
    new-instance v0, Lcom/apptentive/android/sdk/network/RawHttpRequest;

    invoke-direct {v0, p1, p2}, Lcom/apptentive/android/sdk/network/RawHttpRequest;-><init>(Ljava/lang/String;[B)V

    .line 265
    invoke-direct {p0, v0}, Lcom/apptentive/android/sdk/comm/ApptentiveHttpClient;->setupRequestDefaults(Lcom/apptentive/android/sdk/network/HttpRequest;)V

    .line 266
    invoke-virtual {v0, p3}, Lcom/apptentive/android/sdk/network/RawHttpRequest;->setMethod(Lcom/apptentive/android/sdk/network/HttpRequestMethod;)V

    const-string p1, "Content-Type"

    .line 267
    invoke-virtual {v0, p1, p4}, Lcom/apptentive/android/sdk/network/RawHttpRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    .line 260
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ContentType is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 257
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Method is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 254
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Payload is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 251
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Endpoint is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setupRequestDefaults(Lcom/apptentive/android/sdk/network/HttpRequest;)V
    .locals 2

    .line 272
    invoke-static {}, Lcom/apptentive/android/sdk/network/HttpRequestManager;->sharedManager()Lcom/apptentive/android/sdk/network/HttpRequestManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/network/HttpRequest;->setRequestManager(Lcom/apptentive/android/sdk/network/HttpRequestManager;)V

    const-string v0, "User-Agent"

    .line 273
    iget-object v1, p0, Lcom/apptentive/android/sdk/comm/ApptentiveHttpClient;->userAgentString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/apptentive/android/sdk/network/HttpRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "Connection"

    const-string v1, "Keep-Alive"

    .line 274
    invoke-virtual {p1, v0, v1}, Lcom/apptentive/android/sdk/network/HttpRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    .line 275
    invoke-virtual {p1, v0, v1}, Lcom/apptentive/android/sdk/network/HttpRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "Accept"

    const-string v1, "application/json"

    .line 276
    invoke-virtual {p1, v0, v1}, Lcom/apptentive/android/sdk/network/HttpRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "APPTENTIVE-KEY"

    .line 277
    iget-object v1, p0, Lcom/apptentive/android/sdk/comm/ApptentiveHttpClient;->apptentiveKey:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/apptentive/android/sdk/network/HttpRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "APPTENTIVE-SIGNATURE"

    .line 278
    iget-object v1, p0, Lcom/apptentive/android/sdk/comm/ApptentiveHttpClient;->apptentiveSignature:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/apptentive/android/sdk/network/HttpRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "X-API-Version"

    const/16 v1, 0x9

    .line 279
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/apptentive/android/sdk/network/HttpRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const v0, 0xafc8

    .line 280
    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/network/HttpRequest;->setConnectTimeout(I)V

    .line 281
    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/network/HttpRequest;->setReadTimeout(I)V

    return-void
.end method


# virtual methods
.method public createAppConfigurationRequest(Ljava/lang/String;Ljava/lang/String;Lcom/apptentive/android/sdk/network/HttpRequest$Listener;)Lcom/apptentive/android/sdk/network/HttpJsonRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/apptentive/android/sdk/network/HttpRequest$Listener<",
            "Lcom/apptentive/android/sdk/network/HttpJsonRequest;",
            ">;)",
            "Lcom/apptentive/android/sdk/network/HttpJsonRequest;"
        }
    .end annotation

    .line 149
    invoke-static {p1}, Lcom/apptentive/android/sdk/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 153
    invoke-static {p2}, Lcom/apptentive/android/sdk/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/conversations/%s/configuration"

    const/4 v1, 0x1

    .line 157
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/apptentive/android/sdk/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 158
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sget-object v1, Lcom/apptentive/android/sdk/network/HttpRequestMethod;->GET:Lcom/apptentive/android/sdk/network/HttpRequestMethod;

    invoke-direct {p0, p1, v0, v1}, Lcom/apptentive/android/sdk/comm/ApptentiveHttpClient;->createJsonRequest(Ljava/lang/String;Lorg/json/JSONObject;Lcom/apptentive/android/sdk/network/HttpRequestMethod;)Lcom/apptentive/android/sdk/network/HttpJsonRequest;

    move-result-object p1

    const-string v0, "Authorization"

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bearer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/apptentive/android/sdk/network/HttpJsonRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 160
    invoke-virtual {p1, p3}, Lcom/apptentive/android/sdk/network/HttpJsonRequest;->addListener(Lcom/apptentive/android/sdk/network/HttpRequest$Listener;)V

    return-object p1

    .line 154
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Conversation token is null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 150
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Conversation id is null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createConversationTokenRequest(Lcom/apptentive/android/sdk/model/ConversationTokenRequest;Lcom/apptentive/android/sdk/network/HttpRequest$Listener;)Lcom/apptentive/android/sdk/network/HttpJsonRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apptentive/android/sdk/model/ConversationTokenRequest;",
            "Lcom/apptentive/android/sdk/network/HttpRequest$Listener<",
            "Lcom/apptentive/android/sdk/network/HttpJsonRequest;",
            ">;)",
            "Lcom/apptentive/android/sdk/network/HttpJsonRequest;"
        }
    .end annotation

    const-string v0, "/conversation"

    .line 77
    sget-object v1, Lcom/apptentive/android/sdk/network/HttpRequestMethod;->POST:Lcom/apptentive/android/sdk/network/HttpRequestMethod;

    invoke-direct {p0, v0, p1, v1}, Lcom/apptentive/android/sdk/comm/ApptentiveHttpClient;->createJsonRequest(Ljava/lang/String;Lorg/json/JSONObject;Lcom/apptentive/android/sdk/network/HttpRequestMethod;)Lcom/apptentive/android/sdk/network/HttpJsonRequest;

    move-result-object p1

    .line 78
    invoke-virtual {p1, p2}, Lcom/apptentive/android/sdk/network/HttpJsonRequest;->addListener(Lcom/apptentive/android/sdk/network/HttpRequest$Listener;)V

    return-object p1
.end method

.method public createFetchInteractionsRequest(Ljava/lang/String;Ljava/lang/String;Lcom/apptentive/android/sdk/network/HttpRequest$Listener;)Lcom/apptentive/android/sdk/network/HttpJsonRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/apptentive/android/sdk/network/HttpRequest$Listener<",
            "Lcom/apptentive/android/sdk/network/HttpJsonRequest;",
            ">;)",
            "Lcom/apptentive/android/sdk/network/HttpJsonRequest;"
        }
    .end annotation

    .line 94
    invoke-static {p1}, Lcom/apptentive/android/sdk/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    invoke-static {p2}, Lcom/apptentive/android/sdk/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/conversations/%s/interactions"

    const/4 v1, 0x1

    .line 102
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/apptentive/android/sdk/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 103
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sget-object v1, Lcom/apptentive/android/sdk/network/HttpRequestMethod;->GET:Lcom/apptentive/android/sdk/network/HttpRequestMethod;

    invoke-direct {p0, p2, v0, v1}, Lcom/apptentive/android/sdk/comm/ApptentiveHttpClient;->createJsonRequest(Ljava/lang/String;Lorg/json/JSONObject;Lcom/apptentive/android/sdk/network/HttpRequestMethod;)Lcom/apptentive/android/sdk/network/HttpJsonRequest;

    move-result-object p2

    const-string v0, "Authorization"

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bearer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/apptentive/android/sdk/network/HttpJsonRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    invoke-virtual {p2, p3}, Lcom/apptentive/android/sdk/network/HttpJsonRequest;->addListener(Lcom/apptentive/android/sdk/network/HttpRequest$Listener;)V

    return-object p2

    .line 99
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Conversation id is null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 95
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Conversation token is null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createFetchMessagesRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/apptentive/android/sdk/network/HttpRequest$Listener;)Lcom/apptentive/android/sdk/network/HttpJsonRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Lcom/apptentive/android/sdk/network/HttpRequest$Listener<",
            "Lcom/apptentive/android/sdk/network/HttpJsonRequest;",
            ">;)",
            "Lcom/apptentive/android/sdk/network/HttpJsonRequest;"
        }
    .end annotation

    .line 110
    invoke-static {p1}, Lcom/apptentive/android/sdk/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 114
    invoke-static {p2}, Lcom/apptentive/android/sdk/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "/conversations/%s/messages?count=%s&starts_after=%s&before_id=%s"

    const/4 v1, 0x4

    .line 118
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    if-nez p5, :cond_0

    const-string p5, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p5

    :goto_0
    aput-object p5, v1, p2

    const/4 p2, 0x2

    if-nez p3, :cond_1

    const-string p3, ""

    :cond_1
    aput-object p3, v1, p2

    const/4 p2, 0x3

    if-nez p4, :cond_2

    const-string p4, ""

    :cond_2
    aput-object p4, v1, p2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 119
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    sget-object p4, Lcom/apptentive/android/sdk/network/HttpRequestMethod;->GET:Lcom/apptentive/android/sdk/network/HttpRequestMethod;

    invoke-direct {p0, p2, p3, p4}, Lcom/apptentive/android/sdk/comm/ApptentiveHttpClient;->createJsonRequest(Ljava/lang/String;Lorg/json/JSONObject;Lcom/apptentive/android/sdk/network/HttpRequestMethod;)Lcom/apptentive/android/sdk/network/HttpJsonRequest;

    move-result-object p2

    const-string p3, "Authorization"

    .line 120
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Bearer "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/apptentive/android/sdk/network/HttpJsonRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 121
    invoke-virtual {p2, p6}, Lcom/apptentive/android/sdk/network/HttpJsonRequest;->addListener(Lcom/apptentive/android/sdk/network/HttpRequest$Listener;)V

    return-object p2

    .line 115
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Conversation id is null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 111
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Conversation token is null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createFirstLoginRequest(Ljava/lang/String;Lcom/apptentive/android/sdk/storage/AppRelease;Lcom/apptentive/android/sdk/storage/Sdk;Lcom/apptentive/android/sdk/storage/Device;Lcom/apptentive/android/sdk/network/HttpRequest$Listener;)Lcom/apptentive/android/sdk/network/HttpJsonRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/apptentive/android/sdk/storage/AppRelease;",
            "Lcom/apptentive/android/sdk/storage/Sdk;",
            "Lcom/apptentive/android/sdk/storage/Device;",
            "Lcom/apptentive/android/sdk/network/HttpRequest$Listener<",
            "Lcom/apptentive/android/sdk/network/HttpJsonRequest;",
            ">;)",
            "Lcom/apptentive/android/sdk/network/HttpJsonRequest;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 169
    new-instance v0, Lcom/apptentive/android/sdk/model/ConversationTokenRequest;

    invoke-direct {v0}, Lcom/apptentive/android/sdk/model/ConversationTokenRequest;-><init>()V

    .line 170
    invoke-static {p3}, Lcom/apptentive/android/sdk/storage/SdkManager;->getPayload(Lcom/apptentive/android/sdk/storage/Sdk;)Lcom/apptentive/android/sdk/model/SdkPayload;

    move-result-object p3

    invoke-static {p2}, Lcom/apptentive/android/sdk/storage/AppReleaseManager;->getPayload(Lcom/apptentive/android/sdk/storage/AppRelease;)Lcom/apptentive/android/sdk/model/AppReleasePayload;

    move-result-object p2

    invoke-virtual {v0, p3, p2}, Lcom/apptentive/android/sdk/model/ConversationTokenRequest;->setSdkAndAppRelease(Lcom/apptentive/android/sdk/model/SdkPayload;Lcom/apptentive/android/sdk/model/AppReleasePayload;)V

    const/4 p2, 0x0

    .line 171
    invoke-static {p2, p4}, Lcom/apptentive/android/sdk/storage/DeviceManager;->getDiffPayload(Lcom/apptentive/android/sdk/storage/Device;Lcom/apptentive/android/sdk/storage/Device;)Lcom/apptentive/android/sdk/model/DevicePayload;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/apptentive/android/sdk/model/ConversationTokenRequest;->setDevice(Lcom/apptentive/android/sdk/model/DevicePayload;)V

    :try_start_0
    const-string/jumbo p2, "token"

    .line 174
    invoke-virtual {v0, p2, p1}, Lcom/apptentive/android/sdk/model/ConversationTokenRequest;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string p1, "/conversations"

    .line 179
    sget-object p2, Lcom/apptentive/android/sdk/network/HttpRequestMethod;->POST:Lcom/apptentive/android/sdk/network/HttpRequestMethod;

    invoke-direct {p0, p1, v0, p2}, Lcom/apptentive/android/sdk/comm/ApptentiveHttpClient;->createJsonRequest(Ljava/lang/String;Lorg/json/JSONObject;Lcom/apptentive/android/sdk/network/HttpRequestMethod;)Lcom/apptentive/android/sdk/network/HttpJsonRequest;

    move-result-object p1

    .line 180
    invoke-virtual {p1, p5}, Lcom/apptentive/android/sdk/network/HttpJsonRequest;->addListener(Lcom/apptentive/android/sdk/network/HttpRequest$Listener;)V

    return-object p1

    .line 166
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Token is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createLegacyConversationIdRequest(Ljava/lang/String;Lcom/apptentive/android/sdk/network/HttpRequest$Listener;)Lcom/apptentive/android/sdk/network/HttpJsonRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/apptentive/android/sdk/network/HttpRequest$Listener<",
            "Lcom/apptentive/android/sdk/network/HttpJsonRequest;",
            ">;)",
            "Lcom/apptentive/android/sdk/network/HttpJsonRequest;"
        }
    .end annotation

    .line 83
    invoke-static {p1}, Lcom/apptentive/android/sdk/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/conversation/token"

    .line 87
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    sget-object v2, Lcom/apptentive/android/sdk/network/HttpRequestMethod;->GET:Lcom/apptentive/android/sdk/network/HttpRequestMethod;

    invoke-direct {p0, v0, v1, v2}, Lcom/apptentive/android/sdk/comm/ApptentiveHttpClient;->createJsonRequest(Ljava/lang/String;Lorg/json/JSONObject;Lcom/apptentive/android/sdk/network/HttpRequestMethod;)Lcom/apptentive/android/sdk/network/HttpJsonRequest;

    move-result-object v0

    const-string v1, "Authorization"

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OAuth "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/apptentive/android/sdk/network/HttpJsonRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    invoke-virtual {v0, p2}, Lcom/apptentive/android/sdk/network/HttpJsonRequest;->addListener(Lcom/apptentive/android/sdk/network/HttpRequest$Listener;)V

    return-object v0

    .line 84
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Conversation token is null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createLoginRequest(Ljava/lang/String;Ljava/lang/String;Lcom/apptentive/android/sdk/network/HttpRequest$Listener;)Lcom/apptentive/android/sdk/network/HttpJsonRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/apptentive/android/sdk/network/HttpRequest$Listener<",
            "Lcom/apptentive/android/sdk/network/HttpJsonRequest;",
            ">;)",
            "Lcom/apptentive/android/sdk/network/HttpJsonRequest;"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 130
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v1, "token"

    .line 132
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-nez p1, :cond_0

    const-string p1, "/conversations"

    goto :goto_0

    :cond_0
    const-string p2, "/conversations/%s/session"

    const/4 v1, 0x1

    .line 141
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2, v1}, Lcom/apptentive/android/sdk/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 143
    :goto_0
    sget-object p2, Lcom/apptentive/android/sdk/network/HttpRequestMethod;->POST:Lcom/apptentive/android/sdk/network/HttpRequestMethod;

    invoke-direct {p0, p1, v0, p2}, Lcom/apptentive/android/sdk/comm/ApptentiveHttpClient;->createJsonRequest(Ljava/lang/String;Lorg/json/JSONObject;Lcom/apptentive/android/sdk/network/HttpRequestMethod;)Lcom/apptentive/android/sdk/network/HttpJsonRequest;

    move-result-object p1

    .line 144
    invoke-virtual {p1, p3}, Lcom/apptentive/android/sdk/network/HttpJsonRequest;->addListener(Lcom/apptentive/android/sdk/network/HttpRequest$Listener;)V

    return-object p1

    .line 127
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Token is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createPayloadSendRequest(Lcom/apptentive/android/sdk/model/PayloadData;Lcom/apptentive/android/sdk/network/HttpRequest$Listener;)Lcom/apptentive/android/sdk/network/HttpRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apptentive/android/sdk/model/PayloadData;",
            "Lcom/apptentive/android/sdk/network/HttpRequest$Listener<",
            "Lcom/apptentive/android/sdk/network/HttpRequest;",
            ">;)",
            "Lcom/apptentive/android/sdk/network/HttpRequest;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 201
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/comm/ApptentiveHttpClient;->createPayloadRequest(Lcom/apptentive/android/sdk/model/PayloadData;)Lcom/apptentive/android/sdk/network/HttpRequest;

    move-result-object p1

    .line 202
    invoke-virtual {p1, p2}, Lcom/apptentive/android/sdk/network/HttpRequest;->addListener(Lcom/apptentive/android/sdk/network/HttpRequest$Listener;)V

    return-object p1

    .line 198
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Payload is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public findRequest(Ljava/lang/String;)Lcom/apptentive/android/sdk/network/HttpRequest;
    .locals 1

    .line 188
    invoke-static {}, Lcom/apptentive/android/sdk/network/HttpRequestManager;->sharedManager()Lcom/apptentive/android/sdk/network/HttpRequestManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apptentive/android/sdk/network/HttpRequestManager;->findRequest(Ljava/lang/String;)Lcom/apptentive/android/sdk/network/HttpRequest;

    move-result-object p1

    return-object p1
.end method
