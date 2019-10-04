.class public Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction$Factory;
.super Ljava/lang/Object;
.source "Interaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseInteraction(Ljava/lang/String;)Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 156
    :cond_0
    :try_start_0
    sget-object v1, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction$Type;->unknown:Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction$Type;

    .line 157
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "type"

    .line 158
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v1, "type"

    .line 159
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction$Type;->parse(Ljava/lang/String;)Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction$Type;

    move-result-object v1

    .line 161
    :cond_1
    sget-object v2, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction$1;->$SwitchMap$com$apptentive$android$sdk$module$engagement$interaction$model$Interaction$Type:[I

    invoke-virtual {v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction$Type;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 177
    :pswitch_0
    new-instance v1, Lcom/apptentive/android/sdk/module/engagement/interaction/model/NavigateToLinkInteraction;

    invoke-direct {v1, p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/NavigateToLinkInteraction;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 175
    :pswitch_1
    new-instance v1, Lcom/apptentive/android/sdk/module/engagement/interaction/model/TextModalInteraction;

    invoke-direct {v1, p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/TextModalInteraction;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 173
    :pswitch_2
    new-instance v1, Lcom/apptentive/android/sdk/module/engagement/interaction/model/SurveyInteraction;

    invoke-direct {v1, p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/SurveyInteraction;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 171
    :pswitch_3
    new-instance v1, Lcom/apptentive/android/sdk/module/engagement/interaction/model/AppStoreRatingInteraction;

    invoke-direct {v1, p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/AppStoreRatingInteraction;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 169
    :pswitch_4
    new-instance v1, Lcom/apptentive/android/sdk/module/engagement/interaction/model/MessageCenterInteraction;

    invoke-direct {v1, p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/MessageCenterInteraction;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 167
    :pswitch_5
    new-instance v1, Lcom/apptentive/android/sdk/module/engagement/interaction/model/RatingDialogInteraction;

    invoke-direct {v1, p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/RatingDialogInteraction;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 165
    :pswitch_6
    new-instance v1, Lcom/apptentive/android/sdk/module/engagement/interaction/model/EnjoymentDialogInteraction;

    invoke-direct {v1, p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/EnjoymentDialogInteraction;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 163
    :pswitch_7
    new-instance v1, Lcom/apptentive/android/sdk/module/engagement/interaction/model/UpgradeMessageInteraction;

    invoke-direct {v1, p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/UpgradeMessageInteraction;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 182
    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->INTERACTIONS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v2, "Error parsing Interaction"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, p0, v2, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->w(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    invoke-static {p0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
