.class public Lcom/apptentive/android/sdk/migration/v4_0_0/Person;
.super Lorg/json/JSONObject;
.source "Person.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getBirthday()Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "birthday"

    .line 205
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/migration/v4_0_0/Person;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "birthday"

    .line 206
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/migration/v4_0_0/Person;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 209
    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "city"

    .line 148
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/migration/v4_0_0/Person;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "city"

    .line 149
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/migration/v4_0_0/Person;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 152
    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "country"

    .line 186
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/migration/v4_0_0/Person;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "country"

    .line 187
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/migration/v4_0_0/Person;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 190
    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCustomData()Lorg/json/JSONObject;
    .locals 1

    const-string v0, "custom_data"

    .line 224
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/migration/v4_0_0/Person;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "custom_data"

    .line 226
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/migration/v4_0_0/Person;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 228
    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "email"

    .line 53
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/migration/v4_0_0/Person;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "email"

    .line 54
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/migration/v4_0_0/Person;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 57
    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFacebookId()Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "facebook_id"

    .line 91
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/migration/v4_0_0/Person;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "facebook_id"

    .line 92
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/migration/v4_0_0/Person;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 95
    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "id"

    .line 34
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/migration/v4_0_0/Person;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "id"

    .line 35
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/migration/v4_0_0/Person;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 38
    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "name"

    .line 72
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/migration/v4_0_0/Person;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "name"

    .line 73
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/migration/v4_0_0/Person;->getString(Ljava/lang/String;)Ljava/lang/String;

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

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "phone_number"

    .line 110
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/migration/v4_0_0/Person;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "phone_number"

    .line 111
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/migration/v4_0_0/Person;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 114
    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStreet()Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string/jumbo v0, "street"

    .line 129
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/migration/v4_0_0/Person;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "street"

    .line 130
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/migration/v4_0_0/Person;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 133
    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getZip()Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string/jumbo v0, "zip"

    .line 167
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/migration/v4_0_0/Person;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "zip"

    .line 168
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/migration/v4_0_0/Person;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 171
    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setBirthday(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    const-string v0, "birthday"

    .line 216
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/migration/v4_0_0/Person;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 218
    invoke-static {p1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    const-string v0, "city"

    .line 159
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/migration/v4_0_0/Person;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 161
    invoke-static {p1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    const-string v0, "country"

    .line 197
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/migration/v4_0_0/Person;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 199
    invoke-static {p1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setCustomData(Lorg/json/JSONObject;)V
    .locals 1

    :try_start_0
    const-string v0, "custom_data"

    .line 236
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/migration/v4_0_0/Person;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 238
    invoke-static {p1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    const-string v0, "email"

    .line 64
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/migration/v4_0_0/Person;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 66
    invoke-static {p1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setFacebookId(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    const-string v0, "facebook_id"

    .line 102
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/migration/v4_0_0/Person;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 104
    invoke-static {p1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    const-string v0, "id"

    .line 45
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/migration/v4_0_0/Person;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 47
    invoke-static {p1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    const-string v0, "name"

    .line 83
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/migration/v4_0_0/Person;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 85
    invoke-static {p1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    const-string v0, "phone_number"

    .line 121
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/migration/v4_0_0/Person;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 123
    invoke-static {p1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setStreet(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    const-string/jumbo v0, "street"

    .line 140
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/migration/v4_0_0/Person;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 142
    invoke-static {p1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setZip(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    const-string/jumbo v0, "zip"

    .line 178
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/migration/v4_0_0/Person;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 180
    invoke-static {p1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
