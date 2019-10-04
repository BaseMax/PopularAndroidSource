.class final Lio/fabric/sdk/android/services/settings/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/fabric/sdk/android/services/settings/u;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final buildFromJson(Lio/fabric/sdk/android/services/common/k;Lorg/a/c;)Lio/fabric/sdk/android/services/settings/s;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/b;
        }
    .end annotation

    move-object/from16 v0, p2

    const/4 v1, 0x0

    const-string v2, "settings_version"

    .line 36
    invoke-virtual {v0, v2, v1}, Lorg/a/c;->optInt(Ljava/lang/String;I)I

    move-result v12

    const/16 v2, 0xe10

    const-string v3, "cache_duration"

    .line 38
    invoke-virtual {v0, v3, v2}, Lorg/a/c;->optInt(Ljava/lang/String;I)I

    move-result v13

    const-string v3, "app"

    .line 42
    invoke-virtual {v0, v3}, Lorg/a/c;->getJSONObject(Ljava/lang/String;)Lorg/a/c;

    move-result-object v3

    const-string v4, "identifier"

    .line 1077
    invoke-virtual {v3, v4}, Lorg/a/c;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v4, "status"

    .line 1078
    invoke-virtual {v3, v4}, Lorg/a/c;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v4, "url"

    .line 1079
    invoke-virtual {v3, v4}, Lorg/a/c;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v5, "reports_url"

    .line 1080
    invoke-virtual {v3, v5}, Lorg/a/c;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v5, "update_required"

    .line 1081
    invoke-virtual {v3, v5, v1}, Lorg/a/c;->optBoolean(Ljava/lang/String;Z)Z

    move-result v10

    const-string v5, "icon"

    .line 1088
    invoke-virtual {v3, v5}, Lorg/a/c;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v3, v5}, Lorg/a/c;->getJSONObject(Ljava/lang/String;)Lorg/a/c;

    move-result-object v11

    const-string v14, "hash"

    .line 1089
    invoke-virtual {v11, v14}, Lorg/a/c;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1090
    invoke-virtual {v3, v5}, Lorg/a/c;->getJSONObject(Ljava/lang/String;)Lorg/a/c;

    move-result-object v3

    .line 1097
    invoke-virtual {v3, v14}, Lorg/a/c;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v11, "width"

    .line 1098
    invoke-virtual {v3, v11}, Lorg/a/c;->getInt(Ljava/lang/String;)I

    move-result v11

    const-string v14, "height"

    .line 1099
    invoke-virtual {v3, v14}, Lorg/a/c;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1101
    new-instance v14, Lio/fabric/sdk/android/services/settings/c;

    invoke-direct {v14, v5, v11, v3}, Lio/fabric/sdk/android/services/settings/c;-><init>(Ljava/lang/String;II)V

    move-object v11, v14

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    move-object v11, v3

    .line 1093
    :goto_0
    new-instance v14, Lio/fabric/sdk/android/services/settings/e;

    move-object v5, v14

    invoke-direct/range {v5 .. v11}, Lio/fabric/sdk/android/services/settings/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLio/fabric/sdk/android/services/settings/c;)V

    const-string v3, "session"

    .line 44
    invoke-virtual {v0, v3}, Lorg/a/c;->getJSONObject(Ljava/lang/String;)Lorg/a/c;

    move-result-object v3

    const v5, 0xfa00

    const-string v6, "log_buffer_size"

    .line 1156
    invoke-virtual {v3, v6, v5}, Lorg/a/c;->optInt(Ljava/lang/String;I)I

    move-result v16

    const/16 v5, 0x8

    const-string v6, "max_chained_exception_depth"

    .line 1159
    invoke-virtual {v3, v6, v5}, Lorg/a/c;->optInt(Ljava/lang/String;I)I

    move-result v17

    const/16 v5, 0x40

    const-string v6, "max_custom_exception_events"

    .line 1162
    invoke-virtual {v3, v6, v5}, Lorg/a/c;->optInt(Ljava/lang/String;I)I

    move-result v18

    const-string v6, "max_custom_key_value_pairs"

    .line 1165
    invoke-virtual {v3, v6, v5}, Lorg/a/c;->optInt(Ljava/lang/String;I)I

    move-result v19

    const/16 v5, 0xff

    const-string v6, "identifier_mask"

    .line 1168
    invoke-virtual {v3, v6, v5}, Lorg/a/c;->optInt(Ljava/lang/String;I)I

    move-result v20

    const-string v5, "send_session_without_crash"

    .line 1171
    invoke-virtual {v3, v5, v1}, Lorg/a/c;->optBoolean(Ljava/lang/String;Z)Z

    move-result v21

    const/4 v5, 0x4

    const-string v6, "max_complete_sessions_count"

    .line 1174
    invoke-virtual {v3, v6, v5}, Lorg/a/c;->optInt(Ljava/lang/String;I)I

    move-result v22

    .line 1178
    new-instance v7, Lio/fabric/sdk/android/services/settings/p;

    move-object v15, v7

    invoke-direct/range {v15 .. v22}, Lio/fabric/sdk/android/services/settings/p;-><init>(IIIIIZI)V

    const-string v3, "prompt"

    .line 46
    invoke-virtual {v0, v3}, Lorg/a/c;->getJSONObject(Ljava/lang/String;)Lorg/a/c;

    move-result-object v3

    const-string v5, "title"

    const-string v6, "Send Crash Report?"

    .line 1184
    invoke-virtual {v3, v5, v6}, Lorg/a/c;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v5, "message"

    const-string v6, "Looks like we crashed! Please help us fix the problem by sending a crash report."

    .line 1187
    invoke-virtual {v3, v5, v6}, Lorg/a/c;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v5, "send_button_title"

    const-string v6, "Send"

    .line 1190
    invoke-virtual {v3, v5, v6}, Lorg/a/c;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const/4 v5, 0x1

    const-string v6, "show_cancel_button"

    .line 1193
    invoke-virtual {v3, v6, v5}, Lorg/a/c;->optBoolean(Ljava/lang/String;Z)Z

    move-result v19

    const-string v6, "cancel_button_title"

    const-string v8, "Don\'t Send"

    .line 1196
    invoke-virtual {v3, v6, v8}, Lorg/a/c;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v6, "show_always_send_button"

    .line 1199
    invoke-virtual {v3, v6, v5}, Lorg/a/c;->optBoolean(Ljava/lang/String;Z)Z

    move-result v21

    const-string v6, "always_send_button_title"

    const-string v8, "Always Send"

    .line 1202
    invoke-virtual {v3, v6, v8}, Lorg/a/c;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1206
    new-instance v8, Lio/fabric/sdk/android/services/settings/o;

    move-object v15, v8

    invoke-direct/range {v15 .. v22}, Lio/fabric/sdk/android/services/settings/o;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v3, "features"

    .line 48
    invoke-virtual {v0, v3}, Lorg/a/c;->getJSONObject(Ljava/lang/String;)Lorg/a/c;

    move-result-object v3

    const-string v6, "prompt_enabled"

    .line 2105
    invoke-virtual {v3, v6, v1}, Lorg/a/c;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const-string v9, "collect_logged_exceptions"

    .line 2108
    invoke-virtual {v3, v9, v5}, Lorg/a/c;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    const-string v10, "collect_reports"

    .line 2111
    invoke-virtual {v3, v10, v5}, Lorg/a/c;->optBoolean(Ljava/lang/String;Z)Z

    move-result v10

    const-string v11, "collect_analytics"

    .line 2114
    invoke-virtual {v3, v11, v1}, Lorg/a/c;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 2118
    new-instance v11, Lio/fabric/sdk/android/services/settings/m;

    invoke-direct {v11, v6, v9, v10, v1}, Lio/fabric/sdk/android/services/settings/m;-><init>(ZZZZ)V

    const-string v1, "analytics"

    .line 50
    invoke-virtual {v0, v1}, Lorg/a/c;->getJSONObject(Ljava/lang/String;)Lorg/a/c;

    move-result-object v1

    const-string v3, "https://e.crashlytics.com/spi/v2/events"

    .line 2123
    invoke-virtual {v1, v4, v3}, Lorg/a/c;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const/16 v3, 0x258

    const-string v4, "flush_interval_secs"

    .line 2126
    invoke-virtual {v1, v4, v3}, Lorg/a/c;->optInt(Ljava/lang/String;I)I

    move-result v17

    const/16 v3, 0x1f40

    const-string v4, "max_byte_size_per_file"

    .line 2128
    invoke-virtual {v1, v4, v3}, Lorg/a/c;->optInt(Ljava/lang/String;I)I

    move-result v18

    const-string v3, "max_file_count_per_send"

    .line 2131
    invoke-virtual {v1, v3, v5}, Lorg/a/c;->optInt(Ljava/lang/String;I)I

    move-result v19

    const/16 v3, 0x64

    const-string v4, "max_pending_send_file_count"

    .line 2134
    invoke-virtual {v1, v4, v3}, Lorg/a/c;->optInt(Ljava/lang/String;I)I

    move-result v20

    const-string v3, "track_custom_events"

    .line 2137
    invoke-virtual {v1, v3, v5}, Lorg/a/c;->optBoolean(Ljava/lang/String;Z)Z

    move-result v21

    const-string v3, "track_predefined_events"

    .line 2140
    invoke-virtual {v1, v3, v5}, Lorg/a/c;->optBoolean(Ljava/lang/String;Z)Z

    move-result v22

    const-string v3, "sampling_rate"

    .line 2143
    invoke-virtual {v1, v3, v5}, Lorg/a/c;->optInt(Ljava/lang/String;I)I

    move-result v23

    const-string v3, "flush_on_background"

    .line 2146
    invoke-virtual {v1, v3, v5}, Lorg/a/c;->optBoolean(Ljava/lang/String;Z)Z

    move-result v24

    .line 2150
    new-instance v1, Lio/fabric/sdk/android/services/settings/b;

    move-object v15, v1

    invoke-direct/range {v15 .. v24}, Lio/fabric/sdk/android/services/settings/b;-><init>(Ljava/lang/String;IIIIZZIZ)V

    const-string v3, "beta"

    .line 52
    invoke-virtual {v0, v3}, Lorg/a/c;->getJSONObject(Ljava/lang/String;)Lorg/a/c;

    move-result-object v3

    .line 2211
    sget-object v4, Lio/fabric/sdk/android/services/settings/t;->BETA_UPDATE_ENDPOINT_DEFAULT:Ljava/lang/String;

    const-string v5, "update_endpoint"

    invoke-virtual {v3, v5, v4}, Lorg/a/c;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "update_suspend_duration"

    .line 2214
    invoke-virtual {v3, v5, v2}, Lorg/a/c;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 2218
    new-instance v15, Lio/fabric/sdk/android/services/settings/f;

    invoke-direct {v15, v4, v2}, Lio/fabric/sdk/android/services/settings/f;-><init>(Ljava/lang/String;I)V

    int-to-long v2, v13

    const-string v4, "expires_at"

    .line 2225
    invoke-virtual {v0, v4}, Lorg/a/c;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2227
    invoke-virtual {v0, v4}, Lorg/a/c;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    move-wide v4, v2

    goto :goto_1

    .line 2231
    :cond_1
    invoke-interface/range {p1 .. p1}, Lio/fabric/sdk/android/services/common/k;->getCurrentTimeMillis()J

    move-result-wide v4

    const-wide/16 v9, 0x3e8

    mul-long v2, v2, v9

    add-long/2addr v4, v2

    .line 56
    :goto_1
    new-instance v0, Lio/fabric/sdk/android/services/settings/s;

    move-object v3, v0

    move-object v6, v14

    move-object v9, v11

    move-object v10, v1

    move-object v11, v15

    invoke-direct/range {v3 .. v13}, Lio/fabric/sdk/android/services/settings/s;-><init>(JLio/fabric/sdk/android/services/settings/e;Lio/fabric/sdk/android/services/settings/p;Lio/fabric/sdk/android/services/settings/o;Lio/fabric/sdk/android/services/settings/m;Lio/fabric/sdk/android/services/settings/b;Lio/fabric/sdk/android/services/settings/f;II)V

    return-object v0
