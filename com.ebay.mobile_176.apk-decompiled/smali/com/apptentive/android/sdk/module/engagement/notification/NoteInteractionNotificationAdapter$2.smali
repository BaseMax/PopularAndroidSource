.class Lcom/apptentive/android/sdk/module/engagement/notification/NoteInteractionNotificationAdapter$2;
.super Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;
.source "NoteInteractionNotificationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/module/engagement/notification/NoteInteractionNotificationAdapter;->actionButtonPressed(Landroid/content/Context;Landroid/content/Intent;Lcom/apptentive/android/sdk/module/engagement/interaction/model/TextModalInteraction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apptentive/android/sdk/module/engagement/notification/NoteInteractionNotificationAdapter;

.field final synthetic val$action:Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$index:I

.field final synthetic val$interaction:Lcom/apptentive/android/sdk/module/engagement/interaction/model/TextModalInteraction;


# direct methods
.method constructor <init>(Lcom/apptentive/android/sdk/module/engagement/notification/NoteInteractionNotificationAdapter;Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action;Landroid/content/Context;ILcom/apptentive/android/sdk/module/engagement/interaction/model/TextModalInteraction;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/notification/NoteInteractionNotificationAdapter$2;->this$0:Lcom/apptentive/android/sdk/module/engagement/notification/NoteInteractionNotificationAdapter;

    iput-object p2, p0, Lcom/apptentive/android/sdk/module/engagement/notification/NoteInteractionNotificationAdapter$2;->val$action:Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action;

    iput-object p3, p0, Lcom/apptentive/android/sdk/module/engagement/notification/NoteInteractionNotificationAdapter$2;->val$context:Landroid/content/Context;

    iput p4, p0, Lcom/apptentive/android/sdk/module/engagement/notification/NoteInteractionNotificationAdapter$2;->val$index:I

    iput-object p5, p0, Lcom/apptentive/android/sdk/module/engagement/notification/NoteInteractionNotificationAdapter$2;->val$interaction:Lcom/apptentive/android/sdk/module/engagement/interaction/model/TextModalInteraction;

    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected execute(Lcom/apptentive/android/sdk/conversation/Conversation;)Z
    .locals 13

    .line 203
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/notification/NoteInteractionNotificationAdapter$2;->val$action:Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action;

    check-cast v0, Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/LaunchInteractionAction;

    .line 204
    invoke-virtual {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/LaunchInteractionAction;->getInvocations()Ljava/util/List;

    move-result-object v0

    .line 208
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Invocation;

    .line 209
    new-instance v12, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;

    iget-object v6, p0, Lcom/apptentive/android/sdk/module/engagement/notification/NoteInteractionNotificationAdapter$2;->val$context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/conversation/Conversation;->getVersionHistory()Lcom/apptentive/android/sdk/storage/VersionHistory;

    move-result-object v7

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/conversation/Conversation;->getEventData()Lcom/apptentive/android/sdk/storage/EventData;

    move-result-object v8

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/conversation/Conversation;->getPerson()Lcom/apptentive/android/sdk/storage/Person;

    move-result-object v9

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/conversation/Conversation;->getDevice()Lcom/apptentive/android/sdk/storage/Device;

    move-result-object v10

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/conversation/Conversation;->getAppRelease()Lcom/apptentive/android/sdk/storage/AppRelease;

    move-result-object v11

    move-object v5, v12

    invoke-direct/range {v5 .. v11}, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;-><init>(Landroid/content/Context;Lcom/apptentive/android/sdk/storage/VersionHistory;Lcom/apptentive/android/sdk/storage/EventData;Lcom/apptentive/android/sdk/storage/Person;Lcom/apptentive/android/sdk/storage/Device;Lcom/apptentive/android/sdk/storage/AppRelease;)V

    .line 210
    invoke-virtual {v1, v12, v3}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Invocation;->isCriteriaMet(Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 211
    invoke-virtual {v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Invocation;->getInteractionId()Ljava/lang/String;

    move-result-object v0

    .line 212
    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->NOTIFICATION_INTERACTIONS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v5, "Found an Interaction to launch with id %s"

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v0, v6, v4

    invoke-static {v1, v5, v6}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 220
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/conversation/Conversation;->getInteractions()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 223
    :try_start_0
    new-instance v5, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interactions;

    invoke-direct {v5, v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interactions;-><init>(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v5, v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interactions;->getInteraction(Ljava/lang/String;)Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 226
    invoke-static {v1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :cond_2
    move-object v1, v2

    .line 232
    :goto_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v5, "action_id"

    .line 234
    iget-object v6, p0, Lcom/apptentive/android/sdk/module/engagement/notification/NoteInteractionNotificationAdapter$2;->val$action:Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action;

    invoke-virtual {v6}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "label"

    .line 235
    iget-object v6, p0, Lcom/apptentive/android/sdk/module/engagement/notification/NoteInteractionNotificationAdapter$2;->val$action:Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action;

    invoke-virtual {v6}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "position"

    .line 236
    iget v6, p0, Lcom/apptentive/android/sdk/module/engagement/notification/NoteInteractionNotificationAdapter$2;->val$index:I

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "invoked_interaction_id"

    if-nez v1, :cond_3

    .line 237
    sget-object v6, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;->getId()Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "display_type"

    .line 238
    iget-object v6, p0, Lcom/apptentive/android/sdk/module/engagement/notification/NoteInteractionNotificationAdapter$2;->val$interaction:Lcom/apptentive/android/sdk/module/engagement/interaction/model/TextModalInteraction;

    invoke-virtual {v6}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/TextModalInteraction;->getDisplayType()Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction$DisplayType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction$DisplayType;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v5

    .line 240
    sget-object v6, Lcom/apptentive/android/sdk/ApptentiveLogTag;->NOTIFICATION_INTERACTIONS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v7, "Error creating Event data object."

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v6, v5, v7, v8}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    invoke-static {v5}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    .line 243
    :goto_3
    iget-object v5, p0, Lcom/apptentive/android/sdk/module/engagement/notification/NoteInteractionNotificationAdapter$2;->val$context:Landroid/content/Context;

    iget-object v6, p0, Lcom/apptentive/android/sdk/module/engagement/notification/NoteInteractionNotificationAdapter$2;->val$interaction:Lcom/apptentive/android/sdk/module/engagement/interaction/model/TextModalInteraction;

    const-string v7, "interaction"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, p1, v6, v7, v2}, Lcom/apptentive/android/sdk/module/engagement/EngagementModule;->engageInternal(Landroid/content/Context;Lcom/apptentive/android/sdk/conversation/Conversation;Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;Ljava/lang/String;Ljava/lang/String;)Z

    if-eqz v1, :cond_4

    .line 247
    sget-object p1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->NOTIFICATION_INTERACTIONS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v2, "Launching interaction from Note Notification action: %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {p1, v2, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->d(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/notification/NoteInteractionNotificationAdapter$2;->val$context:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/apptentive/android/sdk/module/engagement/EngagementModule;->launchInteraction(Landroid/content/Context;Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;)V

    goto :goto_4

    .line 250
    :cond_4
    sget-object p1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->NOTIFICATION_INTERACTIONS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "No Interaction was found to display matching id %s"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-static {p1, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->w(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_4
    return v4
.end method
