.class public Lcom/apptentive/android/sdk/module/engagement/notification/NoteInteractionNotificationAdapter;
.super Ljava/lang/Object;
.source "NoteInteractionNotificationAdapter.java"

# interfaces
.implements Lcom/apptentive/android/sdk/module/engagement/notification/InteractionNotificationAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected actionButtonPressed(Landroid/content/Context;Landroid/content/Intent;Lcom/apptentive/android/sdk/module/engagement/interaction/model/TextModalInteraction;)V
    .locals 9

    const-string v0, "com.apptentive.notification.extra.ID"

    const v1, -0x1124554

    .line 185
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "com.apptentive.notification.extra.note.ACTION_INDEX"

    const/high16 v2, -0x80000000

    .line 186
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 189
    invoke-virtual {p3}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/TextModalInteraction;->getActions()Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Actions;

    move-result-object p2

    invoke-virtual {p2}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Actions;->getAsList()Ljava/util/List;

    move-result-object p2

    .line 190
    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v5, p2

    check-cast v5, Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action;

    .line 191
    invoke-virtual {v5}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action;->getType()Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action$Type;

    move-result-object p2

    .line 192
    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->NOTIFICATION_INTERACTIONS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v2, "Note Notification button pressed with index %d and action type %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v3, v6

    invoke-virtual {p2}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action$Type;->name()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x1

    aput-object v4, v3, v8

    invoke-static {v1, v2, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    sget-object v1, Lcom/apptentive/android/sdk/module/engagement/notification/NoteInteractionNotificationAdapter$5;->$SwitchMap$com$apptentive$android$sdk$module$engagement$interaction$model$common$Action$Type:[I

    invoke-virtual {p2}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action$Type;->ordinal()I

    move-result p2

    aget p2, v1, p2

    packed-switch p2, :pswitch_data_0

    goto :goto_1

    .line 280
    :pswitch_0
    sget-object p2, Lcom/apptentive/android/sdk/ApptentiveLogTag;->NOTIFICATION_INTERACTIONS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string p3, "Unknown Note Interaction Notification button action. Can\'t do anything."

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {p2, p3, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->w(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 261
    :pswitch_1
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "action_id"

    .line 263
    invoke-virtual {v5}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "label"

    .line 264
    invoke-virtual {v5}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "position"

    .line 265
    invoke-virtual {p2, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "display_type"

    .line 266
    invoke-virtual {p3}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/TextModalInteraction;->getDisplayType()Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction$DisplayType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction$DisplayType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 268
    sget-object v2, Lcom/apptentive/android/sdk/ApptentiveLogTag;->NOTIFICATION_INTERACTIONS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v3, "Error creating Event data object."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    invoke-static {v1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    .line 271
    :goto_0
    new-instance v1, Lcom/apptentive/android/sdk/module/engagement/notification/NoteInteractionNotificationAdapter$3;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/apptentive/android/sdk/module/engagement/notification/NoteInteractionNotificationAdapter$3;-><init>(Lcom/apptentive/android/sdk/module/engagement/notification/NoteInteractionNotificationAdapter;Landroid/content/Context;Lcom/apptentive/android/sdk/module/engagement/interaction/model/TextModalInteraction;Lorg/json/JSONObject;)V

    const-string p2, "engage Note Notification dismiss"

    invoke-static {v1, p2}, Lcom/apptentive/android/sdk/ApptentiveHelper;->dispatchConversationTask(Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;Ljava/lang/String;)V

    goto :goto_1

    .line 196
    :pswitch_2
    new-instance p2, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 199
    new-instance p2, Lcom/apptentive/android/sdk/module/engagement/notification/NoteInteractionNotificationAdapter$2;

    move-object v3, p2

    move-object v4, p0

    move-object v6, p1

    move-object v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/apptentive/android/sdk/module/engagement/notification/NoteInteractionNotificationAdapter$2;-><init>(Lcom/apptentive/android/sdk/module/engagement/notification/NoteInteractionNotificationAdapter;Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action;Landroid/content/Context;ILcom/apptentive/android/sdk/module/engagement/interaction/model/TextModalInteraction;)V

    const-string p3, "choosing and launching Interaction from Note Notification Action"

    invoke-static {p2, p3}, Lcom/apptentive/android/sdk/ApptentiveHelper;->dispatchConversationTask(Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;Ljava/lang/String;)V

    :goto_1
    const-string p2, "notification"

    .line 285
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected actionDelete(Landroid/content/Context;Lcom/apptentive/android/sdk/module/engagement/interaction/model/TextModalInteraction;)V
    .locals 5

    .line 289
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->NOTIFICATION_INTERACTIONS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "Delete intent received."

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "display_type"

    .line 292
    invoke-virtual {p2}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/TextModalInteraction;->getDisplayType()Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction$DisplayType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction$DisplayType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 294
    sget-object v3, Lcom/apptentive/android/sdk/ApptentiveLogTag;->NOTIFICATION_INTERACTIONS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v4, "Error creating Event data object."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v1, v4, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    invoke-static {v1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    .line 297
    :goto_0
    new-instance v1, Lcom/apptentive/android/sdk/module/engagement/notification/NoteInteractionNotificationAdapter$4;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/apptentive/android/sdk/module/engagement/notification/NoteInteractionNotificationAdapter$4;-><init>(Lcom/apptentive/android/sdk/module/engagement/notification/NoteInteractionNotificationAdapter;Landroid/content/Context;Lcom/apptentive/android/sdk/module/engagement/interaction/model/TextModalInteraction;Lorg/json/JSONObject;)V

    const-string p1, "engage Note Notification cancel"

    invoke-static {v1, p1}, Lcom/apptentive/android/sdk/ApptentiveHelper;->dispatchConversationTask(Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;Ljava/lang/String;)V

    return-void
.end method

.method protected actionDisplayNotification(Landroid/content/Context;Ljava/lang/String;Lcom/apptentive/android/sdk/module/engagement/interaction/model/TextModalInteraction;)V
    .locals 11

    .line 85
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v0, p1, p2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p2, 0x6

    .line 87
    new-array p2, p2, [J

    fill-array-data p2, :array_0

    invoke-virtual {v0, p2}, Landroidx/core/app/NotificationCompat$Builder;->setVibrate([J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    const/4 v1, 0x1

    .line 88
    invoke-virtual {p2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    sget v2, Lcom/apptentive/android/sdk/R$drawable;->apptentive_ic_stat_chat_bubble:I

    .line 89
    invoke-virtual {p2, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    .line 93
    new-instance p2, Landroid/content/Intent;

    const-class v2, Lcom/apptentive/android/sdk/module/engagement/notification/ApptentiveNotificationInteractionBroadcastReceiver;

    invoke-direct {p2, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.apptentive.notification.extra.ID"

    const v3, -0x1124554

    .line 94
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "com.apptentive.notification.extra.INTERACTION_TYPE"

    .line 95
    invoke-virtual {p3}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/TextModalInteraction;->getType()Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction$Type;

    move-result-object v4

    invoke-virtual {v4}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction$Type;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.apptentive.notification.extra.INTERACTION_DEFINITION"

    .line 96
    invoke-virtual {p3}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/TextModalInteraction;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.apptentive.notification.action.DELETE"

    .line 97
    invoke-virtual {p2, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {p1, v2, p2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    .line 99
    invoke-virtual {v0, p2}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 102
    new-instance p2, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {p2}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 103
    invoke-virtual {p3}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/TextModalInteraction;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/apptentive/android/sdk/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 104
    invoke-virtual {p3}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/TextModalInteraction;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 105
    invoke-virtual {p3}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/TextModalInteraction;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroidx/core/app/NotificationCompat$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    .line 107
    :cond_0
    invoke-virtual {p3}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/TextModalInteraction;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/apptentive/android/sdk/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 108
    invoke-virtual {p3}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/TextModalInteraction;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 109
    invoke-virtual {p3}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/TextModalInteraction;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    .line 111
    :cond_1
    invoke-virtual {v0, p2}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 114
    invoke-virtual {p3}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/TextModalInteraction;->getActions()Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Actions;

    move-result-object p2

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    .line 116
    invoke-virtual {p2}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Actions;->getAsList()Ljava/util/List;

    move-result-object p2

    const/4 v5, 0x0

    .line 117
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 118
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action;

    const/4 v7, 0x3

    if-le v5, v7, :cond_2

    .line 121
    sget-object p1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->NOTIFICATION_INTERACTIONS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string p2, "Can\'t have more than 3 buttons on a Note."

    new-array p3, v2, [Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lcom/apptentive/android/sdk/ApptentiveLog;->d(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 124
    :cond_2
    invoke-virtual {v6}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action;->getType()Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action$Type;

    move-result-object v7

    .line 126
    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/apptentive/android/sdk/module/engagement/notification/ApptentiveNotificationInteractionBroadcastReceiver;

    invoke-direct {v8, p1, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v9, "com.apptentive.notification.extra.ID"

    .line 127
    invoke-virtual {v8, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v9, "com.apptentive.notification.extra.INTERACTION_TYPE"

    .line 128
    invoke-virtual {p3}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/TextModalInteraction;->getType()Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction$Type;

    move-result-object v10

    invoke-virtual {v10}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction$Type;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "com.apptentive.notification.extra.INTERACTION_DEFINITION"

    .line 129
    invoke-virtual {p3}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/TextModalInteraction;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "com.apptentive.notification.extra.note.ACTION_INDEX"

    .line 130
    invoke-virtual {v8, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 131
    sget-object v9, Lcom/apptentive/android/sdk/module/engagement/notification/NoteInteractionNotificationAdapter$5;->$SwitchMap$com$apptentive$android$sdk$module$engagement$interaction$model$common$Action$Type:[I

    invoke-virtual {v7}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action$Type;->ordinal()I

    move-result v7

    aget v7, v9, v7

    packed-switch v7, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :pswitch_1
    const-string v7, "com.apptentive.notification.action.note.BUTTON_PRESSED"

    .line 135
    invoke-virtual {v8, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    :goto_1
    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    invoke-virtual {v7}, Ljava/util/Random;->nextInt()I

    move-result v7

    invoke-static {p1, v7, v8, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 141
    new-instance v8, Landroidx/core/app/NotificationCompat$Action$Builder;

    invoke-virtual {v6}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v2, v6, v7}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v8}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 146
    :cond_3
    invoke-static {p1}, Lcom/apptentive/android/sdk/util/Util;->buildApptentiveInteractionTheme(Landroid/content/Context;)Landroid/content/res/Resources$Theme;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 148
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 149
    sget v5, Lcom/apptentive/android/sdk/R$attr;->apptentiveInteractionNotificationSmallIcon:I

    invoke-virtual {p2, v5, v4, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 150
    iget v4, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v4}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_2

    .line 152
    :cond_4
    sget-object v4, Lcom/apptentive/android/sdk/ApptentiveLogTag;->NOTIFICATION_INTERACTIONS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v5, "Unable to find icon in theme for setting Notification icon."

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/apptentive/android/sdk/ApptentiveLog;->d(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    :goto_2
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 155
    sget v5, Lcom/apptentive/android/sdk/R$attr;->apptentiveInteractionNotificationColor:I

    invoke-virtual {p2, v5, v4, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 156
    iget p2, v4, Landroid/util/TypedValue;->data:I

    invoke-virtual {v0, p2}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_3

    .line 158
    :cond_5
    sget-object p2, Lcom/apptentive/android/sdk/ApptentiveLogTag;->NOTIFICATION_INTERACTIONS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "Unable to find color in theme for setting Notification icon."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p2, v1, v4}, Lcom/apptentive/android/sdk/ApptentiveLog;->d(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 161
    :cond_6
    sget-object p2, Lcom/apptentive/android/sdk/ApptentiveLogTag;->NOTIFICATION_INTERACTIONS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "Unable to build theme for getting Notification icon."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p2, v1, v4}, Lcom/apptentive/android/sdk/ApptentiveLog;->d(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    :goto_3
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    const-string v0, "notification"

    .line 165
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, v3, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 168
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "display_type"

    .line 170
    invoke-virtual {p3}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/TextModalInteraction;->getDisplayType()Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction$DisplayType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction$DisplayType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 172
    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->NOTIFICATION_INTERACTIONS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v3, "Error creating Event data object."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    .line 175
    :goto_4
    new-instance v0, Lcom/apptentive/android/sdk/module/engagement/notification/NoteInteractionNotificationAdapter$1;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/apptentive/android/sdk/module/engagement/notification/NoteInteractionNotificationAdapter$1;-><init>(Lcom/apptentive/android/sdk/module/engagement/notification/NoteInteractionNotificationAdapter;Landroid/content/Context;Lcom/apptentive/android/sdk/module/engagement/interaction/model/TextModalInteraction;Lorg/json/JSONObject;)V

    const-string p1, "engage Note Notification launch"

    invoke-static {v0, p1}, Lcom/apptentive/android/sdk/ApptentiveHelper;->dispatchConversationTask(Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 8
        0x0
        0x64
        0x64
        0x64
        0x64
        0x64
    .end array-data
.end method

.method public handleInteractionNotificationAction(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 6

    .line 61
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.apptentive.notification.extra.INTERACTION_DEFINITION"

    .line 62
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 65
    :try_start_0
    new-instance v4, Lcom/apptentive/android/sdk/module/engagement/interaction/model/TextModalInteraction;

    const-string v5, "com.apptentive.notification.extra.INTERACTION_DEFINITION"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/TextModalInteraction;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "com.apptentive.notification.action.DISPLAY"

    .line 71
    invoke-static {v0, v1}, Lcom/apptentive/android/sdk/util/StringUtils;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    invoke-virtual {p0, p1, p2, v4}, Lcom/apptentive/android/sdk/module/engagement/notification/NoteInteractionNotificationAdapter;->actionDisplayNotification(Landroid/content/Context;Ljava/lang/String;Lcom/apptentive/android/sdk/module/engagement/interaction/model/TextModalInteraction;)V

    goto :goto_0

    :cond_0
    const-string p2, "com.apptentive.notification.action.DELETE"

    .line 73
    invoke-static {v0, p2}, Lcom/apptentive/android/sdk/util/StringUtils;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 74
    invoke-virtual {p0, p1, v4}, Lcom/apptentive/android/sdk/module/engagement/notification/NoteInteractionNotificationAdapter;->actionDelete(Landroid/content/Context;Lcom/apptentive/android/sdk/module/engagement/interaction/model/TextModalInteraction;)V

    goto :goto_0

    :cond_1
    const-string p2, "com.apptentive.notification.action.note.BUTTON_PRESSED"

    .line 75
    invoke-static {v0, p2}, Lcom/apptentive/android/sdk/util/StringUtils;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 76
    invoke-virtual {p0, p1, p3, v4}, Lcom/apptentive/android/sdk/module/engagement/notification/NoteInteractionNotificationAdapter;->actionButtonPressed(Landroid/content/Context;Landroid/content/Intent;Lcom/apptentive/android/sdk/module/engagement/interaction/model/TextModalInteraction;)V

    goto :goto_0

    .line 78
    :cond_2
    sget-object p1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->NOTIFICATION_INTERACTIONS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string p2, "Unsupported action %s for Interaction type %s"

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    aput-object v0, p3, v2

    invoke-virtual {v4}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/TextModalInteraction;->getType()Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction$Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction$Type;->name()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v3

    invoke-static {p1, p2, p3}, Lcom/apptentive/android/sdk/ApptentiveLog;->w(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 67
    sget-object p2, Lcom/apptentive/android/sdk/ApptentiveLogTag;->NOTIFICATION_INTERACTIONS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string p3, "Unable to parse interaction: %s"

    new-array v0, v3, [Ljava/lang/Object;

    aput-object v1, v0, v2

    invoke-static {p2, p3, v0}, Lcom/apptentive/android/sdk/ApptentiveLog;->w(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    invoke-static {p1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    return-void
.end method
