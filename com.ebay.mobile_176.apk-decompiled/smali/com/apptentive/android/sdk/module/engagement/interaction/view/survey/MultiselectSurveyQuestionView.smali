.class public Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/MultiselectSurveyQuestionView;
.super Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/MultichoiceSurveyQuestionView;
.source "MultiselectSurveyQuestionView.java"

# interfaces
.implements Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice$OnCheckedChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/MultichoiceSurveyQuestionView;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/MultiselectQuestion;)Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/MultiselectSurveyQuestionView;
    .locals 3

    .line 23
    new-instance v0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/MultiselectSurveyQuestionView;

    invoke-direct {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/MultiselectSurveyQuestionView;-><init>()V

    .line 24
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "question"

    .line 25
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/MultiselectQuestion;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/MultiselectSurveyQuestionView;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public getAnswer()Ljava/lang/Object;
    .locals 4

    .line 80
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    .line 81
    :goto_0
    iget-object v2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/MultiselectSurveyQuestionView;->choiceContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 82
    iget-object v2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/MultiselectSurveyQuestionView;->choiceContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice;

    .line 83
    invoke-virtual {v2}, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 84
    invoke-virtual {v2}, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice;->getAnswer()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_2

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public isValid()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 61
    :goto_0
    iget-object v2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/MultiselectSurveyQuestionView;->choiceContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 62
    iget-object v2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/MultiselectSurveyQuestionView;->choiceContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice;

    .line 63
    iget-object v3, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/MultiselectSurveyQuestionView;->question:Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question;

    check-cast v3, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/MultichoiceQuestion;

    invoke-virtual {v3}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/MultichoiceQuestion;->isRequired()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice;->isValid(Z)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    :cond_1
    iget-object v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/MultiselectSurveyQuestionView;->selectedChoices:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    .line 71
    iget-object v2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/MultichoiceSurveyQuestionView;->question:Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question;

    check-cast v2, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/MultiselectQuestion;

    .line 74
    invoke-virtual {v2}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/MultiselectQuestion;->isRequired()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v1, :cond_3

    .line 75
    :cond_2
    invoke-virtual {v2}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/MultiselectQuestion;->getMinSelections()I

    move-result v3

    if-gt v3, v1, :cond_4

    invoke-virtual {v2}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/MultiselectQuestion;->getMaxSelections()I

    move-result v2

    if-gt v1, v2, :cond_4

    :cond_3
    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method public onCheckChanged(Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice;Z)V
    .locals 0

    .line 46
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice;->getIndex()I

    move-result p1

    if-eqz p2, :cond_0

    .line 48
    iget-object p2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/MultiselectSurveyQuestionView;->selectedChoices:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 50
    :cond_0
    iget-object p2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/MultiselectSurveyQuestionView;->selectedChoices:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 52
    :goto_0
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/MultiselectSurveyQuestionView;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_1

    .line 53
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/MultiselectSurveyQuestionView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/MultiselectSurveyQuestionView;->getView()Landroid/view/View;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/apptentive/android/sdk/util/Util;->hideSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 55
    :cond_1
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/MultiselectSurveyQuestionView;->fireListener()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 32
    invoke-super {p0, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/MultichoiceSurveyQuestionView;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/MultiselectSurveyQuestionView;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 37
    :try_start_0
    new-instance v0, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/MultiselectQuestion;

    const-string v1, "question"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/MultiselectQuestion;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/MultiselectSurveyQuestionView;->question:Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 39
    invoke-static {p1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
