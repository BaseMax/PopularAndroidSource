.class public Lcom/apptentive/android/sdk/migration/v4_0_0/Sdk;
.super Lorg/json/JSONObject;
.source "Sdk.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAuthorEmail()Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "author_email"

    .line 92
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/migration/v4_0_0/Sdk;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "author_email"

    .line 93
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/migration/v4_0_0/Sdk;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 96
    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAuthorName()Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "author_name"

    .line 72
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/migration/v4_0_0/Sdk;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "author_name"

    .line 73
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/migration/v4_0_0/Sdk;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 76
    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDistribution()Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "distribution"

    .line 132
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/migration/v4_0_0/Sdk;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "distribution"

    .line 133
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/migration/v4_0_0/Sdk;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 136
    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDistributionVersion()Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "distribution_version"

    .line 152
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/migration/v4_0_0/Sdk;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "distribution_version"

    .line 153
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/migration/v4_0_0/Sdk;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 156
    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string/jumbo v0, "platform"

    .line 112
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/migration/v4_0_0/Sdk;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "platform"

    .line 113
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/migration/v4_0_0/Sdk;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 116
    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProgrammingLanguage()Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string/jumbo v0, "programming_language"

    .line 52
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/migration/v4_0_0/Sdk;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "programming_language"

    .line 53
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/migration/v4_0_0/Sdk;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 56
    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string/jumbo v0, "version"

    .line 32
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/migration/v4_0_0/Sdk;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "version"

    .line 33
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/migration/v4_0_0/Sdk;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 36
    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setAuthorEmail(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    const-string v0, "author_email"

    .line 103
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/migration/v4_0_0/Sdk;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 105
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "Error adding %s to Sdk."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "author_email"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->w(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    invoke-static {p1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setAuthorName(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    const-string v0, "author_name"

    .line 83
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/migration/v4_0_0/Sdk;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 85
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "Error adding %s to Sdk."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "author_name"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->w(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    invoke-static {p1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setDistribution(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    const-string v0, "distribution"

    .line 143
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/migration/v4_0_0/Sdk;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 145
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "Error adding %s to Sdk."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "distribution"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->w(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    invoke-static {p1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setDistributionVersion(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    const-string v0, "distribution_version"

    .line 163
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/migration/v4_0_0/Sdk;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 165
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "Error adding %s to Sdk."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "distribution_version"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->w(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    invoke-static {p1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setPlatform(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    const-string/jumbo v0, "platform"

    .line 123
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/migration/v4_0_0/Sdk;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 125
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "Error adding %s to Sdk."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "platform"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->w(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    invoke-static {p1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setProgrammingLanguage(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    const-string/jumbo v0, "programming_language"

    .line 63
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/migration/v4_0_0/Sdk;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 65
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "Error adding %s to Sdk."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "programming_language"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->w(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    invoke-static {p1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    const-string/jumbo v0, "version"

    .line 43
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/migration/v4_0_0/Sdk;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 45
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "Error adding %s to Sdk."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "version"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->w(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    invoke-static {p1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
