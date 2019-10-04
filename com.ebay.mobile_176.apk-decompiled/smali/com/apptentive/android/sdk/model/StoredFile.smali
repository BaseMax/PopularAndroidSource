.class public Lcom/apptentive/android/sdk/model/StoredFile;
.super Ljava/lang/Object;
.source "StoredFile.java"


# instance fields
.field private apptentiveUri:Ljava/lang/String;

.field private creationTime:J

.field private id:Ljava/lang/String;

.field private localFilePath:Ljava/lang/String;

.field private mimeType:Ljava/lang/String;

.field private sourceUriOrPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApptentiveUri()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/apptentive/android/sdk/model/StoredFile;->apptentiveUri:Ljava/lang/String;

    return-object v0
.end method

.method public getCreationTime()J
    .locals 2

    .line 78
    iget-wide v0, p0, Lcom/apptentive/android/sdk/model/StoredFile;->creationTime:J

    return-wide v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 4

    const-string v0, "file.%s"

    const/4 v1, 0x1

    .line 74
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    iget-object v3, p0, Lcom/apptentive/android/sdk/model/StoredFile;->mimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/apptentive/android/sdk/model/StoredFile;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalFilePath()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/apptentive/android/sdk/model/StoredFile;->localFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/apptentive/android/sdk/model/StoredFile;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceUriOrPath()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/apptentive/android/sdk/model/StoredFile;->sourceUriOrPath:Ljava/lang/String;

    return-object v0
.end method

.method public setApptentiveUri(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/apptentive/android/sdk/model/StoredFile;->apptentiveUri:Ljava/lang/String;

    return-void
.end method

.method public setCreationTime(J)V
    .locals 0

    .line 82
    iput-wide p1, p0, Lcom/apptentive/android/sdk/model/StoredFile;->creationTime:J

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/apptentive/android/sdk/model/StoredFile;->id:Ljava/lang/String;

    return-void
.end method

.method public setLocalFilePath(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/apptentive/android/sdk/model/StoredFile;->localFilePath:Ljava/lang/String;

    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/apptentive/android/sdk/model/StoredFile;->mimeType:Ljava/lang/String;

    return-void
.end method

.method public setSourceUriOrPath(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/apptentive/android/sdk/model/StoredFile;->sourceUriOrPath:Ljava/lang/String;

    return-void
.end method
