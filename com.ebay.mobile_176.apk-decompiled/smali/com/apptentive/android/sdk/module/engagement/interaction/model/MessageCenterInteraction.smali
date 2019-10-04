.class public Lcom/apptentive/android/sdk/module/engagement/interaction/model/MessageCenterInteraction;
.super Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;
.source "MessageCenterInteraction.java"


# static fields
.field public static final DEFAULT_INTERNAL_EVENT_NAME:Ljava/lang/String; = "show_message_center"

.field public static final EVENT_NAME_ATTACH:Ljava/lang/String; = "attach"

.field public static final EVENT_NAME_ATTACHMENT_CANCEL:Ljava/lang/String; = "attachment_cancel"

.field public static final EVENT_NAME_ATTACHMENT_DELETE:Ljava/lang/String; = "attachment_delete"

.field public static final EVENT_NAME_CANCEL:Ljava/lang/String; = "cancel"

.field public static final EVENT_NAME_CLOSE:Ljava/lang/String; = "close"

.field public static final EVENT_NAME_COMPOSE_CLOSE:Ljava/lang/String; = "compose_close"

.field public static final EVENT_NAME_COMPOSE_OPEN:Ljava/lang/String; = "compose_open"

.field public static final EVENT_NAME_MESSAGE_HTTP_ERROR:Ljava/lang/String; = "message_http_error"

.field public static final EVENT_NAME_MESSAGE_NETWORK_ERROR:Ljava/lang/String; = "message_network_error"

.field public static final EVENT_NAME_PROFILE_CLOSE:Ljava/lang/String; = "profile_close"

.field public static final EVENT_NAME_PROFILE_OPEN:Ljava/lang/String; = "profile_open"

.field public static final EVENT_NAME_PROFILE_SUBMIT:Ljava/lang/String; = "profile_submit"

.field public static final EVENT_NAME_READ:Ljava/lang/String; = "read"

.field public static final EVENT_NAME_STATUS:Ljava/lang/String; = "status"

.field public static final KEY_AUTOMATED_MESSAGE:Ljava/lang/String; = "automated_message"

.field public static final KEY_AUTOMATED_MESSAGE_BODY:Ljava/lang/String; = "body"

.field public static final KEY_BRANDING:Ljava/lang/String; = "branding"

.field public static final KEY_COMPOSER:Ljava/lang/String; = "composer"

.field public static final KEY_COMPOSER_CLOSE_BODY:Ljava/lang/String; = "close_confirm_body"

.field public static final KEY_COMPOSER_CLOSE_CANCEL:Ljava/lang/String; = "close_cancel_button"

.field public static final KEY_COMPOSER_CLOSE_DISCARD:Ljava/lang/String; = "close_discard_button"

.field public static final KEY_COMPOSER_HINT_TEXT:Ljava/lang/String; = "hint_text"

.field public static final KEY_COMPOSER_SEND_BUTTON:Ljava/lang/String; = "send_button"

.field public static final KEY_COMPOSER_TITLE:Ljava/lang/String; = "title"

.field public static final KEY_ERROR:Ljava/lang/String; = "error_messages"

.field public static final KEY_ERROR_HTTP_BODY:Ljava/lang/String; = "http_error_body"

.field public static final KEY_ERROR_NETWORK_BODY:Ljava/lang/String; = "network_error_body"

.field public static final KEY_GREETING:Ljava/lang/String; = "greeting"

.field public static final KEY_GREETING_BODY:Ljava/lang/String; = "body"

.field public static final KEY_GREETING_IMAGE:Ljava/lang/String; = "image_url"

.field public static final KEY_GREETING_TITLE:Ljava/lang/String; = "title"

.field public static final KEY_PROFILE:Ljava/lang/String; = "profile"

.field public static final KEY_PROFILE_EDIT:Ljava/lang/String; = "edit"

