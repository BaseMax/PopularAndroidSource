.class public Lcom/apptentive/android/sdk/module/engagement/interaction/model/SurveyInteraction;
.super Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;
.source "SurveyInteraction.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 3

    .line 51
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/SurveyInteraction;->getConfiguration()Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;

    move-result-object v0

    const-string v1, "description"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .line 47
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/SurveyInteraction;->getConfiguration()Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;

    move-result-object v0

    const-string v1, "name"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQuestions()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question;",
            ">;"
        }
    .end annotation

    .line 79
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/SurveyInteraction;->getRequiredText()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 81
    :try_start_0
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/SurveyInteraction;->getConfiguration()Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string/jumbo v3, "questions"

    .line 82
    invoke-virtual {v2, v3}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 83
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v4, "questions"

    .line 84
    invoke-virtual {v2, v4}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v4, 0x0

    .line 85
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 86
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    const-string/jumbo v6, "type"

    .line 87
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question$Type;->parse(Ljava/lang/String;)Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question$Type;

    move-result-object v6

    .line 89
    sget-object v7, Lcom/apptentive/android/sdk/module/engagement/interaction/model/SurveyInteraction$1;->$SwitchMap$com$apptentive$android$sdk$module$engagement$interaction$model$survey$Question$Type:[I

    invoke-virtual {v6}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question$Type;->ordinal()I

    move-result v6

    aget v6, v7, v6

    packed-switch v6, :pswitch_data_0

    move-object v6, v1

    goto :goto_1

    .line 100
    :pswitch_0
    new-instance v6, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/RangeQuestion;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/RangeQuestion;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 97
    :pswitch_1
    new-instance v6, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/MultiselectQuestion;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/MultiselectQuestion;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 94
    :pswitch_2
    new-instance v6, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/MultichoiceQuestion;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/MultichoiceQuestion;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 91
    :pswitch_3
    new-instance v6, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/SinglelineQuestion;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/SinglelineQuestion;-><init>(Ljava/lang/String;)V

    :goto_1
    if-eqz v6, :cond_0

    .line 107
    invoke-interface {v6, v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question;->setRequiredText(Ljava/lang/String;)V

    .line 108
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v3

    :catch_0
    move-exception v0

    .line 114
    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :cond_2
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getRequiredText()Ljava/lang/String;
    .locals 3

    .line 67
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/SurveyInteraction;->getConfiguration()Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;

    move-result-object v0

    const-string/jumbo v1, "required_text"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubmitText()Ljava/lang/String;
    .locals 3

    .line 71
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/SurveyInteraction;->getConfiguration()Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;

    move-result-object v0

    const-string/jumbo v1, "submit_text"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuccessMessage()Ljava/lang/String;
    .locals 3

    .line 59
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/SurveyInteraction;->getConfiguration()Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;

    move-result-object v0

    const-string/jumbo v1, "success_message"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/SurveyInteraction;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValidationError()Ljava/lang/String;
    .locals 3

    .line 75
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/SurveyInteraction;->getConfiguration()Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;

    move-result-object v0

    const-string/jumbo v1, "validation_error"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isRequired()Z
    .locals 2

    .line 63
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/SurveyInteraction;->getConfiguration()Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;

    move-result-object v0

    const-string/jumbo v1, "required"

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isShowSuccessMessage()Z
    .locals 2

    .line 55
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/SurveyInteraction;->getConfiguration()Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;

    move-result-object v0

    const-string/jumbo v1, "show_success_message"

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
