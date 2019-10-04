.class public Lcom/apptentive/android/sdk/model/CompoundMessage;
.super Lcom/apptentive/android/sdk/model/ApptentiveMessage;
.source "CompoundMessage.java"

# interfaces
.implements Lcom/apptentive/android/sdk/module/messagecenter/model/MessageCenterUtil$CompoundMessageCommonInterface;


# static fields
.field public static final KEY_TEXT_ONLY:Ljava/lang/String; = "text_only"


# instance fields
.field private attachedFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apptentive/android/sdk/model/StoredFile;",
            ">;"
        }
    .end annotation
.end field

.field private final boundary:Ljava/lang/String;

.field private hasNoAttachments:Z

.field private isLast:Z

.field private remoteAttachmentStoredFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/apptentive/android/sdk/model/StoredFile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    const-class v0, Lcom/apptentive/android/sdk/model/CompoundMessage;

    invoke-static {v0}, Lcom/apptentive/android/sdk/model/CompoundMessage;->registerSensitiveKeys(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/apptentive/android/sdk/model/ApptentiveMessage;-><init>()V

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcom/apptentive/android/sdk/model/CompoundMessage;->hasNoAttachments:Z

    .line 63
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apptentive/android/sdk/model/CompoundMessage;->boundary:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 72
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/model/ApptentiveMessage;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcom/apptentive/android/sdk/model/CompoundMessage;->hasNoAttachments:Z

    .line 73
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apptentive/android/sdk/model/CompoundMessage;->boundary:Ljava/lang/String;

    .line 74
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/model/CompoundMessage;->parseAttachmentsArray(Ljava/lang/String;)Z

    .line 75
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/model/CompoundMessage;->getTextOnly()Z

    move-result p1

    iput-boolean p1, p0, Lcom/apptentive/android/sdk/model/CompoundMessage;->hasNoAttachments:Z

    return-void
.end method

.method private logException(Ljava/lang/Exception;)V
    .locals 0

    .line 386
    invoke-static {p1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method private parseAttachmentsArray(Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 249
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "attachments"

    .line 250
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    const-string p1, "attachments"

    .line 251
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/apptentive/android/sdk/model/CompoundMessage;->remoteAttachmentStoredFiles:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 253
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 254
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 255
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "content_type"

    .line 256
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 257
    new-instance v4, Lcom/apptentive/android/sdk/model/StoredFile;

    invoke-direct {v4}, Lcom/apptentive/android/sdk/model/StoredFile;-><init>()V

    .line 258
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/model/CompoundMessage;->getNonce()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/apptentive/android/sdk/model/StoredFile;->setId(Ljava/lang/String;)V

    const-string/jumbo v5, "url"

    .line 259
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/apptentive/android/sdk/model/StoredFile;->setApptentiveUri(Ljava/lang/String;)V

    const-string/jumbo v5, "thumbnail_url"

    .line 260
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/apptentive/android/sdk/model/StoredFile;->setSourceUriOrPath(Ljava/lang/String;)V

    const-string v5, ""

    .line 261
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/apptentive/android/sdk/model/StoredFile;->setLocalFilePath(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v4, v2}, Lcom/apptentive/android/sdk/model/StoredFile;->setMimeType(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    .line 263
    invoke-virtual {v4, v2, v3}, Lcom/apptentive/android/sdk/model/StoredFile;->setCreationTime(J)V

    .line 264
    iget-object v2, p0, Lcom/apptentive/android/sdk/model/CompoundMessage;->remoteAttachmentStoredFiles:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 266
    :cond_0
    iget-object p1, p0, Lcom/apptentive/android/sdk/model/CompoundMessage;->remoteAttachmentStoredFiles:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 267
    invoke-virtual {p0, v1}, Lcom/apptentive/android/sdk/model/CompoundMessage;->setTextOnly(Z)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method


# virtual methods
.method public deleteAssociatedFiles()V
    .locals 4

    .line 210
    :try_start_0
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getInstance()Lcom/apptentive/android/sdk/ApptentiveInstance;

    move-result-object v0

    invoke-interface {v0}, Lcom/apptentive/android/sdk/ApptentiveInstance;->getApptentiveTaskManager()Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/model/CompoundMessage;->getNonce()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;->getAssociatedFiles(Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 211
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 213
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 217
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apptentive/android/sdk/model/StoredFile;

    .line 218
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Lcom/apptentive/android/sdk/model/StoredFile;->getLocalFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 222
    :cond_1
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getInstance()Lcom/apptentive/android/sdk/ApptentiveInstance;

    move-result-object v0

    invoke-interface {v0}, Lcom/apptentive/android/sdk/ApptentiveInstance;->getApptentiveTaskManager()Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/model/CompoundMessage;->getNonce()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;->deleteAssociatedFiles(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v0

    .line 224
    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->MESSAGES:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v2, "Unable to delete associated files in worker thread"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    invoke-direct {p0, v0}, Lcom/apptentive/android/sdk/model/CompoundMessage;->logException(Ljava/lang/Exception;)V

    :goto_2
    return-void
.end method

.method public getAssociatedFiles()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/apptentive/android/sdk/model/StoredFile;",
            ">;"
        }
    .end annotation

    .line 193
    iget-boolean v0, p0, Lcom/apptentive/android/sdk/model/CompoundMessage;->hasNoAttachments:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 198
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getInstance()Lcom/apptentive/android/sdk/ApptentiveInstance;

    move-result-object v0

    invoke-interface {v0}, Lcom/apptentive/android/sdk/ApptentiveInstance;->getApptentiveTaskManager()Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/model/CompoundMessage;->getNonce()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;->getAssociatedFiles(Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 199
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catch_0
    move-exception v0

    .line 201
    :try_start_1
    sget-object v2, Lcom/apptentive/android/sdk/ApptentiveLogTag;->MESSAGES:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v3, "Unable to get associated files in worker thread"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    invoke-direct {p0, v0}, Lcom/apptentive/android/sdk/model/CompoundMessage;->logException(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-object v1
.end method

.method public getBody()Ljava/lang/String;
    .locals 2

    const-string v0, "body"

    const/4 v1, 0x0

    .line 105
    invoke-virtual {p0, v0, v1}, Lcom/apptentive/android/sdk/model/CompoundMessage;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHttpEndPoint(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "/conversations/%s/messages"

    const/4 v1, 0x1

    .line 82
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/apptentive/android/sdk/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHttpRequestContentType()Ljava/lang/String;
    .locals 4

    const-string v0, "%s;boundary=%s"

    const/4 v1, 0x2

    .line 92
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/model/CompoundMessage;->isAuthenticated()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "multipart/encrypted"

    goto :goto_0

    :cond_0
    const-string v2, "multipart/mixed"

    :goto_0
    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/apptentive/android/sdk/model/CompoundMessage;->boundary:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHttpRequestMethod()Lcom/apptentive/android/sdk/network/HttpRequestMethod;
    .locals 1

    .line 87
    sget-object v0, Lcom/apptentive/android/sdk/network/HttpRequestMethod;->POST:Lcom/apptentive/android/sdk/network/HttpRequestMethod;

    return-object v0
.end method

.method public getListItemType()I
    .locals 1

    .line 276
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/model/CompoundMessage;->isAutomatedMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    return v0

    .line 278
    :cond_0
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/model/CompoundMessage;->isOutgoingMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    return v0

    :cond_1
    const/4 v0, 0x6

    return v0
.end method

.method public getRemoteAttachments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/apptentive/android/sdk/model/StoredFile;",
            ">;"
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/apptentive/android/sdk/model/CompoundMessage;->remoteAttachmentStoredFiles:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTextOnly()Z
    .locals 1

    const-string/jumbo v0, "text_only"

    .line 123
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/model/CompoundMessage;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "title"

    const/4 v1, 0x0

    .line 115
    invoke-virtual {p0, v0, v1}, Lcom/apptentive/android/sdk/model/CompoundMessage;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initType()V
    .locals 1

    .line 99
    sget-object v0, Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;->CompoundMessage:Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;

    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/model/CompoundMessage;->setType(Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;)V

    return-void
.end method

.method public isLastSent()Z
    .locals 1

    .line 232
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/model/CompoundMessage;->isOutgoingMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/apptentive/android/sdk/model/CompoundMessage;->isLast:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public renderData()[B
    .locals 14
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 300
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/model/CompoundMessage;->isAuthenticated()Z

    move-result v0

    .line 301
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 304
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--"

    .line 305
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/apptentive/android/sdk/model/CompoundMessage;->boundary:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Content-Disposition: form-data; name=\"message\""

    .line 309
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Content-Type: application/json;charset=UTF-8"

    .line 310
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\r\n"

    .line 311
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/model/CompoundMessage;->marshallForSending()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 315
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/model/CompoundMessage;->getEncryption()Lcom/apptentive/android/sdk/Encryption;

    move-result-object v4

    if-eqz v0, :cond_0

    const-string v5, "Content-Disposition: form-data; name=\"message\""

    .line 318
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\r\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Content-Type: application/octet-stream"

    .line 319
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\r\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\r\n"

    .line 320
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 322
    invoke-interface {v4, v3}, Lcom/apptentive/android/sdk/Encryption;->encrypt([B)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const-string v2, "\r\n"

    .line 323
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_0

    .line 325
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 326
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 330
    :goto_0
    iget-object v2, p0, Lcom/apptentive/android/sdk/model/CompoundMessage;->attachedFiles:Ljava/util/List;

    const/4 v3, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    .line 331
    iget-object v2, p0, Lcom/apptentive/android/sdk/model/CompoundMessage;->attachedFiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/apptentive/android/sdk/model/StoredFile;

    .line 332
    sget-object v7, Lcom/apptentive/android/sdk/ApptentiveLogTag;->PAYLOADS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v8, "Starting to write an attachment part."

    new-array v9, v5, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 333
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "--"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/apptentive/android/sdk/model/CompoundMessage;->boundary:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 334
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Content-Disposition: form-data; name=\"file[]\"; filename=\"%s\""

    .line 335
    new-array v9, v3, [Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/apptentive/android/sdk/model/StoredFile;->getFileName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v5

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "Content-Type: "

    .line 336
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/apptentive/android/sdk/model/StoredFile;->getMimeType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\r\n"

    .line 337
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v9, 0x0

    .line 340
    sget-object v10, Lcom/apptentive/android/sdk/ApptentiveLogTag;->PAYLOADS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v11, "Writing attachment envelope: %s"

    new-array v12, v3, [Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v5

    invoke-static {v10, v11, v12}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 341
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 344
    :try_start_0
    invoke-virtual {v6}, Lcom/apptentive/android/sdk/model/StoredFile;->getMimeType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/apptentive/android/sdk/util/Util;->isMimeTypeImage(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 345
    sget-object v7, Lcom/apptentive/android/sdk/ApptentiveLogTag;->PAYLOADS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v10, "Appending image attachment."

    new-array v11, v5, [Ljava/lang/Object;

    invoke-static {v7, v10, v11}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 346
    invoke-virtual {v6}, Lcom/apptentive/android/sdk/model/StoredFile;->getSourceUriOrPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v8}, Lcom/apptentive/android/sdk/util/image/ImageUtil;->appendScaledDownImageToStream(Ljava/lang/String;Ljava/io/OutputStream;)Z

    goto :goto_2

    .line 348
    :cond_1
    sget-object v7, Lcom/apptentive/android/sdk/ApptentiveLogTag;->PAYLOADS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v10, "Appending non-image attachment."

    new-array v11, v5, [Ljava/lang/Object;

    invoke-static {v7, v10, v11}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 349
    new-instance v7, Ljava/io/File;

    invoke-virtual {v6}, Lcom/apptentive/android/sdk/model/StoredFile;->getSourceUriOrPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v8}, Lcom/apptentive/android/sdk/util/Util;->appendFileToStream(Ljava/io/File;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    :goto_2
    invoke-static {v9}, Lcom/apptentive/android/sdk/util/Util;->ensureClosed(Ljava/io/Closeable;)V

    if-eqz v0, :cond_2

    .line 361
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Content-Disposition: form-data; name=\"file[]\""

    .line 363
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "Content-Type: application/octet-stream"

    .line 364
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\r\n"

    .line 365
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    sget-object v7, Lcom/apptentive/android/sdk/ApptentiveLogTag;->PAYLOADS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v9, "Writing encrypted envelope: %s"

    new-array v10, v3, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v5

    invoke-static {v7, v9, v10}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 367
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 368
    sget-object v6, Lcom/apptentive/android/sdk/ApptentiveLogTag;->PAYLOADS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v7, "Encrypting attachment bytes: %d"

    new-array v9, v3, [Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v5

    invoke-static {v6, v7, v9}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 369
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/apptentive/android/sdk/Encryption;->encrypt([B)[B

    move-result-object v6

    .line 370
    sget-object v7, Lcom/apptentive/android/sdk/ApptentiveLogTag;->PAYLOADS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v8, "Writing encrypted attachment bytes: %d"

    new-array v9, v3, [Ljava/lang/Object;

    array-length v10, v6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v5

    invoke-static {v7, v8, v9}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 371
    invoke-virtual {v1, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_3

    .line 373
    :cond_2
    sget-object v6, Lcom/apptentive/android/sdk/ApptentiveLogTag;->PAYLOADS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v7, "Writing attachment bytes: %d"

    new-array v9, v3, [Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v5

    invoke-static {v6, v7, v9}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 374
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :goto_3
    const-string v6, "\r\n"

    .line 376
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v7

    .line 352
    :try_start_1
    sget-object v8, Lcom/apptentive/android/sdk/ApptentiveLogTag;->PAYLOADS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v10, "Error reading Message Payload attachment: \"%s\"."

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v7, v11, v5

    invoke-virtual {v6}, Lcom/apptentive/android/sdk/model/StoredFile;->getLocalFilePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v11, v3

    invoke-static {v8, v10, v11}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 353
    invoke-direct {p0, v7}, Lcom/apptentive/android/sdk/model/CompoundMessage;->logException(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 356
    invoke-static {v9}, Lcom/apptentive/android/sdk/util/Util;->ensureClosed(Ljava/io/Closeable;)V

    goto/16 :goto_1

    :goto_4
    invoke-static {v9}, Lcom/apptentive/android/sdk/util/Util;->ensureClosed(Ljava/io/Closeable;)V

    throw v0

    .line 379
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/apptentive/android/sdk/model/CompoundMessage;->boundary:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "--"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 381
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->PAYLOADS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v2, "Total payload body bytes: %d"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0, v2, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->d(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 382
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public setAssociatedFiles(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/apptentive/android/sdk/model/StoredFile;",
            ">;)Z"
        }
    .end annotation

    .line 170
    iput-object p1, p0, Lcom/apptentive/android/sdk/model/CompoundMessage;->attachedFiles:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 172
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 176
    :cond_0
    iput-boolean v0, p0, Lcom/apptentive/android/sdk/model/CompoundMessage;->hasNoAttachments:Z

    .line 178
    iget-boolean v1, p0, Lcom/apptentive/android/sdk/model/CompoundMessage;->hasNoAttachments:Z

    invoke-virtual {p0, v1}, Lcom/apptentive/android/sdk/model/CompoundMessage;->setTextOnly(Z)V

    .line 182
    :try_start_0
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getInstance()Lcom/apptentive/android/sdk/ApptentiveInstance;

    move-result-object v1

    invoke-interface {v1}, Lcom/apptentive/android/sdk/ApptentiveInstance;->getApptentiveTaskManager()Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;->addCompoundMessageFiles(Ljava/util/List;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 183
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catch_0
    move-exception p1

    .line 185
    :try_start_1
    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->MESSAGES:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v2, "Unable to set associated files in worker thread"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/model/CompoundMessage;->logException(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return v0

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 173
    iput-boolean p1, p0, Lcom/apptentive/android/sdk/model/CompoundMessage;->hasNoAttachments:Z

    return v0
.end method

.method public setAssociatedImages(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/apptentive/android/sdk/util/image/ImageItem;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 134
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 138
    :cond_0
    iput-boolean v0, p0, Lcom/apptentive/android/sdk/model/CompoundMessage;->hasNoAttachments:Z

    .line 140
    iget-boolean v1, p0, Lcom/apptentive/android/sdk/model/CompoundMessage;->hasNoAttachments:Z

    invoke-virtual {p0, v1}, Lcom/apptentive/android/sdk/model/CompoundMessage;->setTextOnly(Z)V

    .line 141
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 142
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apptentive/android/sdk/util/image/ImageItem;

    .line 143
    new-instance v3, Lcom/apptentive/android/sdk/model/StoredFile;

    invoke-direct {v3}, Lcom/apptentive/android/sdk/model/StoredFile;-><init>()V

    .line 144
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/model/CompoundMessage;->getNonce()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/apptentive/android/sdk/model/StoredFile;->setId(Ljava/lang/String;)V

    const-string v4, ""

    .line 145
    invoke-virtual {v3, v4}, Lcom/apptentive/android/sdk/model/StoredFile;->setApptentiveUri(Ljava/lang/String;)V

    .line 146
    iget-object v4, v2, Lcom/apptentive/android/sdk/util/image/ImageItem;->originalPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/apptentive/android/sdk/model/StoredFile;->setSourceUriOrPath(Ljava/lang/String;)V

    .line 148
    iget-object v4, v2, Lcom/apptentive/android/sdk/util/image/ImageItem;->localCachePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/apptentive/android/sdk/model/StoredFile;->setLocalFilePath(Ljava/lang/String;)V

    const-string v4, "image/jpeg"

    .line 149
    invoke-virtual {v3, v4}, Lcom/apptentive/android/sdk/model/StoredFile;->setMimeType(Ljava/lang/String;)V

    .line 150
    iget-wide v4, v2, Lcom/apptentive/android/sdk/util/image/ImageItem;->time:J

    invoke-virtual {v3, v4, v5}, Lcom/apptentive/android/sdk/model/StoredFile;->setCreationTime(J)V

    .line 151
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 154
    :cond_1
    iput-object v1, p0, Lcom/apptentive/android/sdk/model/CompoundMessage;->attachedFiles:Ljava/util/List;

    .line 158
    :try_start_0
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getInstance()Lcom/apptentive/android/sdk/ApptentiveInstance;

    move-result-object p1

    invoke-interface {p1}, Lcom/apptentive/android/sdk/ApptentiveInstance;->getApptentiveTaskManager()Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;->addCompoundMessageFiles(Ljava/util/List;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 159
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catch_0
    move-exception p1

    .line 161
    :try_start_1
    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->MESSAGES:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v2, "Unable to set associated images in worker thread"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/model/CompoundMessage;->logException(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return v0

    :cond_2
    :goto_1
    const/4 p1, 0x1

    .line 135
    iput-boolean p1, p0, Lcom/apptentive/android/sdk/model/CompoundMessage;->hasNoAttachments:Z

    return v0
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 1

    const-string v0, "body"

    .line 111
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/CompoundMessage;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLastSent(Z)V
    .locals 0

    .line 237
    iput-boolean p1, p0, Lcom/apptentive/android/sdk/model/CompoundMessage;->isLast:Z

    return-void
.end method

.method public setTextOnly(Z)V
    .locals 1

    const-string/jumbo v0, "text_only"

    .line 127
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/CompoundMessage;->put(Ljava/lang/String;Z)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "title"

    .line 119
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/CompoundMessage;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
