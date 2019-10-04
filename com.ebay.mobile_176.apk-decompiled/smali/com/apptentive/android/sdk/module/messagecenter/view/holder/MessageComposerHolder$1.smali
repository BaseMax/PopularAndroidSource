.class Lcom/apptentive/android/sdk/module/messagecenter/view/holder/MessageComposerHolder$1;
.super Ljava/lang/Object;
.source "MessageComposerHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/module/messagecenter/view/holder/MessageComposerHolder;->bindView(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;Lcom/apptentive/android/sdk/module/messagecenter/model/Composer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apptentive/android/sdk/module/messagecenter/view/holder/MessageComposerHolder;

.field final synthetic val$adapter:Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;

.field final synthetic val$composer:Lcom/apptentive/android/sdk/module/messagecenter/model/Composer;

.field final synthetic val$fragment:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;


# direct methods
.method constructor <init>(Lcom/apptentive/android/sdk/module/messagecenter/view/holder/MessageComposerHolder;Lcom/apptentive/android/sdk/module/messagecenter/model/Composer;Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/holder/MessageComposerHolder$1;->this$0:Lcom/apptentive/android/sdk/module/messagecenter/view/holder/MessageComposerHolder;

    iput-object p2, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/holder/MessageComposerHolder$1;->val$composer:Lcom/apptentive/android/sdk/module/messagecenter/model/Composer;

    iput-object p3, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/holder/MessageComposerHolder$1;->val$fragment:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;

    iput-object p4, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/holder/MessageComposerHolder$1;->val$adapter:Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 89
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/holder/MessageComposerHolder$1;->this$0:Lcom/apptentive/android/sdk/module/messagecenter/view/holder/MessageComposerHolder;

    iget-object p1, p1, Lcom/apptentive/android/sdk/module/messagecenter/view/holder/MessageComposerHolder;->message:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/holder/MessageComposerHolder$1;->this$0:Lcom/apptentive/android/sdk/module/messagecenter/view/holder/MessageComposerHolder;

    invoke-static {p1}, Lcom/apptentive/android/sdk/module/messagecenter/view/holder/MessageComposerHolder;->access$000(Lcom/apptentive/android/sdk/module/messagecenter/view/holder/MessageComposerHolder;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/holder/MessageComposerHolder$1;->val$adapter:Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;->getListener()Lcom/apptentive/android/sdk/module/messagecenter/OnListviewItemActionListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 97
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/holder/MessageComposerHolder$1;->val$adapter:Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;->getListener()Lcom/apptentive/android/sdk/module/messagecenter/OnListviewItemActionListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/apptentive/android/sdk/module/messagecenter/OnListviewItemActionListener;->onCancelComposing()V

    goto :goto_1

    .line 90
    :cond_1
    :goto_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "message"

    .line 91
    iget-object v1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/holder/MessageComposerHolder$1;->val$composer:Lcom/apptentive/android/sdk/module/messagecenter/model/Composer;

    iget-object v1, v1, Lcom/apptentive/android/sdk/module/messagecenter/model/Composer;->closeBody:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "positive"

    .line 92
    iget-object v1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/holder/MessageComposerHolder$1;->val$composer:Lcom/apptentive/android/sdk/module/messagecenter/model/Composer;

    iget-object v1, v1, Lcom/apptentive/android/sdk/module/messagecenter/model/Composer;->closeDiscard:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "negative"

    .line 93
    iget-object v1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/holder/MessageComposerHolder$1;->val$composer:Lcom/apptentive/android/sdk/module/messagecenter/model/Composer;

    iget-object v1, v1, Lcom/apptentive/android/sdk/module/messagecenter/model/Composer;->closeCancel:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/holder/MessageComposerHolder$1;->val$fragment:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;

    const/16 v1, 0x14

    invoke-static {v0, p1, v1}, Lcom/apptentive/android/sdk/view/ApptentiveAlertDialog;->show(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;I)V

    :cond_2
    :goto_1
    return-void
.end method
