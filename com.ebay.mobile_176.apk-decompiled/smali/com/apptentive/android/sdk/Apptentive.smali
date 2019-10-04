.class public Lcom/apptentive/android/sdk/Apptentive;
.super Ljava/lang/Object;
.source "Apptentive.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apptentive/android/sdk/Apptentive$PendingIntentCallback;,
        Lcom/apptentive/android/sdk/Apptentive$BooleanCallback;,
        Lcom/apptentive/android/sdk/Apptentive$OnPreInteractionListener;,
        Lcom/apptentive/android/sdk/Apptentive$DateTime;,
        Lcom/apptentive/android/sdk/Apptentive$Version;,
        Lcom/apptentive/android/sdk/Apptentive$AuthenticationFailedReason;,
        Lcom/apptentive/android/sdk/Apptentive$AuthenticationFailedListener;,
        Lcom/apptentive/android/sdk/Apptentive$LoginCallback;
    }
.end annotation


# static fields
.field public static final INTEGRATION_PUSH_TOKEN:Ljava/lang/String; = "token"

.field public static final PUSH_PROVIDER_AMAZON_AWS_SNS:I = 0x3

.field public static final PUSH_PROVIDER_APPTENTIVE:I = 0x0

.field public static final PUSH_PROVIDER_PARSE:I = 0x1

.field public static final PUSH_PROVIDER_URBAN_AIRSHIP:I = 0x2

