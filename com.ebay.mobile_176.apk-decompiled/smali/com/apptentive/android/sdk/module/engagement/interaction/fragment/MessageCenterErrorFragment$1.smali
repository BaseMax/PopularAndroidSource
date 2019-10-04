.class Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterErrorFragment$1;
.super Lcom/apptentive/android/sdk/util/threading/DispatchTask;
.source "MessageCenterErrorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterErrorFragment;->onInteractionUpdated(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterErrorFragment;

.field final synthetic val$successful:Z


# direct methods
.method constructor <init>(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterErrorFragment;Z)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterErrorFragment$1;->this$0:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterErrorFragment;

    iput-boolean p2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterErrorFragment$1;->val$successful:Z

    invoke-direct {p0}, Lcom/apptentive/android/sdk/util/threading/DispatchTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 2

    .line 82
    iget-boolean v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterErrorFragment$1;->val$successful:Z

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterErrorFragment$1;->this$0:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterErrorFragment;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterErrorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 84
    new-instance v1, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterErrorFragment$1$1;

    invoke-direct {v1, p0, v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterErrorFragment$1$1;-><init>(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterErrorFragment$1;Landroid/app/Activity;)V

    invoke-static {v1}, Lcom/apptentive/android/sdk/ApptentiveHelper;->dispatchOnConversationQueue(Lcom/apptentive/android/sdk/util/threading/DispatchTask;)V

    goto :goto_0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterErrorFragment$1;->this$0:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterErrorFragment;

    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterErrorFragment;->access$000(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterErrorFragment;)V

    :goto_0
    return-void
.end method
