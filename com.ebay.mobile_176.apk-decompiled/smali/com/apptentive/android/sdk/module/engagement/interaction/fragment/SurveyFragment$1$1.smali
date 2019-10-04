.class Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment$1$1;
.super Lcom/apptentive/android/sdk/util/threading/DispatchTask;
.source "SurveyFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment$1;

.field final synthetic val$errorMessage:Ljava/lang/String;

.field final synthetic val$fragment:Landroidx/fragment/app/Fragment;


# direct methods
.method constructor <init>(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment$1;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment$1$1;->this$1:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment$1;

    iput-object p2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment$1$1;->val$fragment:Landroidx/fragment/app/Fragment;

    iput-object p3, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment$1$1;->val$errorMessage:Ljava/lang/String;

    invoke-direct {p0}, Lcom/apptentive/android/sdk/util/threading/DispatchTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 2

    .line 162
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 163
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment$1$1;->val$fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment$1$1;->val$errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