.field public static final KEY_PROFILE_EDIT_EMAIL_EXPLANATION:Ljava/lang/String; = "email_explanation"

.field public static final KEY_PROFILE_EDIT_EMAIL_HINT:Ljava/lang/String; = "email_hint"

.field public static final KEY_PROFILE_EDIT_NAME_HINT:Ljava/lang/String; = "name_hint"

.field public static final KEY_PROFILE_EDIT_SAVE_BUTTON:Ljava/lang/String; = "save_button"

.field public static final KEY_PROFILE_EDIT_SKIP_BUTTON:Ljava/lang/String; = "skip_button"

.field public static final KEY_PROFILE_EDIT_TITLE:Ljava/lang/String; = "title"

.field public static final KEY_PROFILE_INIT:Ljava/lang/String; = "initial"

.field public static final KEY_PROFILE_INIT_EMAIL_EXPLANATION:Ljava/lang/String; = "email_explanation"

.field public static final KEY_PROFILE_INIT_EMAIL_HINT:Ljava/lang/String; = "email_hint"

.field public static final KEY_PROFILE_INIT_NAME_HINT:Ljava/lang/String; = "name_hint"

.field public static final KEY_PROFILE_INIT_SAVE_BUTTON:Ljava/lang/String; = "save_button"

.field public static final KEY_PROFILE_INIT_SKIP_BUTTON:Ljava/lang/String; = "skip_button"

.field public static final KEY_PROFILE_INIT_TITLE:Ljava/lang/String; = "title"

.field public static final KEY_PROFILE_REQUEST:Ljava/lang/String; = "request"

.field public static final KEY_PROFILE_REQUIRE:Ljava/lang/String; = "require"

.field public static final KEY_STATUS:Ljava/lang/String; = "status"

.field public static final KEY_STATUS_BODY:Ljava/lang/String; = "body"

