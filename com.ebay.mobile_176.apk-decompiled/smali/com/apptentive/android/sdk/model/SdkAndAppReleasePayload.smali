.class public Lcom/apptentive/android/sdk/model/SdkAndAppReleasePayload;
.super Lcom/apptentive/android/sdk/model/JsonPayload;
.source "SdkAndAppReleasePayload.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    sget-object v0, Lcom/apptentive/android/sdk/model/PayloadType;->sdk_and_app_release:Lcom/apptentive/android/sdk/model/PayloadType;

    invoke-direct {p0, v0}, Lcom/apptentive/android/sdk/model/JsonPayload;-><init>(Lcom/apptentive/android/sdk/model/PayloadType;)V

    return-void
.end method


# virtual methods
.method public getAppStore()Ljava/lang/String;
    .locals 2

    const-string v0, "app_store"

    const/4 v1, 0x0

    .line 154
    invoke-virtual {p0, v0, v1}, Lcom/apptentive/android/sdk/model/SdkAndAppReleasePayload;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthorEmail()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "sdk_author_email"

    const/4 v1, 0x0

    .line 79
    invoke-virtual {p0, v0, v1}, Lcom/apptentive/android/sdk/model/SdkAndAppReleasePayload;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthorName()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "sdk_author_name"

    const/4 v1, 0x0

    .line 71
    invoke-virtual {p0, v0, v1}, Lcom/apptentive/android/sdk/model/SdkAndAppReleasePayload;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDebug()Z
    .locals 1

    const-string v0, "debug"

    .line 180
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/model/SdkAndAppReleasePayload;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getDistribution()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "sdk_distribution"

    const/4 v1, 0x0

    .line 95
    invoke-virtual {p0, v0, v1}, Lcom/apptentive/android/sdk/model/SdkAndAppReleasePayload;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDistributionVersion()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "sdk_distribution_version"

    const/4 v1, 0x0

    .line 103
    invoke-virtual {p0, v0, v1}, Lcom/apptentive/android/sdk/model/SdkAndAppReleasePayload;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHttpEndPoint(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "/conversations/%s/app_release"

    const/4 v1, 0x1

    .line 48
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/apptentive/android/sdk/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 2

    const-string v0, "identifier"

    const/4 v1, 0x0

    .line 138
    invoke-virtual {p0, v0, v1}, Lcom/apptentive/android/sdk/model/SdkAndAppReleasePayload;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInheritStyle()Z
    .locals 1

    const-string v0, "inheriting_styles"

    .line 163
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/model/SdkAndAppReleasePayload;->getBoolean(Ljava/lang/String;)Z

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

    .line 172
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/model/SdkAndAppReleasePayload;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "sdk_platform"

    const/4 v1, 0x0

    .line 87
    invoke-virtual {p0, v0, v1}, Lcom/apptentive/android/sdk/model/SdkAndAppReleasePayload;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProgrammingLanguage()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "sdk_programming_language"

    const/4 v1, 0x0

    .line 63
    invoke-virtual {p0, v0, v1}, Lcom/apptentive/android/sdk/model/SdkAndAppReleasePayload;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTargetSdkVersion()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "target_sdk_version"

    const/4 v1, 0x0

    .line 146
    invoke-virtual {p0, v0, v1}, Lcom/apptentive/android/sdk/model/SdkAndAppReleasePayload;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "type"

    const/4 v1, 0x0

    .line 114
    invoke-virtual {p0, v0, v1}, Lcom/apptentive/android/sdk/model/SdkAndAppReleasePayload;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "sdk_version"

    const/4 v1, 0x0

    .line 55
    invoke-virtual {p0, v0, v1}, Lcom/apptentive/android/sdk/model/SdkAndAppReleasePayload;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersionCode()I
    .locals 2

    const-string/jumbo v0, "version_code"

    const/4 v1, -0x1

    .line 130
    invoke-virtual {p0, v0, v1}, Lcom/apptentive/android/sdk/model/SdkAndAppReleasePayload;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "version_name"

    const/4 v1, 0x0

    .line 122
    invoke-virtual {p0, v0, v1}, Lcom/apptentive/android/sdk/model/SdkAndAppReleasePayload;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAppStore(Ljava/lang/String;)V
    .locals 1

    const-string v0, "app_store"

    .line 158
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/SdkAndAppReleasePayload;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAuthorEmail(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "sdk_author_email"

    .line 83
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/SdkAndAppReleasePayload;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAuthorName(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "sdk_author_name"

    .line 75
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/SdkAndAppReleasePayload;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDebug(Z)V
    .locals 1

    const-string v0, "debug"

    .line 184
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/SdkAndAppReleasePayload;->put(Ljava/lang/String;Z)V

    return-void
.end method

.method public setDistribution(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "sdk_distribution"

    .line 99
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/SdkAndAppReleasePayload;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDistributionVersion(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "sdk_distribution_version"

    .line 107
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/SdkAndAppReleasePayload;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setIdentifier(Ljava/lang/String;)V
    .locals 1

    const-string v0, "identifier"

    .line 142
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/SdkAndAppReleasePayload;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setInheritStyle(Z)V
    .locals 1

    const-string v0, "inheriting_styles"

    .line 167
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/SdkAndAppReleasePayload;->put(Ljava/lang/String;Z)V

    return-void
.end method

.method public setOverrideStyle(Z)V
    .locals 1

    const-string v0, "overriding_styles"

    .line 176
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/SdkAndAppReleasePayload;->put(Ljava/lang/String;Z)V

    return-void
.end method

.method public setPlatform(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "sdk_platform"

    .line 91
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/SdkAndAppReleasePayload;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setProgrammingLanguage(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "sdk_programming_language"

    .line 67
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/SdkAndAppReleasePayload;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTargetSdkVersion(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "target_sdk_version"

    .line 150
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/SdkAndAppReleasePayload;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "type"

    .line 118
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/SdkAndAppReleasePayload;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "sdk_version"

    .line 59
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/SdkAndAppReleasePayload;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setVersionCode(I)V
    .locals 1

    const-string/jumbo v0, "version_code"

    .line 134
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/SdkAndAppReleasePayload;->put(Ljava/lang/String;I)V

    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "version_name"

    .line 126
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/SdkAndAppReleasePayload;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