.end method

.method public final toJson(Lio/fabric/sdk/android/services/settings/s;)Lorg/a/c;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/b;
        }
    .end annotation

    .line 62
    new-instance v0, Lorg/a/c;

    invoke-direct {v0}, Lorg/a/c;-><init>()V

    iget-wide v1, p1, Lio/fabric/sdk/android/services/settings/s;->expiresAtMillis:J

    const-string v3, "expires_at"

    .line 63
    invoke-virtual {v0, v3, v1, v2}, Lorg/a/c;->put(Ljava/lang/String;J)Lorg/a/c;

    move-result-object v0

    iget v1, p1, Lio/fabric/sdk/android/services/settings/s;->cacheDuration:I

    const-string v2, "cache_duration"

    .line 64
    invoke-virtual {v0, v2, v1}, Lorg/a/c;->put(Ljava/lang/String;I)Lorg/a/c;

    move-result-object v0

    iget v1, p1, Lio/fabric/sdk/android/services/settings/s;->settingsVersion:I

    const-string v2, "settings_version"

    .line 65
    invoke-virtual {v0, v2, v1}, Lorg/a/c;->put(Ljava/lang/String;I)Lorg/a/c;

    move-result-object v0

    iget-object v1, p1, Lio/fabric/sdk/android/services/settings/s;->featuresData:Lio/fabric/sdk/android/services/settings/m;

    .line 2260
    new-instance v2, Lorg/a/c;

    invoke-direct {v2}, Lorg/a/c;-><init>()V

    iget-boolean v3, v1, Lio/fabric/sdk/android/services/settings/m;->collectLoggedException:Z

    const-string v4, "collect_logged_exceptions"

    .line 2261
    invoke-virtual {v2, v4, v3}, Lorg/a/c;->put(Ljava/lang/String;Z)Lorg/a/c;

    move-result-object v2

    iget-boolean v3, v1, Lio/fabric/sdk/android/services/settings/m;->collectReports:Z

    const-string v4, "collect_reports"

    .line 2263
    invoke-virtual {v2, v4, v3}, Lorg/a/c;->put(Ljava/lang/String;Z)Lorg/a/c;

    move-result-object v2

    iget-boolean v1, v1, Lio/fabric/sdk/android/services/settings/m;->collectAnalytics:Z

    const-string v3, "collect_analytics"

    .line 2264
    invoke-virtual {v2, v3, v1}, Lorg/a/c;->put(Ljava/lang/String;Z)Lorg/a/c;

    move-result-object v1

    const-string v2, "features"

    .line 66
    invoke-virtual {v0, v2, v1}, Lorg/a/c;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    move-result-object v0

    iget-object v1, p1, Lio/fabric/sdk/android/services/settings/s;->analyticsSettingsData:Lio/fabric/sdk/android/services/settings/b;

    .line 2284
    new-instance v2, Lorg/a/c;

    invoke-direct {v2}, Lorg/a/c;-><init>()V

    iget-object v3, v1, Lio/fabric/sdk/android/services/settings/b;->analyticsURL:Ljava/lang/String;

    const-string v4, "url"

    .line 2285
    invoke-virtual {v2, v4, v3}, Lorg/a/c;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    move-result-object v2

    iget v3, v1, Lio/fabric/sdk/android/services/settings/b;->flushIntervalSeconds:I

    const-string v5, "flush_interval_secs"

    .line 2286
    invoke-virtual {v2, v5, v3}, Lorg/a/c;->put(Ljava/lang/String;I)Lorg/a/c;

    move-result-object v2

    iget v3, v1, Lio/fabric/sdk/android/services/settings/b;->maxByteSizePerFile:I

    const-string v5, "max_byte_size_per_file"

    .line 2288
    invoke-virtual {v2, v5, v3}, Lorg/a/c;->put(Ljava/lang/String;I)Lorg/a/c;

    move-result-object v2

    iget v3, v1, Lio/fabric/sdk/android/services/settings/b;->maxFileCountPerSend:I

    const-string v5, "max_file_count_per_send"

    .line 2290
    invoke-virtual {v2, v5, v3}, Lorg/a/c;->put(Ljava/lang/String;I)Lorg/a/c;

    move-result-object v2

    iget v1, v1, Lio/fabric/sdk/android/services/settings/b;->maxPendingSendFileCount:I

    const-string v3, "max_pending_send_file_count"

    .line 2292
    invoke-virtual {v2, v3, v1}, Lorg/a/c;->put(Ljava/lang/String;I)Lorg/a/c;

    move-result-object v1

    const-string v2, "analytics"

    .line 67
    invoke-virtual {v0, v2, v1}, Lorg/a/c;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    move-result-object v0

    iget-object v1, p1, Lio/fabric/sdk/android/services/settings/s;->betaSettingsData:Lio/fabric/sdk/android/services/settings/f;

    .line 2297
    new-instance v2, Lorg/a/c;

    invoke-direct {v2}, Lorg/a/c;-><init>()V

    iget-object v3, v1, Lio/fabric/sdk/android/services/settings/f;->updateUrl:Ljava/lang/String;

    const-string v5, "update_endpoint"

    .line 2298
    invoke-virtual {v2, v5, v3}, Lorg/a/c;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    move-result-object v2

    iget v1, v1, Lio/fabric/sdk/android/services/settings/f;->updateSuspendDurationSeconds:I

    const-string v3, "update_suspend_duration"

    .line 2299
    invoke-virtual {v2, v3, v1}, Lorg/a/c;->put(Ljava/lang/String;I)Lorg/a/c;

    move-result-object v1

    const-string v2, "beta"

    .line 69
    invoke-virtual {v0, v2, v1}, Lorg/a/c;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    move-result-object v0

    iget-object v1, p1, Lio/fabric/sdk/android/services/settings/s;->appData:Lio/fabric/sdk/android/services/settings/e;

    .line 3239
    new-instance v2, Lorg/a/c;

    invoke-direct {v2}, Lorg/a/c;-><init>()V

    iget-object v3, v1, Lio/fabric/sdk/android/services/settings/e;->identifier:Ljava/lang/String;

    const-string v5, "identifier"

    .line 3240
    invoke-virtual {v2, v5, v3}, Lorg/a/c;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    move-result-object v2

    iget-object v3, v1, Lio/fabric/sdk/android/services/settings/e;->status:Ljava/lang/String;

    const-string v5, "status"

    .line 3241
    invoke-virtual {v2, v5, v3}, Lorg/a/c;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    move-result-object v2

    iget-object v3, v1, Lio/fabric/sdk/android/services/settings/e;->url:Ljava/lang/String;

    .line 3242
    invoke-virtual {v2, v4, v3}, Lorg/a/c;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    move-result-object v2

    iget-object v3, v1, Lio/fabric/sdk/android/services/settings/e;->reportsUrl:Ljava/lang/String;

    const-string v4, "reports_url"

    .line 3243
    invoke-virtual {v2, v4, v3}, Lorg/a/c;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    move-result-object v2

    iget-boolean v3, v1, Lio/fabric/sdk/android/services/settings/e;->updateRequired:Z

    const-string v4, "update_required"

    .line 3244
    invoke-virtual {v2, v4, v3}, Lorg/a/c;->put(Ljava/lang/String;Z)Lorg/a/c;

    move-result-object v2

    .line 3246
    iget-object v3, v1, Lio/fabric/sdk/android/services/settings/e;->icon:Lio/fabric/sdk/android/services/settings/c;

    if-eqz v3, :cond_0

    .line 3247
    iget-object v1, v1, Lio/fabric/sdk/android/services/settings/e;->icon:Lio/fabric/sdk/android/services/settings/c;

    .line 3254
    new-instance v3, Lorg/a/c;

    invoke-direct {v3}, Lorg/a/c;-><init>()V

    iget-object v4, v1, Lio/fabric/sdk/android/services/settings/c;->hash:Ljava/lang/String;

    const-string v5, "hash"

    invoke-virtual {v3, v5, v4}, Lorg/a/c;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    move-result-object v3

    iget v4, v1, Lio/fabric/sdk/android/services/settings/c;->width:I

    const-string v5, "width"

    .line 3255
    invoke-virtual {v3, v5, v4}, Lorg/a/c;->put(Ljava/lang/String;I)Lorg/a/c;

    move-result-object v3

    iget v1, v1, Lio/fabric/sdk/android/services/settings/c;->height:I

    const-string v4, "height"

    .line 3256
    invoke-virtual {v3, v4, v1}, Lorg/a/c;->put(Ljava/lang/String;I)Lorg/a/c;

    move-result-object v1

    const-string v3, "icon"

    .line 3247
    invoke-virtual {v2, v3, v1}, Lorg/a/c;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    :cond_0
    const-string v1, "app"

    .line 71
    invoke-virtual {v0, v1, v2}, Lorg/a/c;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    move-result-object v0

    iget-object v1, p1, Lio/fabric/sdk/android/services/settings/s;->sessionData:Lio/fabric/sdk/android/services/settings/p;

    .line 3269
    new-instance v2, Lorg/a/c;

    invoke-direct {v2}, Lorg/a/c;-><init>()V

    iget v3, v1, Lio/fabric/sdk/android/services/settings/p;->logBufferSize:I

    const-string v4, "log_buffer_size"

    .line 3270
    invoke-virtual {v2, v4, v3}, Lorg/a/c;->put(Ljava/lang/String;I)Lorg/a/c;

    move-result-object v2

    iget v3, v1, Lio/fabric/sdk/android/services/settings/p;->maxChainedExceptionDepth:I

    const-string v4, "max_chained_exception_depth"

    .line 3271
    invoke-virtual {v2, v4, v3}, Lorg/a/c;->put(Ljava/lang/String;I)Lorg/a/c;

    move-result-object v2

    iget v3, v1, Lio/fabric/sdk/android/services/settings/p;->maxCustomExceptionEvents:I

    const-string v4, "max_custom_exception_events"

    .line 3273
    invoke-virtual {v2, v4, v3}, Lorg/a/c;->put(Ljava/lang/String;I)Lorg/a/c;

    move-result-object v2

    iget v3, v1, Lio/fabric/sdk/android/services/settings/p;->maxCustomKeyValuePairs:I

    const-string v4, "max_custom_key_value_pairs"

    .line 3275
    invoke-virtual {v2, v4, v3}, Lorg/a/c;->put(Ljava/lang/String;I)Lorg/a/c;

    move-result-object v2

    iget v3, v1, Lio/fabric/sdk/android/services/settings/p;->identifierMask:I

    const-string v4, "identifier_mask"

    .line 3277
    invoke-virtual {v2, v4, v3}, Lorg/a/c;->put(Ljava/lang/String;I)Lorg/a/c;

    move-result-object v2

    iget-boolean v1, v1, Lio/fabric/sdk/android/services/settings/p;->sendSessionWithoutCrash:Z

    const-string v3, "send_session_without_crash"

    .line 3279
    invoke-virtual {v2, v3, v1}, Lorg/a/c;->put(Ljava/lang/String;Z)Lorg/a/c;

    move-result-object v1

    const-string v2, "session"

    .line 72
    invoke-virtual {v0, v2, v1}, Lorg/a/c;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    move-result-object v0

    iget-object p1, p1, Lio/fabric/sdk/android/services/settings/s;->promptData:Lio/fabric/sdk/android/services/settings/o;

    .line 3304
    new-instance v1, Lorg/a/c;

    invoke-direct {v1}, Lorg/a/c;-><init>()V

    iget-object v2, p1, Lio/fabric/sdk/android/services/settings/o;->title:Ljava/lang/String;

    const-string v3, "title"

    .line 3305
    invoke-virtual {v1, v3, v2}, Lorg/a/c;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    move-result-object v1

    iget-object v2, p1, Lio/fabric/sdk/android/services/settings/o;->message:Ljava/lang/String;

    const-string v3, "message"

    .line 3306
    invoke-virtual {v1, v3, v2}, Lorg/a/c;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    move-result-object v1

    iget-object v2, p1, Lio/fabric/sdk/android/services/settings/o;->sendButtonTitle:Ljava/lang/String;

    const-string v3, "send_button_title"

    .line 3307
    invoke-virtual {v1, v3, v2}, Lorg/a/c;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    move-result-object v1

    iget-boolean v2, p1, Lio/fabric/sdk/android/services/settings/o;->showCancelButton:Z

    const-string v3, "show_cancel_button"

    .line 3308
    invoke-virtual {v1, v3, v2}, Lorg/a/c;->put(Ljava/lang/String;Z)Lorg/a/c;

    move-result-object v1

    iget-object v2, p1, Lio/fabric/sdk/android/services/settings/o;->cancelButtonTitle:Ljava/lang/String;

    const-string v3, "cancel_button_title"

    .line 3309
    invoke-virtual {v1, v3, v2}, Lorg/a/c;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    move-result-object v1

    iget-boolean v2, p1, Lio/fabric/sdk/android/services/settings/o;->showAlwaysSendButton:Z

    const-string v3, "show_always_send_button"

    .line 3310
    invoke-virtual {v1, v3, v2}, Lorg/a/c;->put(Ljava/lang/String;Z)Lorg/a/c;

    move-result-object v1

    iget-object p1, p1, Lio/fabric/sdk/android/services/settings/o;->alwaysSendButtonTitle:Ljava/lang/String;

    const-string v2, "always_send_button_title"

    .line 3312
    invoke-virtual {v1, v2, p1}, Lorg/a/c;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    move-result-object p1

    const-string v1, "prompt"

    .line 73
    invoke-virtual {v0, v1, p1}, Lorg/a/c;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    move-result-object p1

    return-object p1
.end method
