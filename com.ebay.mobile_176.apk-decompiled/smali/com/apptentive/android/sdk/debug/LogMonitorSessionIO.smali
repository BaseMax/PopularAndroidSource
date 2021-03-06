.class Lcom/apptentive/android/sdk/debug/LogMonitorSessionIO;
.super Ljava/lang/Object;
.source "LogMonitorSessionIO.java"


# direct methods
.method static deleteCurrentSession(Landroid/content/Context;)V
    .locals 1

    .line 74
    invoke-static {p0}, Lcom/apptentive/android/sdk/debug/LogMonitorSessionIO;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "com.apptentive.debug.EmailRecipients"

    .line 75
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "com.apptentive.debug.FilterPID"

    .line 76
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 77
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "com.apptentive.debug"

    const/4 v1, 0x0

    .line 111
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method static readCurrentSession(Landroid/content/Context;)Lcom/apptentive/android/sdk/debug/LogMonitorSession;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-eqz p0, :cond_2

    .line 36
    invoke-static {p0}, Lcom/apptentive/android/sdk/debug/LogMonitorSessionIO;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "com.apptentive.debug.EmailRecipients"

    .line 37
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 41
    :cond_0
    new-instance v0, Lcom/apptentive/android/sdk/debug/LogMonitorSession;

    invoke-direct {v0}, Lcom/apptentive/android/sdk/debug/LogMonitorSession;-><init>()V

    const/4 v2, 0x1

    .line 42
    iput-boolean v2, v0, Lcom/apptentive/android/sdk/debug/LogMonitorSession;->restored:Z

    const-string v2, "com.apptentive.debug.EmailRecipients"

    .line 44
    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 45
    invoke-static {p0}, Lcom/apptentive/android/sdk/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ","

    .line 46
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/apptentive/android/sdk/debug/LogMonitorSession;->emailRecipients:[Ljava/lang/String;

    :cond_1
    return-object v0

    .line 33
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Context is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static readSessionFromJWT(Ljava/lang/String;)Lcom/apptentive/android/sdk/debug/LogMonitorSession;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 86
    :try_start_0
    invoke-static {p0}, Lcom/apptentive/android/sdk/util/Jwt;->decode(Ljava/lang/String;)Lcom/apptentive/android/sdk/util/Jwt;

    move-result-object v1

    .line 87
    invoke-virtual {v1}, Lcom/apptentive/android/sdk/util/Jwt;->getPayload()Lorg/json/JSONObject;

    move-result-object v1

    .line 89
    new-instance v2, Lcom/apptentive/android/sdk/debug/LogMonitorSession;

    invoke-direct {v2}, Lcom/apptentive/android/sdk/debug/LogMonitorSession;-><init>()V

    const-string/jumbo v3, "recipients"

    .line 92
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 94
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 95
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 96
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 99
    :cond_0
    iput-object v3, v2, Lcom/apptentive/android/sdk/debug/LogMonitorSession;->emailRecipients:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v2

    :catch_0
    move-exception v1

    const-string v2, "Exception while parsing access token: \'%s\'"

    const/4 v3, 0x1

    .line 104
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v0

    invoke-static {v1, v2, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    invoke-static {v1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static saveCurrentSession(Landroid/content/Context;Lcom/apptentive/android/sdk/debug/LogMonitorSession;)V
    .locals 1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 64
    invoke-static {p0}, Lcom/apptentive/android/sdk/debug/LogMonitorSessionIO;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 65
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "com.apptentive.debug.EmailRecipients"

    .line 66
    iget-object p1, p1, Lcom/apptentive/android/sdk/debug/LogMonitorSession;->emailRecipients:[Ljava/lang/String;

    invoke-static {p1}, Lcom/apptentive/android/sdk/util/StringUtils;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 67
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    .line 61
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Session is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 57
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Context is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
