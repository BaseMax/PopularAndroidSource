.class public abstract Lcom/apptentive/android/sdk/model/Payload;
.super Ljava/lang/Object;
.source "Payload.java"


# instance fields
.field private attachments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private authenticated:Z

.field private conversationId:Ljava/lang/String;

.field private encryption:Lcom/apptentive/android/sdk/Encryption;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private localConversationIdentifier:Ljava/lang/String;

.field private final payloadType:Lcom/apptentive/android/sdk/model/PayloadType;

.field private sessionId:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private token:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/apptentive/android/sdk/model/PayloadType;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 59
    iput-object p1, p0, Lcom/apptentive/android/sdk/model/Payload;->payloadType:Lcom/apptentive/android/sdk/model/PayloadType;

    return-void

    .line 56
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Payload type is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getAttachments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/apptentive/android/sdk/model/Payload;->attachments:Ljava/util/List;

    return-object v0
.end method

.method public getConversationId()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/apptentive/android/sdk/model/Payload;->conversationId:Ljava/lang/String;

    return-object v0
.end method

.method public getConversationToken()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/apptentive/android/sdk/model/Payload;->token:Ljava/lang/String;

    return-object v0
.end method

.method getEncryption()Lcom/apptentive/android/sdk/Encryption;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/apptentive/android/sdk/model/Payload;->encryption:Lcom/apptentive/android/sdk/Encryption;

    return-object v0
.end method

.method public abstract getHttpEndPoint(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getHttpRequestContentType()Ljava/lang/String;
.end method

.method public abstract getHttpRequestMethod()Lcom/apptentive/android/sdk/network/HttpRequestMethod;
.end method

.method public getLocalConversationIdentifier()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/apptentive/android/sdk/model/Payload;->localConversationIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getNonce()Ljava/lang/String;
.end method

.method public getPayloadType()Lcom/apptentive/android/sdk/model/PayloadType;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/apptentive/android/sdk/model/Payload;->payloadType:Lcom/apptentive/android/sdk/model/PayloadType;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/apptentive/android/sdk/model/Payload;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public hasSessionId()Z
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/apptentive/android/sdk/model/Payload;->sessionId:Ljava/lang/String;

    invoke-static {v0}, Lcom/apptentive/android/sdk/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isAuthenticated()Z
    .locals 1

    .line 144
    iget-boolean v0, p0, Lcom/apptentive/android/sdk/model/Payload;->authenticated:Z

    return v0
.end method

.method public abstract renderData()[B
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public setAttachments(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 132
    iput-object p1, p0, Lcom/apptentive/android/sdk/model/Payload;->attachments:Ljava/util/List;

    return-void
.end method

.method public setAuthenticated(Z)V
    .locals 0

    .line 148
    iput-boolean p1, p0, Lcom/apptentive/android/sdk/model/Payload;->authenticated:Z

    return-void
.end method

.method public setConversationId(Ljava/lang/String;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/apptentive/android/sdk/model/Payload;->conversationId:Ljava/lang/String;

    return-void
.end method

.method public setEncryption(Lcom/apptentive/android/sdk/Encryption;)V
    .locals 1
    .param p1    # Lcom/apptentive/android/sdk/Encryption;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 104
    iput-object p1, p0, Lcom/apptentive/android/sdk/model/Payload;->encryption:Lcom/apptentive/android/sdk/Encryption;

    return-void

    .line 102
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Encryption is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLocalConversationIdentifier(Ljava/lang/String;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/apptentive/android/sdk/model/Payload;->localConversationIdentifier:Ljava/lang/String;

    return-void
.end method

.method public abstract setNonce(Ljava/lang/String;)V
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/apptentive/android/sdk/model/Payload;->sessionId:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 120
    iput-object p1, p0, Lcom/apptentive/android/sdk/model/Payload;->token:Ljava/lang/String;

    return-void
.end method
