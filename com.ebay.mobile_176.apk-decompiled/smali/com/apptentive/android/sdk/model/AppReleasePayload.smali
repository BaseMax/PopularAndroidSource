.class public Lcom/apptentive/android/sdk/model/AppReleasePayload;
.super Lcom/apptentive/android/sdk/model/JsonPayload;
.source "AppReleasePayload.java"


# static fields
.field public static final KEY:Ljava/lang/String; = "app_release"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    sget-object v0, Lcom/apptentive/android/sdk/model/PayloadType;->app_release:Lcom/apptentive/android/sdk/model/PayloadType;

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

    .line 32
    sget-object v0, Lcom/apptentive/android/sdk/model/PayloadType;->app_release:Lcom/apptentive/android/sdk/model/PayloadType;

    invoke-direct {p0, v0, p1}, Lcom/apptentive/android/sdk/model/JsonPayload;-><init>(Lcom/apptentive/android/sdk/model/PayloadType;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAppStore()Ljava/lang/String;
    .locals 2

    const-string v0, "app_store"

    const/4 v1, 0x0

    .line 95
    invoke-virtual {p0, v0, v1}, Lcom/apptentive/android/sdk/model/AppReleasePayload;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDebug()Z
    .locals 1

    const-string v0, "debug"

    .line 121
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/model/AppReleasePayload;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getHttpEndPoint(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 39
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

    .line 49
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

    .line 44
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

.method public getIdentifier()Ljava/lang/String;
    .locals 2

    const-string v0, "identifier"

    const/4 v1, 0x0

    .line 79
    invoke-virtual {p0, v0, v1}, Lcom/apptentive/android/sdk/model/AppReleasePayload;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInheritStyle()Z
    .locals 1

    const-string v0, "inheriting_styles"

    .line 104
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/model/AppReleasePayload;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected getJsonContainer()Ljava/lang/String;
    .locals 1

    const-string v0, "app_release"

    return-object v0
.end method

.method public getOverrideStyle()Z
    .locals 1

    const-string v0, "overriding_styles"

    .line 113
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/model/AppReleasePayload;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getTargetSdkVersion()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "target_sdk_version"

    const/4 v1, 0x0

    .line 87
    invoke-virtual {p0, v0, v1}, Lcom/apptentive/android/sdk/model/AppReleasePayload;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "type"

    const/4 v1, 0x0

    .line 55
    invoke-virtual {p0, v0, v1}, Lcom/apptentive/android/sdk/model/AppReleasePayload;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersionCode()I
    .locals 2

    const-string/jumbo v0, "version_code"

    const/4 v1, -0x1

    .line 71
    invoke-virtual {p0, v0, v1}, Lcom/apptentive/android/sdk/model/AppReleasePayload;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "version_name"

    const/4 v1, 0x0

    .line 63
    invoke-virtual {p0, v0, v1}, Lcom/apptentive/android/sdk/model/AppReleasePayload;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAppStore(Ljava/lang/String;)V
    .locals 1

    const-string v0, "app_store"

    .line 99
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/AppReleasePayload;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDebug(Z)V
    .locals 1

    const-string v0, "debug"

    .line 125
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/AppReleasePayload;->put(Ljava/lang/String;Z)V

    return-void
.end method

.method public setIdentifier(Ljava/lang/String;)V
    .locals 1

    const-string v0, "identifier"

    .line 83
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/AppReleasePayload;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setInheritStyle(Z)V
    .locals 1

    const-string v0, "inheriting_styles"

    .line 108
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/AppReleasePayload;->put(Ljava/lang/String;Z)V

    return-void
.end method

.method public setOverrideStyle(Z)V
    .locals 1

    const-string v0, "overriding_styles"

    .line 117
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/AppReleasePayload;->put(Ljava/lang/String;Z)V

    return-void
.end method

.method public setTargetSdkVersion(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "target_sdk_version"

    .line 91
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/AppReleasePayload;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "type"

    .line 59
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/AppReleasePayload;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setVersionCode(I)V
    .locals 1

    const-string/jumbo v0, "version_code"

    .line 75
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/AppReleasePayload;->put(Ljava/lang/String;I)V

    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "version_name"

    .line 67
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/AppReleasePayload;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
