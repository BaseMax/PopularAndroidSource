.class Lcom/apptentive/android/sdk/module/messagecenter/view/holder/MessageComposerHolder$5;
.super Ljava/lang/Object;
.source "MessageComposerHolder.java"

# interfaces
.implements Lcom/apptentive/android/sdk/util/image/ApptentiveImageGridView$ImageItemClickedListener;


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


# direct methods
.method constructor <init>(Lcom/apptentive/android/sdk/module/messagecenter/view/holder/MessageComposerHolder;Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/holder/MessageComposerHolder$5;->this$0:Lcom/apptentive/android/sdk/module/messagecenter/view/holder/MessageComposerHolder;

    iput-object p2, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/holder/MessageComposerHolder$5;->val$adapter:Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(ILcom/apptentive/android/sdk/util/image/ImageItem;)V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/holder/MessageComposerHolder$5;->val$adapter:Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;->getListener()Lcom/apptentive/android/sdk/module/messagecenter/OnListviewItemActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/holder/MessageComposerHolder$5;->val$adapter:Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;->getListener()Lcom/apptentive/android/sdk/module/messagecenter/OnListviewItemActionListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/apptentive/android/sdk/module/messagecenter/OnListviewItemActionListener;->onClickAttachment(ILcom/apptentive/android/sdk/util/image/ImageItem;)V

    :cond_0
    return-void
.end method
