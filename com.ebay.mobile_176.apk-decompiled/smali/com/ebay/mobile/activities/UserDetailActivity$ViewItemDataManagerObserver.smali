.class Lcom/ebay/mobile/activities/UserDetailActivity$ViewItemDataManagerObserver;
.super Lcom/ebay/mobile/viewitem/ViewItemDataManager$SimpleViewItemDataManagerObserver;
.source "UserDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/activities/UserDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewItemDataManagerObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/mobile/activities/UserDetailActivity;


# direct methods
.method private constructor <init>(Lcom/ebay/mobile/activities/UserDetailActivity;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity$ViewItemDataManagerObserver;->this$0:Lcom/ebay/mobile/activities/UserDetailActivity;

    invoke-direct {p0}, Lcom/ebay/mobile/viewitem/ViewItemDataManager$SimpleViewItemDataManagerObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/mobile/activities/UserDetailActivity;Lcom/ebay/mobile/activities/UserDetailActivity$1;)V
    .locals 0

    .line 165
    invoke-direct {p0, p1}, Lcom/ebay/mobile/activities/UserDetailActivity$ViewItemDataManagerObserver;-><init>(Lcom/ebay/mobile/activities/UserDetailActivity;)V

    return-void
.end method


# virtual methods
.method public onDataChanged(Lcom/ebay/mobile/viewitem/ViewItemDataManager;Lcom/ebay/nautilus/domain/content/Content;Lcom/ebay/mobile/viewitem/ViewItemDataManager$ActionHandled;ZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/mobile/viewitem/ViewItemDataManager;",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Lcom/ebay/mobile/Item;",
            ">;",
            "Lcom/ebay/mobile/viewitem/ViewItemDataManager$ActionHandled;",
            "ZZ)V"
        }
    .end annotation

    .line 171
    iget-object p3, p0, Lcom/ebay/mobile/activities/UserDetailActivity$ViewItemDataManagerObserver;->this$0:Lcom/ebay/mobile/activities/UserDetailActivity;

    invoke-virtual {p3}, Lcom/ebay/mobile/activities/UserDetailActivity;->isFinishing()Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    .line 177
    :cond_0
    iget-object p3, p0, Lcom/ebay/mobile/activities/UserDetailActivity$ViewItemDataManagerObserver;->this$0:Lcom/ebay/mobile/activities/UserDetailActivity;

    iget-object p3, p3, Lcom/ebay/mobile/activities/UserDetailActivity;->viewItemDataManager:Lcom/ebay/mobile/viewitem/ViewItemDataManager;

    if-nez p3, :cond_1

    .line 179
    iget-object p3, p0, Lcom/ebay/mobile/activities/UserDetailActivity$ViewItemDataManagerObserver;->this$0:Lcom/ebay/mobile/activities/UserDetailActivity;

    iput-object p1, p3, Lcom/ebay/mobile/activities/UserDetailActivity;->viewItemDataManager:Lcom/ebay/mobile/viewitem/ViewItemDataManager;

    .line 182
    :cond_1
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/content/Content;->getStatus()Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->hasError()Z

    move-result p1

    if-nez p1, :cond_5

    .line 184
    iget-object p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity$ViewItemDataManagerObserver;->this$0:Lcom/ebay/mobile/activities/UserDetailActivity;

    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/content/Content;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ebay/mobile/Item;

    iput-object p2, p1, Lcom/ebay/mobile/activities/UserDetailActivity;->item:Lcom/ebay/mobile/Item;

    .line 188
    iget-object p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity$ViewItemDataManagerObserver;->this$0:Lcom/ebay/mobile/activities/UserDetailActivity;

    invoke-virtual {p1}, Lcom/ebay/mobile/activities/UserDetailActivity;->initUIState()Z

    .line 190
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ebay/common/Preferences;->getAuthentication()Lcom/ebay/nautilus/domain/app/Authentication;

    move-result-object p1

    .line 193
    iget-object p2, p0, Lcom/ebay/mobile/activities/UserDetailActivity$ViewItemDataManagerObserver;->this$0:Lcom/ebay/mobile/activities/UserDetailActivity;

    iget-boolean p2, p2, Lcom/ebay/mobile/activities/UserDetailActivity;->requireSignIn:Z

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/ebay/mobile/activities/UserDetailActivity$ViewItemDataManagerObserver;->this$0:Lcom/ebay/mobile/activities/UserDetailActivity;

    iget-object p2, p2, Lcom/ebay/mobile/activities/UserDetailActivity;->userId:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    :cond_2
    if-nez p1, :cond_3

    .line 195
    iget-object p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity$ViewItemDataManagerObserver;->this$0:Lcom/ebay/mobile/activities/UserDetailActivity;

    .line 196
    invoke-virtual {p1}, Lcom/ebay/mobile/activities/UserDetailActivity;->getTrackingEventName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/ebay/mobile/activities/UserDetailActivity$ViewItemDataManagerObserver;->this$0:Lcom/ebay/mobile/activities/UserDetailActivity;

    invoke-static {p1, p2}, Lcom/ebay/mobile/connection/idsignin/SignInActivity;->getIntentForSignIn(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    .line 198
    iget-object p2, p0, Lcom/ebay/mobile/activities/UserDetailActivity$ViewItemDataManagerObserver;->this$0:Lcom/ebay/mobile/activities/UserDetailActivity;

    const/4 p3, 0x6

    invoke-virtual {p2, p1, p3}, Lcom/ebay/mobile/activities/UserDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_3
    if-eqz p1, :cond_4

    .line 202
    iget-object p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity$ViewItemDataManagerObserver;->this$0:Lcom/ebay/mobile/activities/UserDetailActivity;

    invoke-static {p1}, Lcom/ebay/mobile/activities/UserDetailActivity;->access$100(Lcom/ebay/mobile/activities/UserDetailActivity;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity$ViewItemDataManagerObserver;->this$0:Lcom/ebay/mobile/activities/UserDetailActivity;

    invoke-static {p1}, Lcom/ebay/mobile/activities/UserDetailActivity;->access$200(Lcom/ebay/mobile/activities/UserDetailActivity;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity$ViewItemDataManagerObserver;->this$0:Lcom/ebay/mobile/activities/UserDetailActivity;

    invoke-static {p1}, Lcom/ebay/mobile/activities/UserDetailActivity;->access$300(Lcom/ebay/mobile/activities/UserDetailActivity;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 204
    iget-object p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity$ViewItemDataManagerObserver;->this$0:Lcom/ebay/mobile/activities/UserDetailActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/ebay/mobile/activities/UserDetailActivity;->access$302(Lcom/ebay/mobile/activities/UserDetailActivity;Z)Z

    .line 205
    iget-object p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity$ViewItemDataManagerObserver;->this$0:Lcom/ebay/mobile/activities/UserDetailActivity;

    sget-object p3, Lcom/ebay/mobile/viewitem/ItemViewCommonProgressAndError$LayoutState;->TRANSLUCENT_PROGRESS:Lcom/ebay/mobile/viewitem/ItemViewCommonProgressAndError$LayoutState;

    invoke-static {p1, p3}, Lcom/ebay/mobile/viewitem/ItemViewCommonProgressAndError;->showLayouts(Landroid/app/Activity;Lcom/ebay/mobile/viewitem/ItemViewCommonProgressAndError$LayoutState;)V

    .line 207
    iget-object p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity$ViewItemDataManagerObserver;->this$0:Lcom/ebay/mobile/activities/UserDetailActivity;

    invoke-static {p1}, Lcom/ebay/mobile/activities/UserDetailActivity;->access$400(Lcom/ebay/mobile/activities/UserDetailActivity;)Lcom/ebay/mobile/connection/messages/m2mexp/MessageInfoDataManager;

    move-result-object p1

    iget-object p3, p0, Lcom/ebay/mobile/activities/UserDetailActivity$ViewItemDataManagerObserver;->this$0:Lcom/ebay/mobile/activities/UserDetailActivity;

    new-instance p4, Lcom/ebay/mobile/connection/messages/m2mexp/MessageInfoDataManager$MessageInfoParams;

    iget-object p5, p0, Lcom/ebay/mobile/activities/UserDetailActivity$ViewItemDataManagerObserver;->this$0:Lcom/ebay/mobile/activities/UserDetailActivity;

    .line 208
    invoke-virtual {p5}, Lcom/ebay/mobile/activities/UserDetailActivity;->getUserContext()Lcom/ebay/nautilus/domain/content/dm/UserContext;

    move-result-object p5

    invoke-virtual {p5}, Lcom/ebay/nautilus/domain/content/dm/UserContext;->getCurrentCountry()Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object v1

    iget-object p5, p0, Lcom/ebay/mobile/activities/UserDetailActivity$ViewItemDataManagerObserver;->this$0:Lcom/ebay/mobile/activities/UserDetailActivity;

    iget-object v2, p5, Lcom/ebay/mobile/activities/UserDetailActivity;->userId:Ljava/lang/String;

    iget-object p5, p0, Lcom/ebay/mobile/activities/UserDetailActivity$ViewItemDataManagerObserver;->this$0:Lcom/ebay/mobile/activities/UserDetailActivity;

    iget-object p5, p5, Lcom/ebay/mobile/activities/UserDetailActivity;->item:Lcom/ebay/mobile/Item;

    iget-wide v3, p5, Lcom/ebay/mobile/Item;->id:J

    .line 209
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object p2, p0, Lcom/ebay/mobile/activities/UserDetailActivity$ViewItemDataManagerObserver;->this$0:Lcom/ebay/mobile/activities/UserDetailActivity;

    invoke-virtual {p2}, Lcom/ebay/mobile/activities/UserDetailActivity;->getUserContext()Lcom/ebay/nautilus/domain/content/dm/UserContext;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/content/dm/UserContext;->getCurrentUser()Lcom/ebay/nautilus/domain/app/Authentication;

    move-result-object v5

    move-object v0, p4

    invoke-direct/range {v0 .. v5}, Lcom/ebay/mobile/connection/messages/m2mexp/MessageInfoDataManager$MessageInfoParams;-><init>(Lcom/ebay/nautilus/domain/EbayCountry;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Lcom/ebay/nautilus/domain/app/Authentication;)V

    .line 207
    invoke-virtual {p1, p3, p4}, Lcom/ebay/mobile/connection/messages/m2mexp/MessageInfoDataManager;->getMessageInfo(Lcom/ebay/mobile/connection/messages/m2mexp/MessageInfoDataManager$Observer;Lcom/ebay/mobile/connection/messages/m2mexp/MessageInfoDataManager$MessageInfoParams;)V

    .line 212
    :cond_4
    iget-object p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity$ViewItemDataManagerObserver;->this$0:Lcom/ebay/mobile/activities/UserDetailActivity;

    invoke-virtual {p1}, Lcom/ebay/mobile/activities/UserDetailActivity;->fillUIDetails()V

    .line 217
    iget-object p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity$ViewItemDataManagerObserver;->this$0:Lcom/ebay/mobile/activities/UserDetailActivity;

    iget-boolean p1, p1, Lcom/ebay/mobile/activities/UserDetailActivity;->userProfileLoading:Z

    if-nez p1, :cond_6

    .line 219
    iget-object p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity$ViewItemDataManagerObserver;->this$0:Lcom/ebay/mobile/activities/UserDetailActivity;

    invoke-virtual {p1}, Lcom/ebay/mobile/activities/UserDetailActivity;->showUserProfile()V

    goto :goto_0

    .line 225
    :cond_5
    iget-object p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity$ViewItemDataManagerObserver;->this$0:Lcom/ebay/mobile/activities/UserDetailActivity;

    const/4 p3, 0x0

    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/content/Content;->getStatus()Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object p2

    invoke-static {p1, p3, p2}, Lcom/ebay/common/view/EbayErrorHandler;->handleResultStatus(Landroidx/fragment/app/FragmentActivity;ILcom/ebay/nautilus/kernel/content/ResultStatus;)Z

    :cond_6
    :goto_0
    return-void
.end method
