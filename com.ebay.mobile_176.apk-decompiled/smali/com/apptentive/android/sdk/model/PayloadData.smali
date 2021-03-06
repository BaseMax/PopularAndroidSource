.class public Lcom/apptentive/android/sdk/model/PayloadData;
.super Ljava/lang/Object;
.source "PayloadData.java"


# instance fields
.field private final authToken:Ljava/lang/String;

.field private final authenticated:Z

.field private final contentType:Ljava/lang/String;

.field private final conversationId:Ljava/lang/String;

.field private final data:[B

.field private final httpRequestMethod:Lcom/apptentive/android/sdk/network/HttpRequestMethod;

.field private final httpRequestPath:Ljava/lang/String;

.field private final nonce:Ljava/lang/String;

.field private final type:Lcom/apptentive/android/sdk/model/PayloadType;


# direct methods
.method public constructor <init>(Lcom/apptentive/android/sdk/model/PayloadType;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/apptentive/android/sdk/network/HttpRequestMethod;Z)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_6

    if-eqz p2, :cond_5

    if-eqz p3, :cond_4

    if-eqz p4, :cond_3

    if-eqz p6, :cond_2

    if-eqz p7, :cond_1

    if-eqz p8, :cond_0

    .line 55
    iput-object p1, p0, Lcom/apptentive/android/sdk/model/PayloadData;->type:Lcom/apptentive/android/sdk/model/PayloadType;

    .line 56
    iput-object p2, p0, Lcom/apptentive/android/sdk/model/PayloadData;->nonce:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcom/apptentive/android/sdk/model/PayloadData;->conversationId:Ljava/lang/String;

    .line 58
    iput-object p4, p0, Lcom/apptentive/android/sdk/model/PayloadData;->data:[B

    .line 59
    iput-object p5, p0, Lcom/apptentive/android/sdk/model/PayloadData;->authToken:Ljava/lang/String;

    .line 60
    iput-object p6, p0, Lcom/apptentive/android/sdk/model/PayloadData;->contentType:Ljava/lang/String;

    .line 61
    iput-object p7, p0, Lcom/apptentive/android/sdk/model/PayloadData;->httpRequestPath:Ljava/lang/String;

    .line 62
    iput-object p8, p0, Lcom/apptentive/android/sdk/model/PayloadData;->httpRequestMethod:Lcom/apptentive/android/sdk/network/HttpRequestMethod;

    .line 63
    iput-boolean p9, p0, Lcom/apptentive/android/sdk/model/PayloadData;->authenticated:Z

    return-void

    .line 52
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Http request method is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 48
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Path is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Content type is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Data is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Conversation ID is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Nonce is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Payload type is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getAuthToken()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/apptentive/android/sdk/model/PayloadData;->authToken:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/apptentive/android/sdk/model/PayloadData;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getConversationId()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/apptentive/android/sdk/model/PayloadData;->conversationId:Ljava/lang/String;

    return-object v0
.end method

.method public getData()[B
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/apptentive/android/sdk/model/PayloadData;->data:[B

    return-object v0
.end method

.method public getHttpRequestMethod()Lcom/apptentive/android/sdk/network/HttpRequestMethod;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/apptentive/android/sdk/model/PayloadData;->httpRequestMethod:Lcom/apptentive/android/sdk/network/HttpRequestMethod;

    return-object v0
.end method

.method public getHttpRequestPath()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/apptentive/android/sdk/model/PayloadData;->httpRequestPath:Ljava/lang/String;

    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/apptentive/android/sdk/model/PayloadData;->nonce:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/apptentive/android/sdk/model/PayloadType;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/apptentive/android/sdk/model/PayloadData;->type:Lcom/apptentive/android/sdk/model/PayloadType;

    return-object v0
.end method

.method public isAuthenticated()Z
    .locals 1

    .line 110
    iget-boolean v0, p0, Lcom/apptentive/android/sdk/model/PayloadData;->authenticated:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "type=%s nonce=%s conversationId=%s authToken=%s httpRequestPath=%s"

    const/4 v1, 0x5

    .line 70
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/apptentive/android/sdk/model/PayloadData;->type:Lcom/apptentive/android/sdk/model/PayloadType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/apptentive/android/sdk/model/PayloadData;->nonce:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/apptentive/android/sdk/model/PayloadData;->conversationId:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/apptentive/android/sdk/model/PayloadData;->authToken:Ljava/lang/String;

    invoke-static {v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->hideIfSanitized(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/apptentive/android/sdk/model/PayloadData;->httpRequestPath:Ljava/lang/String;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/apptentive/android/sdk/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
