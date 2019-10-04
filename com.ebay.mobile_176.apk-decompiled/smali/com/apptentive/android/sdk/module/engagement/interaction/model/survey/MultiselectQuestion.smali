.class public Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/MultiselectQuestion;
.super Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/MultichoiceQuestion;
.source "MultiselectQuestion.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/MultichoiceQuestion;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getMaxSelections()I
    .locals 2

    const-string v0, "max_selections"

    .line 25
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/MultiselectQuestion;->getAnswerChoices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/MultiselectQuestion;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method
