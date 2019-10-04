.class public Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore;
.super Ljava/lang/Object;
.source "VersionHistoryStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$Selector;
    }
.end annotation


# static fields
.field private static versionHistoryEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 36
    invoke-static {}, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStoreMigrator;->performMigrationIfNeeded()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized clear()V
    .locals 3

    const-class v0, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore;

    monitor-enter v0

    .line 71
    :try_start_0
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getInstance()Lcom/apptentive/android/sdk/ApptentiveInstance;

    move-result-object v1

    invoke-interface {v1}, Lcom/apptentive/android/sdk/ApptentiveInstance;->getGlobalSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 72
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "versionHistoryV2"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 73
    sget-object v1, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore;->versionHistoryEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 70
    monitor-exit v0

    throw v1
.end method

.method private static ensureLoaded()V
    .locals 5

    .line 51
    sget-object v0, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore;->versionHistoryEntries:Ljava/util/List;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore;->versionHistoryEntries:Ljava/util/List;

    .line 53
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getInstance()Lcom/apptentive/android/sdk/ApptentiveInstance;

    move-result-object v0

    invoke-interface {v0}, Lcom/apptentive/android/sdk/ApptentiveInstance;->getGlobalSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v2, "versionHistoryV2"

    const-string v3, "[]"

    .line 56
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 58
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 59
    new-instance v3, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryEntry;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryEntry;-><init>(Lorg/json/JSONObject;)V

    .line 60
    sget-object v4, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore;->versionHistoryEntries:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 63
    sget-object v2, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v3, "Error loading VersionHistoryStore."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->w(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static getBaseArray()Lorg/json/JSONArray;
    .locals 3

    .line 174
    invoke-static {}, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore;->ensureLoaded()V

    .line 175
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 176
    sget-object v1, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore;->versionHistoryEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryEntry;

    .line 177
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static declared-synchronized getLastVersionSeen()Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryEntry;
    .locals 3

    const-class v0, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore;

    monitor-enter v0

    .line 161
    :try_start_0
    invoke-static {}, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore;->ensureLoaded()V

    .line 162
    sget-object v1, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore;->versionHistoryEntries:Ljava/util/List;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore;->versionHistoryEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 163
    sget-object v1, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore;->versionHistoryEntries:Ljava/util/List;

    sget-object v2, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore;->versionHistoryEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    .line 165
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 160
    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getTimeAtInstall(Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$Selector;)Lcom/apptentive/android/sdk/Apptentive$DateTime;
    .locals 6

    const-class v0, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore;

    monitor-enter v0

    .line 110
    :try_start_0
    invoke-static {}, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore;->ensureLoaded()V

    .line 111
    sget-object v1, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore;->versionHistoryEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryEntry;

    .line 112
    sget-object v3, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$1;->$SwitchMap$com$apptentive$android$sdk$migration$v4_0_0$VersionHistoryStore$Selector:[I

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$Selector;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 122
    :pswitch_0
    new-instance v3, Lcom/apptentive/android/sdk/Apptentive$Version;

    invoke-direct {v3}, Lcom/apptentive/android/sdk/Apptentive$Version;-><init>()V

    .line 123
    new-instance v4, Lcom/apptentive/android/sdk/Apptentive$Version;

    invoke-direct {v4}, Lcom/apptentive/android/sdk/Apptentive$Version;-><init>()V

    .line 124
    invoke-virtual {v2}, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryEntry;->getVersionName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/apptentive/android/sdk/Apptentive$Version;->setVersion(Ljava/lang/String;)V

    .line 125
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getInstance()Lcom/apptentive/android/sdk/ApptentiveInstance;

    move-result-object v5

    invoke-interface {v5}, Lcom/apptentive/android/sdk/ApptentiveInstance;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/apptentive/android/sdk/util/RuntimeUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/apptentive/android/sdk/Apptentive$Version;->setVersion(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v3, v4}, Lcom/apptentive/android/sdk/Apptentive$Version;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 127
    new-instance p0, Lcom/apptentive/android/sdk/Apptentive$DateTime;

    invoke-virtual {v2}, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryEntry;->getTimestamp()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/apptentive/android/sdk/Apptentive$DateTime;-><init>(D)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 117
    :pswitch_1
    :try_start_1
    invoke-virtual {v2}, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryEntry;->getVersionCode()I

    move-result v3

    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getInstance()Lcom/apptentive/android/sdk/ApptentiveInstance;

    move-result-object v4

    invoke-interface {v4}, Lcom/apptentive/android/sdk/ApptentiveInstance;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/apptentive/android/sdk/util/RuntimeUtils;->getAppVersionCode(Landroid/content/Context;)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 118
    new-instance p0, Lcom/apptentive/android/sdk/Apptentive$DateTime;

    invoke-virtual {v2}, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryEntry;->getTimestamp()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/apptentive/android/sdk/Apptentive$DateTime;-><init>(D)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    .line 115
    :pswitch_2
    :try_start_2
    new-instance p0, Lcom/apptentive/android/sdk/Apptentive$DateTime;

    invoke-virtual {v2}, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryEntry;->getTimestamp()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/apptentive/android/sdk/Apptentive$DateTime;-><init>(D)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object p0

    .line 132
    :cond_1
    :try_start_3
    new-instance p0, Lcom/apptentive/android/sdk/Apptentive$DateTime;

    invoke-static {}, Lcom/apptentive/android/sdk/util/Util;->currentTimeSeconds()D

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/apptentive/android/sdk/Apptentive$DateTime;-><init>(D)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 109
    monitor-exit v0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static declared-synchronized isUpdate(Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$Selector;)Z
    .locals 6

    const-class v0, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore;

    monitor-enter v0

    .line 143
    :try_start_0
    invoke-static {}, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore;->ensureLoaded()V

    .line 144
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 145
    sget-object v2, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore;->versionHistoryEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryEntry;

    .line 146
    sget-object v4, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$1;->$SwitchMap$com$apptentive$android$sdk$migration$v4_0_0$VersionHistoryStore$Selector:[I

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$Selector;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 148
    :pswitch_0
    invoke-virtual {v3}, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryEntry;->getVersionName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 151
    :pswitch_1
    invoke-virtual {v3}, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryEntry;->getVersionCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 157
    :cond_0
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-le p0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    .line 142
    monitor-exit v0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static save()V
    .locals 3

    .line 43
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getInstance()Lcom/apptentive/android/sdk/ApptentiveInstance;

    move-result-object v0

    invoke-interface {v0}, Lcom/apptentive/android/sdk/ApptentiveInstance;->getGlobalSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 44
    invoke-static {}, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore;->getBaseArray()Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 46
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "versionHistoryV2"

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public static declared-synchronized updateVersionHistory(ILjava/lang/String;)V
    .locals 3

    const-class v0, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore;

    monitor-enter v0

    .line 77
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {}, Lcom/apptentive/android/sdk/util/Util;->currentTimeSeconds()D

    move-result-wide v1

    invoke-static {p0, p1, v1, v2}, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore;->updateVersionHistory(Ljava/lang/Integer;Ljava/lang/String;D)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 76
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized updateVersionHistory(Ljava/lang/Integer;Ljava/lang/String;D)V
    .locals 8

    const-class v0, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore;

    monitor-enter v0

    .line 81
    :try_start_0
    invoke-static {}, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore;->ensureLoaded()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    .line 84
    :try_start_1
    sget-object v2, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore;->versionHistoryEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryEntry;

    .line 85
    invoke-virtual {v4}, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryEntry;->getVersionCode()I

    move-result v6

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v6, v7, :cond_0

    invoke-virtual {v4}, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryEntry;->getVersionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    .line 91
    new-instance v2, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryEntry;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-direct {v2, p0, p1, v3}, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryEntry;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Double;)V

    .line 92
    sget-object v3, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v4, "Adding Version History entry: %s"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v1

    invoke-static {v3, v4, v5}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    sget-object v2, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore;->versionHistoryEntries:Ljava/util/List;

    new-instance v3, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryEntry;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {v3, p0, p1, p2}, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryEntry;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Double;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-static {}, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore;->save()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 97
    :try_start_2
    sget-object p1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string p2, "Error updating VersionHistoryStore."

    new-array p3, v1, [Ljava/lang/Object;

    invoke-static {p1, p0, p2, p3}, Lcom/apptentive/android/sdk/ApptentiveLog;->w(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    invoke-static {p0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 80
    monitor-exit v0

    throw p0
.end method
