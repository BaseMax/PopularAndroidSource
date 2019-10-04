.class public Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/MultichoiceQuestion;
.super Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/BaseQuestion;
.source "MultichoiceQuestion.java"


# static fields
.field protected static final KEY_MAX_SELECTIONS:Ljava/lang/String; = "max_selections"

.field protected static final KEY_MIN_SELECTIONS:Ljava/lang/String; = "min_selections"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/BaseQuestion;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAnswerChoices()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/AnswerDefinition;",
            ">;"
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string v1, "answer_choices"

    .line 46
    invoke-virtual {p0, v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/MultichoiceQuestion;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 47
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 48
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 50
    new-instance v4, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/AnswerDefinition;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/AnswerDefinition;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 54
    invoke-static {v1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :cond_1
    return-object v0
.end method

.method public getMaxSelections()I
    .locals 2

    const-string v0, "max_selections"

    const/4 v1, 0x1

    .line 40
    invoke-virtual {p0, v0, v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/MultichoiceQuestion;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMinSelections()I
    .locals 2

    const-string v0, "min_selections"

    const/4 v1, 0x1

    .line 36
    invoke-virtual {p0, v0, v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/MultichoiceQuestion;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
