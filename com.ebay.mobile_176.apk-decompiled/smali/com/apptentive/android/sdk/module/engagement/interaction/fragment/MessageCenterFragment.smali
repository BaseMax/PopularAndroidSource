.class public Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;
.super Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;
.source "MessageCenterFragment.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$AfterSendMessageListener;
.implements Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$OnNewIncomingMessagesListener;
.implements Lcom/apptentive/android/sdk/module/messagecenter/OnListviewItemActionListener;
.implements Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$FetchCallback;,
        Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment<",
        "Lcom/apptentive/android/sdk/module/engagement/interaction/model/MessageCenterInteraction;",
        ">;",
        "Landroid/view/MenuItem$OnMenuItemClickListener;",
        "Landroid/widget/AbsListView$OnScrollListener;",
        "Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$AfterSendMessageListener;",
        "Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$OnNewIncomingMessagesListener;",
        "Lcom/apptentive/android/sdk/module/messagecenter/OnListviewItemActionListener;",
        "Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$Callback;"
    }
.end annotation


# static fields
.field protected static final MSG_ADD_CONTEXT_MESSAGE:I = 0xf

.field protected static final MSG_ADD_GREETING:I = 0x10

.field protected static final MSG_ADD_STATUS_ERROR:I = 0x11

.field protected static final MSG_MESSAGE_ADD_COMPOSING:I = 0x9

.field protected static final MSG_MESSAGE_ADD_INCOMING:I = 0x7

.field protected static final MSG_MESSAGE_ADD_WHOCARD:I = 0x8

.field protected static final MSG_MESSAGE_REMOVE_WHOCARD:I = 0xe

.field protected static final MSG_MESSAGE_SENT:I = 0x3

.field protected static final MSG_OPT_INSERT_REGULAR_STATUS:I = 0xd

.field protected static final MSG_PAUSE_SENDING:I = 0x5

.field protected static final MSG_REMOVE_ATTACHMENT:I = 0x12

.field protected static final MSG_REMOVE_COMPOSER:I = 0xb

.field protected static final MSG_REMOVE_STATUS:I = 0xc

.field protected static final MSG_RESUME_SENDING:I = 0x6

.field protected static final MSG_SCROLL_FROM_TOP:I = 0x2

.field protected static final MSG_SCROLL_TO_BOTTOM:I = 0x1

.field protected static final MSG_SEND_PENDING_CONTEXT_MESSAGE:I = 0xa

.field protected static final MSG_START_SENDING:I = 0x4


# instance fields
.field private bShowProfileMenuItem:Z

.field private composer:Lcom/apptentive/android/sdk/module/messagecenter/view/holder/MessageComposerHolder;

.field private composerEditText:Landroid/widget/EditText;

.field private composingViewSavedState:Landroid/os/Parcelable;

.field dateStampsSeen:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fab:Landroid/view/View;

.field private fabPaddingPixels:I

.field private forceShowKeyboard:Z

.field private hostingActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private imagePickerStillOpen:Z

.field private isPaused:Z

.field private listItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/apptentive/android/sdk/module/messagecenter/model/MessageCenterListItem;",
            ">;"
        }
    .end annotation
.end field

.field private listViewSavedTopIndex:I

.field private listViewSavedTopOffset:I

.field private messageCenterRecyclerView:Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerView;

.field private messageCenterRecyclerViewAdapter:Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;

.field private messagingActionHandler:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;

.field private pendingAttachments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/apptentive/android/sdk/util/image/ImageItem;",
            ">;"
        }
    .end annotation
.end field

.field private pendingWhoCardAvatarFile:Ljava/lang/String;

.field private pendingWhoCardEmail:Landroid/os/Parcelable;

.field private pendingWhoCardMode:Z

.field private pendingWhoCardName:Landroid/os/Parcelable;

.field private profileMenuItem:Landroid/view/MenuItem;

.field private unsentMessagesCount:I

.field private whoCardEmailEditText:Landroid/widget/EditText;

