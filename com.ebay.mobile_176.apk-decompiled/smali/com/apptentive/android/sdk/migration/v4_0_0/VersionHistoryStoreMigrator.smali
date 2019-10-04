.class public Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStoreMigrator;
.super Ljava/lang/Object;
.source "VersionHistoryStoreMigrator.java"


# static fields
.field private static migrated_to_v2:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static logException(Ljava/lang/Exception;)V
    .locals 0

    .line 76
    invoke-static {p0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static migrateV1ToV2(Ljava/lang/String;)V
    .locals 11

    .line 29
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "Migrating VersionHistoryStore V1 to V2."

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->i(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "V1: %s"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p0, v4, v2

    invoke-static {v0, v1, v4}, Lcom/apptentive/android/sdk/ApptentiveLog;->i(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    const-string v0, "__"

    .line 32
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 33
    array-length v1, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v5, v0, v4

    const-string v6, "--"

    .line 34
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 36
    :try_start_1
    aget-object v7, v6, v3

    .line 37
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x2

    aget-object v8, v6, v8

    aget-object v6, v6, v2

    .line 39
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    .line 36
    invoke-static {v7, v8, v9, v10}, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore;->updateVersionHistory(Ljava/lang/Integer;Ljava/lang/String;D)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    .line 42
    :try_start_2
    sget-object v7, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v8, "Error migrating old version history entry: %s"

    new-array v9, v3, [Ljava/lang/Object;

    aput-object v5, v9, v2

    invoke-static {v7, v8, v9}, Lcom/apptentive/android/sdk/ApptentiveLog;->w(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    invoke-static {v6}, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStoreMigrator;->logException(Ljava/lang/Exception;)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 46
    :cond_0
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "V2: %s"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore;->getBaseArray()Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v1, v4}, Lcom/apptentive/android/sdk/ApptentiveLog;->i(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 48
    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v4, "Error migrating old version history entries: %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    invoke-static {v1, v4, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->w(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    invoke-static {v0}, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStoreMigrator;->logException(Ljava/lang/Exception;)V

    :goto_2
    return-void
.end method

.method static performMigrationIfNeeded()V
    .locals 0

    .line 54
    invoke-static {}, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStoreMigrator;->performMigrationIfNeededV1ToV2()V

    return-void
.end method

.method private static performMigrationIfNeededV1ToV2()V
    .locals 3

    .line 58
    sget-boolean v0, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStoreMigrator;->migrated_to_v2:Z

    if-eqz v0, :cond_0

    return-void

    .line 61
    :cond_0
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->isApptentiveRegistered()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getInstance()Lcom/apptentive/android/sdk/ApptentiveInstance;

    move-result-object v0

    invoke-interface {v0}, Lcom/apptentive/android/sdk/ApptentiveInstance;->getGlobalSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v1, "versionHistoryV2Migrated"

    const/4 v2, 0x0

    .line 64
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStoreMigrator;->migrated_to_v2:Z

    .line 65
    sget-boolean v1, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStoreMigrator;->migrated_to_v2:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const-string/jumbo v1, "versionHistory"

    const/4 v2, 0x0

    .line 68
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-static {v1}, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStoreMigrator;->migrateV1ToV2(Ljava/lang/String;)V

    .line 70
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "versionHistoryV2Migrated"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    return-void
.end method