.field private static preInteractionListener:Lcom/apptentive/android/sdk/Apptentive$OnPreInteractionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/apptentive/android/sdk/conversation/Conversation;Ljava/lang/String;)Z
    .locals 0

    .line 64
    invoke-static {p0, p1}, Lcom/apptentive/android/sdk/Apptentive;->canShowLocalAppInteraction(Lcom/apptentive/android/sdk/conversation/Conversation;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Landroid/content/Context;Lcom/apptentive/android/sdk/conversation/Conversation;Ljava/lang/String;Ljava/util/Map;[Lcom/apptentive/android/sdk/model/ExtendedData;)Z
    .locals 0

    .line 64
    invoke-static {p0, p1, p2, p3, p4}, Lcom/apptentive/android/sdk/Apptentive;->engageLocalAppEvent(Landroid/content/Context;Lcom/apptentive/android/sdk/conversation/Conversation;Ljava/lang/String;Ljava/util/Map;[Lcom/apptentive/android/sdk/model/ExtendedData;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Ljava/lang/String;Lcom/apptentive/android/sdk/Apptentive$LoginCallback;)V
    .locals 0

    .line 64
    invoke-static {p0, p1}, Lcom/apptentive/android/sdk/Apptentive;->loginGuarded(Ljava/lang/String;Lcom/apptentive/android/sdk/Apptentive$LoginCallback;)V

    return-void
.end method

.method static synthetic access$300(Ljava/lang/Exception;)V
    .locals 0

    .line 64
    invoke-static {p0}, Lcom/apptentive/android/sdk/Apptentive;->logException(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$400(Lcom/apptentive/android/sdk/Apptentive$LoginCallback;Ljava/lang/String;)V
    .locals 0

    .line 64
    invoke-static {p0, p1}, Lcom/apptentive/android/sdk/Apptentive;->notifyFailure(Lcom/apptentive/android/sdk/Apptentive$LoginCallback;Ljava/lang/String;)V

    return-void
.end method

.method public static addCustomDeviceData(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    .line 271
    new-instance v0, Lcom/apptentive/android/sdk/Apptentive$5;

    invoke-direct {v0, p0, p1}, Lcom/apptentive/android/sdk/Apptentive$5;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string p0, "add custom device data"

    invoke-static {v0, p0}, Lcom/apptentive/android/sdk/ApptentiveHelper;->dispatchConversationTask(Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;Ljava/lang/String;)V

    return-void
.end method

.method public static addCustomDeviceData(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 1

    .line 253
    new-instance v0, Lcom/apptentive/android/sdk/Apptentive$4;

    invoke-direct {v0, p0, p1}, Lcom/apptentive/android/sdk/Apptentive$4;-><init>(Ljava/lang/String;Ljava/lang/Number;)V

    const-string p0, "add custom device data"

    invoke-static {v0, p0}, Lcom/apptentive/android/sdk/ApptentiveHelper;->dispatchConversationTask(Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;Ljava/lang/String;)V

    return-void
.end method

.method public static addCustomDeviceData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 235
    new-instance v0, Lcom/apptentive/android/sdk/Apptentive$3;

    invoke-direct {v0, p0, p1}, Lcom/apptentive/android/sdk/Apptentive$3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "add custom device data"

    invoke-static {v0, p0}, Lcom/apptentive/android/sdk/ApptentiveHelper;->dispatchConversationTask(Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;Ljava/lang/String;)V

    return-void
.end method

.method public static addCustomPersonData(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    .line 360
    new-instance v0, Lcom/apptentive/android/sdk/Apptentive$11;

    invoke-direct {v0, p0, p1}, Lcom/apptentive/android/sdk/Apptentive$11;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string p0, "add custom person data"

    invoke-static {v0, p0}, Lcom/apptentive/android/sdk/ApptentiveHelper;->dispatchConversationTask(Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;Ljava/lang/String;)V

    return-void
.end method

.method public static addCustomPersonData(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 1

    .line 342
    new-instance v0, Lcom/apptentive/android/sdk/Apptentive$10;

    invoke-direct {v0, p0, p1}, Lcom/apptentive/android/sdk/Apptentive$10;-><init>(Ljava/lang/String;Ljava/lang/Number;)V

    const-string p0, "add custom person data"

    invoke-static {v0, p0}, Lcom/apptentive/android/sdk/ApptentiveHelper;->dispatchConversationTask(Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;Ljava/lang/String;)V

    return-void
.end method

.method public static addCustomPersonData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 324
    new-instance v0, Lcom/apptentive/android/sdk/Apptentive$9;

    invoke-direct {v0, p0, p1}, Lcom/apptentive/android/sdk/Apptentive$9;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "add custom person data"

    invoke-static {v0, p0}, Lcom/apptentive/android/sdk/ApptentiveHelper;->dispatchConversationTask(Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;Ljava/lang/String;)V

    return-void
.end method

.method public static addUnreadMessagesListener(Lcom/apptentive/android/sdk/module/messagecenter/UnreadMessagesListener;)V
    .locals 1

    .line 1008
    new-instance v0, Lcom/apptentive/android/sdk/Apptentive$22;

    invoke-direct {v0, p0}, Lcom/apptentive/android/sdk/Apptentive$22;-><init>(Lcom/apptentive/android/sdk/module/messagecenter/UnreadMessagesListener;)V

    const-string p0, "add unread message listener"

    invoke-static {v0, p0}, Lcom/apptentive/android/sdk/ApptentiveHelper;->dispatchConversationTask(Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;Ljava/lang/String;)V

    return-void
.end method

.method public static buildPendingIntentFromPushNotification(Lcom/apptentive/android/sdk/Apptentive$PendingIntentCallback;Landroid/content/Intent;)V
    .locals 1
    .param p0    # Lcom/apptentive/android/sdk/Apptentive$PendingIntentCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p0, :cond_0

    .line 575
    new-instance v0, Lcom/apptentive/android/sdk/Apptentive$16;

    invoke-direct {v0, p1, p0}, Lcom/apptentive/android/sdk/Apptentive$16;-><init>(Landroid/content/Intent;Lcom/apptentive/android/sdk/Apptentive$PendingIntentCallback;)V

    const-string p0, "build pending intent"

    invoke-static {v0, p0}, Lcom/apptentive/android/sdk/ApptentiveHelper;->dispatchConversationTask(Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;Ljava/lang/String;)V

    return-void

    .line 572
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Callback is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static buildPendingIntentFromPushNotification(Lcom/apptentive/android/sdk/Apptentive$PendingIntentCallback;Landroid/os/Bundle;)V
    .locals 1
    .param p0    # Lcom/apptentive/android/sdk/Apptentive$PendingIntentCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p0, :cond_0

    .line 616
    new-instance v0, Lcom/apptentive/android/sdk/Apptentive$17;

    invoke-direct {v0, p1, p0}, Lcom/apptentive/android/sdk/Apptentive$17;-><init>(Landroid/os/Bundle;Lcom/apptentive/android/sdk/Apptentive$PendingIntentCallback;)V

    const-string p0, "build pending intent"

    invoke-static {v0, p0}, Lcom/apptentive/android/sdk/ApptentiveHelper;->dispatchConversationTask(Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;Ljava/lang/String;)V

    return-void

    .line 613
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Callback is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static buildPendingIntentFromPushNotification(Lcom/apptentive/android/sdk/Apptentive$PendingIntentCallback;Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apptentive/android/sdk/Apptentive$PendingIntentCallback;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 654
    new-instance v0, Lcom/apptentive/android/sdk/Apptentive$18;

    invoke-direct {v0, p1, p0}, Lcom/apptentive/android/sdk/Apptentive$18;-><init>(Ljava/util/Map;Lcom/apptentive/android/sdk/Apptentive$PendingIntentCallback;)V

    const-string p0, "build pending intent"

    invoke-static {v0, p0}, Lcom/apptentive/android/sdk/ApptentiveHelper;->dispatchConversationTask(Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;Ljava/lang/String;)V

    return-void
.end method

.method private static canShowLocalAppInteraction(Lcom/apptentive/android/sdk/conversation/Conversation;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "app"

    const-string v1, "local"

    .line 1399
    invoke-static {p0, v0, p1, v1}, Lcom/apptentive/android/sdk/module/engagement/EngagementModule;->canShowInteraction(Lcom/apptentive/android/sdk/conversation/Conversation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static canShowMessageCenter(Lcom/apptentive/android/sdk/Apptentive$BooleanCallback;)V
    .locals 2

    .line 971
    new-instance v0, Lcom/apptentive/android/sdk/Apptentive$20;

    invoke-static {}, Lcom/apptentive/android/sdk/util/threading/DispatchQueue;->mainQueue()Lcom/apptentive/android/sdk/util/threading/DispatchQueue;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/apptentive/android/sdk/Apptentive$20;-><init>(Lcom/apptentive/android/sdk/Apptentive$BooleanCallback;Lcom/apptentive/android/sdk/util/threading/DispatchQueue;)V

    const-string p0, "check message center availability"

    invoke-static {v0, p0}, Lcom/apptentive/android/sdk/ApptentiveHelper;->dispatchConversationTask(Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;Ljava/lang/String;)V

    return-void
.end method

.method public static clearAuthenticationFailedListener()V
    .locals 4

    .line 1532
    :try_start_0
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->checkRegistered()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1535
    :cond_0
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getInstance()Lcom/apptentive/android/sdk/ApptentiveInstance;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/apptentive/android/sdk/ApptentiveInstance;->setAuthenticationFailedListener(Lcom/apptentive/android/sdk/Apptentive$AuthenticationFailedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1537
    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v2, "Exception while clearing authentication listener"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1538
    invoke-static {v0}, Lcom/apptentive/android/sdk/Apptentive;->logException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public static declared-synchronized engage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/apptentive/android/sdk/Apptentive;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1203
    :try_start_0
    move-object v2, v1

    check-cast v2, [Lcom/apptentive/android/sdk/model/ExtendedData;

    invoke-static {p0, p1, v1, v1, v2}, Lcom/apptentive/android/sdk/Apptentive;->engage(Landroid/content/Context;Ljava/lang/String;Lcom/apptentive/android/sdk/Apptentive$BooleanCallback;Ljava/util/Map;[Lcom/apptentive/android/sdk/model/ExtendedData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1204
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 1202
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized engage(Landroid/content/Context;Ljava/lang/String;Lcom/apptentive/android/sdk/Apptentive$BooleanCallback;)V
    .locals 3

    const-class v0, Lcom/apptentive/android/sdk/Apptentive;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1224
    :try_start_0
    move-object v2, v1

    check-cast v2, [Lcom/apptentive/android/sdk/model/ExtendedData;

    invoke-static {p0, p1, p2, v1, v2}, Lcom/apptentive/android/sdk/Apptentive;->engage(Landroid/content/Context;Ljava/lang/String;Lcom/apptentive/android/sdk/Apptentive$BooleanCallback;Ljava/util/Map;[Lcom/apptentive/android/sdk/model/ExtendedData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1225
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 1223
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized engage(Landroid/content/Context;Ljava/lang/String;Lcom/apptentive/android/sdk/Apptentive$BooleanCallback;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/apptentive/android/sdk/Apptentive$BooleanCallback;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/apptentive/android/sdk/Apptentive;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1272
    :try_start_0
    check-cast v1, [Lcom/apptentive/android/sdk/model/ExtendedData;

    invoke-static {p0, p1, p2, p3, v1}, Lcom/apptentive/android/sdk/Apptentive;->engage(Landroid/content/Context;Ljava/lang/String;Lcom/apptentive/android/sdk/Apptentive$BooleanCallback;Ljava/util/Map;[Lcom/apptentive/android/sdk/model/ExtendedData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1273
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 1271
    monitor-exit v0

    throw p0
.end method

.method public static varargs declared-synchronized engage(Landroid/content/Context;Ljava/lang/String;Lcom/apptentive/android/sdk/Apptentive$BooleanCallback;Ljava/util/Map;[Lcom/apptentive/android/sdk/model/ExtendedData;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/apptentive/android/sdk/Apptentive$BooleanCallback;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;[",
            "Lcom/apptentive/android/sdk/model/ExtendedData;",
            ")V"
        }
    .end annotation

    const-class v9, Lcom/apptentive/android/sdk/Apptentive;

    monitor-enter v9

    if-eqz p0, :cond_2

    .line 1334
    :try_start_0
    invoke-static {p1}, Lcom/apptentive/android/sdk/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1339
    sget-object v5, Lcom/apptentive/android/sdk/Apptentive;->preInteractionListener:Lcom/apptentive/android/sdk/Apptentive$OnPreInteractionListener;

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v5, :cond_0

    .line 1341
    new-instance v12, Lcom/apptentive/android/sdk/Apptentive$27;

    invoke-static {}, Lcom/apptentive/android/sdk/util/threading/DispatchQueue;->mainQueue()Lcom/apptentive/android/sdk/util/threading/DispatchQueue;

    move-result-object v3

    move-object v1, v12

    move-object v2, p2

    move-object v4, p1

    move-object/from16 v6, p3

    move-object v7, p0

    move-object/from16 v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/apptentive/android/sdk/Apptentive$27;-><init>(Lcom/apptentive/android/sdk/Apptentive$BooleanCallback;Lcom/apptentive/android/sdk/util/threading/DispatchQueue;Ljava/lang/String;Lcom/apptentive/android/sdk/Apptentive$OnPreInteractionListener;Ljava/util/Map;Landroid/content/Context;[Lcom/apptentive/android/sdk/model/ExtendedData;)V

    const-string v1, "engage \'%s\' event"

    new-array v2, v11, [Ljava/lang/Object;

    aput-object p1, v2, v10

    .line 1356
    invoke-static {v1, v2}, Lcom/apptentive/android/sdk/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1341
    invoke-static {v12, v0}, Lcom/apptentive/android/sdk/ApptentiveHelper;->dispatchConversationTask(Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1357
    monitor-exit v9

    return-void

    .line 1360
    :cond_0
    :try_start_1
    new-instance v8, Lcom/apptentive/android/sdk/Apptentive$28;

    invoke-static {}, Lcom/apptentive/android/sdk/util/threading/DispatchQueue;->mainQueue()Lcom/apptentive/android/sdk/util/threading/DispatchQueue;

    move-result-object v3

    move-object v1, v8

    move-object v2, p2

    move-object v4, p0

    move-object v5, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/apptentive/android/sdk/Apptentive$28;-><init>(Lcom/apptentive/android/sdk/Apptentive$BooleanCallback;Lcom/apptentive/android/sdk/util/threading/DispatchQueue;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;[Lcom/apptentive/android/sdk/model/ExtendedData;)V

    const-string v1, "engage \'%s\' event"

    new-array v2, v11, [Ljava/lang/Object;

    aput-object p1, v2, v10

    .line 1365
    invoke-static {v1, v2}, Lcom/apptentive/android/sdk/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1360
    invoke-static {v8, v0}, Lcom/apptentive/android/sdk/ApptentiveHelper;->dispatchConversationTask(Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1366
    monitor-exit v9

    return-void

    .line 1335
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Event is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1331
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    .line 1329
    monitor-exit v9

    throw v0
.end method

.method public static declared-synchronized engage(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/apptentive/android/sdk/Apptentive;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1248
    :try_start_0
    move-object v2, v1

    check-cast v2, [Lcom/apptentive/android/sdk/model/ExtendedData;

    invoke-static {p0, p1, v1, p2, v2}, Lcom/apptentive/android/sdk/Apptentive;->engage(Landroid/content/Context;Ljava/lang/String;Lcom/apptentive/android/sdk/Apptentive$BooleanCallback;Ljava/util/Map;[Lcom/apptentive/android/sdk/model/ExtendedData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1249
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 1247
    monitor-exit v0

    throw p0
.end method

.method public static varargs declared-synchronized engage(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;[Lcom/apptentive/android/sdk/model/ExtendedData;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;[",
            "Lcom/apptentive/android/sdk/model/ExtendedData;",
            ")V"
        }
    .end annotation

    const-class v0, Lcom/apptentive/android/sdk/Apptentive;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1301
    :try_start_0
    invoke-static {p0, p1, v1, p2, p3}, Lcom/apptentive/android/sdk/Apptentive;->engage(Landroid/content/Context;Ljava/lang/String;Lcom/apptentive/android/sdk/Apptentive$BooleanCallback;Ljava/util/Map;[Lcom/apptentive/android/sdk/model/ExtendedData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1302
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 1300
    monitor-exit v0

    throw p0
.end method

.method private static engageLocalAppEvent(Landroid/content/Context;Lcom/apptentive/android/sdk/conversation/Conversation;Ljava/lang/String;Ljava/util/Map;[Lcom/apptentive/android/sdk/model/ExtendedData;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/apptentive/android/sdk/conversation/Conversation;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;[",
            "Lcom/apptentive/android/sdk/model/ExtendedData;",
            ")Z"
        }
    .end annotation

    const-string v2, "local"

    const-string v3, "app"

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v7, p3

    move-object v8, p4

    .line 1395
    invoke-static/range {v0 .. v8}, Lcom/apptentive/android/sdk/module/engagement/EngagementModule;->engage(Landroid/content/Context;Lcom/apptentive/android/sdk/conversation/Conversation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[Lcom/apptentive/android/sdk/model/ExtendedData;)Z

    move-result p0

    return p0
.end method

.method public static getBodyFromApptentivePush(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2

    .line 697
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->checkRegistered()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p0, :cond_1

    .line 701
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0}, Lcom/apptentive/android/sdk/Apptentive;->getBodyFromApptentivePush(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method public static getBodyFromApptentivePush(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 760
    :try_start_0
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->checkRegistered()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    if-nez p0, :cond_1

    return-object v0

    :cond_1
    const-string v1, "body"

    .line 766
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "body"

    .line 767
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v1, "com.parse.Data"

    .line 769
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "com.parse.Data"

    .line 770
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p0, :cond_6

    .line 773
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "alert"

    .line 774
    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_0
    move-exception p0

    .line 776
    :try_start_2
    invoke-static {p0}, Lcom/apptentive/android/sdk/Apptentive;->logException(Ljava/lang/Exception;)V

    return-object v0

    :cond_3
    const-string v1, "com.urbanairship.push.EXTRA_PUSH_MESSAGE_BUNDLE"

    .line 780
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "com.urbanairship.push.EXTRA_PUSH_MESSAGE_BUNDLE"

    .line 781
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const-string v1, "com.urbanairship.push.ALERT"

    .line 785
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const-string v1, "com.urbanairship.push.ALERT"

    .line 786
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "com.urbanairship.push.ALERT"

    .line 787
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    .line 790
    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->PUSH:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v2, "Exception while getting body from Apptentive push"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, p0, v2, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 791
    invoke-static {p0}, Lcom/apptentive/android/sdk/Apptentive;->logException(Ljava/lang/Exception;)V

    :cond_6
    return-object v0
.end method

.method public static getBodyFromApptentivePush(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 832
    :try_start_0
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->checkRegistered()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    if-nez p0, :cond_1

    return-object v0

    :cond_1
    const-string v1, "body"

    .line 838
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 840
    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->PUSH:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v2, "Exception while getting body from Apptentive push"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, p0, v2, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 841
    invoke-static {p0}, Lcom/apptentive/android/sdk/Apptentive;->logException(Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static getPersonEmail()Ljava/lang/String;
    .locals 4

    .line 173
    :try_start_0
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->isApptentiveRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getInstance()Lcom/apptentive/android/sdk/ApptentiveInstance;

    move-result-object v0

    invoke-interface {v0}, Lcom/apptentive/android/sdk/ApptentiveInstance;->getConversationProxy()Lcom/apptentive/android/sdk/conversation/ConversationProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v0}, Lcom/apptentive/android/sdk/conversation/ConversationProxy;->getPersonEmail()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 180
    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v2, "Exception while getting person email"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    invoke-static {v0}, Lcom/apptentive/android/sdk/Apptentive;->logException(Ljava/lang/Exception;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getPersonName()Ljava/lang/String;
    .locals 4

    .line 213
    :try_start_0
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->isApptentiveRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getInstance()Lcom/apptentive/android/sdk/ApptentiveInstance;

    move-result-object v0

    invoke-interface {v0}, Lcom/apptentive/android/sdk/ApptentiveInstance;->getConversationProxy()Lcom/apptentive/android/sdk/conversation/ConversationProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {v0}, Lcom/apptentive/android/sdk/conversation/ConversationProxy;->getPersonName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 220
    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v2, "Exception while getting person name"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    invoke-static {v0}, Lcom/apptentive/android/sdk/Apptentive;->logException(Ljava/lang/Exception;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getTitleFromApptentivePush(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2

    .line 679
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->checkRegistered()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p0, :cond_1

    .line 683
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0}, Lcom/apptentive/android/sdk/Apptentive;->getTitleFromApptentivePush(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method public static getTitleFromApptentivePush(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 716
    :try_start_0
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->checkRegistered()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    if-nez p0, :cond_1

    return-object v0

    :cond_1
    const-string/jumbo v1, "title"

    .line 722
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "title"

    .line 723
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v1, "com.parse.Data"

    .line 725
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "com.parse.Data"

    .line 726
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p0, :cond_5

    .line 729
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo p0, "title"

    .line 730
    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_0
    move-exception p0

    .line 732
    :try_start_2
    invoke-static {p0}, Lcom/apptentive/android/sdk/Apptentive;->logException(Ljava/lang/Exception;)V

    return-object v0

    :cond_3
    const-string v1, "com.urbanairship.push.EXTRA_PUSH_MESSAGE_BUNDLE"

    .line 736
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "com.urbanairship.push.EXTRA_PUSH_MESSAGE_BUNDLE"

    .line 737
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const-string/jumbo v1, "title"

    .line 741
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    .line 744
    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->PUSH:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v2, "Exception while getting title from Apptentive push"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, p0, v2, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 745
    invoke-static {p0}, Lcom/apptentive/android/sdk/Apptentive;->logException(Ljava/lang/Exception;)V

    :cond_5
    return-object v0
.end method

.method public static getTitleFromApptentivePush(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 807
    :try_start_0
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->checkRegistered()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    if-nez p0, :cond_1

    return-object v0

    :cond_1
    const-string/jumbo v1, "title"

    .line 813
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 815
    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->PUSH:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v2, "Exception while getting title from Apptentive push"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, p0, v2, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 816
    invoke-static {p0}, Lcom/apptentive/android/sdk/Apptentive;->logException(Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static getUnreadMessageCount()I
    .locals 5

    const/4 v0, 0x0

    .line 1024
    :try_start_0
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->isApptentiveRegistered()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1025
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getInstance()Lcom/apptentive/android/sdk/ApptentiveInstance;

    move-result-object v1

    invoke-interface {v1}, Lcom/apptentive/android/sdk/ApptentiveInstance;->getConversationProxy()Lcom/apptentive/android/sdk/conversation/ConversationProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1026
    invoke-virtual {v1}, Lcom/apptentive/android/sdk/conversation/ConversationProxy;->getUnreadMessageCount()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    .line 1029
    sget-object v2, Lcom/apptentive/android/sdk/ApptentiveLogTag;->MESSAGES:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v3, "Exception while getting unread message count"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1030
    invoke-static {v1}, Lcom/apptentive/android/sdk/Apptentive;->logException(Ljava/lang/Exception;)V

    :cond_1
    return v0
.end method

.method public static isApptentivePushNotification(Landroid/content/Intent;)Z
    .locals 4

    const/4 v0, 0x0

    .line 498
    :try_start_0
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->checkRegistered()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 501
    :cond_0
    invoke-static {p0}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getApptentivePushNotificationData(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    move-exception p0

    .line 503
    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->PUSH:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v2, "Exception while checking for Apptentive push notification intent"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, p0, v2, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 504
    invoke-static {p0}, Lcom/apptentive/android/sdk/Apptentive;->logException(Ljava/lang/Exception;)V

    return v0
.end method

.method public static isApptentivePushNotification(Landroid/os/Bundle;)Z
    .locals 4

    const/4 v0, 0x0

    .line 518
    :try_start_0
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->checkRegistered()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 521
    :cond_0
    invoke-static {p0}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getApptentivePushNotificationData(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    move-exception p0

    .line 523
    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->PUSH:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v2, "Exception while checking for Apptentive push notification bundle"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, p0, v2, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 524
    invoke-static {p0}, Lcom/apptentive/android/sdk/Apptentive;->logException(Ljava/lang/Exception;)V

    return v0
.end method

.method public static isApptentivePushNotification(Ljava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 537
    :try_start_0
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->checkRegistered()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 540
    :cond_0
    invoke-static {p0}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getApptentivePushNotificationData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    move-exception p0

    .line 542
    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->PUSH:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v2, "Exception while checking for Apptentive push notification data"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, p0, v2, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 543
    invoke-static {p0}, Lcom/apptentive/android/sdk/Apptentive;->logException(Ljava/lang/Exception;)V

    return v0
.end method

.method private static logException(Ljava/lang/Exception;)V
    .locals 0

    .line 1686
    invoke-static {p0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static login(Ljava/lang/String;Lcom/apptentive/android/sdk/Apptentive$LoginCallback;)V
    .locals 1

    .line 1435
    invoke-static {p0}, Lcom/apptentive/android/sdk/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1439
    new-instance v0, Lcom/apptentive/android/sdk/Apptentive$31;

    invoke-direct {v0, p0, p1}, Lcom/apptentive/android/sdk/Apptentive$31;-><init>(Ljava/lang/String;Lcom/apptentive/android/sdk/Apptentive$LoginCallback;)V

    invoke-static {v0}, Lcom/apptentive/android/sdk/ApptentiveHelper;->dispatchOnConversationQueue(Lcom/apptentive/android/sdk/util/threading/DispatchTask;)V

    return-void

    .line 1436
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Token is null or empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static loginGuarded(Ljava/lang/String;Lcom/apptentive/android/sdk/Apptentive$LoginCallback;)V
    .locals 2

    .line 1455
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveHelper;->checkConversationQueue()V

    .line 1457
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getInstance()Lcom/apptentive/android/sdk/ApptentiveInstance;

    move-result-object v0

    .line 1458
    invoke-interface {v0}, Lcom/apptentive/android/sdk/ApptentiveInstance;->isNull()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1459
    sget-object p0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v0, "Unable to login: Apptentive instance is not properly initialized"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p0, "Apptentive instance is not properly initialized"

    .line 1460
    invoke-static {p1, p0}, Lcom/apptentive/android/sdk/Apptentive;->notifyFailure(Lcom/apptentive/android/sdk/Apptentive$LoginCallback;Ljava/lang/String;)V

    goto :goto_0

    .line 1462
    :cond_0
    invoke-interface {v0, p0, p1}, Lcom/apptentive/android/sdk/ApptentiveInstance;->login(Ljava/lang/String;Lcom/apptentive/android/sdk/Apptentive$LoginCallback;)V

    :goto_0
    return-void
.end method

.method public static logout()V
    .locals 2

    .line 1496
    new-instance v0, Lcom/apptentive/android/sdk/Apptentive$33;

    invoke-direct {v0}, Lcom/apptentive/android/sdk/Apptentive$33;-><init>()V

    const-string v1, "logout"

    invoke-static {v0, v1}, Lcom/apptentive/android/sdk/ApptentiveHelper;->dispatchConversationTask(Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;Ljava/lang/String;)V

    return-void
.end method

.method private static notifyFailure(Lcom/apptentive/android/sdk/Apptentive$LoginCallback;Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 1468
    invoke-static {}, Lcom/apptentive/android/sdk/util/threading/DispatchQueue;->mainQueue()Lcom/apptentive/android/sdk/util/threading/DispatchQueue;

    move-result-object v0

    new-instance v1, Lcom/apptentive/android/sdk/Apptentive$32;

    invoke-direct {v1, p0, p1}, Lcom/apptentive/android/sdk/Apptentive$32;-><init>(Lcom/apptentive/android/sdk/Apptentive$LoginCallback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/util/threading/DispatchQueue;->dispatchAsync(Lcom/apptentive/android/sdk/util/threading/DispatchTask;)V

    :cond_0
    return-void
.end method

.method public static onApptimizeExperimentRun(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1649
    new-instance p0, Lcom/apptentive/android/sdk/Apptentive$34;

    invoke-direct {p0}, Lcom/apptentive/android/sdk/Apptentive$34;-><init>()V

    const-string/jumbo p1, "update Apptimize experiment data"

    invoke-static {p0, p1}, Lcom/apptentive/android/sdk/ApptentiveHelper;->dispatchConversationTask(Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;Ljava/lang/String;)V

    return-void
.end method

.method public static onApptimizeExperimentsProcessed()V
    .locals 2

    .line 1667
    new-instance v0, Lcom/apptentive/android/sdk/Apptentive$35;

    invoke-direct {v0}, Lcom/apptentive/android/sdk/Apptentive$35;-><init>()V

    const-string/jumbo v1, "update Apptimize experiments data"

    invoke-static {v0, v1}, Lcom/apptentive/android/sdk/ApptentiveHelper;->dispatchConversationTask(Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;Ljava/lang/String;)V

    return-void
.end method

.method public static putRatingProviderArg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 877
    :try_start_0
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->isApptentiveRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 878
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getInstance()Lcom/apptentive/android/sdk/ApptentiveInstance;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/apptentive/android/sdk/ApptentiveInstance;->putRatingProviderArg(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 881
    sget-object p1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v0, "Exception while putting rating provider arg"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, p0, v0, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 882
    invoke-static {p0}, Lcom/apptentive/android/sdk/Apptentive;->logException(Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static declared-synchronized queryCanShowInteraction(Ljava/lang/String;Lcom/apptentive/android/sdk/Apptentive$BooleanCallback;)V
    .locals 3

    const-class v0, Lcom/apptentive/android/sdk/Apptentive;

    monitor-enter v0

    .line 1379
    :try_start_0
    new-instance v1, Lcom/apptentive/android/sdk/Apptentive$29;

    invoke-static {}, Lcom/apptentive/android/sdk/util/threading/DispatchQueue;->mainQueue()Lcom/apptentive/android/sdk/util/threading/DispatchQueue;

    move-result-object v2

    invoke-direct {v1, p1, v2, p0}, Lcom/apptentive/android/sdk/Apptentive$29;-><init>(Lcom/apptentive/android/sdk/Apptentive$BooleanCallback;Lcom/apptentive/android/sdk/util/threading/DispatchQueue;Ljava/lang/String;)V

    const-string p0, "check if interaction can be shown"

    invoke-static {v1, p0}, Lcom/apptentive/android/sdk/ApptentiveHelper;->dispatchConversationTask(Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1385
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 1378
    monitor-exit v0

    throw p0
.end method

.method public static register(Landroid/app/Application;)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_3

    const-string v0, "apptentive_key"

    .line 81
    invoke-static {p0, v0}, Lcom/apptentive/android/sdk/util/Util;->getManifestMetadataString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-static {v0}, Lcom/apptentive/android/sdk/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const-string p0, "Unable to initialize Apptentive SDK: \'%s\' manifest key is missing"

    .line 83
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "apptentive_key"

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v1, "apptentive_signature"

    .line 87
    invoke-static {p0, v1}, Lcom/apptentive/android/sdk/util/Util;->getManifestMetadataString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-static {v1}, Lcom/apptentive/android/sdk/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string p0, "Unable to initialize Apptentive SDK: \'%s\' manifest key is missing"

    .line 89
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "apptentive_signature"

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 93
    :cond_1
    new-instance v2, Lcom/apptentive/android/sdk/ApptentiveConfiguration;

    invoke-direct {v2, v0, v1}, Lcom/apptentive/android/sdk/ApptentiveConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "apptentive_log_level"

    .line 95
    invoke-static {p0, v0}, Lcom/apptentive/android/sdk/util/Util;->getManifestMetadataString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-static {v0}, Lcom/apptentive/android/sdk/ApptentiveLog$Level;->parse(Ljava/lang/String;)Lcom/apptentive/android/sdk/ApptentiveLog$Level;

    move-result-object v0

    .line 97
    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLog$Level;->UNKNOWN:Lcom/apptentive/android/sdk/ApptentiveLog$Level;

    if-eq v0, v1, :cond_2

    .line 98
    invoke-virtual {v2, v0}, Lcom/apptentive/android/sdk/ApptentiveConfiguration;->setLogLevel(Lcom/apptentive/android/sdk/ApptentiveLog$Level;)Lcom/apptentive/android/sdk/ApptentiveConfiguration;

    .line 101
    :cond_2
    invoke-static {p0, v2}, Lcom/apptentive/android/sdk/Apptentive;->register(Landroid/app/Application;Lcom/apptentive/android/sdk/ApptentiveConfiguration;)V

    return-void

    .line 78
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Application is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static register(Landroid/app/Application;Lcom/apptentive/android/sdk/ApptentiveConfiguration;)V
    .locals 1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 129
    :try_start_0
    invoke-static {p0, p1}, Lcom/apptentive/android/sdk/ApptentiveInternal;->createInstance(Landroid/app/Application;Lcom/apptentive/android/sdk/ApptentiveConfiguration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Exception while registering Apptentive SDK"

    const/4 v0, 0x0

    .line 131
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    invoke-static {p0}, Lcom/apptentive/android/sdk/Apptentive;->logException(Ljava/lang/Exception;)V

    :goto_0
    return-void

    .line 125
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Apptentive configuration is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 121
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Application is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static register(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 111
    new-instance v0, Lcom/apptentive/android/sdk/ApptentiveConfiguration;

    invoke-direct {v0, p1, p2}, Lcom/apptentive/android/sdk/ApptentiveConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/apptentive/android/sdk/Apptentive;->register(Landroid/app/Application;Lcom/apptentive/android/sdk/ApptentiveConfiguration;)V

    return-void
.end method

.method public static registerCallbacks(Landroid/app/Application;)V
    .locals 0

    .line 141
    invoke-static {p0}, Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks;->register(Landroid/app/Application;)V

    return-void
.end method

.method public static removeCustomDeviceData(Ljava/lang/String;)V
    .locals 1

    .line 306
    new-instance v0, Lcom/apptentive/android/sdk/Apptentive$8;

    invoke-direct {v0, p0}, Lcom/apptentive/android/sdk/Apptentive$8;-><init>(Ljava/lang/String;)V

    const-string/jumbo p0, "remove custom device data"

    invoke-static {v0, p0}, Lcom/apptentive/android/sdk/ApptentiveHelper;->dispatchConversationTask(Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;Ljava/lang/String;)V

    return-void
.end method

.method public static removeCustomPersonData(Ljava/lang/String;)V
    .locals 1

    .line 395
    new-instance v0, Lcom/apptentive/android/sdk/Apptentive$14;

    invoke-direct {v0, p0}, Lcom/apptentive/android/sdk/Apptentive$14;-><init>(Ljava/lang/String;)V

    const-string/jumbo p0, "remove custom person data"

    invoke-static {v0, p0}, Lcom/apptentive/android/sdk/ApptentiveHelper;->dispatchConversationTask(Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;Ljava/lang/String;)V

    return-void
.end method

.method public static sendAttachmentFile(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1

    .line 1147
    new-instance v0, Lcom/apptentive/android/sdk/Apptentive$26;

    invoke-direct {v0, p0, p1}, Lcom/apptentive/android/sdk/Apptentive$26;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string p0, "add unread message listener"

    invoke-static {v0, p0}, Lcom/apptentive/android/sdk/ApptentiveHelper;->dispatchConversationTask(Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;Ljava/lang/String;)V

    return-void
.end method

.method public static sendAttachmentFile(Ljava/lang/String;)V
    .locals 1

    .line 1065
    new-instance v0, Lcom/apptentive/android/sdk/Apptentive$24;

    invoke-direct {v0, p0}, Lcom/apptentive/android/sdk/Apptentive$24;-><init>(Ljava/lang/String;)V

    const-string/jumbo p0, "send attachment file"

    invoke-static {v0, p0}, Lcom/apptentive/android/sdk/ApptentiveHelper;->dispatchConversationTask(Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;Ljava/lang/String;)V

    return-void
.end method

.method public static sendAttachmentFile([BLjava/lang/String;)V
    .locals 1

    .line 1123
    new-instance v0, Lcom/apptentive/android/sdk/Apptentive$25;

    invoke-direct {v0, p0, p1}, Lcom/apptentive/android/sdk/Apptentive$25;-><init>([BLjava/lang/String;)V

    const-string/jumbo p0, "send attachment file"

    invoke-static {v0, p0}, Lcom/apptentive/android/sdk/ApptentiveHelper;->dispatchConversationTask(Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;Ljava/lang/String;)V

    return-void
.end method

.method public static sendAttachmentText(Ljava/lang/String;)V
    .locals 1

    .line 1042
    new-instance v0, Lcom/apptentive/android/sdk/Apptentive$23;

    invoke-direct {v0, p0}, Lcom/apptentive/android/sdk/Apptentive$23;-><init>(Ljava/lang/String;)V

    const-string/jumbo p0, "send attachment text"

    invoke-static {v0, p0}, Lcom/apptentive/android/sdk/ApptentiveHelper;->dispatchConversationTask(Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;Ljava/lang/String;)V

    return-void
.end method

.method public static setAuthenticationFailedListener(Lcom/apptentive/android/sdk/Apptentive$AuthenticationFailedListener;)V
    .locals 3

    .line 1520
    :try_start_0
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->checkRegistered()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1523
    :cond_0
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getInstance()Lcom/apptentive/android/sdk/ApptentiveInstance;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/apptentive/android/sdk/ApptentiveInstance;->setAuthenticationFailedListener(Lcom/apptentive/android/sdk/Apptentive$AuthenticationFailedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1525
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "Error in Apptentive.setUnreadMessagesListener()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, p0, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1526
    invoke-static {p0}, Lcom/apptentive/android/sdk/Apptentive;->logException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public static declared-synchronized setOnPreInteractionListener(Lcom/apptentive/android/sdk/Apptentive$OnPreInteractionListener;)V
    .locals 1
    .param p0    # Lcom/apptentive/android/sdk/Apptentive$OnPreInteractionListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-class v0, Lcom/apptentive/android/sdk/Apptentive;

    monitor-enter v0

    .line 1391
    :try_start_0
    sput-object p0, Lcom/apptentive/android/sdk/Apptentive;->preInteractionListener:Lcom/apptentive/android/sdk/Apptentive$OnPreInteractionListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1392
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 1390
    monitor-exit v0

    throw p0
.end method

.method public static setOnSurveyFinishedListener(Lcom/apptentive/android/sdk/module/survey/OnSurveyFinishedListener;)V
    .locals 1

    .line 1414
    new-instance v0, Lcom/apptentive/android/sdk/Apptentive$30;

    invoke-direct {v0, p0}, Lcom/apptentive/android/sdk/Apptentive$30;-><init>(Lcom/apptentive/android/sdk/module/survey/OnSurveyFinishedListener;)V

    const-string/jumbo p0, "set survey finish listener"

    invoke-static {v0, p0}, Lcom/apptentive/android/sdk/ApptentiveHelper;->dispatchConversationTask(Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;Ljava/lang/String;)V

    return-void
.end method

.method public static setPersonEmail(Ljava/lang/String;)V
    .locals 1

    .line 156
    new-instance v0, Lcom/apptentive/android/sdk/Apptentive$1;

    invoke-direct {v0, p0}, Lcom/apptentive/android/sdk/Apptentive$1;-><init>(Ljava/lang/String;)V

    const-string/jumbo p0, "set person email"

    invoke-static {v0, p0}, Lcom/apptentive/android/sdk/ApptentiveHelper;->dispatchConversationTask(Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;Ljava/lang/String;)V

    return-void
.end method

.method public static setPersonName(Ljava/lang/String;)V
    .locals 1

    .line 196
    new-instance v0, Lcom/apptentive/android/sdk/Apptentive$2;

    invoke-direct {v0, p0}, Lcom/apptentive/android/sdk/Apptentive$2;-><init>(Ljava/lang/String;)V

    const-string/jumbo p0, "set person name"

    invoke-static {v0, p0}, Lcom/apptentive/android/sdk/ApptentiveHelper;->dispatchConversationTask(Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;Ljava/lang/String;)V

    return-void
.end method

.method public static setPushNotificationIntegration(ILjava/lang/String;)V
    .locals 1

    .line 470
    new-instance v0, Lcom/apptentive/android/sdk/Apptentive$15;

    invoke-direct {v0, p0, p1}, Lcom/apptentive/android/sdk/Apptentive$15;-><init>(ILjava/lang/String;)V

    const-string/jumbo p0, "set push notification integration"

    invoke-static {v0, p0}, Lcom/apptentive/android/sdk/ApptentiveHelper;->dispatchConversationTask(Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;Ljava/lang/String;)V

    return-void
.end method

.method public static setRatingProvider(Lcom/apptentive/android/sdk/module/rating/IRatingProvider;)V
    .locals 3

    .line 859
    :try_start_0
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->isApptentiveRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 860
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getInstance()Lcom/apptentive/android/sdk/ApptentiveInstance;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/apptentive/android/sdk/ApptentiveInstance;->setRatingProvider(Lcom/apptentive/android/sdk/module/rating/IRatingProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 863
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "Exception while setting rating provider"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, p0, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 864
    invoke-static {p0}, Lcom/apptentive/android/sdk/Apptentive;->logException(Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static setUnreadMessagesListener(Lcom/apptentive/android/sdk/module/messagecenter/UnreadMessagesListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 991
    new-instance v0, Lcom/apptentive/android/sdk/Apptentive$21;

    invoke-direct {v0, p0}, Lcom/apptentive/android/sdk/Apptentive$21;-><init>(Lcom/apptentive/android/sdk/module/messagecenter/UnreadMessagesListener;)V

    const-string/jumbo p0, "set unread message listener"

    invoke-static {v0, p0}, Lcom/apptentive/android/sdk/ApptentiveHelper;->dispatchConversationTask(Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;Ljava/lang/String;)V

    return-void
.end method

.method public static showMessageCenter(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 899
    invoke-static {p0, v0, v0}, Lcom/apptentive/android/sdk/Apptentive;->showMessageCenter(Landroid/content/Context;Lcom/apptentive/android/sdk/Apptentive$BooleanCallback;Ljava/util/Map;)V

    return-void
.end method

.method public static showMessageCenter(Landroid/content/Context;Lcom/apptentive/android/sdk/Apptentive$BooleanCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 911
    invoke-static {p0, p1, v0}, Lcom/apptentive/android/sdk/Apptentive;->showMessageCenter(Landroid/content/Context;Lcom/apptentive/android/sdk/Apptentive$BooleanCallback;Ljava/util/Map;)V

    return-void
.end method

.method public static showMessageCenter(Landroid/content/Context;Lcom/apptentive/android/sdk/Apptentive$BooleanCallback;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/apptentive/android/sdk/Apptentive$BooleanCallback;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 954
    new-instance v0, Lcom/apptentive/android/sdk/Apptentive$19;

    invoke-static {}, Lcom/apptentive/android/sdk/util/threading/DispatchQueue;->mainQueue()Lcom/apptentive/android/sdk/util/threading/DispatchQueue;

    move-result-object v1

    invoke-direct {v0, p1, v1, p0, p2}, Lcom/apptentive/android/sdk/Apptentive$19;-><init>(Lcom/apptentive/android/sdk/Apptentive$BooleanCallback;Lcom/apptentive/android/sdk/util/threading/DispatchQueue;Landroid/content/Context;Ljava/util/Map;)V

    const-string/jumbo p0, "show message center"

    invoke-static {v0, p0}, Lcom/apptentive/android/sdk/ApptentiveHelper;->dispatchConversationTask(Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;Ljava/lang/String;)V

    return-void
.end method

.method public static showMessageCenter(Landroid/content/Context;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 932
    invoke-static {p0, v0, p1}, Lcom/apptentive/android/sdk/Apptentive;->showMessageCenter(Landroid/content/Context;Lcom/apptentive/android/sdk/Apptentive$BooleanCallback;Ljava/util/Map;)V

    return-void
.end method
