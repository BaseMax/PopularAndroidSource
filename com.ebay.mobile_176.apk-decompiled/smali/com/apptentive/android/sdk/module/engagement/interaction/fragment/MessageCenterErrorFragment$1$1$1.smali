.class Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterErrorFragment$1$1$1;
.super Lcom/apptentive/android/sdk/util/threading/DispatchTask;
.source "MessageCenterErrorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterErrorFragment$1$1;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterErrorFragment$1$1;


# direct methods
.method constructor <init>(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterErrorFragment$1$1;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterErrorFragment$1$1$1;->this$2:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterErrorFragment$1$1;

    invoke-direct {p0}, Lcom/apptentive/android/sdk/util/threading/DispatchTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterErrorFragment$1$1$1;->this$2:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterErrorFragment$1$1;

    iget-object v0, v0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterErrorFragment$1$1;->this$1:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterErrorFragment$1;

    iget-object v0, v0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterErrorFragment$1;->this$0:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterErrorFragment;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterErrorFragment;->transit()V

    return-void
.end method
