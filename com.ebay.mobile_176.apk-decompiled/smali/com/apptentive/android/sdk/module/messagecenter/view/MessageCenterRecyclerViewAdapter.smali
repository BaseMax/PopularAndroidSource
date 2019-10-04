.class public Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MessageCenterRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter$UpdateUnreadMessageTask;
    }
.end annotation


# instance fields
.field fragment:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;

.field interaction:Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;

.field listItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apptentive/android/sdk/module/messagecenter/model/MessageCenterListItem;",
            ">;"
        }
    .end annotation
.end field

.field listener:Lcom/apptentive/android/sdk/module/messagecenter/OnListviewItemActionListener;

.field private messagesWithPendingReadStatusUpdate:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/apptentive/android/sdk/model/ApptentiveMessage;",
            ">;"
        }
    .end annotation
.end field

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;Lcom/apptentive/android/sdk/module/messagecenter/OnListviewItemActionListener;Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;",
            "Lcom/apptentive/android/sdk/module/messagecenter/OnListviewItemActionListener;",
            "Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;",
            "Ljava/util/List<",
            "Lcom/apptentive/android/sdk/module/messagecenter/model/MessageCenterListItem;",
            ">;)V"
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;->messagesWithPendingReadStatusUpdate:Ljava/util/ArrayList;

    .line 74
    iput-object p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;->fragment:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;

    .line 75
    iput-object p2, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;->listener:Lcom/apptentive/android/sdk/module/messagecenter/OnListviewItemActionListener;

    .line 76
    iput-object p3, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;->interaction:Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;

    .line 77
    iput-object p4, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;->listItems:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;Ljava/lang/Exception;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;->logException(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$100(Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;->messagesWithPendingReadStatusUpdate:Ljava/util/ArrayList;

    return-object p0
.end method

.method private logException(Ljava/lang/Exception;)V
    .locals 0

    .line 296
    invoke-static {p1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method private startUpdateUnreadMessageTask(Lcom/apptentive/android/sdk/model/CompoundMessage;)V
    .locals 4

    .line 245
    new-instance v0, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter$UpdateUnreadMessageTask;

    invoke-direct {v0, p0, p1}, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter$UpdateUnreadMessageTask;-><init>(Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;Lcom/apptentive/android/sdk/model/ApptentiveMessage;)V

    .line 246
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/apptentive/android/sdk/model/ApptentiveMessage;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter$UpdateUnreadMessageTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public addImagestoComposer(Lcom/apptentive/android/sdk/module/messagecenter/view/holder/MessageComposerHolder;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apptentive/android/sdk/module/messagecenter/view/holder/MessageComposerHolder;",
            "Ljava/util/List<",
            "Lcom/apptentive/android/sdk/util/image/ImageItem;",
            ">;)V"
        }
    .end annotation

    .line 229
    invoke-virtual {p1, p2}, Lcom/apptentive/android/sdk/module/messagecenter/view/holder/MessageComposerHolder;->addImagesToImageAttachmentBand(Ljava/util/List;)V

    .line 230
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/module/messagecenter/view/holder/MessageComposerHolder;->setSendButtonState()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;->listItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;->listItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apptentive/android/sdk/module/messagecenter/model/MessageCenterListItem;

    .line 221
    invoke-interface {p1}, Lcom/apptentive/android/sdk/module/messagecenter/model/MessageCenterListItem;->getListItemType()I

    move-result p1

    return p1
.end method

.method public getListener()Lcom/apptentive/android/sdk/module/messagecenter/OnListviewItemActionListener;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;->listener:Lcom/apptentive/android/sdk/module/messagecenter/OnListviewItemActionListener;

    return-object v0
.end method

.method public getWhoCardAvatarFileName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 82
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 83
    iput-object p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    const/4 v0, 0x0

    .line 137
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;->getItemViewType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 186
    :pswitch_0
    iget-object v1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;->listItems:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/apptentive/android/sdk/module/messagecenter/model/WhoCard;

    .line 187
    check-cast p1, Lcom/apptentive/android/sdk/module/messagecenter/view/holder/WhoCardHolder;

    .line 188
    iget-object v1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1, p2}, Lcom/apptentive/android/sdk/module/messagecenter/view/holder/WhoCardHolder;->bindView(Landroidx/recyclerview/widget/RecyclerView;Lcom/apptentive/android/sdk/module/messagecenter/model/WhoCard;)V

    goto/16 :goto_0

    .line 139
    :pswitch_1
    iget-object v1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;->listItems:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/apptentive/android/sdk/module/messagecenter/model/Composer;

    .line 140
    check-cast p1, Lcom/apptentive/android/sdk/module/messagecenter/view/holder/MessageComposerHolder;

    .line 141
    iget-object v1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;->fragment:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;

    invoke-virtual {p1, v1, p0, p2}, Lcom/apptentive/android/sdk/module/messagecenter/view/holder/MessageComposerHolder;->bindView(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;Lcom/apptentive/android/sdk/module/messagecenter/model/Composer;)V

    goto/16 :goto_0

    .line 163
    :pswitch_2
    iget-object v1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;->listItems:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/apptentive/android/sdk/model/CompoundMessage;

    .line 164
    check-cast p1, Lcom/apptentive/android/sdk/module/messagecenter/view/holder/IncomingCompoundMessageHolder;

    .line 165
    iget-object v1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;->fragment:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;

    iget-object v2, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1, v2, p0, p2}, Lcom/apptentive/android/sdk/module/messagecenter/view/holder/IncomingCompoundMessageHolder;->bindView(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;Landroidx/recyclerview/widget/RecyclerView;Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;Lcom/apptentive/android/sdk/model/CompoundMessage;)V

    .line 167
    invoke-virtual {p2}, Lcom/apptentive/android/sdk/model/CompoundMessage;->isRead()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;->messagesWithPendingReadStatusUpdate:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 168
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;->messagesWithPendingReadStatusUpdate:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    invoke-direct {p0, p2}, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;->startUpdateUnreadMessageTask(Lcom/apptentive/android/sdk/model/CompoundMessage;)V

    goto/16 :goto_0

    .line 174
    :pswitch_3
    iget-object v1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;->listItems:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/apptentive/android/sdk/model/CompoundMessage;

    .line 175
    check-cast p1, Lcom/apptentive/android/sdk/module/messagecenter/view/holder/OutgoingCompoundMessageHolder;

    .line 176
    iget-object v1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;->fragment:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;

    iget-object v2, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1, v2, p0, p2}, Lcom/apptentive/android/sdk/module/messagecenter/view/holder/OutgoingCompoundMessageHolder;->bindView(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;Landroidx/recyclerview/widget/RecyclerView;Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;Lcom/apptentive/android/sdk/model/CompoundMessage;)V

    goto :goto_0

    .line 180
    :pswitch_4
    iget-object v1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;->listItems:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/apptentive/android/sdk/model/CompoundMessage;

    .line 181
    check-cast p1, Lcom/apptentive/android/sdk/module/messagecenter/view/holder/AutomatedMessageHolder;

    .line 182
    iget-object v1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1, p2}, Lcom/apptentive/android/sdk/module/messagecenter/view/holder/AutomatedMessageHolder;->bindView(Landroidx/recyclerview/widget/RecyclerView;Lcom/apptentive/android/sdk/model/CompoundMessage;)V

    goto :goto_0

    .line 192
    :pswitch_5
    iget-object v1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;->listItems:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/apptentive/android/sdk/module/messagecenter/model/ContextMessage;

    .line 193
    check-cast p1, Lcom/apptentive/android/sdk/module/messagecenter/view/holder/ContextMessageHolder;

    .line 194
    invoke-virtual {p1, p2}, Lcom/apptentive/android/sdk/module/messagecenter/view/holder/ContextMessageHolder;->bindView(Lcom/apptentive/android/sdk/module/messagecenter/model/ContextMessage;)V

    goto :goto_0

    .line 145
    :pswitch_6
    iget-object v1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;->listItems:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/apptentive/android/sdk/module/messagecenter/model/MessageCenterStatus;

    .line 146
    check-cast p1, Lcom/apptentive/android/sdk/module/messagecenter/view/holder/StatusHolder;

    .line 147
    iget-object v1, p1, Lcom/apptentive/android/sdk/module/messagecenter/view/holder/StatusHolder;->body:Landroid/widget/TextView;

    iget-object v2, p2, Lcom/apptentive/android/sdk/module/messagecenter/model/MessageCenterStatus;->body:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v1, p2, Lcom/apptentive/android/sdk/module/messagecenter/model/MessageCenterStatus;->icon:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, p1, Lcom/apptentive/android/sdk/module/messagecenter/view/holder/StatusHolder;->icon:Landroid/widget/ImageView;

    iget-object p2, p2, Lcom/apptentive/android/sdk/module/messagecenter/model/MessageCenterStatus;->icon:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 150
    iget-object p1, p1, Lcom/apptentive/android/sdk/module/messagecenter/view/holder/StatusHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 152
    :cond_0
    iget-object p1, p1, Lcom/apptentive/android/sdk/module/messagecenter/view/holder/StatusHolder;->icon:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 157
    :pswitch_7
    iget-object v1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;->listItems:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/apptentive/android/sdk/module/messagecenter/model/MessageCenterGreeting;

    .line 158
    check-cast p1, Lcom/apptentive/android/sdk/module/messagecenter/view/holder/GreetingHolder;

    .line 159
    invoke-virtual {p1, p2}, Lcom/apptentive/android/sdk/module/messagecenter/view/holder/GreetingHolder;->bindView(Lcom/apptentive/android/sdk/module/messagecenter/model/MessageCenterGreeting;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Exception while binding view holder"

    .line 199
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;->logException(Ljava/lang/Exception;)V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    .line 130
    sget-object p1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->MESSAGES:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "onCreateViewHolder(%d) returning null."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v0

    invoke-static {p1, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->w(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    .line 120
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 121
    sget v1, Lcom/apptentive/android/sdk/R$layout;->apptentive_message_center_who_card:I

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 122
    new-instance p2, Lcom/apptentive/android/sdk/module/messagecenter/view/holder/WhoCardHolder;

    invoke-direct {p2, p0, p1}, Lcom/apptentive/android/sdk/module/messagecenter/view/holder/WhoCardHolder;-><init>(Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;Landroid/view/View;)V

    return-object p2

    .line 90
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 91
    sget v1, Lcom/apptentive/android/sdk/R$layout;->apptentive_message_center_composer:I

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 92
    new-instance p2, Lcom/apptentive/android/sdk/module/messagecenter/view/holder/MessageComposerHolder;

    invoke-direct {p2, p1}, Lcom/apptentive/android/sdk/module/messagecenter/view/holder/MessageComposerHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 110
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 111
    sget v1, Lcom/apptentive/android/sdk/R$layout;->apptentive_message_incoming:I

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 112
    new-instance p2, Lcom/apptentive/android/sdk/module/messagecenter/view/holder/IncomingCompoundMessageHolder;

    invoke-direct {p2, p1}, Lcom/apptentive/android/sdk/module/messagecenter/view/holder/IncomingCompoundMessageHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 105
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 106
    sget v1, Lcom/apptentive/android/sdk/R$layout;->apptentive_message_outgoing:I

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 107
    new-instance p2, Lcom/apptentive/android/sdk/module/messagecenter/view/holder/OutgoingCompoundMessageHolder;

    invoke-direct {p2, p1}, Lcom/apptentive/android/sdk/module/messagecenter/view/holder/OutgoingCompoundMessageHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 115
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 116
    sget v1, Lcom/apptentive/android/sdk/R$layout;->apptentive_message_auto:I

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 117
    new-instance p2, Lcom/apptentive/android/sdk/module/messagecenter/view/holder/AutomatedMessageHolder;

    invoke-direct {p2, p1}, Lcom/apptentive/android/sdk/module/messagecenter/view/holder/AutomatedMessageHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 125
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 126
    sget v1, Lcom/apptentive/android/sdk/R$layout;->apptentive_message_center_context_message:I

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 127
    new-instance p2, Lcom/apptentive/android/sdk/module/messagecenter/view/holder/ContextMessageHolder;

    invoke-direct {p2, p1}, Lcom/apptentive/android/sdk/module/messagecenter/view/holder/ContextMessageHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 95
    :pswitch_6
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 96
    sget v1, Lcom/apptentive/android/sdk/R$layout;->apptentive_message_center_status:I

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 97
    new-instance p2, Lcom/apptentive/android/sdk/module/messagecenter/view/holder/StatusHolder;

    invoke-direct {p2, p1}, Lcom/apptentive/android/sdk/module/messagecenter/view/holder/StatusHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 100
    :pswitch_7
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 101
    sget v1, Lcom/apptentive/android/sdk/R$layout;->apptentive_message_center_greeting:I

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 102
    new-instance p2, Lcom/apptentive/android/sdk/module/messagecenter/view/holder/GreetingHolder;

    invoke-direct {p2, p1}, Lcom/apptentive/android/sdk/module/messagecenter/view/holder/GreetingHolder;-><init>(Landroid/view/View;)V

    return-object p2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 206
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 207
    instance-of v0, p1, Lcom/apptentive/android/sdk/module/messagecenter/view/holder/MessageComposerHolder;

    if-eqz v0, :cond_0

    .line 208
    check-cast p1, Lcom/apptentive/android/sdk/module/messagecenter/view/holder/MessageComposerHolder;

    .line 209
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/module/messagecenter/view/holder/MessageComposerHolder;->onViewAttachedToWindow()V

    :cond_0
    return-void
.end method

.method public removeImageFromComposer(Lcom/apptentive/android/sdk/module/messagecenter/view/holder/MessageComposerHolder;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 235
    invoke-virtual {p1, p2}, Lcom/apptentive/android/sdk/module/messagecenter/view/holder/MessageComposerHolder;->removeImageFromImageAttachmentBand(I)V

    .line 236
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/module/messagecenter/view/holder/MessageComposerHolder;->setSendButtonState()V

    :cond_0
    return-void
.end method
