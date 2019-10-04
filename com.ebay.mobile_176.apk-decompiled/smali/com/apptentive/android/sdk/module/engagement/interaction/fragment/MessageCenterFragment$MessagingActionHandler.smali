.class Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;
.super Landroid/os/Handler;
.source "MessageCenterFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessagingActionHandler"
.end annotation


# instance fields
.field private final messageCenterFragmentWeakReference:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)V
    .locals 1

    .line 1370
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1371
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;->messageCenterFragmentWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private sendMessage(Lcom/apptentive/android/sdk/model/ApptentiveMessage;)V
    .locals 1

    .line 1623
    new-instance v0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler$1;

    invoke-direct {v0, p0, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler$1;-><init>(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;Lcom/apptentive/android/sdk/model/ApptentiveMessage;)V

    const-string/jumbo p1, "send message"

    invoke-static {v0, p1}, Lcom/apptentive/android/sdk/ApptentiveHelper;->dispatchConversationTask(Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 1375
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;->messageCenterFragmentWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;

    if-eqz v0, :cond_e

    .line 1380
    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->access$600(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_9

    .line 1383
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x8

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_8

    .line 1614
    :pswitch_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 1615
    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->access$1200(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1616
    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->access$600(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;

    move-result-object v1

    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->access$1300(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)Lcom/apptentive/android/sdk/module/messagecenter/view/holder/MessageComposerHolder;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;->removeImageFromComposer(Lcom/apptentive/android/sdk/module/messagecenter/view/holder/MessageComposerHolder;I)V

    goto/16 :goto_8

    .line 1597
    :pswitch_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 1599
    sget v1, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager;->SEND_PAUSE_REASON_NETWORK:I

    if-ne p1, v1, :cond_1

    .line 1600
    iget-object p1, v0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->interaction:Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;

    check-cast p1, Lcom/apptentive/android/sdk/module/engagement/interaction/model/MessageCenterInteraction;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/MessageCenterInteraction;->getErrorStatusNetwork()Lcom/apptentive/android/sdk/module/messagecenter/model/MessageCenterStatus;

    move-result-object v4

    const-string p1, "message_network_error"

    .line 1601
    invoke-virtual {v0, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->engageInternal(Ljava/lang/String;)V

    goto :goto_0

    .line 1602
    :cond_1
    sget v1, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager;->SEND_PAUSE_REASON_SERVER:I

    if-ne p1, v1, :cond_2

    .line 1603
    iget-object p1, v0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->interaction:Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;

    check-cast p1, Lcom/apptentive/android/sdk/module/engagement/interaction/model/MessageCenterInteraction;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/MessageCenterInteraction;->getErrorStatusServer()Lcom/apptentive/android/sdk/module/messagecenter/model/MessageCenterStatus;

    move-result-object v4

    const-string p1, "message_http_error"

    .line 1604
    invoke-virtual {v0, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->engageInternal(Ljava/lang/String;)V

    :cond_2
    :goto_0
    if-eqz v4, :cond_d

    const-string/jumbo p1, "status"

    .line 1607
    invoke-virtual {v0, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->engageInternal(Ljava/lang/String;)V

    .line 1608
    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->access$700(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1609
    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->access$600(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;

    move-result-object p1

    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->access$700(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v6

    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;->notifyItemInserted(I)V

    goto/16 :goto_8

    .line 1592
    :pswitch_2
    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->access$700(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v1, v0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->interaction:Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;

    check-cast v1, Lcom/apptentive/android/sdk/module/engagement/interaction/model/MessageCenterInteraction;

    invoke-virtual {v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/MessageCenterInteraction;->getGreeting()Lcom/apptentive/android/sdk/module/messagecenter/model/MessageCenterGreeting;

    move-result-object v1

    invoke-virtual {p1, v5, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1593
    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->access$600(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;->notifyItemInserted(I)V

    goto/16 :goto_8

    .line 1586
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/apptentive/android/sdk/module/messagecenter/model/ContextMessage;

    .line 1587
    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->access$700(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1588
    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->access$600(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;

    move-result-object p1

    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->access$700(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v6

    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;->notifyItemInserted(I)V

    goto/16 :goto_8

    .line 1395
    :pswitch_4
    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->access$700(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    .line 1396
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1397
    invoke-interface {p1}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    .line 1398
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/apptentive/android/sdk/module/messagecenter/model/MessageCenterListItem;

    .line 1399
    invoke-interface {v3}, Lcom/apptentive/android/sdk/module/messagecenter/model/MessageCenterListItem;->getListItemType()I

    move-result v3

    if-ne v3, v2, :cond_3

    .line 1400
    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    .line 1401
    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->access$600(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;->notifyItemRemoved(I)V

    goto :goto_1

    .line 1552
    :pswitch_5
    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->access$700(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1554
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_d

    .line 1555
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v6

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apptentive/android/sdk/module/messagecenter/model/MessageCenterListItem;

    if-eqz v1, :cond_d

    .line 1556
    invoke-interface {v1}, Lcom/apptentive/android/sdk/module/messagecenter/model/MessageCenterListItem;->getListItemType()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_d

    .line 1557
    check-cast v1, Lcom/apptentive/android/sdk/model/ApptentiveMessage;

    .line 1558
    invoke-virtual {v1}, Lcom/apptentive/android/sdk/model/ApptentiveMessage;->isOutgoingMessage()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1559
    invoke-virtual {v1}, Lcom/apptentive/android/sdk/model/ApptentiveMessage;->getCreatedAt()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 1560
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmpl-double v1, v1, v3

    if-lez v1, :cond_d

    .line 1561
    iget-object v1, v0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->interaction:Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;

    check-cast v1, Lcom/apptentive/android/sdk/module/engagement/interaction/model/MessageCenterInteraction;

    invoke-virtual {v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/MessageCenterInteraction;->getRegularStatus()Lcom/apptentive/android/sdk/module/messagecenter/model/MessageCenterStatus;

    move-result-object v1

    if-eqz v1, :cond_d

    const-string/jumbo v2, "status"

    .line 1563
    invoke-virtual {v0, v2}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->engageInternal(Ljava/lang/String;)V

    .line 1565
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1566
    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->access$600(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v6

    invoke-virtual {v0, p1}, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;->notifyItemInserted(I)V

    goto/16 :goto_8

    .line 1575
    :pswitch_6
    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->access$700(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1576
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v5, v1, :cond_d

    .line 1577
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apptentive/android/sdk/module/messagecenter/model/MessageCenterListItem;

    .line 1578
    invoke-interface {v1}, Lcom/apptentive/android/sdk/module/messagecenter/model/MessageCenterListItem;->getListItemType()I

    move-result v1

    if-ne v1, v3, :cond_4

    .line 1579
    invoke-interface {p1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1580
    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->access$600(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;->notifyItemRemoved(I)V

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1542
    :goto_3
    :pswitch_7
    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->access$700(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v5, p1, :cond_d

    .line 1543
    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->access$700(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apptentive/android/sdk/module/messagecenter/model/MessageCenterListItem;

    .line 1544
    invoke-interface {p1}, Lcom/apptentive/android/sdk/module/messagecenter/model/MessageCenterListItem;->getListItemType()I

    move-result p1

    const/4 v1, 0x7

    if-ne p1, v1, :cond_5

    .line 1545
    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->access$700(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1546
    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->access$600(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;->notifyItemRemoved(I)V

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1492
    :pswitch_8
    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->access$700(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    .line 1493
    :cond_6
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1494
    invoke-interface {p1}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    .line 1495
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apptentive/android/sdk/module/messagecenter/model/MessageCenterListItem;

    .line 1496
    invoke-interface {v2}, Lcom/apptentive/android/sdk/module/messagecenter/model/MessageCenterListItem;->getListItemType()I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_6

    .line 1497
    move-object v4, v2

    check-cast v4, Lcom/apptentive/android/sdk/module/messagecenter/model/ContextMessage;

    .line 1498
    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    .line 1499
    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->access$600(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;->notifyItemRemoved(I)V

    :cond_7
    if-eqz v4, :cond_d

    .line 1506
    new-instance p1, Lcom/apptentive/android/sdk/model/CompoundMessage;

    invoke-direct {p1}, Lcom/apptentive/android/sdk/model/CompoundMessage;-><init>()V

    .line 1507
    invoke-virtual {v4}, Lcom/apptentive/android/sdk/module/messagecenter/model/ContextMessage;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/apptentive/android/sdk/model/CompoundMessage;->setBody(Ljava/lang/String;)V

    .line 1508
    invoke-virtual {p1, v6}, Lcom/apptentive/android/sdk/model/CompoundMessage;->setAutomated(Z)V

    .line 1509
    invoke-virtual {p1, v6}, Lcom/apptentive/android/sdk/model/CompoundMessage;->setRead(Z)V

    .line 1512
    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->access$908(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)I

    .line 1513
    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->access$700(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1514
    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->access$600(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;

    move-result-object v1

    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->access$700(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v6

    invoke-virtual {v1, v0}, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;->notifyItemInserted(I)V

    .line 1517
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;->sendMessage(Lcom/apptentive/android/sdk/model/ApptentiveMessage;)V

    goto/16 :goto_8

    :pswitch_9
    const-string p1, "compose_open"

    .line 1407
    invoke-virtual {v0, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->engageInternal(Ljava/lang/String;)V

    .line 1408
    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->access$700(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v1, v0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->interaction:Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;

    check-cast v1, Lcom/apptentive/android/sdk/module/engagement/interaction/model/MessageCenterInteraction;

    invoke-virtual {v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/MessageCenterInteraction;->getComposer()Lcom/apptentive/android/sdk/module/messagecenter/model/Composer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1409
    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->access$600(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;

    move-result-object p1

    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->access$700(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v6

    invoke-virtual {p1, v1}, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;->notifyItemInserted(I)V

    .line 1410
    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->access$800(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerView;

    move-result-object p1

    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->access$700(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v6

    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerView;->setSelection(I)V

    goto/16 :goto_8

    .line 1386
    :pswitch_a
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-nez p1, :cond_8

    const/4 v5, 0x1

    .line 1387
    :cond_8
    iget-object p1, v0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->interaction:Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;

    check-cast p1, Lcom/apptentive/android/sdk/module/engagement/interaction/model/MessageCenterInteraction;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/MessageCenterInteraction;->getWhoCard()Lcom/apptentive/android/sdk/module/messagecenter/model/WhoCard;

    move-result-object p1

    .line 1388
    invoke-virtual {p1, v5}, Lcom/apptentive/android/sdk/module/messagecenter/model/WhoCard;->setInitial(Z)V

    .line 1389
    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->access$700(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1390
    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->access$600(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;

    move-result-object p1

    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->access$700(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v6

    invoke-virtual {p1, v1}, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;->notifyItemInserted(I)V

    .line 1391
    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->access$800(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerView;

    move-result-object p1

    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->access$700(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v6

    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerView;->setSelection(I)V

    goto/16 :goto_8

    .line 1414
    :pswitch_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/apptentive/android/sdk/model/ApptentiveMessage;

    .line 1415
    invoke-virtual {v0, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->displayNewIncomingMessageItem(Lcom/apptentive/android/sdk/model/ApptentiveMessage;)V

    goto/16 :goto_8

    .line 1533
    :pswitch_c
    invoke-virtual {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->isPaused()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 1534
    invoke-virtual {v0, v5}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->setPaused(Z)V

    .line 1535
    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->access$900(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)I

    move-result p1

    if-lez p1, :cond_d

    .line 1536
    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->access$300(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;

    move-result-object p1

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_8

    .line 1522
    :pswitch_d
    invoke-virtual {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->isPaused()Z

    move-result v1

    if-nez v1, :cond_d

    .line 1523
    invoke-virtual {v0, v6}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->setPaused(Z)V

    .line 1524
    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->access$900(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)I

    move-result v1

    if-lez v1, :cond_d

    .line 1525
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 1526
    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->access$300(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v1, v2, p1, v5}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 1527
    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->access$300(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_8

    .line 1466
    :pswitch_e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/apptentive/android/sdk/model/CompoundMessage;

    .line 1467
    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->access$700(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1468
    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->access$600(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;

    move-result-object v1

    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->access$700(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v6

    invoke-virtual {v1, v2}, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;->notifyItemInserted(I)V

    .line 1469
    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->access$908(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)I

    .line 1470
    invoke-virtual {v0, v5}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->setPaused(Z)V

    .line 1472
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;->sendMessage(Lcom/apptentive/android/sdk/model/ApptentiveMessage;)V

    .line 1475
    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->access$1100(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, v0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->interaction:Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;

    check-cast p1, Lcom/apptentive/android/sdk/module/engagement/interaction/model/MessageCenterInteraction;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/MessageCenterInteraction;->getWhoCardRequestEnabled()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 1476
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v1, "required"

    .line 1478
    iget-object v2, v0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->interaction:Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;

    check-cast v2, Lcom/apptentive/android/sdk/module/engagement/interaction/model/MessageCenterInteraction;

    invoke-virtual {v2}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/MessageCenterInteraction;->getWhoCardRequired()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v1, "trigger"

    const-string v2, "automatic"

    .line 1479
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    .line 1481
    invoke-static {v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->logException(Ljava/lang/Exception;)V

    :goto_4
    const-string v1, "profile_open"

    .line 1483
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->engageInternal(Ljava/lang/String;Ljava/lang/String;)V

    .line 1484
    invoke-static {v0, v6}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->access$402(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;Z)Z

    .line 1485
    invoke-virtual {v0, v6}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->addWhoCard(Z)V

    goto/16 :goto_8

    .line 1431
    :pswitch_f
    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->access$910(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)I

    .line 1432
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/apptentive/android/sdk/model/ApptentiveMessage;

    const/4 v1, 0x0

    .line 1434
    :goto_5
    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->access$700(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_a

    .line 1435
    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->access$700(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/apptentive/android/sdk/module/messagecenter/model/MessageCenterListItem;

    .line 1436
    instance-of v7, v4, Lcom/apptentive/android/sdk/model/ApptentiveMessage;

    if-eqz v7, :cond_9

    .line 1437
    check-cast v4, Lcom/apptentive/android/sdk/model/ApptentiveMessage;

    invoke-virtual {v4}, Lcom/apptentive/android/sdk/model/ApptentiveMessage;->getNonce()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 1439
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/model/ApptentiveMessage;->getNonce()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 1440
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1441
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/model/ApptentiveMessage;->getCreatedAt()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/apptentive/android/sdk/model/ApptentiveMessage;->setCreatedAt(Ljava/lang/Double;)V

    .line 1442
    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->access$600(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;->notifyItemChanged(I)V

    goto :goto_6

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1449
    :cond_a
    :goto_6
    invoke-virtual {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->updateMessageSentStates()V

    .line 1450
    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->access$1000(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)V

    .line 1453
    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->access$800(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerView;->getFirstVisiblePosition()I

    move-result p1

    .line 1454
    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->access$800(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerView;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_b

    goto :goto_7

    .line 1455
    :cond_b
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    .line 1458
    :goto_7
    invoke-virtual {v0, v2}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->recyclerViewContainsItemOfType(I)Z

    move-result v0

    const-wide/16 v1, 0xc8

    if-eqz v0, :cond_c

    .line 1459
    invoke-virtual {p0, v6, v1, v2}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_8

    .line 1461
    :cond_c
    invoke-virtual {p0, v3, p1, v5}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v1, v2}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_8

    .line 1424
    :pswitch_10
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1425
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 1426
    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->access$800(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerView;->setSelectionFromTop(II)V

    goto :goto_8

    .line 1419
    :pswitch_11
    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->access$800(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerView;

    move-result-object p1

    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->access$700(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v6

    invoke-virtual {p1, v1}, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerView;->setSelection(I)V

    .line 1420
    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->access$800(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerView;

    move-result-object p1

    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->access$700(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v6

    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerView;->scrollToPosition(I)V

    :cond_d
    :goto_8
    return-void

    :cond_e
    :goto_9
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