.field private whoCardNameEditText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 98
    invoke-direct {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;-><init>()V

    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->bShowProfileMenuItem:Z

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->listItems:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 145
    iput-boolean v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->imagePickerStillOpen:Z

    .line 146
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->pendingAttachments:Ljava/util/ArrayList;

    .line 157
    iput-boolean v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->isPaused:Z

    .line 159
    iput v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->unsentMessagesCount:I

    const/4 v0, -0x1

    .line 161
    iput v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->listViewSavedTopIndex:I

    .line 1174
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->dateStampsSeen:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$000(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;Landroid/view/View;ZLjava/util/List;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->setup(Landroid/view/View;ZLjava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)I
    .locals 0

    .line 98
    iget p0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->listViewSavedTopIndex:I

    return p0
.end method

.method static synthetic access$1000(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->addExpectationStatusIfNeeded()V

    return-void
.end method

.method static synthetic access$1100(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)Z
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->wasWhoCardAsPreviouslyDisplayed()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->pendingAttachments:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)Lcom/apptentive/android/sdk/module/messagecenter/view/holder/MessageComposerHolder;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->composer:Lcom/apptentive/android/sdk/module/messagecenter/view/holder/MessageComposerHolder;

    return-object p0
.end method

.method static synthetic access$200(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)I
    .locals 0

    .line 98
    iget p0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->listViewSavedTopOffset:I

    return p0
.end method

.method static synthetic access$300(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messagingActionHandler:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)Z
    .locals 0

    .line 98
    iget-boolean p0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->forceShowKeyboard:Z

    return p0
.end method

.method static synthetic access$402(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;Z)Z
    .locals 0

    .line 98
    iput-boolean p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->forceShowKeyboard:Z

    return p1
.end method

.method static synthetic access$500(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->hostingActivityRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$600(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messageCenterRecyclerViewAdapter:Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;

    return-object p0
.end method

.method static synthetic access$700(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->listItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$800(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerView;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messageCenterRecyclerView:Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)I
    .locals 0

    .line 98
    iget p0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->unsentMessagesCount:I

    return p0
.end method

.method static synthetic access$908(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)I
    .locals 2

    .line 98
    iget v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->unsentMessagesCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->unsentMessagesCount:I

    return v0
.end method

.method static synthetic access$910(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)I
    .locals 2

    .line 98
    iget v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->unsentMessagesCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->unsentMessagesCount:I

    return v0
.end method

.method private addExpectationStatusIfNeeded()V
    .locals 2

    .line 687
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messagingActionHandler:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;->sendEmptyMessage(I)Z

    .line 688
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messagingActionHandler:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private calculateFabPadding(Landroid/content/Context;)I
    .locals 2

    .line 1237
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 1238
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 1239
    sget v1, Lcom/apptentive/android/sdk/R$dimen;->apptentive_message_center_bottom_padding:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private checkAddWhoCardIfRequired()Z
    .locals 4

    .line 643
    invoke-direct {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->wasWhoCardAsPreviouslyDisplayed()Z

    move-result v0

    .line 645
    iget-object v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->interaction:Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;

    check-cast v1, Lcom/apptentive/android/sdk/module/engagement/interaction/model/MessageCenterInteraction;

    invoke-virtual {v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/MessageCenterInteraction;->getWhoCardRequestEnabled()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->interaction:Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;

    check-cast v1, Lcom/apptentive/android/sdk/module/engagement/interaction/model/MessageCenterInteraction;

    invoke-virtual {v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/MessageCenterInteraction;->getWhoCardRequired()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    .line 647
    iput-boolean v3, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->forceShowKeyboard:Z

    .line 648
    invoke-virtual {p0, v3}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->addWhoCard(Z)V

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    .line 651
    :cond_0
    invoke-static {}, Lcom/apptentive/android/sdk/Apptentive;->getPersonEmail()Ljava/lang/String;

    move-result-object v0

    .line 652
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 653
    iput-boolean v3, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->forceShowKeyboard:Z

    .line 654
    invoke-virtual {p0, v2}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->addWhoCard(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 660
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "required"

    .line 662
    iget-object v2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->interaction:Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;

    check-cast v2, Lcom/apptentive/android/sdk/module/engagement/interaction/model/MessageCenterInteraction;

    invoke-virtual {v2}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/MessageCenterInteraction;->getWhoCardRequired()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v1, "trigger"

    const-string v2, "automatic"

    .line 663
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 665
    invoke-static {v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->logException(Ljava/lang/Exception;)V

    :goto_2
    const-string v1, "profile_open"

    .line 667
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->engageInternal(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_2
    return v2
.end method

.method private fetchMessages(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$FetchCallback;)V
    .locals 1

    .line 250
    new-instance v0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$2;

    invoke-direct {v0, p0, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$2;-><init>(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$FetchCallback;)V

    const-string p1, "prepare messages"

    invoke-static {v0, p1}, Lcom/apptentive/android/sdk/ApptentiveHelper;->dispatchConversationTask(Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;Ljava/lang/String;)V

    return-void
.end method

.method private hideFab()V
    .locals 2

    .line 1254
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->fab:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 1255
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->fab:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1256
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->fab:Landroid/view/View;

    invoke-static {v0}, Lcom/apptentive/android/sdk/util/AnimationUtil;->scaleFadeOutGone(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private hideProfileButton()V
    .locals 1

    const/4 v0, 0x0

    .line 1266
    iput-boolean v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->bShowProfileMenuItem:Z

    .line 1267
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->updateMenuVisibility()V

    return-void
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;
    .locals 1

    .line 189
    new-instance v0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;

    invoke-direct {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;-><init>()V

    .line 190
    invoke-virtual {v0, p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private prepareMessages(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/apptentive/android/sdk/module/messagecenter/model/MessageCenterListItem;",
            ">;)V"
        }
    .end annotation

    .line 1276
    invoke-static {}, Lcom/apptentive/android/sdk/debug/Assert;->assertMainThread()V

    .line 1278
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->listItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 1279
    iput v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->unsentMessagesCount:I

    .line 1281
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apptentive/android/sdk/module/messagecenter/model/MessageCenterListItem;

    .line 1282
    instance-of v1, v0, Lcom/apptentive/android/sdk/model/ApptentiveMessage;

    if-eqz v1, :cond_0

    .line 1283
    move-object v1, v0

    check-cast v1, Lcom/apptentive/android/sdk/model/ApptentiveMessage;

    .line 1284
    invoke-virtual {v1}, Lcom/apptentive/android/sdk/model/ApptentiveMessage;->getCreatedAt()Ljava/lang/Double;

    move-result-object v2

    .line 1285
    invoke-virtual {v1}, Lcom/apptentive/android/sdk/model/ApptentiveMessage;->isOutgoingMessage()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v2, :cond_1

    .line 1286
    iget v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->unsentMessagesCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->unsentMessagesCount:I

    .line 1292
    :cond_1
    iget-object v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->listItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    const/4 v3, 0x0

    .line 1294
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    const-wide/16 v5, 0x1

    if-eqz v4, :cond_4

    .line 1295
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/apptentive/android/sdk/model/ApptentiveMessage;

    .line 1296
    invoke-virtual {v3}, Lcom/apptentive/android/sdk/model/ApptentiveMessage;->getCreatedAt()Ljava/lang/Double;

    move-result-object v4

    if-eqz v2, :cond_2

    .line 1298
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    cmpg-double v7, v7, v5

    if-gtz v7, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v4, :cond_4

    .line 1302
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    cmpl-double v4, v7, v9

    if-lez v4, :cond_2

    :cond_4
    if-eqz v3, :cond_6

    .line 1307
    invoke-virtual {v3}, Lcom/apptentive/android/sdk/model/ApptentiveMessage;->getCreatedAt()Ljava/lang/Double;

    move-result-object v4

    if-eqz v4, :cond_6

    if-eqz v2, :cond_6

    invoke-virtual {v3}, Lcom/apptentive/android/sdk/model/ApptentiveMessage;->getCreatedAt()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    cmpg-double v4, v7, v9

    if-lez v4, :cond_6

    .line 1308
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    cmpg-double v2, v7, v5

    if-gtz v2, :cond_5

    goto :goto_2

    .line 1312
    :cond_5
    invoke-interface {v1, v0}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 1313
    invoke-interface {v1, v3}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1309
    :cond_6
    :goto_2
    invoke-interface {v1, v0}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1317
    :cond_7
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messagingActionHandler:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private saveEditTextInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1166
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->composerEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1168
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->hostingActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptentive/android/sdk/util/Util;->hideSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 1169
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->composerEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private setWhoCardAsPreviouslyDisplayed()V
    .locals 2

    .line 1103
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->getConversation()Lcom/apptentive/android/sdk/conversation/ConversationProxy;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 1107
    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/conversation/ConversationProxy;->setMessageCenterWhoCardPreviouslyDisplayed(Z)V

    return-void
.end method

.method private setup(Landroid/view/View;ZLjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Z",
            "Ljava/util/List<",
            "Lcom/apptentive/android/sdk/module/messagecenter/model/MessageCenterListItem;",
            ">;)V"
        }
    .end annotation

    .line 439
    sget v0, Lcom/apptentive/android/sdk/R$id;->message_center_recycler_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerView;

    iput-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messageCenterRecyclerView:Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerView;

    .line 440
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    .line 441
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messageCenterRecyclerView:Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerView;

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerView;->setNestedScrollingEnabled(Z)V

    .line 443
    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 444
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 445
    iget-object v2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messageCenterRecyclerView:Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerView;

    invoke-virtual {v2, v0}, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 447
    sget v0, Lcom/apptentive/android/sdk/R$id;->composing_fab:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->fab:Landroid/view/View;

    .line 448
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->fab:Landroid/view/View;

    new-instance v2, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$5;

    invoke-direct {v2, p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$5;-><init>(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)V

    invoke-static {v2}, Lcom/apptentive/android/sdk/util/Util;->guarded(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 456
    new-instance v0, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;

    iget-object v2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->interaction:Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;

    iget-object v3, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->listItems:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p0, v2, v3}, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;-><init>(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;Lcom/apptentive/android/sdk/module/messagecenter/OnListviewItemActionListener;Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;Ljava/util/List;)V

    iput-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messageCenterRecyclerViewAdapter:Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;

    const/4 v0, 0x0

    if-eqz p2, :cond_6

    .line 459
    invoke-direct {p0, p3}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->prepareMessages(Ljava/util/List;)V

    .line 461
    iget-object p2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->interaction:Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;

    check-cast p2, Lcom/apptentive/android/sdk/module/engagement/interaction/model/MessageCenterInteraction;

    invoke-virtual {p2}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/MessageCenterInteraction;->getContextualMessageBody()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 464
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->clearPendingComposingMessage()V

    .line 465
    iget-object p3, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messagingActionHandler:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;

    const/16 v2, 0xc

    invoke-virtual {p3, v2}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;->sendEmptyMessage(I)Z

    .line 466
    iget-object p3, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messagingActionHandler:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;

    iget-object v2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messagingActionHandler:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;

    const/16 v3, 0xf

    new-instance v4, Lcom/apptentive/android/sdk/module/messagecenter/model/ContextMessage;

    invoke-direct {v4, p2}, Lcom/apptentive/android/sdk/module/messagecenter/model/ContextMessage;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 468
    invoke-direct {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->checkAddWhoCardIfRequired()Z

    move-result p2

    if-nez p2, :cond_4

    .line 470
    iput-boolean v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->forceShowKeyboard:Z

    .line 471
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->addComposingCard()V

    goto :goto_1

    .line 478
    :cond_1
    iget-object p2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->pendingWhoCardName:Landroid/os/Parcelable;

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->pendingWhoCardEmail:Landroid/os/Parcelable;

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->pendingWhoCardAvatarFile:Ljava/lang/String;

    if-eqz p2, :cond_2

    goto :goto_0

    .line 481
    :cond_2
    invoke-direct {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->checkAddWhoCardIfRequired()Z

    move-result p2

    if-nez p2, :cond_4

    .line 486
    iget-object p2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->listItems:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-nez p2, :cond_3

    .line 488
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->addComposingCard()V

    goto :goto_1

    .line 491
    :cond_3
    invoke-direct {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->addExpectationStatusIfNeeded()V

    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 480
    :cond_5
    :goto_0
    iget-boolean p2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->pendingWhoCardMode:Z

    invoke-virtual {p0, p2}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->addWhoCard(Z)V

    :goto_1
    move p3, v1

    goto :goto_3

    .line 496
    :cond_6
    iget-object p2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->listItems:Ljava/util/ArrayList;

    if-eqz p2, :cond_9

    .line 497
    iget-object p2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->listItems:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p3, 0x0

    :cond_7
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apptentive/android/sdk/module/messagecenter/model/MessageCenterListItem;

    .line 498
    invoke-interface {v2}, Lcom/apptentive/android/sdk/module/messagecenter/model/MessageCenterListItem;->getListItemType()I

    move-result v3

    const/4 v4, 0x7

    if-eq v3, v4, :cond_8

    invoke-interface {v2}, Lcom/apptentive/android/sdk/module/messagecenter/model/MessageCenterListItem;->getListItemType()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_7

    :cond_8
    const/4 p3, 0x1

    goto :goto_2

    :cond_9
    const/4 p3, 0x0

    .line 505
    :cond_a
    :goto_3
    iget-object p2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messageCenterRecyclerView:Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerView;

    iget-object v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messageCenterRecyclerViewAdapter:Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;

    invoke-virtual {p2, v1}, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 508
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->calculateFabPadding(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->fabPaddingPixels:I

    if-nez p3, :cond_b

    .line 511
    invoke-direct {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->showFab()V

    .line 515
    :cond_b
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->getConversation()Lcom/apptentive/android/sdk/conversation/ConversationProxy;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 516
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/conversation/ConversationProxy;->getMessageCenterPendingAttachments()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_f

    .line 517
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/conversation/ConversationProxy;->getMessageCenterPendingAttachments()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    .line 520
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p2

    .line 522
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 523
    invoke-static {p2}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->logException(Ljava/lang/Exception;)V

    move-object v1, p3

    :goto_4
    if-eqz v1, :cond_e

    .line 525
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-lez p2, :cond_e

    .line 526
    iget-object p2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->pendingAttachments:Ljava/util/ArrayList;

    if-nez p2, :cond_c

    .line 527
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->pendingAttachments:Ljava/util/ArrayList;

    goto :goto_5

    .line 529
    :cond_c
    iget-object p2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->pendingAttachments:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 531
    :goto_5
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-ge v0, p2, :cond_e

    .line 533
    :try_start_1
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_d

    .line 535
    iget-object v2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->pendingAttachments:Ljava/util/ArrayList;

    new-instance v3, Lcom/apptentive/android/sdk/util/image/ImageItem;

    invoke-direct {v3, p2}, Lcom/apptentive/android/sdk/util/image/ImageItem;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception p2

    .line 538
    invoke-static {p2}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->logException(Ljava/lang/Exception;)V

    :cond_d
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 544
    :cond_e
    invoke-virtual {p1, p3}, Lcom/apptentive/android/sdk/conversation/ConversationProxy;->setMessageCenterPendingAttachments(Ljava/lang/String;)V

    .line 546
    :cond_f
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->updateMessageSentStates()V

    return-void
.end method

.method private shouldOpenComposerAfterClosingWhoCard()Z
    .locals 1

    .line 1037
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->interaction:Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;

    check-cast v0, Lcom/apptentive/android/sdk/module/engagement/interaction/model/MessageCenterInteraction;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/MessageCenterInteraction;->getWhoCard()Lcom/apptentive/android/sdk/module/messagecenter/model/WhoCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/module/messagecenter/model/WhoCard;->isRequire()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->recyclerViewContainsItemOfType(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->recyclerViewContainsItemOfType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private showFab()V
    .locals 3

    .line 1244
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messageCenterRecyclerView:Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerView;

    iget v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->fabPaddingPixels:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v1}, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerView;->setPadding(IIII)V

    .line 1246
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->fab:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1247
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->fab:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1248
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->fab:Landroid/view/View;

    invoke-static {v0}, Lcom/apptentive/android/sdk/util/AnimationUtil;->scaleFadeIn(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private showProfileButton()V
    .locals 1

    const/4 v0, 0x1

    .line 1261
    iput-boolean v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->bShowProfileMenuItem:Z

    .line 1262
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->updateMenuVisibility()V

    return-void
.end method

.method private wasWhoCardAsPreviouslyDisplayed()Z
    .locals 1

    .line 1111
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->getConversation()Lcom/apptentive/android/sdk/conversation/ConversationProxy;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1115
    :cond_0
    invoke-virtual {v0}, Lcom/apptentive/android/sdk/conversation/ConversationProxy;->isMessageCenterWhoCardPreviouslyDisplayed()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public varargs addAttachmentsToComposer([Lcom/apptentive/android/sdk/util/image/ImageItem;)V
    .locals 9

    .line 734
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    .line 736
    array-length v3, p1

    if-lez v3, :cond_3

    .line 737
    array-length v3, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, p1, v4

    .line 739
    iget-object v6, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->pendingAttachments:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/apptentive/android/sdk/util/image/ImageItem;

    .line 740
    iget-object v8, v5, Lcom/apptentive/android/sdk/util/image/ImageItem;->originalPath:Ljava/lang/String;

    iget-object v7, v7, Lcom/apptentive/android/sdk/util/image/ImageItem;->originalPath:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_2

    goto :goto_2

    .line 748
    :cond_2
    iget-object v6, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->pendingAttachments:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 749
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 753
    :cond_3
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messageCenterRecyclerView:Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerView;

    invoke-virtual {p1, v2}, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_3

    .line 754
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 756
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    return-void

    .line 759
    :cond_5
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messageCenterRecyclerViewAdapter:Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;

    iget-object v3, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->composer:Lcom/apptentive/android/sdk/module/messagecenter/view/holder/MessageComposerHolder;

    invoke-virtual {p1, v3, v0}, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;->addImagestoComposer(Lcom/apptentive/android/sdk/module/messagecenter/view/holder/MessageComposerHolder;Ljava/util/List;)V

    .line 760
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messageCenterRecyclerViewAdapter:Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;

    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->listItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;->notifyItemChanged(I)V

    .line 761
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messageCenterRecyclerView:Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerView;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerView;->getFirstVisiblePosition()I

    move-result p1

    .line 762
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messagingActionHandler:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;

    iget-object v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messagingActionHandler:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3, p1, v2}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public addComposingCard()V
    .locals 3

    .line 633
    invoke-direct {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->hideFab()V

    .line 634
    invoke-direct {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->hideProfileButton()V

    .line 635
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messagingActionHandler:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;->removeMessages(I)V

    .line 636
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messagingActionHandler:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;->removeMessages(I)V

    .line 637
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messagingActionHandler:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;->sendEmptyMessage(I)Z

    .line 638
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messagingActionHandler:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;->sendEmptyMessage(I)Z

    .line 639
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messagingActionHandler:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public addWhoCard(Z)V
    .locals 5

    .line 674
    invoke-direct {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->hideFab()V

    .line 675
    invoke-direct {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->hideProfileButton()V

    .line 676
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->interaction:Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;

    check-cast v0, Lcom/apptentive/android/sdk/module/engagement/interaction/model/MessageCenterInteraction;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/MessageCenterInteraction;->getProfile()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 678
    iput-boolean p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->pendingWhoCardMode:Z

    .line 679
    iget-object v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messagingActionHandler:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;->removeMessages(I)V

    .line 680
    iget-object v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messagingActionHandler:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;

    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;->removeMessages(I)V

    .line 681
    iget-object v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messagingActionHandler:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;

    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;->sendEmptyMessage(I)Z

    .line 682
    iget-object v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messagingActionHandler:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;

    iget-object v3, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messagingActionHandler:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;

    xor-int/lit8 p1, p1, 0x1

    const/4 v4, 0x0

    invoke-virtual {v3, v2, p1, v4, v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public afterComposingTextChanged(Ljava/lang/String;)V
    .locals 0

    .line 935
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->composer:Lcom/apptentive/android/sdk/module/messagecenter/view/holder/MessageComposerHolder;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/module/messagecenter/view/holder/MessageComposerHolder;->setSendButtonState()V

    return-void
.end method

.method protected attachFragmentMenuListeners(Landroid/view/Menu;)V
    .locals 1

    .line 425
    sget v0, Lcom/apptentive/android/sdk/R$id;->profile:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->profileMenuItem:Landroid/view/MenuItem;

    .line 426
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->profileMenuItem:Landroid/view/MenuItem;

    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 427
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->updateMenuVisibility()V

    return-void
.end method

.method public beforeComposingTextChanged(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public cleanup()Z
    .locals 2

    .line 615
    new-instance v0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$6;

    invoke-direct {v0, p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$6;-><init>(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)V

    const-string v1, "clean up message center fragment"

    invoke-static {v0, v1}, Lcom/apptentive/android/sdk/ApptentiveHelper;->dispatchConversationTask(Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public cleanupWhoCard()V
    .locals 2

    .line 1041
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messagingActionHandler:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;->sendEmptyMessage(I)Z

    .line 1042
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->hostingActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptentive/android/sdk/util/Util;->hideSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    const/4 v0, 0x0

    .line 1043
    iput-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->pendingWhoCardName:Landroid/os/Parcelable;

    .line 1044
    iput-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->pendingWhoCardEmail:Landroid/os/Parcelable;

    .line 1045
    iput-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->pendingWhoCardAvatarFile:Ljava/lang/String;

    const/4 v1, 0x0

    .line 1046
    iput-boolean v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->pendingWhoCardMode:Z

    .line 1047
    iput-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->whoCardNameEditText:Landroid/widget/EditText;

    .line 1048
    iput-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->whoCardEmailEditText:Landroid/widget/EditText;

    .line 1049
    invoke-direct {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->addExpectationStatusIfNeeded()V

    return-void
.end method

.method public clearPendingComposingMessage()V
    .locals 2

    .line 1158
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->getConversation()Lcom/apptentive/android/sdk/conversation/ConversationProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1160
    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/conversation/ConversationProxy;->setMessageCenterPendingMessage(Ljava/lang/String;)V

    .line 1161
    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/conversation/ConversationProxy;->setMessageCenterPendingAttachments(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected createDatestamp(Ljava/lang/Double;)Ljava/lang/String;
    .locals 5

    if-eqz p1, :cond_0

    .line 1228
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 1229
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    mul-double v1, v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    const/4 p1, 0x2

    .line 1230
    invoke-static {p1}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object p1

    .line 1231
    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public displayNewIncomingMessageItem(Lcom/apptentive/android/sdk/model/ApptentiveMessage;)V
    .locals 4

    .line 695
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messagingActionHandler:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;->sendEmptyMessage(I)Z

    .line 698
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->listItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 702
    iget-object v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->listItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-lez v1, :cond_0

    .line 703
    iget-object v3, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->listItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/apptentive/android/sdk/module/messagecenter/model/MessageCenterListItem;

    .line 704
    invoke-interface {v3}, Lcom/apptentive/android/sdk/module/messagecenter/model/MessageCenterListItem;->getListItemType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 716
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->listItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 717
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messageCenterRecyclerViewAdapter:Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;

    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;->notifyItemInserted(I)V

    .line 719
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messageCenterRecyclerView:Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerView;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerView;->getFirstVisiblePosition()I

    move-result p1

    .line 720
    iget-object v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messageCenterRecyclerView:Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerView;

    invoke-virtual {v1}, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerView;->getLastVisiblePosition()I

    move-result v1

    const/4 v3, 0x0

    if-gt p1, v0, :cond_1

    if-ge v0, v1, :cond_1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_3

    .line 723
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messageCenterRecyclerView:Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerView;

    invoke-virtual {p1, v3}, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_3

    .line 724
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 725
    :goto_3
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->updateMessageSentStates()V

    .line 727
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messagingActionHandler:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;

    iget-object v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messagingActionHandler:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0, v3}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4

    .line 729
    :cond_3
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->updateMessageSentStates()V

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected getMenuResourceId()I
    .locals 1

    .line 420
    sget v0, Lcom/apptentive/android/sdk/R$menu;->apptentive_message_center:I

    return v0
.end method

.method public getPendingComposingContent()Landroid/text/Editable;
    .locals 1

    .line 1120
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->composerEditText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->composerEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getToolbarNavigationContentDescription()Ljava/lang/String;
    .locals 2

    .line 1664
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/apptentive/android/sdk/R$string;->apptentive_message_center_content_description_back_button:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isPaused()Z
    .locals 1

    .line 1659
    iget-boolean v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->isPaused:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10

    const/4 v0, -0x1

    if-ne p2, v0, :cond_6

    const/16 p2, 0xa

    if-eq p1, p2, :cond_1

    const/16 p2, 0x14

    if-eq p1, p2, :cond_0

    goto/16 :goto_1

    .line 329
    :cond_0
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->onCancelComposing()V

    goto/16 :goto_1

    :cond_1
    const/4 p1, 0x0

    if-nez p3, :cond_2

    .line 334
    sget-object p2, Lcom/apptentive/android/sdk/ApptentiveLogTag;->MESSAGES:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string p3, "no image is picked"

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p2, p3, p1}, Lcom/apptentive/android/sdk/ApptentiveLog;->d(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 337
    :cond_2
    iput-boolean p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->imagePickerStillOpen:Z

    .line 339
    iget-object p2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->hostingActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    .line 341
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_3

    .line 342
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p3

    goto :goto_0

    .line 345
    :cond_3
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p3

    const/4 v0, 0x3

    if-eqz p2, :cond_4

    .line 348
    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p3, v0}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    :cond_4
    :goto_0
    const-string v0, "attach"

    .line 352
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->engageInternal(Ljava/lang/String;)V

    .line 354
    invoke-static {p2, p3}, Lcom/apptentive/android/sdk/util/Util;->getRealFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    if-eqz v2, :cond_5

    .line 359
    invoke-static {p2, p3}, Lcom/apptentive/android/sdk/util/Util;->getContentCreationTime(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v5

    .line 360
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 361
    invoke-static {p2}, Lcom/apptentive/android/sdk/util/Util;->getDiskCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    .line 362
    new-array v0, v0, [Lcom/apptentive/android/sdk/util/image/ImageItem;

    new-instance v7, Lcom/apptentive/android/sdk/util/image/ImageItem;

    invoke-static {v1, v3, v5, v6}, Lcom/apptentive/android/sdk/util/Util;->generateCacheFileFullPath(Landroid/net/Uri;Ljava/io/File;J)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, p3}, Lcom/apptentive/android/sdk/util/Util;->getMimeTypeFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/apptentive/android/sdk/util/image/ImageItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    aput-object v7, v0, p1

    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->addAttachmentsToComposer([Lcom/apptentive/android/sdk/util/image/ImageItem;)V

    goto :goto_1

    .line 367
    :cond_5
    invoke-static {p2}, Lcom/apptentive/android/sdk/util/Util;->getDiskCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-wide/16 v2, 0x0

    .line 368
    invoke-static {p3, v1, v2, v3}, Lcom/apptentive/android/sdk/util/Util;->generateCacheFileFullPath(Landroid/net/Uri;Ljava/io/File;J)Ljava/lang/String;

    move-result-object v6

    .line 369
    new-array v0, v0, [Lcom/apptentive/android/sdk/util/image/ImageItem;

    new-instance v1, Lcom/apptentive/android/sdk/util/image/ImageItem;

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, p3}, Lcom/apptentive/android/sdk/util/Util;->getMimeTypeFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/apptentive/android/sdk/util/image/ImageItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    aput-object v1, v0, p1

    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->addAttachmentsToComposer([Lcom/apptentive/android/sdk/util/image/ImageItem;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 268
    invoke-super {p0, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->onAttach(Landroid/content/Context;)V

    .line 271
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->hostingActivityRef:Ljava/lang/ref/WeakReference;

    .line 272
    new-instance p1, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;

    invoke-direct {p1, p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;-><init>(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)V

    iput-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messagingActionHandler:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Exception while attaching"

    const/4 v1, 0x0

    .line 274
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 275
    invoke-static {p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->logException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public onAttachImage()V
    .locals 4

    .line 1081
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    const/16 v2, 0xa

    const/4 v3, 0x0

    if-ge v0, v1, :cond_0

    .line 1082
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "image/*"

    .line 1083
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    .line 1084
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1085
    invoke-static {v0, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 1086
    invoke-virtual {p0, v0, v2}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1088
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.OPENABLE"

    .line 1089
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "image/*"

    .line 1090
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1091
    invoke-static {v0, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 1092
    invoke-virtual {p0, v0, v2}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    const/4 v0, 0x1

    .line 1094
    iput-boolean v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->imagePickerStillOpen:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 1096
    iput-boolean v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->imagePickerStillOpen:Z

    .line 1097
    sget-object v2, Lcom/apptentive/android/sdk/ApptentiveLogTag;->MESSAGES:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v3, "can\'t launch image picker"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->w(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1098
    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->logException(Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method

.method public onCameraShot(Ljava/io/File;)V
    .locals 0

    return-void
.end method

.method public onCancelComposing()V
    .locals 3

    .line 940
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->hostingActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptentive/android/sdk/util/Util;->hideSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 942
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 944
    :try_start_0
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->getPendingComposingContent()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 945
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "body_length"

    .line 946
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 948
    invoke-static {v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->logException(Ljava/lang/Exception;)V

    :goto_1
    const-string v1, "compose_close"

    .line 950
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->engageInternal(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messagingActionHandler:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;

    iget-object v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messagingActionHandler:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 952
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messageCenterRecyclerViewAdapter:Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;

    if-eqz v0, :cond_1

    .line 953
    invoke-direct {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->addExpectationStatusIfNeeded()V

    .line 955
    :cond_1
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->pendingAttachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 956
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->composerEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    const/4 v0, 0x0

    .line 957
    iput-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->composingViewSavedState:Landroid/os/Parcelable;

    .line 958
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->clearPendingComposingMessage()V

    .line 959
    invoke-direct {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->showFab()V

    .line 960
    invoke-direct {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->showProfileButton()V

    return-void
.end method

.method public onClickAttachment(ILcom/apptentive/android/sdk/util/image/ImageItem;)V
    .locals 0

    .line 1322
    iget-object p1, p2, Lcom/apptentive/android/sdk/util/image/ImageItem;->mimeType:Ljava/lang/String;

    invoke-static {p1}, Lcom/apptentive/android/sdk/util/Util;->isMimeTypeImage(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1323
    iget-object p1, p2, Lcom/apptentive/android/sdk/util/image/ImageItem;->originalPath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1325
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->onAttachImage()V

    goto :goto_0

    .line 1328
    :cond_0
    invoke-virtual {p0, p2}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->showAttachmentDialog(Lcom/apptentive/android/sdk/util/image/ImageItem;)V

    goto :goto_0

    .line 1332
    :cond_1
    invoke-virtual {p0, p2}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->openNonImageAttachment(Lcom/apptentive/android/sdk/util/image/ImageItem;)V

    :goto_0
    return-void
.end method

.method public onCloseWhoCard(Ljava/lang/String;)V
    .locals 3

    .line 1016
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "required"

    .line 1018
    iget-object v2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->interaction:Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;

    check-cast v2, Lcom/apptentive/android/sdk/module/engagement/interaction/model/MessageCenterInteraction;

    invoke-virtual {v2}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/MessageCenterInteraction;->getWhoCardRequired()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "button_label"

    .line 1019
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1021
    invoke-static {p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->logException(Ljava/lang/Exception;)V

    :goto_0
    const-string p1, "profile_close"

    .line 1023
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->engageInternal(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    invoke-direct {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->setWhoCardAsPreviouslyDisplayed()V

    .line 1026
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->cleanupWhoCard()V

    .line 1028
    invoke-direct {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->shouldOpenComposerAfterClosingWhoCard()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1029
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->addComposingCard()V

    goto :goto_1

    .line 1031
    :cond_0
    invoke-direct {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->showFab()V

    .line 1032
    invoke-direct {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->showProfileButton()V

    :goto_1
    return-void
.end method

.method public onComposingTextChanged(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public onComposingViewCreated(Lcom/apptentive/android/sdk/module/messagecenter/view/holder/MessageComposerHolder;Landroid/widget/EditText;Lcom/apptentive/android/sdk/util/image/ApptentiveImageGridView;)V
    .locals 3

    .line 843
    iput-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->composer:Lcom/apptentive/android/sdk/module/messagecenter/view/holder/MessageComposerHolder;

    .line 844
    iput-object p2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->composerEditText:Landroid/widget/EditText;

    .line 846
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->getConversation()Lcom/apptentive/android/sdk/conversation/ConversationProxy;

    move-result-object p3

    .line 847
    invoke-static {p3}, Lcom/apptentive/android/sdk/debug/Assert;->assertNotNull(Ljava/lang/Object;)V

    if-nez p3, :cond_0

    return-void

    .line 853
    :cond_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->composingViewSavedState:Landroid/os/Parcelable;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 854
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->composerEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 855
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->composerEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->composingViewSavedState:Landroid/os/Parcelable;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 857
    :cond_1
    iput-object v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->composingViewSavedState:Landroid/os/Parcelable;

    .line 859
    invoke-virtual {p3, v1}, Lcom/apptentive/android/sdk/conversation/ConversationProxy;->setMessageCenterPendingMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 862
    :cond_2
    invoke-virtual {p3}, Lcom/apptentive/android/sdk/conversation/ConversationProxy;->getMessageCenterPendingMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apptentive/android/sdk/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 863
    invoke-virtual {p3}, Lcom/apptentive/android/sdk/conversation/ConversationProxy;->getMessageCenterPendingMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 864
    iget-object v2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->composerEditText:Landroid/widget/EditText;

    if-eqz v2, :cond_3

    .line 865
    iget-object v2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->composerEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 868
    :cond_3
    invoke-virtual {p3, v1}, Lcom/apptentive/android/sdk/conversation/ConversationProxy;->setMessageCenterPendingMessage(Ljava/lang/String;)V

    .line 871
    :cond_4
    :goto_0
    iget-object p3, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->pendingAttachments:Ljava/util/ArrayList;

    invoke-virtual {p0, p3}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->setAttachmentsInComposer(Ljava/util/List;)V

    .line 873
    iget-object p3, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messageCenterRecyclerView:Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p3, v0, v0, v0, v0}, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerView;->setPadding(IIII)V

    if-eqz p2, :cond_5

    .line 876
    invoke-virtual {p2}, Landroid/widget/EditText;->requestFocus()Z

    .line 877
    iget-boolean p3, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->forceShowKeyboard:Z

    if-eqz p3, :cond_5

    .line 878
    new-instance p3, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$7;

    invoke-direct {p3, p0, p2}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$7;-><init>(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;Landroid/widget/EditText;)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 889
    :cond_5
    invoke-direct {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->hideFab()V

    .line 890
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/module/messagecenter/view/holder/MessageComposerHolder;->setSendButtonState()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 195
    invoke-super {p0, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 197
    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->setRetainInstance(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    if-nez p3, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const-string v0, "key_list_top_index_state"

    .line 202
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->listViewSavedTopIndex:I

    const/4 v0, 0x0

    if-nez p3, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const-string v1, "key_list_top_offset_state"

    .line 203
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    :goto_1
    iput v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->listViewSavedTopOffset:I

    const/4 v1, 0x0

    if-nez p3, :cond_2

    move-object v2, v1

    goto :goto_2

    :cond_2
    const-string v2, "key_edit_text_state"

    .line 204
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    :goto_2
    iput-object v2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->composingViewSavedState:Landroid/os/Parcelable;

    if-nez p3, :cond_3

    move-object v2, v1

    goto :goto_3

    :cond_3
    const-string v2, "key_who_card_name_state"

    .line 205
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    :goto_3
    iput-object v2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->pendingWhoCardName:Landroid/os/Parcelable;

    if-nez p3, :cond_4

    move-object v2, v1

    goto :goto_4

    :cond_4
    const-string v2, "key_who_card_email_state"

    .line 206
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    :goto_4
    iput-object v2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->pendingWhoCardEmail:Landroid/os/Parcelable;

    if-nez p3, :cond_5

    goto :goto_5

    :cond_5
    const-string v1, "key_who_card_avatar_state"

    .line 207
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_5
    iput-object v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->pendingWhoCardAvatarFile:Ljava/lang/String;

    if-eqz p3, :cond_6

    const-string v1, "key_who_card_mode_state"

    .line 208
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_6

    const/4 p3, 0x1

    goto :goto_6

    :cond_6
    const/4 p3, 0x0

    :goto_6
    iput-boolean p3, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->pendingWhoCardMode:Z

    .line 209
    sget p3, Lcom/apptentive/android/sdk/R$layout;->apptentive_message_center:I

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDetach()V
    .locals 5

    .line 282
    :try_start_0
    invoke-super {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->onDetach()V

    const/4 v0, 0x0

    .line 284
    iput-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messageCenterRecyclerViewAdapter:Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;

    .line 285
    iget-object v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messageCenterRecyclerView:Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerView;

    if-eqz v1, :cond_0

    .line 286
    iget-object v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messageCenterRecyclerView:Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerView;

    invoke-virtual {v1, v0}, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 288
    :cond_0
    iput-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->composer:Lcom/apptentive/android/sdk/module/messagecenter/view/holder/MessageComposerHolder;

    .line 289
    iput-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->composerEditText:Landroid/widget/EditText;

    .line 290
    iput-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->whoCardNameEditText:Landroid/widget/EditText;

    .line 291
    iput-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->whoCardEmailEditText:Landroid/widget/EditText;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Exception in %s.onDetach()"

    const/4 v2, 0x1

    .line 293
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 294
    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->logException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public onFinishComposing()V
    .locals 4

    .line 966
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messagingActionHandler:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;->sendEmptyMessage(I)Z

    .line 968
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->hostingActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptentive/android/sdk/util/Util;->hideSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 969
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messagingActionHandler:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;->sendEmptyMessage(I)Z

    .line 970
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->composerEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->pendingAttachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 971
    :cond_0
    new-instance v0, Lcom/apptentive/android/sdk/model/CompoundMessage;

    invoke-direct {v0}, Lcom/apptentive/android/sdk/model/CompoundMessage;-><init>()V

    .line 972
    iget-object v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->composerEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/model/CompoundMessage;->setBody(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 973
    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/model/CompoundMessage;->setRead(Z)V

    .line 974
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getInstance()Lcom/apptentive/android/sdk/ApptentiveInstance;

    move-result-object v1

    invoke-interface {v1}, Lcom/apptentive/android/sdk/ApptentiveInstance;->getAndClearCustomData()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/model/CompoundMessage;->setCustomData(Ljava/util/Map;)V

    .line 975
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->pendingAttachments:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/model/CompoundMessage;->setAssociatedImages(Ljava/util/List;)Z

    .line 977
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->getConversation()Lcom/apptentive/android/sdk/conversation/ConversationProxy;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 978
    invoke-virtual {v1}, Lcom/apptentive/android/sdk/conversation/ConversationProxy;->hasActiveState()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 979
    invoke-virtual {v1}, Lcom/apptentive/android/sdk/conversation/ConversationProxy;->getPerson()Lcom/apptentive/android/sdk/storage/Person;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apptentive/android/sdk/storage/Person;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/model/CompoundMessage;->setSenderId(Ljava/lang/String;)V

    .line 982
    :cond_1
    iget-object v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messagingActionHandler:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;

    iget-object v2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messagingActionHandler:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x0

    .line 983
    iput-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->composingViewSavedState:Landroid/os/Parcelable;

    .line 984
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->composerEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 985
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->pendingAttachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 986
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->clearPendingComposingMessage()V

    .line 988
    :cond_2
    invoke-direct {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->showFab()V

    .line 989
    invoke-direct {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->showProfileButton()V

    return-void
.end method

.method public onFragmentExit(Lcom/apptentive/android/sdk/ApptentiveViewExitType;)Z
    .locals 2

    .line 594
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->savePendingComposingMessage()V

    .line 595
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->hostingActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apptentive/android/sdk/ApptentiveViewActivity;

    if-eqz v0, :cond_3

    .line 597
    invoke-virtual {v0}, Lcom/apptentive/android/sdk/ApptentiveViewActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "imagePreviewDialog"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/DialogFragment;

    if-eqz v0, :cond_0

    .line 599
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 601
    :cond_0
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->cleanup()Z

    .line 602
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveViewExitType;->BACK_BUTTON:Lcom/apptentive/android/sdk/ApptentiveViewExitType;

    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/ApptentiveViewExitType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "cancel"

    .line 603
    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->engageInternal(Ljava/lang/String;)V

    goto :goto_0

    .line 604
    :cond_1
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveViewExitType;->NOTIFICATION:Lcom/apptentive/android/sdk/ApptentiveViewExitType;

    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/ApptentiveViewExitType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "cancel"

    .line 605
    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->exitTypeToDataJson(Lcom/apptentive/android/sdk/ApptentiveViewExitType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->engageInternal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "close"

    .line 607
    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->exitTypeToDataJson(Lcom/apptentive/android/sdk/ApptentiveViewExitType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->engageInternal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onImageSelected(I)V
    .locals 0

    .line 1352
    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->removeImageFromComposer(I)V

    return-void
.end method

.method public onImageUnselected(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .line 550
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    .line 552
    sget v0, Lcom/apptentive/android/sdk/R$id;->profile:I

    if-ne p1, v0, :cond_0

    .line 553
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "required"

    .line 555
    iget-object v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->interaction:Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;

    check-cast v1, Lcom/apptentive/android/sdk/module/engagement/interaction/model/MessageCenterInteraction;

    invoke-virtual {v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/MessageCenterInteraction;->getWhoCardRequired()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v0, "trigger"

    const-string v1, "button"

    .line 556
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 558
    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->logException(Ljava/lang/Exception;)V

    :goto_0
    const-string v0, "profile_open"

    .line 560
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->engageInternal(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    invoke-direct {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->wasWhoCardAsPreviouslyDisplayed()Z

    move-result p1

    const/4 v0, 0x1

    .line 563
    iput-boolean v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->forceShowKeyboard:Z

    xor-int/2addr p1, v0

    .line 564
    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->addWhoCard(Z)V

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public declared-synchronized onMessageSent(ILcom/apptentive/android/sdk/model/ApptentiveMessage;)V
    .locals 4

    monitor-enter p0

    const/16 v0, 0x190

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lt p1, v0, :cond_0

    const/16 v0, 0x1f4

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0xc8

    if-lt p1, v3, :cond_1

    const/16 v3, 0x12c

    if-ge p1, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_2

    if-nez v0, :cond_2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    .line 828
    :cond_2
    :try_start_0
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messagingActionHandler:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;

    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messagingActionHandler:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p2}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 830
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 823
    monitor-exit p0

    throw p1
.end method

.method public onNewMessageReceived(Lcom/apptentive/android/sdk/model/CompoundMessage;)V
    .locals 3

    .line 1054
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messagingActionHandler:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;

    iget-object v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messagingActionHandler:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 382
    invoke-super {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->onPause()V

    .line 383
    new-instance v0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$3;

    invoke-direct {v0, p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$3;-><init>(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)V

    const-string v1, "pause message center fragment"

    invoke-static {v0, v1}, Lcom/apptentive/android/sdk/ApptentiveHelper;->dispatchConversationTask(Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized onPauseSending(I)V
    .locals 4

    monitor-enter p0

    .line 833
    :try_start_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messagingActionHandler:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;

    iget-object v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messagingActionHandler:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 834
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 832
    monitor-exit p0

    throw p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    .line 1339
    aget p1, p3, p1

    if-nez p1, :cond_0

    .line 1340
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->onAttachImage()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 5

    .line 394
    invoke-super {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->onResume()V

    const/4 v0, 0x0

    .line 397
    :try_start_0
    new-instance v1, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$4;

    invoke-direct {v1, p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$4;-><init>(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)V

    const-string v2, "resume message center fragment"

    invoke-static {v1, v2}, Lcom/apptentive/android/sdk/ApptentiveHelper;->dispatchConversationTask(Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;Ljava/lang/String;)V

    .line 409
    iget-boolean v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->imagePickerStillOpen:Z

    if-eqz v1, :cond_0

    const-string v1, "attachment_cancel"

    .line 410
    invoke-virtual {p0, v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->engageInternal(Ljava/lang/String;)V

    .line 411
    iput-boolean v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->imagePickerStillOpen:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Exception in %s.onResume()"

    const/4 v3, 0x1

    .line 414
    new-array v3, v3, [Ljava/lang/Object;

    const-class v4, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 415
    invoke-static {v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->logException(Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public declared-synchronized onResumeSending()V
    .locals 2

    monitor-enter p0

    .line 837
    :try_start_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messagingActionHandler:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 838
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 836
    monitor-exit p0

    throw v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x0

    .line 574
    :try_start_0
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->savePendingComposingMessage()V

    .line 576
    iget-object v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messageCenterRecyclerView:Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerView;

    invoke-virtual {v1, v0}, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 577
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messageCenterRecyclerView:Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerView;

    invoke-virtual {v2}, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    :goto_0
    const-string v2, "key_list_top_offset_state"

    .line 578
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "key_edit_text_state"

    .line 579
    invoke-direct {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->saveEditTextInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 580
    iget-object v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messageCenterRecyclerViewAdapter:Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;

    if-eqz v1, :cond_3

    const-string v1, "key_who_card_name_state"

    .line 581
    iget-object v2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->whoCardNameEditText:Landroid/widget/EditText;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->whoCardNameEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "key_who_card_email_state"

    .line 582
    iget-object v2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->whoCardEmailEditText:Landroid/widget/EditText;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->whoCardEmailEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v3

    :cond_2
    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "key_who_card_avatar_state"

    .line 583
    iget-object v2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messageCenterRecyclerViewAdapter:Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;

    invoke-virtual {v2}, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;->getWhoCardAvatarFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v1, "key_who_card_mode_state"

    .line 585
    iget-boolean v2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->pendingWhoCardMode:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 586
    invoke-super {p0, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string v1, "Exception in %s.onSaveInstanceState()"

    const/4 v2, 0x1

    .line 588
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {p1, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 589
    invoke-static {p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->logException(Ljava/lang/Exception;)V

    :goto_2
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 1068
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0xe

    if-ge p2, p3, :cond_1

    .line 1069
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result p2

    const/4 p3, 0x0

    if-lez p2, :cond_2

    .line 1070
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result p2

    if-gtz p2, :cond_0

    .line 1071
    invoke-virtual {p1, p3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result p1

    if-ge p2, p1, :cond_2

    :cond_0
    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, -0x1

    .line 1073
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result p3

    .line 1075
    :cond_2
    :goto_0
    invoke-virtual {p0, p3}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->showToolbarElevation(Z)V

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 5

    .line 299
    invoke-super {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->onStart()V

    const/4 v0, 0x1

    .line 301
    :try_start_0
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->getConversation()Lcom/apptentive/android/sdk/conversation/ConversationProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 303
    invoke-virtual {v1, v0}, Lcom/apptentive/android/sdk/conversation/ConversationProxy;->setMessageCenterInForeground(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Exception in %s.onStart()"

    .line 306
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-class v4, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-static {v2, v0}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 307
    invoke-static {v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->logException(Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 5

    .line 312
    invoke-super {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->onStop()V

    const/4 v0, 0x0

    .line 314
    :try_start_0
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->getConversation()Lcom/apptentive/android/sdk/conversation/ConversationProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 316
    invoke-virtual {v1, v0}, Lcom/apptentive/android/sdk/conversation/ConversationProxy;->setMessageCenterInForeground(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Exception in %s.onStop()"

    const/4 v3, 0x1

    .line 319
    new-array v3, v3, [Ljava/lang/Object;

    const-class v4, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 320
    invoke-static {v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->logException(Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onSubmitWhoCard(Ljava/lang/String;)V
    .locals 3

    .line 994
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "required"

    .line 996
    iget-object v2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->interaction:Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;

    check-cast v2, Lcom/apptentive/android/sdk/module/engagement/interaction/model/MessageCenterInteraction;

    invoke-virtual {v2}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/MessageCenterInteraction;->getWhoCardRequired()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "button_label"

    .line 997
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 999
    invoke-static {p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->logException(Ljava/lang/Exception;)V

    :goto_0
    const-string p1, "profile_submit"

    .line 1001
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->engageInternal(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    invoke-direct {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->setWhoCardAsPreviouslyDisplayed()V

    .line 1004
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->cleanupWhoCard()V

    .line 1006
    invoke-direct {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->shouldOpenComposerAfterClosingWhoCard()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1007
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->addComposingCard()V

    goto :goto_1

    .line 1009
    :cond_0
    invoke-direct {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->showFab()V

    .line 1010
    invoke-direct {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->showProfileButton()V

    :goto_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 213
    invoke-super {p0, p1, p2}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 215
    new-instance v0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$1;-><init>(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;Landroid/os/Bundle;Landroid/view/View;)V

    invoke-direct {p0, v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->fetchMessages(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$FetchCallback;)V

    .line 246
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x11

    invoke-virtual {p1, p2}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method public onWhoCardViewCreated(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 2

    .line 895
    iput-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->whoCardNameEditText:Landroid/widget/EditText;

    .line 896
    iput-object p2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->whoCardEmailEditText:Landroid/widget/EditText;

    .line 897
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->pendingWhoCardName:Landroid/os/Parcelable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 898
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->pendingWhoCardName:Landroid/os/Parcelable;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 899
    iput-object v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->pendingWhoCardName:Landroid/os/Parcelable;

    .line 901
    :cond_0
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->pendingWhoCardEmail:Landroid/os/Parcelable;

    if-eqz p1, :cond_1

    .line 902
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->pendingWhoCardEmail:Landroid/os/Parcelable;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 903
    iput-object v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->pendingWhoCardEmail:Landroid/os/Parcelable;

    .line 905
    :cond_1
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messageCenterRecyclerView:Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p2, p2}, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerView;->setPadding(IIII)V

    if-eqz p3, :cond_2

    .line 908
    invoke-virtual {p3}, Landroid/view/View;->requestFocus()Z

    .line 909
    iget-boolean p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->forceShowKeyboard:Z

    if-eqz p1, :cond_2

    .line 910
    new-instance p1, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$8;

    invoke-direct {p1, p0, p3}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$8;-><init>(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;Landroid/view/View;)V

    invoke-virtual {p3, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 921
    :cond_2
    invoke-direct {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->hideFab()V

    return-void
.end method

.method public openNonImageAttachment(Lcom/apptentive/android/sdk/util/image/ImageItem;)V
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 780
    sget-object p1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->MESSAGES:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "No attachment argument."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/apptentive/android/sdk/ApptentiveLog;->d(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 785
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->hostingActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p1, Lcom/apptentive/android/sdk/util/image/ImageItem;->originalPath:Ljava/lang/String;

    iget-object v3, p1, Lcom/apptentive/android/sdk/util/image/ImageItem;->localCachePath:Ljava/lang/String;

    iget-object p1, p1, Lcom/apptentive/android/sdk/util/image/ImageItem;->mimeType:Ljava/lang/String;

    invoke-static {v1, v2, v3, p1}, Lcom/apptentive/android/sdk/util/Util;->openFileAttachment(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 786
    sget-object p1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->MESSAGES:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "Cannot open file attachment"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->d(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 789
    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->MESSAGES:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v2, "Error loading attachment"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, v2, v0}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 790
    invoke-static {p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->logException(Ljava/lang/Exception;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public recyclerViewContainsItemOfType(I)Z
    .locals 2

    .line 1634
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->listItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apptentive/android/sdk/module/messagecenter/model/MessageCenterListItem;

    .line 1635
    invoke-interface {v1}, Lcom/apptentive/android/sdk/module/messagecenter/model/MessageCenterListItem;->getListItemType()I

    move-result v1

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public removeImageFromComposer(I)V
    .locals 4

    const-string v0, "attachment_delete"

    .line 773
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->engageInternal(Ljava/lang/String;)V

    .line 774
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messagingActionHandler:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;

    iget-object v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messagingActionHandler:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;

    const/16 v2, 0x12

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 775
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messagingActionHandler:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;

    const/4 v0, 0x1

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public savePendingComposingMessage()V
    .locals 6

    .line 1125
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->getPendingComposingContent()Landroid/text/Editable;

    move-result-object v0

    .line 1126
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getInstance()Lcom/apptentive/android/sdk/ApptentiveInstance;

    move-result-object v1

    invoke-interface {v1}, Lcom/apptentive/android/sdk/ApptentiveInstance;->getGlobalSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1127
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1129
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->getConversation()Lcom/apptentive/android/sdk/conversation/ConversationProxy;

    move-result-object v2

    .line 1130
    invoke-static {v2}, Lcom/apptentive/android/sdk/debug/Assert;->assertNotNull(Ljava/lang/Object;)V

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 1136
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/apptentive/android/sdk/conversation/ConversationProxy;->setMessageCenterPendingMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 1138
    :cond_1
    invoke-virtual {v2, v3}, Lcom/apptentive/android/sdk/conversation/ConversationProxy;->setMessageCenterPendingMessage(Ljava/lang/String;)V

    .line 1140
    :goto_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1142
    iget-object v4, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->pendingAttachments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/apptentive/android/sdk/util/image/ImageItem;

    .line 1143
    invoke-virtual {v5}, Lcom/apptentive/android/sdk/util/image/ImageItem;->toJSON()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 1146
    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 1147
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/apptentive/android/sdk/conversation/ConversationProxy;->setMessageCenterPendingAttachments(Ljava/lang/String;)V

    goto :goto_2

    .line 1149
    :cond_3
    invoke-virtual {v2, v3}, Lcom/apptentive/android/sdk/conversation/ConversationProxy;->setMessageCenterPendingAttachments(Ljava/lang/String;)V

    .line 1151
    :goto_2
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setAttachmentsInComposer(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/apptentive/android/sdk/util/image/ImageItem;",
            ">;)V"
        }
    .end annotation

    .line 766
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messageCenterRecyclerViewAdapter:Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;

    iget-object v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->composer:Lcom/apptentive/android/sdk/module/messagecenter/view/holder/MessageComposerHolder;

    invoke-virtual {v0, v1, p1}, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;->addImagestoComposer(Lcom/apptentive/android/sdk/module/messagecenter/view/holder/MessageComposerHolder;Ljava/util/List;)V

    .line 768
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messagingActionHandler:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;

    const/4 v0, 0x1

    const-wide/16 v1, 0x32

    invoke-virtual {p1, v0, v1, v2}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public setPaused(Z)V
    .locals 3

    .line 1643
    iget-boolean v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->isPaused:Z

    xor-int/2addr v0, p1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1645
    :goto_0
    iget-object v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->listItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1646
    iget-object v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->listItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apptentive/android/sdk/module/messagecenter/model/MessageCenterListItem;

    .line 1647
    instance-of v2, v1, Lcom/apptentive/android/sdk/model/ApptentiveMessage;

    if-eqz v2, :cond_0

    .line 1648
    check-cast v1, Lcom/apptentive/android/sdk/model/ApptentiveMessage;

    .line 1649
    invoke-virtual {v1}, Lcom/apptentive/android/sdk/model/ApptentiveMessage;->isOutgoingMessage()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/apptentive/android/sdk/model/ApptentiveMessage;->getCreatedAt()Ljava/lang/Double;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1650
    iget-object v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messageCenterRecyclerViewAdapter:Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;

    invoke-virtual {v1, v0}, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;->notifyItemChanged(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1655
    :cond_1
    iput-boolean p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->isPaused:Z

    return-void
.end method

.method public showAttachmentDialog(Lcom/apptentive/android/sdk/util/image/ImageItem;)V
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 796
    sget-object p1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->MESSAGES:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "No attachment argument."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/apptentive/android/sdk/ApptentiveLog;->d(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 802
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 803
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const-string v3, "imagePreviewDialog"

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 805
    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :cond_1
    const/4 v2, 0x0

    .line 807
    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 810
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->getConversation()Lcom/apptentive/android/sdk/conversation/ConversationProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/apptentive/android/sdk/conversation/ConversationProxy;->getConversationToken()Ljava/lang/String;

    move-result-object v2

    .line 811
    invoke-static {p1, v2}, Lcom/apptentive/android/sdk/module/messagecenter/view/AttachmentPreviewDialog;->newInstance(Lcom/apptentive/android/sdk/util/image/ImageItem;Ljava/lang/String;)Lcom/apptentive/android/sdk/module/messagecenter/view/AttachmentPreviewDialog;

    move-result-object p1

    const-string v2, "imagePreviewDialog"

    .line 812
    invoke-virtual {p1, v1, v2}, Lcom/apptentive/android/sdk/module/messagecenter/view/AttachmentPreviewDialog;->show(Landroidx/fragment/app/FragmentTransaction;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 815
    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->MESSAGES:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v2, "Error loading attachment preview."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, v2, v0}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 816
    invoke-static {p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->logException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method protected updateMenuVisibility()V
    .locals 2

    .line 432
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->profileMenuItem:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->bShowProfileMenuItem:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 433
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->profileMenuItem:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->bShowProfileMenuItem:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public updateMessageSentStates()V
    .locals 11

    .line 1177
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->dateStampsSeen:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1179
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1181
    iget-object v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->listItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    const/4 v3, 0x0

    .line 1182
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1183
    invoke-interface {v1}, Ljava/util/ListIterator;->nextIndex()I

    move-result v5

    sub-int/2addr v5, v3

    .line 1184
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/apptentive/android/sdk/module/messagecenter/model/MessageCenterListItem;

    .line 1185
    instance-of v7, v6, Lcom/apptentive/android/sdk/model/ApptentiveMessage;

    if-eqz v7, :cond_0

    .line 1189
    check-cast v6, Lcom/apptentive/android/sdk/model/ApptentiveMessage;

    invoke-virtual {v6}, Lcom/apptentive/android/sdk/model/ApptentiveMessage;->getNonce()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1190
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    .line 1191
    iget-object v6, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messageCenterRecyclerViewAdapter:Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;

    invoke-virtual {v6, v5}, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;->notifyItemRemoved(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1197
    :cond_1
    invoke-virtual {v6}, Lcom/apptentive/android/sdk/model/ApptentiveMessage;->getCreatedAt()Ljava/lang/Double;

    move-result-object v7

    .line 1198
    invoke-virtual {p0, v7}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->createDatestamp(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 1200
    iget-object v9, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->dateStampsSeen:Ljava/util/Set;

    invoke-interface {v9, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1201
    invoke-virtual {v6, v8}, Lcom/apptentive/android/sdk/model/ApptentiveMessage;->setDatestamp(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1202
    iget-object v8, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messageCenterRecyclerViewAdapter:Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;

    invoke-virtual {v8, v5}, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;->notifyItemChanged(I)V

    goto :goto_1

    .line 1205
    :cond_2
    invoke-virtual {v6}, Lcom/apptentive/android/sdk/model/ApptentiveMessage;->clearDatestamp()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1206
    iget-object v8, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->messageCenterRecyclerViewAdapter:Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;

    invoke-virtual {v8, v5}, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;->notifyItemChanged(I)V

    .line 1212
    :cond_3
    :goto_1
    invoke-virtual {v6}, Lcom/apptentive/android/sdk/model/ApptentiveMessage;->isOutgoingMessage()Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v7, :cond_0

    .line 1213
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    const-wide/16 v9, 0x1

    cmpl-double v5, v7, v9

    if-lez v5, :cond_0

    .line 1214
    check-cast v6, Lcom/apptentive/android/sdk/module/messagecenter/model/MessageCenterUtil$CompoundMessageCommonInterface;

    .line 1215
    invoke-interface {v6, v2}, Lcom/apptentive/android/sdk/module/messagecenter/model/MessageCenterUtil$CompoundMessageCommonInterface;->setLastSent(Z)V

    move-object v4, v6

    goto :goto_0

    :cond_4
    if-eqz v4, :cond_5

    const/4 v0, 0x1

    .line 1223
    invoke-interface {v4, v0}, Lcom/apptentive/android/sdk/module/messagecenter/model/MessageCenterUtil$CompoundMessageCommonInterface;->setLastSent(Z)V

    :cond_5
    return-void
.end method
