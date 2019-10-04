.class public Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice;
.super Landroid/widget/FrameLayout;
.source "SurveyQuestionChoice.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice$OnOtherTextChangedListener;,
        Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice$OnCheckedChangeListener;
    }
.end annotation


# instance fields
.field private final answerId:Ljava/lang/String;

.field private final checkBox:Landroid/widget/CheckBox;

.field private final index:I

.field private final isOtherType:Z

.field private onCheckChangedListener:Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice$OnCheckedChangeListener;

.field private onOtherTextChangedListener:Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice$OnOtherTextChangedListener;

.field private final otherTextInput:Landroid/widget/EditText;

.field private final otherTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/AnswerDefinition;II)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 49
    iput p5, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice;->index:I

    .line 50
    invoke-virtual {p3}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/AnswerDefinition;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice;->answerId:Ljava/lang/String;

    .line 51
    invoke-virtual {p3}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/AnswerDefinition;->getType()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p5, "select_other"

    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice;->isOtherType:Z

    const/4 p1, 0x2

    if-eq p4, p1, :cond_0

    .line 60
    sget p1, Lcom/apptentive/android/sdk/R$layout;->apptentive_survey_question_multiselect_choice:I

    invoke-virtual {p2, p1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    .line 56
    :cond_0
    sget p1, Lcom/apptentive/android/sdk/R$layout;->apptentive_survey_question_multichoice_choice:I

    invoke-virtual {p2, p1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 63
    :goto_0
    sget p1, Lcom/apptentive/android/sdk/R$id;->checkbox:I

    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice;->checkBox:Landroid/widget/CheckBox;

    .line 64
    sget p1, Lcom/apptentive/android/sdk/R$id;->other_text_input_layout:I

    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice;->otherTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 65
    sget p1, Lcom/apptentive/android/sdk/R$id;->other_edit_text:I

    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice;->otherTextInput:Landroid/widget/EditText;

    .line 67
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p3}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/AnswerDefinition;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-boolean p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice;->isOtherType:Z

    if-eqz p1, :cond_1

    .line 69
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice;->otherTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p3}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/AnswerDefinition;->getHint()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 72
    :cond_1
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 74
    iget-boolean p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice;->isOtherType:Z

    if-eqz p1, :cond_2

    .line 75
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice;->otherTextInput:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice;)Landroid/widget/EditText;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice;->otherTextInput:Landroid/widget/EditText;

    return-object p0
.end method

.method private updateOtherState(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 115
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice;->otherTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 116
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice;->otherTextInput:Landroid/widget/EditText;

    new-instance v0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice$1;

    invoke-direct {v0, p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice$1;-><init>(Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 124
    :cond_0
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice;->otherTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 190
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 191
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice;->onOtherTextChangedListener:Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice$OnOtherTextChangedListener;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice;->onOtherTextChangedListener:Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice$OnOtherTextChangedListener;

    invoke-interface {v0, p0, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice$OnOtherTextChangedListener;->onOtherTextChanged(Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public getAnswer()Ljava/lang/Object;
    .locals 3

    .line 141
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "id"

    .line 142
    iget-object v2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice;->answerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice;->isOtherType()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "value"

    .line 144
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice;->getOtherText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Error producing survey answer."

    const/4 v2, 0x0

    .line 148
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAnswerId()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice;->answerId:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice;->index:I

    return v0
.end method

.method public getOtherText()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice;->otherTextInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public isOtherType()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice;->isOtherType:Z

    return v0
.end method

.method public isValid(Z)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice;->isOtherType:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice;->getOtherText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ge p1, v0, :cond_0

    .line 106
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice;->otherTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v0, " "

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    return p1

    .line 109
    :cond_0
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice;->otherTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 164
    iget-boolean p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice;->isOtherType:Z

    if-eqz p1, :cond_0

    .line 165
    invoke-direct {p0, p2}, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice;->updateOtherState(Z)V

    .line 167
    :cond_0
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice;->onCheckChangedListener:Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice$OnCheckedChangeListener;

    if-eqz p1, :cond_1

    .line 168
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice;->onCheckChangedListener:Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice$OnCheckedChangeListener;

    invoke-interface {p1, p0, p2}, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice$OnCheckedChangeListener;->onCheckChanged(Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice;Z)V

    :cond_1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 134
    iget-boolean v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice;->isOtherType:Z

    if-eqz v0, :cond_0

    .line 135
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice;->updateOtherState(Z)V

    :cond_0
    return-void
.end method

.method public setOnCheckChangedListener(Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice$OnCheckedChangeListener;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice;->onCheckChangedListener:Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice$OnCheckedChangeListener;

    return-void
.end method

.method public setOnOtherTextChangedListener(Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice$OnOtherTextChangedListener;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice;->onOtherTextChangedListener:Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice$OnOtherTextChangedListener;

    return-void
.end method

.method public setOtherText(Ljava/lang/String;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice;->otherTextInput:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
