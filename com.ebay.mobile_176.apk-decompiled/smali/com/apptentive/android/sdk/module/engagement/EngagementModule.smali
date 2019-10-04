.class public Lcom/apptentive/android/sdk/module/engagement/EngagementModule;
.super Ljava/lang/Object;
.source "EngagementModule.java"


# static fields
.field private static final LAUNCHER_FACTORY:Lcom/apptentive/android/sdk/module/engagement/InteractionLauncherFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lcom/apptentive/android/sdk/module/engagement/DefaultInteractionLauncherFactory;

    invoke-direct {v0}, Lcom/apptentive/android/sdk/module/engagement/DefaultInteractionLauncherFactory;-><init>()V

    sput-object v0, Lcom/apptentive/android/sdk/module/engagement/EngagementModule;->LAUNCHER_FACTORY:Lcom/apptentive/android/sdk/module/engagement/InteractionLauncherFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static canShowInteraction(Lcom/apptentive/android/sdk/conversation/Conversation;Ljava/lang/String;)Z
    .locals 1

    .line 166
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveHelper;->checkConversationQueue()V

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 172
    invoke-virtual {p0, p1, v0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getApplicableInteraction(Ljava/lang/String;Z)Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 169
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Conversation is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static canShowInteraction(Lcom/apptentive/android/sdk/conversation/Conversation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 161
    invoke-static {p3, p1, p2}, Lcom/apptentive/android/sdk/module/engagement/EngagementModule;->generateEventLabel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 162
    invoke-static {p0, p1}, Lcom/apptentive/android/sdk/module/engagement/EngagementModule;->canShowInteraction(Lcom/apptentive/android/sdk/conversation/Conversation;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static doEngage(Lcom/apptentive/android/sdk/conversation/Conversation;Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8

    .line 90
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveHelper;->checkConversationQueue()V

    const/4 v0, 0x1

    .line 92
    invoke-virtual {p0, p2, v0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getApplicableInteraction(Ljava/lang/String;Z)Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 94
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getInstance()Lcom/apptentive/android/sdk/ApptentiveInstance;

    move-result-object p2

    invoke-interface {p2}, Lcom/apptentive/android/sdk/ApptentiveInstance;->getApplicationVersionName()Ljava/lang/String;

    move-result-object v6

    .line 95
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getInstance()Lcom/apptentive/android/sdk/ApptentiveInstance;

    move-result-object p2

    invoke-interface {p2}, Lcom/apptentive/android/sdk/ApptentiveInstance;->getApplicationVersionCode()I

    move-result v5

    .line 96
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getEventData()Lcom/apptentive/android/sdk/storage/EventData;

    move-result-object v2

    invoke-static {}, Lcom/apptentive/android/sdk/util/Util;->currentTimeSeconds()D

    move-result-wide v3

    invoke-virtual {v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/apptentive/android/sdk/storage/EventData;->storeInteractionForCurrentAppVersion(DILjava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {p1, v1}, Lcom/apptentive/android/sdk/module/engagement/EngagementModule;->launchInteraction(Landroid/content/Context;Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;)V

    return v0

    .line 100
    :cond_0
    sget-object p0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->INTERACTIONS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string p1, "No interaction to show for event: \'%s\'"

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p0, p1, v0}, Lcom/apptentive/android/sdk/ApptentiveLog;->d(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method private static encodeEventLabelPart(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "%"

    const-string v1, "%25"

    .line 185
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "/"

    const-string v1, "%2F"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "#"

    const-string v1, "%23"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs declared-synchronized engage(Landroid/content/Context;Lcom/apptentive/android/sdk/conversation/Conversation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[Lcom/apptentive/android/sdk/model/ExtendedData;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/apptentive/android/sdk/conversation/Conversation;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;[",
            "Lcom/apptentive/android/sdk/model/ExtendedData;",
            ")Z"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p5

    const-class v3, Lcom/apptentive/android/sdk/module/engagement/EngagementModule;

    monitor-enter v3

    .line 58
    :try_start_0
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveHelper;->checkConversationQueue()V

    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    .line 68
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->isApptentiveRegistered()Z

    move-result v4

    invoke-static {v4}, Lcom/apptentive/android/sdk/debug/Assert;->assertTrue(Z)V

    .line 69
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->isApptentiveRegistered()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 70
    monitor-exit v3

    return v5

    :cond_0
    const/4 v4, 0x1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    .line 74
    :try_start_1
    invoke-static {v6, v7, v2}, Lcom/apptentive/android/sdk/module/engagement/EngagementModule;->generateEventLabel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 75
    sget-object v6, Lcom/apptentive/android/sdk/ApptentiveLogTag;->INTERACTIONS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v7, "Engage event: \'%s\'"

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v12, v8, v5

    invoke-static {v6, v7, v8}, Lcom/apptentive/android/sdk/ApptentiveLog;->i(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getInstance()Lcom/apptentive/android/sdk/ApptentiveInstance;

    move-result-object v6

    invoke-interface {v6}, Lcom/apptentive/android/sdk/ApptentiveInstance;->getApplicationVersionName()Ljava/lang/String;

    move-result-object v10

    .line 78
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getInstance()Lcom/apptentive/android/sdk/ApptentiveInstance;

    move-result-object v6

    invoke-interface {v6}, Lcom/apptentive/android/sdk/ApptentiveInstance;->getApplicationVersionCode()I

    move-result v9

    .line 79
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/conversation/Conversation;->getEventData()Lcom/apptentive/android/sdk/storage/EventData;

    move-result-object v6

    invoke-static {}, Lcom/apptentive/android/sdk/util/Util;->currentTimeSeconds()D

    move-result-wide v7

    move-object v11, v12

    invoke-virtual/range {v6 .. v11}, Lcom/apptentive/android/sdk/storage/EventData;->storeEventForCurrentAppVersion(DILjava/lang/String;Ljava/lang/String;)V

    .line 80
    new-instance v13, Lcom/apptentive/android/sdk/model/EventPayload;

    move-object v6, v13

    move-object v7, v12

    move-object/from16 v8, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-direct/range {v6 .. v11}, Lcom/apptentive/android/sdk/model/EventPayload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[Lcom/apptentive/android/sdk/model/ExtendedData;)V

    invoke-virtual {p1, v13}, Lcom/apptentive/android/sdk/conversation/Conversation;->addPayload(Lcom/apptentive/android/sdk/model/Payload;)V

    .line 81
    invoke-static {p1, p0, v12}, Lcom/apptentive/android/sdk/module/engagement/EngagementModule;->doEngage(Lcom/apptentive/android/sdk/conversation/Conversation;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return v0

    :catch_0
    move-exception v0

    .line 83
    :try_start_2
    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->INTERACTIONS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v6, "Exception while engaging event \'%s\'"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v5

    invoke-static {v1, v0, v6, v4}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/EngagementModule;->logException(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    monitor-exit v3

    return v5

    .line 65
    :cond_1
    :try_start_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Conversation is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    .line 57
    monitor-exit v3

    throw v0
.end method

.method public static declared-synchronized engageInternal(Landroid/content/Context;Lcom/apptentive/android/sdk/conversation/Conversation;Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;Ljava/lang/String;)Z
    .locals 10

    const-class v0, Lcom/apptentive/android/sdk/module/engagement/EngagementModule;

    monitor-enter v0

    :try_start_0
    const-string v3, "com.apptentive"

    .line 50
    invoke-virtual {p2}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;->getType()Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction$Type;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;->getId()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 p2, 0x0

    move-object v9, p2

    check-cast v9, [Lcom/apptentive/android/sdk/model/ExtendedData;

    move-object v1, p0

    move-object v2, p1

    move-object v6, p3

    invoke-static/range {v1 .. v9}, Lcom/apptentive/android/sdk/module/engagement/EngagementModule;->engage(Landroid/content/Context;Lcom/apptentive/android/sdk/conversation/Conversation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[Lcom/apptentive/android/sdk/model/ExtendedData;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized engageInternal(Landroid/content/Context;Lcom/apptentive/android/sdk/conversation/Conversation;Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    const-class v0, Lcom/apptentive/android/sdk/module/engagement/EngagementModule;

    monitor-enter v0

    :try_start_0
    const-string v3, "com.apptentive"

    .line 54
    invoke-virtual {p2}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;->getType()Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction$Type;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;->getId()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    const/4 p2, 0x0

    move-object v9, p2

    check-cast v9, [Lcom/apptentive/android/sdk/model/ExtendedData;

    move-object v1, p0

    move-object v2, p1

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v9}, Lcom/apptentive/android/sdk/module/engagement/EngagementModule;->engage(Landroid/content/Context;Lcom/apptentive/android/sdk/conversation/Conversation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[Lcom/apptentive/android/sdk/model/ExtendedData;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized engageInternal(Landroid/content/Context;Lcom/apptentive/android/sdk/conversation/Conversation;Ljava/lang/String;)Z
    .locals 10

    const-class v0, Lcom/apptentive/android/sdk/module/engagement/EngagementModule;

    monitor-enter v0

    :try_start_0
    const-string v3, "com.apptentive"

    const-string v4, "app"

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 42
    move-object v9, v1

    check-cast v9, [Lcom/apptentive/android/sdk/model/ExtendedData;

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    invoke-static/range {v1 .. v9}, Lcom/apptentive/android/sdk/module/engagement/EngagementModule;->engage(Landroid/content/Context;Lcom/apptentive/android/sdk/conversation/Conversation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[Lcom/apptentive/android/sdk/model/ExtendedData;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized engageInternal(Landroid/content/Context;Lcom/apptentive/android/sdk/conversation/Conversation;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    const-class v0, Lcom/apptentive/android/sdk/module/engagement/EngagementModule;

    monitor-enter v0

    :try_start_0
    const-string v3, "com.apptentive"

    const-string v4, "app"

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 46
    move-object v9, v1

    check-cast v9, [Lcom/apptentive/android/sdk/model/ExtendedData;

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v9}, Lcom/apptentive/android/sdk/module/engagement/EngagementModule;->engage(Landroid/content/Context;Lcom/apptentive/android/sdk/conversation/Conversation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[Lcom/apptentive/android/sdk/model/ExtendedData;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static generateEventLabel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "%s#%s#%s"

    const/4 v1, 0x3

    .line 178
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/apptentive/android/sdk/module/engagement/EngagementModule;->encodeEventLabelPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {p1}, Lcom/apptentive/android/sdk/module/engagement/EngagementModule;->encodeEventLabelPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v1, p1

    invoke-static {p2}, Lcom/apptentive/android/sdk/module/engagement/EngagementModule;->encodeEventLabelPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v1, p1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static launchInteraction(Landroid/content/Context;Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;)V
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "Unable to launch interaction: context is null"

    .line 106
    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p0, "Unable to launch interaction: interaction instance is null"

    .line 111
    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 115
    :cond_1
    invoke-static {}, Lcom/apptentive/android/sdk/util/threading/DispatchQueue;->isMainQueue()Z

    move-result v1

    if-nez v1, :cond_2

    .line 116
    invoke-static {}, Lcom/apptentive/android/sdk/util/threading/DispatchQueue;->mainQueue()Lcom/apptentive/android/sdk/util/threading/DispatchQueue;

    move-result-object v0

    new-instance v1, Lcom/apptentive/android/sdk/module/engagement/EngagementModule$1;

    invoke-direct {v1, p0, p1}, Lcom/apptentive/android/sdk/module/engagement/EngagementModule$1;-><init>(Landroid/content/Context;Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;)V

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/util/threading/DispatchQueue;->dispatchAsync(Lcom/apptentive/android/sdk/util/threading/DispatchTask;)V

    return-void

    :cond_2
    const/4 v1, 0x1

    .line 126
    :try_start_0
    sget-object v2, Lcom/apptentive/android/sdk/ApptentiveLogTag;->INTERACTIONS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v3, "Launching interaction: \'%s\'"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;->getType()Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction$Type;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Lcom/apptentive/android/sdk/ApptentiveLog;->i(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    sget-object v2, Lcom/apptentive/android/sdk/module/engagement/EngagementModule;->LAUNCHER_FACTORY:Lcom/apptentive/android/sdk/module/engagement/InteractionLauncherFactory;

    invoke-interface {v2, p1}, Lcom/apptentive/android/sdk/module/engagement/InteractionLauncherFactory;->launcherForInteraction(Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;)Lcom/apptentive/android/sdk/module/engagement/InteractionLauncher;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 129
    invoke-interface {v2, p0, p1}, Lcom/apptentive/android/sdk/module/engagement/InteractionLauncher;->launch(Landroid/content/Context;Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;)Z

    move-result p0

    const-string v2, "Interaction %slaunched"

    .line 130
    new-array v3, v1, [Ljava/lang/Object;

    if-eqz p0, :cond_3

    const-string p0, ""

    goto :goto_0

    :cond_3
    const-string p0, "NOT "

    :goto_0
    aput-object p0, v3, v0

    invoke-static {v2, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    const-string p0, "Interaction not launched: can\'t create launcher for interaction: %s"

    .line 132
    new-array v2, v1, [Ljava/lang/Object;

    aput-object p1, v2, v0

    invoke-static {p0, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v2, "Exception while launching interaction: %s"

    .line 135
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-static {p0, v2, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    invoke-static {p0}, Lcom/apptentive/android/sdk/module/engagement/EngagementModule;->logException(Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method

.method public static launchMessageCenterErrorActivity(Landroid/content/Context;)V
    .locals 2

    .line 141
    invoke-static {}, Lcom/apptentive/android/sdk/util/threading/DispatchQueue;->isMainQueue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    invoke-static {}, Lcom/apptentive/android/sdk/util/threading/DispatchQueue;->mainQueue()Lcom/apptentive/android/sdk/util/threading/DispatchQueue;

    move-result-object v0

    new-instance v1, Lcom/apptentive/android/sdk/module/engagement/EngagementModule$2;

    invoke-direct {v1, p0}, Lcom/apptentive/android/sdk/module/engagement/EngagementModule$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/util/threading/DispatchQueue;->dispatchAsync(Lcom/apptentive/android/sdk/util/threading/DispatchTask;)V

    return-void

    :cond_0
    if-eqz p0, :cond_2

    .line 152
    invoke-static {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/MessageCenterInteraction;->generateMessageCenterErrorIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 153
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_1

    const/high16 v1, 0x18000000

    .line 154
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 156
    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method private static logException(Ljava/lang/Exception;)V
    .locals 0

    .line 189
    invoke-static {p0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    return-void
.end method
