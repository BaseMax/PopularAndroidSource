.class public Lcom/apptentive/android/sdk/model/SdkPayload;
.super Lcom/apptentive/android/sdk/model/JsonPayload;
.source "SdkPayload.java"


# static fields
.field public static final KEY:Ljava/lang/String; = "sdk"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-class v0, Lcom/apptentive/android/sdk/model/SdkPayload;

    invoke-static {v0}, Lcom/apptentive/android/sdk/model/SdkPayload;->registerSensitiveKeys(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    sget-object v0, Lcom/apptentive/android/sdk/model/PayloadType;->sdk:Lcom/apptentive/android/sdk/model/PayloadType;

    invoke-direct {p0, v0}, Lcom/apptentive/android/sdk/model/JsonPayload;-><init>(Lcom/apptentive/android/sdk/model/PayloadType;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 34
    sget-object v0, Lcom/apptentive/android/sdk/model/PayloadType;->sdk:Lcom/apptentive/android/sdk/model/PayloadType;

    invoke-direct {p0, v0, p1}, Lcom/apptentive/android/sdk/model/JsonPayload;-><init>(Lcom/apptentive/android/sdk/model/PayloadType;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAuthorEmail()Ljava/lang/String;
    .locals 2

    const-string v0, "author_email"

    const/4 v1, 0x0

    .line 81
    invoke-virtual {p0, v0, v1}, Lcom/apptentive/android/sdk/model/SdkPayload;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthorName()Ljava/lang/String;
    .locals 2

    const-string v0, "author_name"

    const/4 v1, 0x0

    .line 73
    invoke-virtual {p0, v0, v1}, Lcom/apptentive/android/sdk/model/SdkPayload;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDistribution()Ljava/lang/String;
    .locals 2

    const-string v0, "distribution"

    const/4 v1, 0x0

    .line 97
    invoke-virtual {p0, v0, v1}, Lcom/apptentive/android/sdk/model/SdkPayload;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDistributionVersion()Ljava/lang/String;
    .locals 2

    const-string v0, "distribution_version"

    const/4 v1, 0x0

    .line 105
    invoke-virtual {p0, v0, v1}, Lcom/apptentive/android/sdk/model/SdkPayload;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHttpEndPoint(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 41
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is deprecated"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getHttpRequestContentType()Ljava/lang/String;
    .locals 3

    .line 51
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is deprecated"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getHttpRequestMethod()Lcom/apptentive/android/sdk/network/HttpRequestMethod;
    .locals 3

    .line 46
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is deprecated"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 2

    const-string v0, "platform"

    const/4 v1, 0x0

    .line 89
    invoke-virtual {p0, v0, v1}, Lcom/apptentive/android/sdk/model/SdkPayload;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProgrammingLanguage()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "programming_language"

    const/4 v1, 0x0

    .line 65
    invoke-virtual {p0, v0, v1}, Lcom/apptentive/android/sdk/model/SdkPayload;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "version"

    const/4 v1, 0x0

    .line 57
    invoke-virtual {p0, v0, v1}, Lcom/apptentive/android/sdk/model/SdkPayload;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAuthorEmail(Ljava/lang/String;)V
    .locals 1

    const-string v0, "author_email"

    .line 85
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/SdkPayload;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAuthorName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "author_name"

    .line 77
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/SdkPayload;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDistribution(Ljava/lang/String;)V
    .locals 1

    const-string v0, "distribution"

    .line 101
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/SdkPayload;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDistributionVersion(Ljava/lang/String;)V
    .locals 1

    const-string v0, "distribution_version"

    .line 109
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/SdkPayload;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPlatform(Ljava/lang/String;)V
    .locals 1

    const-string v0, "platform"

    .line 93
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/SdkPayload;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setProgrammingLanguage(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "programming_language"

    .line 69
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/SdkPayload;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "version"

    .line 61
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/SdkPayload;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
