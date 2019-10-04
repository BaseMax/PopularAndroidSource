.class public Lcom/apptentive/android/sdk/migration/v4_0_0/AppRelease;
.super Lorg/json/JSONObject;
.source "AppRelease.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAppStore()Ljava/lang/String;
    .locals 2

    const-string v0, "app_store"

    .line 114
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/migration/v4_0_0/AppRelease;->isNull(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "app_store"

    .line 115
    invoke-virtual {p0, v0, v1}, Lcom/apptentive/android/sdk/migration/v4_0_0/AppRelease;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getDebug()Z
    .locals 1

    const-string v0, "debug"

    .line 158
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/migration/v4_0_0/AppRelease;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 2

    const-string v0, "identifier"

    .line 82
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/migration/v4_0_0/AppRelease;->isNull(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "identifier"

    .line 83
    invoke-virtual {p0, v0, v1}, Lcom/apptentive/android/sdk/migration/v4_0_0/AppRelease;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getInheritStyle()Z
    .locals 1

    const-string v0, "inheriting_styles"

    .line 131
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/migration/v4_0_0/AppRelease;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getOverrideStyle()Z
    .locals 1

    const-string/jumbo v0, "overriding_styles"

    .line 145
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/migration/v4_0_0/AppRelease;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getTargetSdkVersion()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "target_sdk_version"

    .line 98
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/migration/v4_0_0/AppRelease;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "target_sdk_version"

    .line 99
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/migration/v4_0_0/AppRelease;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "type"

    .line 34
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/migration/v4_0_0/AppRelease;->isNull(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string/jumbo v0, "type"

    .line 35
    invoke-virtual {p0, v0, v1}, Lcom/apptentive/android/sdk/migration/v4_0_0/AppRelease;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getVersionCode()I
    .locals 2

    const-string/jumbo v0, "version_code"

    .line 66
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/migration/v4_0_0/AppRelease;->isNull(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    const-string/jumbo v0, "version_code"

    .line 67
    invoke-virtual {p0, v0, v1}, Lcom/apptentive/android/sdk/migration/v4_0_0/AppRelease;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "version_name"

    .line 50
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/migration/v4_0_0/AppRelease;->isNull(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string/jumbo v0, "version_name"

    .line 51
    invoke-virtual {p0, v0, v1}, Lcom/apptentive/android/sdk/migration/v4_0_0/AppRelease;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public setAppStore(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    const-string v0, "app_store"

    .line 122
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/migration/v4_0_0/AppRelease;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 124
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "Error adding %s to AppRelease."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "app_store"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->w(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    invoke-static {p1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setDebug(Z)V
    .locals 5

    :try_start_0
    const-string v0, "debug"

    .line 163
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/migration/v4_0_0/AppRelease;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 165
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "Error adding %s to AppRelease."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "debug"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->w(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    invoke-static {p1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setIdentifier(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    const-string v0, "identifier"

    .line 90
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/migration/v4_0_0/AppRelease;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 92
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "Error adding %s to AppRelease."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "identifier"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->w(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    invoke-static {p1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setInheritStyle(Z)V
    .locals 5

    :try_start_0
    const-string v0, "inheriting_styles"

    .line 136
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/migration/v4_0_0/AppRelease;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 138
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "Error adding %s to AppRelease."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "inheriting_styles"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->w(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    invoke-static {p1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setOverrideStyle(Z)V
    .locals 5

    :try_start_0
    const-string/jumbo v0, "overriding_styles"

    .line 150
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/migration/v4_0_0/AppRelease;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 152
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "Error adding %s to AppRelease."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "overriding_styles"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->w(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    invoke-static {p1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setTargetSdkVersion(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    const-string/jumbo v0, "target_sdk_version"

    .line 106
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/migration/v4_0_0/AppRelease;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 108
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "Error adding %s to AppRelease."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "target_sdk_version"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->w(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    invoke-static {p1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    const-string/jumbo v0, "type"

    .line 42
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/migration/v4_0_0/AppRelease;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 44
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "Error adding %s to AppRelease."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "type"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->w(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    invoke-static {p1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setVersionCode(I)V
    .locals 5

    :try_start_0
    const-string/jumbo v0, "version_code"

    .line 74
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/migration/v4_0_0/AppRelease;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 76
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "Error adding %s to AppRelease."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "version_code"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->w(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    invoke-static {p1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    const-string/jumbo v0, "version_name"

    .line 58
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/migration/v4_0_0/AppRelease;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 60
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "Error adding %s to AppRelease."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "version_name"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->w(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    invoke-static {p1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
