.class public Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/RangeSurveyQuestionView;
.super Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/BaseSurveyQuestionView;
.source "RangeSurveyQuestionView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/BaseSurveyQuestionView<",
        "Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/RangeQuestion;",
        ">;",
        "Landroid/widget/CompoundButton$OnCheckedChangeListener;"
    }
.end annotation


# static fields
.field private static final defaultNumberFormat:Ljava/text/NumberFormat;


# instance fields
.field private max:I

.field private maxLabel:Ljava/lang/String;

.field private min:I

.field private minLabel:Ljava/lang/String;

.field private radioGroup:Landroid/widget/RadioGroup;

.field private selectedValue:I

.field private valueWasSelected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    sput-object v0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/RangeSurveyQuestionView;->defaultNumberFormat:Ljava/text/NumberFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/BaseSurveyQuestionView;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/RangeQuestion;)Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/RangeSurveyQuestionView;
    .locals 3

    .line 50
    new-instance v0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/RangeSurveyQuestionView;

    invoke-direct {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/RangeSurveyQuestionView;-><init>()V

    .line 51
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "question"

    .line 52
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/RangeQuestion;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/RangeSurveyQuestionView;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public getAnswer()Ljava/lang/Object;
    .locals 4

    .line 144
    iget-boolean v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/RangeSurveyQuestionView;->valueWasSelected:Z

    if-eqz v0, :cond_0

    .line 146
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 147
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 148
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string/jumbo v2, "value"

    .line 149
    iget v3, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/RangeSurveyQuestionView;->selectedValue:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 152
    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/RangeSurveyQuestionView;->question:Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question;

    check-cast v0, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/RangeQuestion;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/RangeQuestion;->isRequired()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/RangeSurveyQuestionView;->valueWasSelected:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 161
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/RangeSurveyQuestionView;->selectedValue:I

    const/4 p1, 0x1

    .line 162
    iput-boolean p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/RangeSurveyQuestionView;->valueWasSelected:Z

    .line 163
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/RangeSurveyQuestionView;->fireListener()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 59
    invoke-super {p0, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/BaseSurveyQuestionView;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/RangeSurveyQuestionView;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 63
    :try_start_0
    new-instance v0, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/RangeQuestion;

    const-string v1, "question"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/RangeQuestion;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/RangeSurveyQuestionView;->question:Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 65
    invoke-static {p1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    .line 68
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/RangeSurveyQuestionView;->question:Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question;

    check-cast p1, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/RangeQuestion;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/RangeQuestion;->getMin()I

    move-result p1

    iput p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/RangeSurveyQuestionView;->min:I

    .line 69
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/RangeSurveyQuestionView;->question:Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question;

    check-cast p1, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/RangeQuestion;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/RangeQuestion;->getMax()I

    move-result p1

    iput p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/RangeSurveyQuestionView;->max:I

    .line 70
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/RangeSurveyQuestionView;->question:Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question;

    check-cast p1, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/RangeQuestion;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/RangeQuestion;->getMinLabel()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/RangeSurveyQuestionView;->minLabel:Ljava/lang/String;

    .line 71
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/RangeSurveyQuestionView;->question:Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question;

    check-cast p1, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/RangeQuestion;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/RangeQuestion;->getMaxLabel()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/RangeSurveyQuestionView;->maxLabel:Ljava/lang/String;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .line 76
    invoke-super {p0, p1, p2, p3}, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/BaseSurveyQuestionView;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x0

    .line 78
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/RangeSurveyQuestionView;->getAnswerContainer(Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 79
    sget v1, Lcom/apptentive/android/sdk/R$layout;->apptentive_survey_question_range_answer:I

    invoke-virtual {p1, v1, v0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 80
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 82
    sget v0, Lcom/apptentive/android/sdk/R$id;->min_label:I

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 83
    iget-object v2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/RangeSurveyQuestionView;->minLabel:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x8

    if-nez v2, :cond_0

    .line 84
    iget-object v2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/RangeSurveyQuestionView;->minLabel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    :goto_0
    sget v0, Lcom/apptentive/android/sdk/R$id;->max_label:I

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 89
    iget-object v2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/RangeSurveyQuestionView;->maxLabel:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 90
    iget-object v2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/RangeSurveyQuestionView;->maxLabel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 92
    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    :goto_1
    sget v0, Lcom/apptentive/android/sdk/R$id;->range_container:I

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/RangeSurveyQuestionView;->radioGroup:Landroid/widget/RadioGroup;

    .line 97
    iget v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/RangeSurveyQuestionView;->min:I

    :goto_2
    iget v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/RangeSurveyQuestionView;->max:I

    if-gt v0, v1, :cond_2

    .line 98
    sget v1, Lcom/apptentive/android/sdk/R$layout;->apptentive_survey_question_range_choice:I

    iget-object v2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/RangeSurveyQuestionView;->radioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1, v1, v2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 99
    sget-object v2, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/RangeSurveyQuestionView;->defaultNumberFormat:Ljava/text/NumberFormat;

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 100
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 101
    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 102
    iget-object v2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/RangeSurveyQuestionView;->radioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2, v1}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_0
    move-exception p1

    const-string v0, "Exception in %s.onCreateView()"

    const/4 v1, 0x1

    .line 105
    new-array v1, v1, [Ljava/lang/Object;

    const-class v2, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/RangeSurveyQuestionView;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p3

    invoke-static {p1, v0, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    invoke-static {p1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :cond_2
    return-object p2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "value_was_selected"

    .line 113
    iget-boolean v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/RangeSurveyQuestionView;->valueWasSelected:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "selected_value"

    .line 114
    iget v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/RangeSurveyQuestionView;->selectedValue:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 115
    invoke-super {p0, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/BaseSurveyQuestionView;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 120
    invoke-super {p0, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/BaseSurveyQuestionView;->onViewStateRestored(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string/jumbo v1, "value_was_selected"

    .line 124
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/RangeSurveyQuestionView;->valueWasSelected:Z

    const-string/jumbo v1, "selected_value"

    .line 125
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/RangeSurveyQuestionView;->selectedValue:I

    .line 128
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/RangeSurveyQuestionView;->radioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result p1

    if-ge v0, p1, :cond_2

    .line 129
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/RangeSurveyQuestionView;->radioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    .line 130
    iget-boolean v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/RangeSurveyQuestionView;->valueWasSelected:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/widget/RadioButton;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/RangeSurveyQuestionView;->selectedValue:I

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 131
    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