.field public static final KEY_TITLE:Ljava/lang/String; = "title"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 94
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static generateMessageCenterErrorIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 210
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 211
    const-class v1, Lcom/apptentive/android/sdk/ApptentiveViewActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string p0, "fragmentType"

    const/4 v1, 0x2

    .line 212
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public clearContextualMessage()V
    .locals 3

    .line 195
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/MessageCenterInteraction;->getContextualMessage()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v1, "body"

    const/4 v2, 0x0

    .line 200
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 201
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/MessageCenterInteraction;->getConfiguration()Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;

    move-result-object v1

    const-string v2, "automated_message"

    .line 202
    invoke-virtual {v1, v2, v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "configuration"

    .line 203
    invoke-virtual {p0, v0, v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/MessageCenterInteraction;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 205
    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public getBranding()Ljava/lang/String;
    .locals 3

    .line 106
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/MessageCenterInteraction;->getConfiguration()Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "branding"

    .line 107
    invoke-virtual {v0, v2}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "branding"

    .line 108
    invoke-virtual {v0, v2, v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getComposer()Lcom/apptentive/android/sdk/module/messagecenter/model/Composer;
    .locals 10

    .line 114
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/MessageCenterInteraction;->getConfiguration()Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "composer"

    .line 118
    invoke-virtual {v0, v2}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 119
    new-instance v9, Lcom/apptentive/android/sdk/module/messagecenter/model/Composer;

    const-string/jumbo v2, "title"

    .line 120
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "close_confirm_body"

    .line 121
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "close_discard_button"

    .line 122
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "close_cancel_button"

    .line 123
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v2, "send_button"

    .line 124
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v2, "hint_text"

    .line 125
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/apptentive/android/sdk/module/messagecenter/model/Composer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v9
.end method

.method public getContextualMessage()Lorg/json/JSONObject;
    .locals 2

    .line 179
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/MessageCenterInteraction;->getConfiguration()Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v1, "automated_message"

    .line 183
    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getContextualMessageBody()Ljava/lang/String;
    .locals 3

    .line 187
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/MessageCenterInteraction;->getContextualMessage()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "body"

    .line 191
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorStatusNetwork()Lcom/apptentive/android/sdk/module/messagecenter/model/MessageCenterStatus;
    .locals 3

    .line 246
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/MessageCenterInteraction;->getConfiguration()Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "error_messages"

    .line 250
    invoke-virtual {v0, v2}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 254
    :cond_1
    new-instance v1, Lcom/apptentive/android/sdk/module/messagecenter/model/MessageCenterStatus;

    const-string v2, "network_error_body"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/apptentive/android/sdk/R$drawable;->apptentive_ic_no_connection:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/apptentive/android/sdk/module/messagecenter/model/MessageCenterStatus;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v1
.end method

.method public getErrorStatusServer()Lcom/apptentive/android/sdk/module/messagecenter/model/MessageCenterStatus;
    .locals 3

    .line 234
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/MessageCenterInteraction;->getConfiguration()Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "error_messages"

    .line 238
    invoke-virtual {v0, v2}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 242
    :cond_1
    new-instance v1, Lcom/apptentive/android/sdk/module/messagecenter/model/MessageCenterStatus;

    const-string v2, "http_error_body"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/apptentive/android/sdk/R$drawable;->apptentive_ic_error:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/apptentive/android/sdk/module/messagecenter/model/MessageCenterStatus;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v1
.end method

.method public getGreeting()Lcom/apptentive/android/sdk/module/messagecenter/model/MessageCenterGreeting;
    .locals 6

    .line 166
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/MessageCenterInteraction;->getConfiguration()Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "greeting"

    .line 170
    invoke-virtual {v0, v2}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 174
    :cond_1
    new-instance v2, Lcom/apptentive/android/sdk/module/messagecenter/model/MessageCenterGreeting;

    const-string/jumbo v3, "title"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "body"

    .line 175
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "image_url"

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Lcom/apptentive/android/sdk/module/messagecenter/model/MessageCenterGreeting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public getProfile()Lorg/json/JSONObject;
    .locals 2

    .line 149
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/MessageCenterInteraction;->getConfiguration()Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string/jumbo v1, "profile"

    .line 153
    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getRegularStatus()Lcom/apptentive/android/sdk/module/messagecenter/model/MessageCenterStatus;
    .locals 3

    .line 218
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/MessageCenterInteraction;->getConfiguration()Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v2, "status"

    .line 222
    invoke-virtual {v0, v2}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const-string v2, "body"

    .line 226
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 227
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 230
    :cond_2
    new-instance v2, Lcom/apptentive/android/sdk/module/messagecenter/model/MessageCenterStatus;

    invoke-direct {v2, v0, v1}, Lcom/apptentive/android/sdk/module/messagecenter/model/MessageCenterStatus;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v2

    :cond_3
    :goto_0
    return-object v1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 3

    .line 98
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/MessageCenterInteraction;->getConfiguration()Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "title"

    .line 99
    invoke-virtual {v0, v2}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "title"

    .line 100
    invoke-virtual {v0, v2, v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getWhoCard()Lcom/apptentive/android/sdk/module/messagecenter/model/WhoCard;
    .locals 2

    .line 158
    :try_start_0
    new-instance v0, Lcom/apptentive/android/sdk/module/messagecenter/model/WhoCard;

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/MessageCenterInteraction;->getProfile()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/apptentive/android/sdk/module/messagecenter/model/WhoCard;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 160
    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getWhoCardRequestEnabled()Z
    .locals 3

    .line 131
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/MessageCenterInteraction;->getConfiguration()Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string/jumbo v1, "profile"

    .line 135
    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "request"

    const/4 v2, 0x1

    .line 136
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getWhoCardRequired()Z
    .locals 3

    .line 140
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/MessageCenterInteraction;->getConfiguration()Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string/jumbo v2, "profile"

    .line 144
    invoke-virtual {v0, v2}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v2, "require"

    .line 145
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
