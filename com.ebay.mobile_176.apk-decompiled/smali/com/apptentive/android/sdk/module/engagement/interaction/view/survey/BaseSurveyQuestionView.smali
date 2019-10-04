.class public abstract Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/BaseSurveyQuestionView;
.super Landroidx/fragment/app/Fragment;
.source "BaseSurveyQuestionView.java"

# interfaces
.implements Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Q::",
        "Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question;",
        ">",
        "Landroidx/fragment/app/Fragment;",
        "Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionView;"
    }
.end annotation


# instance fields
.field private dashView:Landroid/view/View;

.field private instructionsView:Landroid/widget/TextView;

.field private listener:Lcom/apptentive/android/sdk/module/survey/OnSurveyQuestionAnsweredListener;

.field protected question:Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TQ;"
        }
    .end annotation
.end field

.field private requiredView:Landroid/widget/TextView;

.field private root:Landroid/widget/FrameLayout;

.field private sentMetric:Z

.field private validationFailedBorder:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public didSendMetric()Z
    .locals 1

    .line 146
    iget-boolean v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/BaseSurveyQuestionView;->sentMetric:Z

    return v0
.end method

.method protected fireListener()V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/BaseSurveyQuestionView;->listener:Lcom/apptentive/android/sdk/module/survey/OnSurveyQuestionAnsweredListener;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/BaseSurveyQuestionView;->listener:Lcom/apptentive/android/sdk/module/survey/OnSurveyQuestionAnsweredListener;

    invoke-interface {v0, p0}, Lcom/apptentive/android/sdk/module/survey/OnSurveyQuestionAnsweredListener;->onAnswered(Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionView;)V

    :cond_0
    return-void
.end method

.method public abstract getAnswer()Ljava/lang/Object;
.end method

.method protected getAnswerContainer(Landroid/view/View;)Landroid/widget/LinearLayout;
    .locals 1

    .line 105
    sget v0, Lcom/apptentive/android/sdk/R$id;->answer_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    return-object p1
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/BaseSurveyQuestionView;->question:Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question;

    invoke-interface {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQuestionId()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/BaseSurveyQuestionView;->question:Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question;

    invoke-interface {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract isValid()Z
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 44
    sget p3, Lcom/apptentive/android/sdk/R$layout;->apptentive_survey_question_base:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 156
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "sent_metric"

    .line 157
    iget-boolean v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/BaseSurveyQuestionView;->sentMetric:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    .line 48
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 50
    :try_start_0
    sget v2, Lcom/apptentive/android/sdk/R$id;->question_base:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/BaseSurveyQuestionView;->root:Landroid/widget/FrameLayout;

    .line 51
    sget v2, Lcom/apptentive/android/sdk/R$id;->question_required:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/BaseSurveyQuestionView;->requiredView:Landroid/widget/TextView;

    .line 52
    sget v2, Lcom/apptentive/android/sdk/R$id;->dash_view:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/BaseSurveyQuestionView;->dashView:Landroid/view/View;

    .line 53
    sget v2, Lcom/apptentive/android/sdk/R$id;->question_instructions:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/BaseSurveyQuestionView;->instructionsView:Landroid/widget/TextView;

    .line 56
    iget-object v2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/BaseSurveyQuestionView;->root:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/BaseSurveyQuestionView;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 58
    sget v2, Lcom/apptentive/android/sdk/R$id;->question_title:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 59
    iget-object v3, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/BaseSurveyQuestionView;->question:Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question;

    invoke-interface {v3}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v3, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/BaseSurveyQuestionView;->question:Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question;

    invoke-interface {v3}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question;->isRequired()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/BaseSurveyQuestionView;->question:Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question;

    invoke-interface {v4}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/apptentive/android/sdk/R$string;->apptentive_required:I

    invoke-virtual {p0, v4}, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/BaseSurveyQuestionView;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 64
    :cond_0
    iget-object v2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/BaseSurveyQuestionView;->question:Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question;

    invoke-interface {v2}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question;->getRequiredText()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/BaseSurveyQuestionView;->question:Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question;

    invoke-interface {v3}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question;->getInstructions()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/BaseSurveyQuestionView;->setInstructions(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    sget v2, Lcom/apptentive/android/sdk/R$id;->validation_failed_border:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/BaseSurveyQuestionView;->validationFailedBorder:Landroid/view/View;

    if-eqz p2, :cond_1

    const-string/jumbo p1, "sent_metric"

    .line 68
    invoke-virtual {p2, p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/BaseSurveyQuestionView;->sentMetric:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "Exception in %s.onCreateView()"

    .line 70
    new-array v0, v0, [Ljava/lang/Object;

    const-class v2, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/BaseSurveyQuestionView;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, p2, v0}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    invoke-static {p1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method protected setInstructions(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 77
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/BaseSurveyQuestionView;->question:Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question;

    invoke-interface {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question;->isRequired()Z

    move-result v0

    .line 78
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v0, :cond_1

    .line 81
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string p1, "Required"

    .line 84
    :cond_0
    iget-object v4, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/BaseSurveyQuestionView;->requiredView:Landroid/widget/TextView;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/BaseSurveyQuestionView;->requiredView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 87
    :cond_1
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/BaseSurveyQuestionView;->requiredView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    if-eqz v1, :cond_2

    .line 91
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/BaseSurveyQuestionView;->instructionsView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/BaseSurveyQuestionView;->instructionsView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 94
    :cond_2
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/BaseSurveyQuestionView;->instructionsView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 98
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/BaseSurveyQuestionView;->dashView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 100
    :cond_3
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/BaseSurveyQuestionView;->dashView:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public setOnSurveyQuestionAnsweredListener(Lcom/apptentive/android/sdk/module/survey/OnSurveyQuestionAnsweredListener;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/BaseSurveyQuestionView;->listener:Lcom/apptentive/android/sdk/module/survey/OnSurveyQuestionAnsweredListener;

    return-void
.end method

.method public setSentMetric(Z)V
    .locals 0

    .line 151
    iput-boolean p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/BaseSurveyQuestionView;->sentMetric:Z

    return-void
.end method

.method public updateValidationState(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 119
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/BaseSurveyQuestionView;->validationFailedBorder:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 121
    :cond_0
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/BaseSurveyQuestionView;->validationFailedBorder:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
