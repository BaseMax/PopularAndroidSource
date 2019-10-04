.class Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment$2;
.super Ljava/lang/Object;
.source "SurveyFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment;


# direct methods
.method constructor <init>(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment$2;->this$0:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    .line 226
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 227
    iget-object v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment$2;->this$0:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment;

    invoke-virtual {v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment$2$1;

    invoke-direct {v2, p0, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment$2$1;-><init>(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment$2;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 240
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getInstance()Lcom/apptentive/android/sdk/ApptentiveInstance;

    move-result-object p1

    iget-object v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment$2;->this$0:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment;

    invoke-virtual {v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/apptentive/android/sdk/ApptentiveInstance;->showAboutInternal(Landroid/content/Context;Z)V

    return-void
.end method
