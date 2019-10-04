.class Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment$1;
.super Ljava/lang/Object;
.source "SurveyFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment;

.field final synthetic val$inflater:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment;Landroid/view/LayoutInflater;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment$1;->this$0:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment;

    iput-object p2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment$1;->val$inflater:Landroid/view/LayoutInflater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 110
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment$1;->this$0:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/apptentive/android/sdk/util/Util;->hideSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 111
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment$1;->this$0:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment;->validateAndUpdateState()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 113
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment$1;->this$0:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment;

    iget-object p1, p1, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment;->interaction:Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;

    check-cast p1, Lcom/apptentive/android/sdk/module/engagement/interaction/model/SurveyInteraction;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/SurveyInteraction;->isShowSuccessMessage()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment$1;->this$0:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment;

    iget-object p1, p1, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment;->interaction:Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;

    check-cast p1, Lcom/apptentive/android/sdk/module/engagement/interaction/model/SurveyInteraction;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/SurveyInteraction;->getSuccessMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 114
    new-instance p1, Landroid/widget/Toast;

    iget-object v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment$1;->this$0:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment;

    invoke-virtual {v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x77

    .line 115
    invoke-virtual {p1, v1, v0, v0}, Landroid/widget/Toast;->setGravity(III)V

    .line 116
    invoke-virtual {p1, v0}, Landroid/widget/Toast;->setDuration(I)V

    .line 117
    iget-object v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment$1;->val$inflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/apptentive/android/sdk/R$layout;->apptentive_survey_sent_toast:I

    iget-object v3, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment$1;->this$0:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment;

    invoke-virtual {v3}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment;->getView()Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/apptentive/android/sdk/R$id;->survey_sent_toast_root:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 118
    invoke-virtual {p1, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 119
    sget v2, Lcom/apptentive/android/sdk/R$id;->survey_sent_action_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 120
    iget-object v3, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment$1;->this$0:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment;

    iget-object v3, v3, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment;->interaction:Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;

    check-cast v3, Lcom/apptentive/android/sdk/module/engagement/interaction/model/SurveyInteraction;

    invoke-virtual {v3}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/SurveyInteraction;->getSuccessMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v3, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment$1;->this$0:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment;

    invoke-virtual {v3}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/apptentive/android/sdk/R$attr;->apptentiveSurveySentToastActionColor:I

    invoke-static {v3, v4}, Lcom/apptentive/android/sdk/util/Util;->getThemeColor(Landroid/content/Context;I)I

    move-result v3

    if-eqz v3, :cond_0

    .line 123
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 124
    sget v2, Lcom/apptentive/android/sdk/R$id;->survey_sent_action_icon:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 125
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 127
    :cond_0
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 129
    :cond_1
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment$1;->this$0:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 131
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment$1;->this$0:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment;

    const-string/jumbo v1, "submit"

    invoke-virtual {p1, v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment;->engageInternal(Ljava/lang/String;)V

    .line 133
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment$1;->this$0:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment;->getConversation()Lcom/apptentive/android/sdk/conversation/ConversationProxy;

    move-result-object p1

    new-instance v1, Lcom/apptentive/android/sdk/model/SurveyResponsePayload;

    iget-object v2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment$1;->this$0:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment;

    iget-object v2, v2, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment;->interaction:Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;

    check-cast v2, Lcom/apptentive/android/sdk/module/engagement/interaction/model/SurveyInteraction;

    iget-object v3, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment$1;->this$0:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment;

    invoke-static {v3}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment;->access$000(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/apptentive/android/sdk/model/SurveyResponsePayload;-><init>(Lcom/apptentive/android/sdk/module/engagement/interaction/model/SurveyInteraction;Ljava/util/Map;)V

    invoke-virtual {p1, v1}, Lcom/apptentive/android/sdk/conversation/ConversationProxy;->addPayload(Lcom/apptentive/android/sdk/model/SurveyResponsePayload;)V

    const-string p1, "Survey Submitted."

    .line 134
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/apptentive/android/sdk/ApptentiveLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment$1;->this$0:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment;->access$100(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment;Z)V

    goto/16 :goto_0

    .line 137
    :cond_2
    new-instance p1, Landroid/widget/Toast;

    iget-object v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment$1;->this$0:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment;

    invoke-virtual {v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x57

    .line 138
    invoke-virtual {p1, v1, v0, v0}, Landroid/widget/Toast;->setGravity(III)V

    .line 139
    invoke-virtual {p1, v0}, Landroid/widget/Toast;->setDuration(I)V

    .line 140
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment$1;->val$inflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/apptentive/android/sdk/R$layout;->apptentive_survey_invalid_toast:I

    iget-object v2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment$1;->this$0:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment;

    invoke-virtual {v2}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/apptentive/android/sdk/R$id;->survey_invalid_toast_root:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 141
    invoke-virtual {p1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 142
    iget-object v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment$1;->this$0:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment;

    iget-object v1, v1, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment;->interaction:Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;

    check-cast v1, Lcom/apptentive/android/sdk/module/engagement/interaction/model/SurveyInteraction;

    invoke-virtual {v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/SurveyInteraction;->getValidationError()Ljava/lang/String;

    move-result-object v1

    .line 143
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 144
    sget v2, Lcom/apptentive/android/sdk/R$id;->survey_invalid_toast_text:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    :cond_3
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 149
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment$1;->this$0:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment;

    invoke-static {p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment;->access$200(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    const-string v0, "Expected to have a scroll pos"

    .line 150
    invoke-static {p1, v0}, Lcom/apptentive/android/sdk/debug/Assert;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    .line 152
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment$1;->this$0:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment;

    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment;->access$300(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment;)Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->scrollToChild(Landroid/view/View;)V

    .line 154
    instance-of v0, p1, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionView;

    if-eqz v0, :cond_4

    .line 155
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 157
    move-object v0, p1

    check-cast v0, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionView;

    invoke-interface {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionView;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-static {v0}, Lcom/apptentive/android/sdk/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 159
    invoke-static {}, Lcom/apptentive/android/sdk/util/threading/DispatchQueue;->mainQueue()Lcom/apptentive/android/sdk/util/threading/DispatchQueue;

    move-result-object v1

    new-instance v2, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment$1$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment$1$1;-><init>(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment$1;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    const-wide/16 v3, 0x5dc

    invoke-virtual {v1, v2, v3, v4}, Lcom/apptentive/android/sdk/util/threading/DispatchQueue;->dispatchAsync(Lcom/apptentive/android/sdk/util/threading/DispatchTask;J)V

    :cond_4
    :goto_0
    return-void
.end method
