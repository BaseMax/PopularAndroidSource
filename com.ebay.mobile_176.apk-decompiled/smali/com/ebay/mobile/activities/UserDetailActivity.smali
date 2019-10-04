.class public Lcom/ebay/mobile/activities/UserDetailActivity;
.super Lcom/ebay/mobile/activities/CoreActivity;
.source "UserDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ebay/mobile/connection/messages/m2mexp/MessageInfoDataManager$Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/mobile/activities/UserDetailActivity$FollowingDataManagerObserver;,
        Lcom/ebay/mobile/activities/UserDetailActivity$ViewItemDataManagerObserver;
    }
.end annotation


# static fields
.field public static final EXTRA_IS_BUYER:Ljava/lang/String; = "isBuyer"

.field public static final EXTRA_IS_SELLER:Ljava/lang/String; = "isSeller"

.field public static final EXTRA_MESSAGE_ID:Ljava/lang/String; = "message_id"

.field public static final EXTRA_REQUIRE_SIGNIN:Ljava/lang/String; = "requiresSignIn"

.field public static final EXTRA_USER_ID:Ljava/lang/String; = "user_id"

.field public static final logTag:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;


# instance fields
.field protected buttonLayout:Landroid/view/View;

.field private callTheSeller:Z

.field private feedbackCountTextView:Landroid/widget/TextView;

.field private feedbackStarImageView:Landroid/widget/ImageView;

.field private followingDataManager:Lcom/ebay/common/content/dm/search/FollowingDataManager;

.field private final followingDataManagerObserver:Lcom/ebay/mobile/activities/UserDetailActivity$FollowingDataManagerObserver;

.field private hasOtherItems:Z

.field private isBuyer:Z

.field private isLoadingPhoneNumber:Z

.field private isLoadingProfile:Z

.field private isSeller:Z

.field protected isUserBeingFollowed:Z

.field private isUserViewingTheirOwnDetails:Z

.field protected item:Lcom/ebay/mobile/Item;

.field private itemsProviderSemantic:Lcom/ebay/mobile/connection/details/UserItemsProviderSemantic;

.field private memberSinceTextView:Landroid/widget/TextView;

.field private messageId:Ljava/lang/String;

.field private messageInfoDataManager:Lcom/ebay/mobile/connection/messages/m2mexp/MessageInfoDataManager;

.field private nonFatalReporter:Lcom/ebay/nonfatalreporter/NonFatalReporter;

.field private profileShareUrlFormat:Ljava/lang/String;

.field private ratingStar:Ljava/lang/String;

.field protected requireSignIn:Z

.field protected scrollViewSpacer:Landroid/view/View;

.field private searchDataManager:Lcom/ebay/common/content/dm/search/SearchDataManager;

.field private searchOtherCountries:Z

.field private showItemsForSale:Z

.field protected userId:Ljava/lang/String;

.field private userLocationTextView:Landroid/widget/TextView;

.field private userNameTextView:Landroid/widget/TextView;

.field private userPhoneNumber:Ljava/lang/String;

.field private userProfile:Lcom/ebay/nautilus/domain/data/UserProfile;

.field private userProfileImageUrl:Ljava/lang/String;

.field private userProfileImageView:Lcom/ebay/android/widget/RemoteImageView;

.field protected userProfileLoading:Z

.field private viewData:Lcom/ebay/mobile/viewitem/ViewItemViewData;

.field protected viewItemDataManager:Lcom/ebay/mobile/viewitem/ViewItemDataManager;

.field private viewItemDmObserver:Lcom/ebay/mobile/activities/UserDetailActivity$ViewItemDataManagerObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 111
    new-instance v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "UserDetailActivity"

    const-string v2, "User Detail activity"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/mobile/activities/UserDetailActivity;->logTag:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 108
    invoke-direct {p0}, Lcom/ebay/mobile/activities/CoreActivity;-><init>()V

    const/4 v0, 0x0

    .line 131
    iput-object v0, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userProfile:Lcom/ebay/nautilus/domain/data/UserProfile;

    const/4 v1, 0x0

    .line 133
    iput-boolean v1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userProfileLoading:Z

    .line 134
    iput-object v0, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userProfileImageUrl:Ljava/lang/String;

    .line 135
    iput-object v0, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userPhoneNumber:Ljava/lang/String;

    .line 136
    iput-boolean v1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->isUserViewingTheirOwnDetails:Z

    .line 137
    iput-boolean v1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->isUserBeingFollowed:Z

    .line 155
    new-instance v1, Lcom/ebay/mobile/activities/UserDetailActivity$FollowingDataManagerObserver;

    invoke-direct {v1, p0, v0}, Lcom/ebay/mobile/activities/UserDetailActivity$FollowingDataManagerObserver;-><init>(Lcom/ebay/mobile/activities/UserDetailActivity;Lcom/ebay/mobile/activities/UserDetailActivity$1;)V

    iput-object v1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->followingDataManagerObserver:Lcom/ebay/mobile/activities/UserDetailActivity$FollowingDataManagerObserver;

    return-void
.end method

.method static synthetic access$100(Lcom/ebay/mobile/activities/UserDetailActivity;)Z
    .locals 0

    .line 108
    iget-boolean p0, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->callTheSeller:Z

    return p0
.end method

.method static synthetic access$200(Lcom/ebay/mobile/activities/UserDetailActivity;)Ljava/lang/String;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userPhoneNumber:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ebay/mobile/activities/UserDetailActivity;)Z
    .locals 0

    .line 108
    iget-boolean p0, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->isLoadingPhoneNumber:Z

    return p0
.end method

.method static synthetic access$302(Lcom/ebay/mobile/activities/UserDetailActivity;Z)Z
    .locals 0

    .line 108
    iput-boolean p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->isLoadingPhoneNumber:Z

    return p1
.end method

.method static synthetic access$400(Lcom/ebay/mobile/activities/UserDetailActivity;)Lcom/ebay/mobile/connection/messages/m2mexp/MessageInfoDataManager;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->messageInfoDataManager:Lcom/ebay/mobile/connection/messages/m2mexp/MessageInfoDataManager;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ebay/mobile/activities/UserDetailActivity;)V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/ebay/mobile/activities/UserDetailActivity;->enableFavoriteButton()V

    return-void
.end method

.method private callSeller()V
    .locals 7

    .line 555
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/UserDetailActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 560
    :cond_0
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/common/Preferences;->getAuthentication()Lcom/ebay/nautilus/domain/app/Authentication;

    move-result-object v0

    .line 562
    new-instance v1, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    const-string v2, "CallSeller"

    sget-object v3, Lcom/ebay/nautilus/domain/analytics/TrackingType;->EVENT:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    invoke-direct {v1, v2, v3}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;-><init>(Ljava/lang/String;Lcom/ebay/nautilus/domain/analytics/TrackingType;)V

    .line 563
    new-instance v2, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;

    .line 564
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/UserDetailActivity;->getTrackingEventName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "customer_contact_sharing"

    const-string/jumbo v5, "viewSellerPhone"

    invoke-direct {v2, v3, v4, v5}, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    invoke-virtual {v1, v2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->addSourceIdentification(Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;)V

    const-string v2, "iid"

    .line 566
    iget-object v3, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->item:Lcom/ebay/mobile/Item;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->item:Lcom/ebay/mobile/Item;

    iget-wide v5, v3, Lcom/ebay/mobile/Item;->id:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v4

    :goto_0
    invoke-virtual {v1, v2, v3}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "u"

    if-eqz v0, :cond_2

    .line 567
    iget-object v4, v0, Lcom/ebay/nautilus/domain/app/Authentication;->user:Ljava/lang/String;

    :cond_2
    invoke-virtual {v1, v2, v4}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "slr"

    .line 568
    iget-object v2, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/UserDetailActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    .line 571
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 572
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userPhoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 573
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/UserDetailActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static createIntent(Landroid/content/Context;Lcom/ebay/mobile/viewitem/ViewItemViewData;Ljava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 351
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ebay/mobile/activities/UserDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo p0, "user_id"

    .line 353
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p0, "view_item_view_data"

    .line 354
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 356
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string/jumbo p0, "rating_star"

    .line 358
    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string p0, "is_sellers_other_item"

    .line 361
    invoke-virtual {v0, p0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p0, "isBuyer"

    .line 362
    invoke-virtual {v0, p0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p0, "isSeller"

    .line 363
    invoke-virtual {v0, p0, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo p0, "requiresSignIn"

    .line 364
    invoke-virtual {v0, p0, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo p0, "search_other_countries"

    .line 365
    invoke-virtual {v0, p0, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p0, "message_id"

    .line 366
    invoke-virtual {v0, p0, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p10, :cond_1

    .line 369
    invoke-virtual {v0, p10}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    :cond_1
    return-object v0
.end method

.method private disableFavoriteButton()V
    .locals 2

    const v0, 0x7f0a0069

    .line 1409
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/UserDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    const v0, 0x7f0a0d92

    .line 1410
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/UserDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private enableFavoriteButton()V
    .locals 2

    const v0, 0x7f0a0069

    .line 1415
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/UserDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    const v0, 0x7f0a0d92

    .line 1416
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/UserDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private enableMenuItems(Landroid/view/Menu;Ljava/lang/Boolean;)V
    .locals 13

    .line 1602
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v0

    sget-object v1, Lcom/ebay/mobile/dcs/Dcs$App$S;->profileShareUrl:Lcom/ebay/mobile/dcs/Dcs$App$S;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropString;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->profileShareUrlFormat:Ljava/lang/String;

    .line 1604
    iget-object v0, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->profileShareUrlFormat:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const v3, 0x7f0a09ce

    const v4, 0x7f120e01

    const/4 v5, 0x1

    .line 1606
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/ebay/mobile/activities/UserDetailActivity;->handleOverflowMenuItem(Landroid/view/Menu;IIZZ)Landroid/view/MenuItem;

    const v9, 0x7f0a09c1

    const v10, 0x7f1203d8

    const/4 v11, 0x1

    .line 1609
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    move-object v7, p0

    move-object v8, p1

    .line 1608
    invoke-direct/range {v7 .. v12}, Lcom/ebay/mobile/activities/UserDetailActivity;->handleOverflowMenuItem(Landroid/view/Menu;IIZZ)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method private getUserProfile()V
    .locals 5

    .line 743
    sget-object v0, Lcom/ebay/mobile/activities/UserDetailActivity;->logTag:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_0

    .line 745
    sget-object v0, Lcom/ebay/mobile/activities/UserDetailActivity;->logTag:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/ebay/nautilus/kernel/util/FwLog;->logMethod(Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;[Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    .line 748
    iput-boolean v0, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->isLoadingProfile:Z

    .line 749
    sget-object v1, Lcom/ebay/mobile/viewitem/ItemViewCommonProgressAndError$LayoutState;->TRANSLUCENT_PROGRESS:Lcom/ebay/mobile/viewitem/ItemViewCommonProgressAndError$LayoutState;

    invoke-static {p0, v1}, Lcom/ebay/mobile/viewitem/ItemViewCommonProgressAndError;->showLayouts(Landroid/app/Activity;Lcom/ebay/mobile/viewitem/ItemViewCommonProgressAndError$LayoutState;)V

    .line 752
    new-instance v1, Lcom/ebay/common/net/api/shopping/GetUserProfileNetLoader;

    .line 753
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/UserDetailActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v2

    invoke-static {p0}, Lcom/ebay/mobile/util/EbayApiUtil;->getShoppingApi(Landroid/content/Context;)Lcom/ebay/nautilus/domain/net/api/shopping/EbayShoppingApi;

    move-result-object v3

    iget-object v4, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userId:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/ebay/common/net/api/shopping/GetUserProfileNetLoader;-><init>(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/net/api/shopping/EbayShoppingApi;Ljava/lang/String;)V

    .line 754
    iput-boolean v0, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userProfileLoading:Z

    .line 755
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/UserDetailActivity;->getFwLoaderManager()Lcom/ebay/nautilus/shell/app/FwLoaderManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v0}, Lcom/ebay/nautilus/shell/app/FwLoaderManager;->start(ILcom/ebay/nautilus/shell/content/FwLoader;Z)V

    return-void
.end method

.method private handleAddMessageError(Lcom/ebay/common/content/EbaySimpleNetLoader;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/common/content/EbaySimpleNetLoader<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 862
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/ebay/mobile/activities/UserDetailActivity;->handleAddMessageError(Lcom/ebay/common/content/EbaySimpleNetLoader;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method private handleAddMessageError(Lcom/ebay/common/content/EbaySimpleNetLoader;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/common/content/EbaySimpleNetLoader<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 877
    invoke-virtual {p1}, Lcom/ebay/common/content/EbaySimpleNetLoader;->getServiceErrorsAndWarnings()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 878
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/net/EbayResponseError;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/net/EbayResponseError;->longMessage:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const p1, 0x7f12077c

    .line 881
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/UserDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    const p1, 0x7f120785

    .line 882
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/UserDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 885
    :cond_1
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    .line 886
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setIcon(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 887
    invoke-virtual {v1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    .line 888
    invoke-virtual {p2, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f1208ab

    new-instance v1, Lcom/ebay/mobile/activities/UserDetailActivity$2;

    invoke-direct {v1, p0, p3, p4}, Lcom/ebay/mobile/activities/UserDetailActivity$2;-><init>(Lcom/ebay/mobile/activities/UserDetailActivity;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 889
    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 902
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    .line 903
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private handleEbayResponseErrors(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/net/EbayResponseError;",
            ">;)Z"
        }
    .end annotation

    .line 843
    invoke-static {p1}, Lcom/ebay/common/util/EbayErrorUtil;->userNotLoggedIn(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 845
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ebay/common/Preferences;->isSignedIn()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 848
    invoke-static {p0}, Lcom/ebay/mobile/MyApp;->signOutForIafTokenFailure(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private handleOverflowMenuItem(Landroid/view/Menu;IIZZ)Landroid/view/MenuItem;
    .locals 1

    .line 1626
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1629
    invoke-virtual {p0, p3}, Lcom/ebay/mobile/activities/UserDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2, v0, p3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 1633
    invoke-interface {v0, p5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1634
    invoke-interface {v0, p4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    return-object v0
.end method

.method private onAddMessageComplete(Lcom/ebay/common/net/api/trading/AddMemberMessageAAQNetLoader;)V
    .locals 2

    .line 913
    invoke-virtual {p1}, Lcom/ebay/common/net/api/trading/AddMemberMessageAAQNetLoader;->isError()Z

    move-result p1

    if-nez p1, :cond_0

    const p1, 0x7f12076c

    .line 915
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/UserDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/ebay/mobile/util/UserNotifications;->showToast(Landroid/content/Context;Ljava/lang/String;ZZ)V

    :cond_0
    return-void
.end method

.method private onGetUserProfileComplete(Lcom/ebay/common/net/api/shopping/GetUserProfileNetLoader;)V
    .locals 1

    .line 927
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/UserDetailActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 932
    :cond_0
    invoke-virtual {p1}, Lcom/ebay/common/net/api/shopping/GetUserProfileNetLoader;->isError()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/ebay/common/net/api/shopping/GetUserProfileNetLoader;->getResponse()Lcom/ebay/nautilus/domain/net/EbayResponse;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 934
    invoke-virtual {p1}, Lcom/ebay/common/net/api/shopping/GetUserProfileNetLoader;->getResponse()Lcom/ebay/nautilus/domain/net/EbayResponse;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/net/api/shopping/GetUserProfileResponse;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/net/api/shopping/GetUserProfileResponse;->result:Lcom/ebay/nautilus/domain/data/UserProfile;

    iput-object p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userProfile:Lcom/ebay/nautilus/domain/data/UserProfile;

    .line 935
    iget-object p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userProfile:Lcom/ebay/nautilus/domain/data/UserProfile;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/UserProfile;->myWorldLargeImage:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userProfile:Lcom/ebay/nautilus/domain/data/UserProfile;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/UserProfile;->myWorldLargeImage:Ljava/lang/String;

    iget-object v0, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userProfileImageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 938
    iget-object p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userProfile:Lcom/ebay/nautilus/domain/data/UserProfile;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/UserProfile;->myWorldLargeImage:Ljava/lang/String;

    iput-object p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userProfileImageUrl:Ljava/lang/String;

    .line 939
    iget-object p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userProfileImageView:Lcom/ebay/android/widget/RemoteImageView;

    iget-object v0, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userProfileImageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ebay/android/widget/RemoteImageView;->setRemoteImageUrl(Ljava/lang/String;)V

    .line 942
    :cond_1
    iget-object p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userProfile:Lcom/ebay/nautilus/domain/data/UserProfile;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/UserProfile;->ratingStar:Ljava/lang/String;

    iput-object p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->ratingStar:Ljava/lang/String;

    .line 944
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/UserDetailActivity;->showUserProfile()V

    :cond_2
    return-void
.end method

.method private otherItems()V
    .locals 3

    .line 1424
    new-instance v0, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    const-string v1, "SeeSellersOtherItems"

    sget-object v2, Lcom/ebay/nautilus/domain/analytics/TrackingType;->PAGE_IMPRESSION:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    invoke-direct {v0, v1, v2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;-><init>(Ljava/lang/String;Lcom/ebay/nautilus/domain/analytics/TrackingType;)V

    invoke-virtual {p0}, Lcom/ebay/mobile/activities/UserDetailActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    .line 1426
    new-instance v0, Lcom/ebay/mobile/search/SearchIntentBuilder;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/search/SearchIntentBuilder;-><init>(Landroid/content/Context;)V

    .line 1427
    invoke-virtual {v0}, Lcom/ebay/mobile/search/SearchIntentBuilder;->setSellerNav()Lcom/ebay/mobile/search/SearchIntentBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userId:Ljava/lang/String;

    .line 1428
    invoke-virtual {v0, v1}, Lcom/ebay/mobile/search/SearchIntentBuilder;->setSellerId(Ljava/lang/String;)Lcom/ebay/mobile/search/SearchIntentBuilder;

    move-result-object v0

    new-instance v1, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;

    .line 1429
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/UserDetailActivity;->getTrackingEventName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ebay/mobile/search/SearchIntentBuilder;->setSourceIdentification(Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;)Lcom/ebay/mobile/search/SearchIntentBuilder;

    move-result-object v0

    .line 1431
    iget-boolean v1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->searchOtherCountries:Z

    if-eqz v1, :cond_0

    .line 1432
    invoke-virtual {v0}, Lcom/ebay/mobile/search/SearchIntentBuilder;->setPreferredItemLocationWorldwideLocation()Lcom/ebay/mobile/search/SearchIntentBuilder;

    .line 1434
    :cond_0
    invoke-virtual {v0}, Lcom/ebay/mobile/search/SearchIntentBuilder;->build()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/UserDetailActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private setCell(IJLjava/lang/String;I)V
    .locals 7

    .line 1137
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/UserDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 1138
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1140
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/UserDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 1141
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f100023

    .line 1140
    invoke-virtual {v0, v3, p5, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    const/4 v0, 0x2

    const/4 v2, 0x3

    const-wide/16 v5, 0x0

    cmp-long v3, p2, v5

    if-nez v3, :cond_0

    const v5, 0x7f120163

    .line 1144
    invoke-virtual {p0, v5}, Lcom/ebay/mobile/activities/UserDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p5, v2, v4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v2, v1

    aput-object p4, v2, v0

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1143
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const v5, 0x7f120162

    .line 1147
    invoke-virtual {p0, v5}, Lcom/ebay/mobile/activities/UserDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p5, v2, v4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v2, v1

    aput-object p4, v2, v0

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1146
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    if-lez v3, :cond_1

    .line 1152
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private setRating(Lcom/ebay/nautilus/domain/data/UserProfile$AverageRatingDetails;ILjava/lang/String;)V
    .locals 11

    .line 1081
    invoke-virtual {p0, p2}, Lcom/ebay/mobile/activities/UserDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p1, :cond_0

    const/16 p1, 0x8

    .line 1084
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_0
    const v0, 0x7f0a131d

    .line 1088
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1089
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0d2d

    .line 1091
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    .line 1092
    new-instance v1, Lcom/ebay/mobile/activities/UserDetailActivity$3;

    invoke-direct {v1, p0}, Lcom/ebay/mobile/activities/UserDetailActivity$3;-><init>(Lcom/ebay/mobile/activities/UserDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 1102
    iget-wide v1, p1, Lcom/ebay/nautilus/domain/data/UserProfile$AverageRatingDetails;->rating:D

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setRating(F)V

    .line 1105
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/UserDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1106
    iget-wide v2, p1, Lcom/ebay/nautilus/domain/data/UserProfile$AverageRatingDetails;->rating:D

    const-wide/16 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    .line 1108
    invoke-virtual {v0}, Landroid/widget/RatingBar;->getNumStars()I

    move-result v2

    const v3, 0x7f10001f

    const/4 v4, 0x3

    .line 1110
    new-array v4, v4, [Ljava/lang/Object;

    aput-object p3, v4, v8

    iget-wide v9, p1, Lcom/ebay/nautilus/domain/data/UserProfile$AverageRatingDetails;->rating:D

    .line 1112
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    .line 1111
    invoke-virtual {v1, v3, v2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const v2, 0x7f12015e

    .line 1116
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1118
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/RatingBar;->setContentDescription(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0aaf

    .line 1120
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 1121
    iget-wide v2, p1, Lcom/ebay/nautilus/domain/data/UserProfile$AverageRatingDetails;->ratingCount:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_2

    iget-wide v4, p1, Lcom/ebay/nautilus/domain/data/UserProfile$AverageRatingDetails;->ratingCount:J

    .line 1122
    :cond_2
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/UserDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f120b17

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {p1, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f100021

    long-to-int v0, v4

    .line 1123
    new-array v2, v6, [Ljava/lang/Object;

    aput-object p3, v2, v8

    .line 1124
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, v2, v7

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1125
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method private setupButton(IZ)V
    .locals 0

    .line 1445
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/UserDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    .line 1446
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 1447
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setupView(IZ)Landroid/view/View;
    .locals 0

    .line 1458
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/UserDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    .line 1461
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 1462
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-object p1
.end method

.method private share(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/NameValue;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1672
    new-instance v0, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    const-string v1, "SharingProfile"

    sget-object v2, Lcom/ebay/nautilus/domain/analytics/TrackingType;->EVENT:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    invoke-direct {v0, v1, v2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;-><init>(Ljava/lang/String;Lcom/ebay/nautilus/domain/analytics/TrackingType;)V

    if-eqz p1, :cond_0

    .line 1673
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1675
    invoke-virtual {v0, p1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->addProperties(Ljava/util/List;)V

    .line 1677
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/UserDetailActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    .line 1679
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v0, 0x7f1203e8

    .line 1681
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/UserDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "text/plain"

    .line 1682
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    .line 1683
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.TEXT"

    .line 1684
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const p2, 0x7f120e02

    .line 1686
    invoke-virtual {p0, p2}, Lcom/ebay/mobile/activities/UserDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/UserDetailActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static startActivity(Landroid/content/Context;Lcom/ebay/mobile/viewitem/ViewItemViewData;Ljava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;Landroid/content/Intent;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 321
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 324
    invoke-static/range {p0 .. p10}, Lcom/ebay/mobile/activities/UserDetailActivity;->createIntent(Landroid/content/Context;Lcom/ebay/mobile/viewitem/ViewItemViewData;Ljava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    .line 326
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static startActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    xor-int/lit8 v5, p3, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    .line 277
    invoke-static/range {v0 .. v10}, Lcom/ebay/mobile/activities/UserDetailActivity;->startActivity(Landroid/content/Context;Lcom/ebay/mobile/viewitem/ViewItemViewData;Ljava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method public static startActivity(Landroid/content/Context;Ljava/lang/String;ZZZLandroid/content/Intent;)V
    .locals 11
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v2, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move-object/from16 v10, p5

    .line 295
    invoke-static/range {v0 .. v10}, Lcom/ebay/mobile/activities/UserDetailActivity;->startActivity(Landroid/content/Context;Lcom/ebay/mobile/viewitem/ViewItemViewData;Ljava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method public static startActivity(Landroid/content/Context;Ljava/lang/String;ZZZLjava/lang/String;Landroid/content/Intent;)V
    .locals 11
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    .line 314
    invoke-static/range {v0 .. v10}, Lcom/ebay/mobile/activities/UserDetailActivity;->startActivity(Landroid/content/Context;Lcom/ebay/mobile/viewitem/ViewItemViewData;Ljava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method public static startActivityForBuyer(Landroid/content/Context;Lcom/ebay/mobile/viewitem/ViewItemViewData;Ljava/lang/String;)V
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 243
    invoke-static/range {v0 .. v10}, Lcom/ebay/mobile/activities/UserDetailActivity;->startActivity(Landroid/content/Context;Lcom/ebay/mobile/viewitem/ViewItemViewData;Ljava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method public static startActivityForSeller(Landroid/content/Context;Lcom/ebay/mobile/viewitem/ViewItemViewData;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v8, p5

    .line 261
    invoke-static/range {v0 .. v10}, Lcom/ebay/mobile/activities/UserDetailActivity;->startActivity(Landroid/content/Context;Lcom/ebay/mobile/viewitem/ViewItemViewData;Ljava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method private updateCharityLayout()V
    .locals 4

    const v0, 0x7f0a0386

    .line 675
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/UserDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 676
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v1

    .line 677
    iget-boolean v2, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->isUserViewingTheirOwnDetails:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/ebay/mobile/dcs/DcsBoolean;->ebayGivingProfile:Lcom/ebay/mobile/dcs/DcsBoolean;

    invoke-interface {v1, v2}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 679
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ebay/common/Preferences;->getCurrentSite()Lcom/ebay/nautilus/domain/EbaySite;

    move-result-object v1

    sget-object v2, Lcom/ebay/nautilus/domain/EbaySite;->UK:Lcom/ebay/nautilus/domain/EbaySite;

    invoke-virtual {v1, v2}, Lcom/ebay/nautilus/domain/EbaySite;->equals(Ljava/lang/Object;)Z

    move-result v1

    const v2, 0x7f0a0381

    if-eqz v1, :cond_0

    .line 681
    invoke-virtual {p0, v2}, Lcom/ebay/mobile/activities/UserDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f12063e

    .line 682
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    const v1, 0x7f0a0379

    .line 684
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x1

    .line 685
    invoke-direct {p0, v2, v1}, Lcom/ebay/mobile/activities/UserDetailActivity;->setupView(IZ)Landroid/view/View;

    const/4 v1, 0x0

    .line 686
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    .line 690
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected announceFollowChange()V
    .locals 2

    .line 1492
    iget-boolean v0, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->isUserBeingFollowed:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0a0d92

    .line 1494
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/UserDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f120175

    .line 1495
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/activities/UserDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const v0, 0x7f0a0069

    .line 1499
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/UserDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f120176

    .line 1500
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/activities/UserDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method protected askQuestion()V
    .locals 1

    const/4 v0, 0x0

    .line 1204
    invoke-virtual {p0, v0, v0}, Lcom/ebay/mobile/activities/UserDetailActivity;->askQuestion(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method protected askQuestion(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1212
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/common/Preferences;->getAuthentication()Lcom/ebay/nautilus/domain/app/Authentication;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1215
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/UserDetailActivity;->getTrackingEventName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/ebay/mobile/connection/idsignin/SignInActivity;->getIntentForSignIn(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, 0x5

    .line 1216
    invoke-virtual {p0, p1, p2}, Lcom/ebay/mobile/activities/UserDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 1220
    :cond_0
    new-instance v0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;

    iget-object v1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->item:Lcom/ebay/mobile/Item;

    iget-wide v1, v1, Lcom/ebay/mobile/Item;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userId:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->isBuyer:Z

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1222
    invoke-virtual {v0, p2}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->setPictureUrls(Ljava/util/ArrayList;)Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;

    .line 1224
    iget-boolean p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->isBuyer:Z

    if-nez p1, :cond_2

    .line 1226
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/UserDetailActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object p1

    .line 1228
    iget-object p2, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->item:Lcom/ebay/mobile/Item;

    iget-object v1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->viewData:Lcom/ebay/mobile/viewitem/ViewItemViewData;

    invoke-virtual {p2, p1, v1}, Lcom/ebay/mobile/Item;->currentPriceForType(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/mobile/viewitem/ViewItemViewData;)Lcom/ebay/nautilus/domain/data/ItemCurrency;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1230
    new-instance p2, Lcom/ebay/nautilus/domain/data/CurrencyAmount;

    iget-object v1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->item:Lcom/ebay/mobile/Item;

    iget-object v2, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->viewData:Lcom/ebay/mobile/viewitem/ViewItemViewData;

    invoke-virtual {v1, p1, v2}, Lcom/ebay/mobile/Item;->currentPriceForType(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/mobile/viewitem/ViewItemViewData;)Lcom/ebay/nautilus/domain/data/ItemCurrency;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/ebay/nautilus/domain/data/CurrencyAmount;-><init>(Lcom/ebay/nautilus/domain/data/ItemCurrency;)V

    goto :goto_0

    .line 1234
    :cond_1
    new-instance p2, Lcom/ebay/nautilus/domain/data/CurrencyAmount;

    iget-object p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->item:Lcom/ebay/mobile/Item;

    iget-object p1, p1, Lcom/ebay/mobile/Item;->currentPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-direct {p2, p1}, Lcom/ebay/nautilus/domain/data/CurrencyAmount;-><init>(Lcom/ebay/nautilus/domain/data/ItemCurrency;)V

    .line 1237
    :goto_0
    new-instance p1, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTrackingInfo;

    .line 1238
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/data/CurrencyAmount;->getValueAsDouble()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->item:Lcom/ebay/mobile/Item;

    iget-object v1, v1, Lcom/ebay/mobile/Item;->site:Ljava/lang/String;

    iget-object v2, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->item:Lcom/ebay/mobile/Item;

    iget-wide v2, v2, Lcom/ebay/mobile/Item;->primaryCategoryId:J

    long-to-double v2, v2

    .line 1239
    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, p2, v1, v2}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTrackingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1240
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 1242
    sget-object v1, Lcom/ebay/nautilus/domain/analytics/Tracking$Tag;->MESSAGE_DIRECTION:Ljava/lang/String;

    sget-object v2, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTagValues;->BUYER_ASK_QUESTION:Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTagValues;

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1243
    invoke-virtual {p1, p2}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTrackingInfo;->setMessageTag(Ljava/util/Map;)V

    .line 1244
    new-instance p2, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;

    invoke-virtual {p0}, Lcom/ebay/mobile/activities/UserDetailActivity;->getTrackingEventName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTrackingInfo;->setSid(Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;)V

    .line 1245
    invoke-virtual {v0, p1}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->setTrackingData(Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTrackingInfo;)Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;

    .line 1249
    :cond_2
    new-instance p1, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    sget-object p2, Lcom/ebay/nautilus/domain/analytics/Tracking$EventName;->CONTACT_SELLER:Ljava/lang/String;

    sget-object v1, Lcom/ebay/nautilus/domain/analytics/TrackingType;->EVENT:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    invoke-direct {p1, p2, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;-><init>(Ljava/lang/String;Lcom/ebay/nautilus/domain/analytics/TrackingType;)V

    .line 1250
    iget-object p2, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->item:Lcom/ebay/mobile/Item;

    if-eqz p2, :cond_4

    .line 1252
    iget-object p2, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->item:Lcom/ebay/mobile/Item;

    iget-wide v1, p2, Lcom/ebay/mobile/Item;->primaryCategoryId:J

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-lez p2, :cond_3

    const-string p2, "l1"

    .line 1254
    iget-object v1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->item:Lcom/ebay/mobile/Item;

    iget-wide v1, v1, Lcom/ebay/mobile/Item;->primaryCategoryId:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    :cond_3
    iget-object p2, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->item:Lcom/ebay/mobile/Item;

    iget-wide v1, p2, Lcom/ebay/mobile/Item;->secondaryCategoryId:J

    cmp-long p2, v1, v3

    if-lez p2, :cond_4

    const-string p2, "l2"

    .line 1258
    iget-object v1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->item:Lcom/ebay/mobile/Item;

    iget-wide v1, v1, Lcom/ebay/mobile/Item;->secondaryCategoryId:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1261
    :cond_4
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/UserDetailActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    .line 1263
    invoke-static {p0, v0}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->startActivity(Landroid/app/Activity;Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;)V

    :goto_1
    return-void
.end method

.method protected fillUIDetails()V
    .locals 5

    .line 638
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/common/Preferences;->getAuthentication()Lcom/ebay/nautilus/domain/app/Authentication;

    move-result-object v0

    .line 640
    iget-object v1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 643
    iget-object v1, v0, Lcom/ebay/nautilus/domain/app/Authentication;->user:Ljava/lang/String;

    iput-object v1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userId:Ljava/lang/String;

    .line 644
    sget-object v1, Lcom/ebay/mobile/activities/UserDetailActivity;->logTag:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v1, v1, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v1, :cond_0

    .line 646
    sget-object v1, Lcom/ebay/mobile/activities/UserDetailActivity;->logTag:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v2, "fillUIDetails, using logged in user for userid"

    invoke-static {v1, v2}, Lcom/ebay/nautilus/kernel/util/FwLog;->println(Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 649
    iget-object v3, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userId:Ljava/lang/String;

    iget-object v4, v0, Lcom/ebay/nautilus/domain/app/Authentication;->user:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->isUserViewingTheirOwnDetails:Z

    .line 651
    iget-object v3, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userNameTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 654
    iget-boolean v3, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->callTheSeller:Z

    if-eqz v3, :cond_2

    if-nez v0, :cond_4

    :cond_2
    const v0, 0x7f0a0446

    .line 656
    iget-boolean v3, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->isUserViewingTheirOwnDetails:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->item:Lcom/ebay/mobile/Item;

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    invoke-direct {p0, v0, v3}, Lcom/ebay/mobile/activities/UserDetailActivity;->setupButton(IZ)V

    :cond_4
    const v0, 0x7f0a0d40

    .line 659
    invoke-direct {p0, v0, v2}, Lcom/ebay/mobile/activities/UserDetailActivity;->setupView(IZ)Landroid/view/View;

    .line 661
    invoke-direct {p0}, Lcom/ebay/mobile/activities/UserDetailActivity;->updateCharityLayout()V

    const v0, 0x7f0a0931

    .line 663
    iget-object v3, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->item:Lcom/ebay/mobile/Item;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->item:Lcom/ebay/mobile/Item;

    iget-boolean v3, v3, Lcom/ebay/mobile/Item;->bsDetailsExists:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->isBuyer:Z

    if-nez v3, :cond_5

    const/4 v1, 0x1

    :cond_5
    invoke-direct {p0, v0, v1}, Lcom/ebay/mobile/activities/UserDetailActivity;->setupButton(IZ)V

    const v0, 0x7f0a0596

    .line 665
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/UserDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a0d41

    .line 666
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/UserDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 668
    iget-boolean v0, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->isUserViewingTheirOwnDetails:Z

    if-eqz v0, :cond_6

    const v0, 0x7f120fe5

    goto :goto_2

    :cond_6
    const v0, 0x7f120fe8

    :goto_2
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/UserDetailActivity;->setTitle(I)V

    .line 670
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/UserDetailActivity;->hideAndShowFavoriteButton()V

    return-void
.end method

.method public getTrackingEventName()Ljava/lang/String;
    .locals 1

    const-string v0, "UserProfile"

    return-object v0
.end method

.method protected hideAndShowFavoriteButton()V
    .locals 5

    const v0, 0x7f0a0d92

    .line 1478
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/UserDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0069

    .line 1479
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/activities/UserDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1481
    iget-boolean v2, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->isUserViewingTheirOwnDetails:Z

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->isUserBeingFollowed:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1482
    iget-boolean v2, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->isUserViewingTheirOwnDetails:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->isUserBeingFollowed:Z

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1484
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1485
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1487
    iget-object v0, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->scrollViewSpacer:Landroid/view/View;

    iget-boolean v1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->isUserViewingTheirOwnDetails:Z

    if-eqz v1, :cond_2

    const/16 v3, 0x8

    :cond_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected initUIState()Z
    .locals 5

    .line 702
    iget-object v0, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->feedbackStarImageView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->feedbackStarImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 706
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->feedbackCountTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0a0d40

    const/4 v2, 0x0

    .line 707
    invoke-direct {p0, v0, v2}, Lcom/ebay/mobile/activities/UserDetailActivity;->setupView(IZ)Landroid/view/View;

    const v0, 0x7f0a0654

    const/4 v3, 0x1

    .line 708
    invoke-direct {p0, v0, v3}, Lcom/ebay/mobile/activities/UserDetailActivity;->setupView(IZ)Landroid/view/View;

    const v0, 0x7f0a0931

    .line 709
    invoke-direct {p0, v0, v2}, Lcom/ebay/mobile/activities/UserDetailActivity;->setupButton(IZ)V

    const v0, 0x7f0a0b07

    .line 713
    invoke-direct {p0, v0, v3}, Lcom/ebay/mobile/activities/UserDetailActivity;->setupView(IZ)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 714
    iget-boolean v4, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->showItemsForSale:Z

    if-eqz v4, :cond_1

    const/16 v4, 0x8

    .line 716
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const v0, 0x7f0a0596

    .line 718
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/UserDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a0d41

    .line 719
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/UserDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f120fe3

    .line 720
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/UserDetailActivity;->setTitle(I)V

    .line 722
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/common/Preferences;->getAuthentication()Lcom/ebay/nautilus/domain/app/Authentication;

    move-result-object v0

    .line 725
    iget-boolean v1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->requireSignIn:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    if-nez v0, :cond_3

    .line 727
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/UserDetailActivity;->getTrackingEventName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/ebay/mobile/connection/idsignin/SignInActivity;->getIntentForSignIn(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x6

    .line 728
    invoke-virtual {p0, v0, v1}, Lcom/ebay/mobile/activities/UserDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return v2

    .line 733
    :cond_3
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/UserDetailActivity;->fillUIDetails()V

    return v3
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1174
    invoke-super {p0, p1, p2, p3}, Lcom/ebay/mobile/activities/CoreActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, -0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-ne p2, p3, :cond_0

    .line 1181
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/UserDetailActivity;->fillUIDetails()V

    .line 1183
    invoke-direct {p0}, Lcom/ebay/mobile/activities/UserDetailActivity;->getUserProfile()V

    goto :goto_0

    .line 1187
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/UserDetailActivity;->finish()V

    goto :goto_0

    :pswitch_1
    if-ne p2, p3, :cond_1

    .line 1191
    iget-object p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1193
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/UserDetailActivity;->askQuestion()V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onActivityResultSafe(IILandroid/content/Intent;)V
    .locals 0

    .line 1159
    invoke-super {p0, p1, p2, p3}, Lcom/ebay/mobile/activities/CoreActivity;->onActivityResultSafe(IILandroid/content/Intent;)V

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    .line 1162
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ebay/common/Preferences;->isSignedIn()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1164
    iget-object p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->followingDataManager:Lcom/ebay/common/content/dm/search/FollowingDataManager;

    iget-object p2, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userId:Ljava/lang/String;

    iget-object p3, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->followingDataManagerObserver:Lcom/ebay/mobile/activities/UserDetailActivity$FollowingDataManagerObserver;

    invoke-virtual {p1, p2, p3}, Lcom/ebay/common/content/dm/search/FollowingDataManager;->followUser(Ljava/lang/String;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;)Lcom/ebay/nautilus/domain/content/TaskSync;

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1273
    invoke-static {p0}, Lcom/ebay/mobile/util/Util;->networkAvailable(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1276
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x6

    const/4 v1, 0x1

    const/16 v2, 0xc

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 1397
    :sswitch_0
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ebay/common/Preferences;->getAuthentication()Lcom/ebay/nautilus/domain/app/Authentication;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1400
    invoke-direct {p0}, Lcom/ebay/mobile/activities/UserDetailActivity;->disableFavoriteButton()V

    .line 1401
    iget-object p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->followingDataManager:Lcom/ebay/common/content/dm/search/FollowingDataManager;

    sget-object v0, Lcom/ebay/nautilus/domain/data/FollowType;->USER:Lcom/ebay/nautilus/domain/data/FollowType;

    iget-object v1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->followingDataManagerObserver:Lcom/ebay/mobile/activities/UserDetailActivity$FollowingDataManagerObserver;

    invoke-virtual {p1, v0, v1, v2}, Lcom/ebay/common/content/dm/search/FollowingDataManager;->deleteFollow(Lcom/ebay/nautilus/domain/data/FollowType;Ljava/lang/String;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;)Lcom/ebay/nautilus/domain/content/TaskSync;

    goto/16 :goto_0

    .line 1342
    :sswitch_1
    new-instance p1, Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;

    iget-object v0, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userId:Ljava/lang/String;

    invoke-direct {p1, p0, v0}, Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v0, Lcom/ebay/nautilus/domain/data/trading/CommentType;->POSITIVE:Lcom/ebay/nautilus/domain/data/trading/CommentType;

    .line 1344
    invoke-virtual {p1, v0}, Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;->setCommentType(Lcom/ebay/nautilus/domain/data/trading/CommentType;)Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;

    move-result-object p1

    .line 1345
    invoke-virtual {p1}, Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    .line 1342
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/UserDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1373
    :sswitch_2
    invoke-direct {p0}, Lcom/ebay/mobile/activities/UserDetailActivity;->otherItems()V

    goto/16 :goto_0

    .line 1348
    :sswitch_3
    new-instance p1, Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;

    iget-object v0, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userId:Ljava/lang/String;

    invoke-direct {p1, p0, v0}, Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v0, Lcom/ebay/nautilus/domain/data/trading/CommentType;->NEUTRAL:Lcom/ebay/nautilus/domain/data/trading/CommentType;

    .line 1350
    invoke-virtual {p1, v0}, Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;->setCommentType(Lcom/ebay/nautilus/domain/data/trading/CommentType;)Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;

    move-result-object p1

    .line 1351
    invoke-virtual {p1}, Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    .line 1348
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/UserDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1354
    :sswitch_4
    new-instance p1, Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;

    iget-object v0, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userId:Ljava/lang/String;

    invoke-direct {p1, p0, v0}, Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v0, Lcom/ebay/nautilus/domain/data/trading/CommentType;->NEGATIVE:Lcom/ebay/nautilus/domain/data/trading/CommentType;

    .line 1356
    invoke-virtual {p1, v0}, Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;->setCommentType(Lcom/ebay/nautilus/domain/data/trading/CommentType;)Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;

    move-result-object p1

    .line 1357
    invoke-virtual {p1}, Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    .line 1354
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/UserDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1376
    :sswitch_5
    iget-object p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->viewData:Lcom/ebay/mobile/viewitem/ViewItemViewData;

    invoke-static {p0, p1}, Lcom/ebay/mobile/viewitem/ItemViewSellersLegalInfoActivity;->StartActivity(Landroid/app/Activity;Lcom/ebay/mobile/viewitem/ViewItemViewData;)V

    goto/16 :goto_0

    .line 1361
    :sswitch_6
    new-instance p1, Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;

    iget-object v0, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userId:Ljava/lang/String;

    invoke-direct {p1, p0, v0}, Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/UserDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1380
    :sswitch_7
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/ebay/mobile/charity/CharityHubActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v0, "spoke"

    const-string v1, "favorites"

    .line 1381
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1382
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/UserDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1385
    :sswitch_8
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ebay/common/Preferences;->isSignedIn()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1387
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/UserDetailActivity;->getTrackingEventName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/ebay/mobile/connection/idsignin/SignInActivity;->getIntentForSignIn(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x4

    .line 1388
    invoke-virtual {p0, p1, v0}, Lcom/ebay/mobile/activities/UserDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1392
    :cond_1
    invoke-direct {p0}, Lcom/ebay/mobile/activities/UserDetailActivity;->disableFavoriteButton()V

    .line 1393
    iget-object p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->followingDataManager:Lcom/ebay/common/content/dm/search/FollowingDataManager;

    iget-object v0, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userId:Ljava/lang/String;

    iget-object v1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->followingDataManagerObserver:Lcom/ebay/mobile/activities/UserDetailActivity$FollowingDataManagerObserver;

    invoke-virtual {p1, v0, v1}, Lcom/ebay/common/content/dm/search/FollowingDataManager;->followUser(Ljava/lang/String;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;)Lcom/ebay/nautilus/domain/content/TaskSync;

    goto/16 :goto_0

    .line 1286
    :pswitch_0
    new-instance p1, Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;

    iget-object v1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userId:Ljava/lang/String;

    invoke-direct {p1, p0, v1}, Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v1, Lcom/ebay/nautilus/domain/data/trading/CommentType;->POSITIVE:Lcom/ebay/nautilus/domain/data/trading/CommentType;

    .line 1288
    invoke-virtual {p1, v1}, Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;->setCommentType(Lcom/ebay/nautilus/domain/data/trading/CommentType;)Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;

    move-result-object p1

    .line 1289
    invoke-virtual {p1, v0}, Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;->setMonthRange(I)Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;

    move-result-object p1

    .line 1290
    invoke-virtual {p1}, Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    .line 1286
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/UserDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1279
    :pswitch_1
    new-instance p1, Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;

    iget-object v0, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userId:Ljava/lang/String;

    invoke-direct {p1, p0, v0}, Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v0, Lcom/ebay/nautilus/domain/data/trading/CommentType;->POSITIVE:Lcom/ebay/nautilus/domain/data/trading/CommentType;

    .line 1281
    invoke-virtual {p1, v0}, Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;->setCommentType(Lcom/ebay/nautilus/domain/data/trading/CommentType;)Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;

    move-result-object p1

    .line 1282
    invoke-virtual {p1, v1}, Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;->setMonthRange(I)Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;

    move-result-object p1

    .line 1283
    invoke-virtual {p1}, Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    .line 1279
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/UserDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1293
    :pswitch_2
    new-instance p1, Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;

    iget-object v0, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userId:Ljava/lang/String;

    invoke-direct {p1, p0, v0}, Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v0, Lcom/ebay/nautilus/domain/data/trading/CommentType;->POSITIVE:Lcom/ebay/nautilus/domain/data/trading/CommentType;

    .line 1295
    invoke-virtual {p1, v0}, Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;->setCommentType(Lcom/ebay/nautilus/domain/data/trading/CommentType;)Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;

    move-result-object p1

    .line 1296
    invoke-virtual {p1, v2}, Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;->setMonthRange(I)Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;

    move-result-object p1

    .line 1297
    invoke-virtual {p1}, Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    .line 1293
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/UserDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1307
    :pswitch_3
    new-instance p1, Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;

    iget-object v1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userId:Ljava/lang/String;

    invoke-direct {p1, p0, v1}, Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v1, Lcom/ebay/nautilus/domain/data/trading/CommentType;->NEUTRAL:Lcom/ebay/nautilus/domain/data/trading/CommentType;

    .line 1309
    invoke-virtual {p1, v1}, Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;->setCommentType(Lcom/ebay/nautilus/domain/data/trading/CommentType;)Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;

    move-result-object p1

    .line 1310
    invoke-virtual {p1, v0}, Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;->setMonthRange(I)Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;

    move-result-object p1

    .line 1311
    invoke-virtual {p1}, Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    .line 1307
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/UserDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1300
    :pswitch_4
    new-instance p1, Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;

    iget-object v0, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userId:Ljava/lang/String;

    invoke-direct {p1, p0, v0}, Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v0, Lcom/ebay/nautilus/domain/data/trading/CommentType;->NEUTRAL:Lcom/ebay/nautilus/domain/data/trading/CommentType;

    .line 1302
    invoke-virtual {p1, v0}, Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;->setCommentType(Lcom/ebay/nautilus/domain/data/trading/CommentType;)Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;

    move-result-object p1

    .line 1303
    invoke-virtual {p1, v1}, Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;->setMonthRange(I)Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;

    move-result-object p1

    .line 1304
    invoke-virtual {p1}, Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    .line 1300
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/UserDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1314
    :pswitch_5
    new-instance p1, Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;

    iget-object v0, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userId:Ljava/lang/String;

    invoke-direct {p1, p0, v0}, Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v0, Lcom/ebay/nautilus/domain/data/trading/CommentType;->NEUTRAL:Lcom/ebay/nautilus/domain/data/trading/CommentType;

    .line 1316
    invoke-virtual {p1, v0}, Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;->setCommentType(Lcom/ebay/nautilus/domain/data/trading/CommentType;)Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;

    move-result-object p1

    .line 1317
    invoke-virtual {p1, v2}, Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;->setMonthRange(I)Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;

    move-result-object p1

    .line 1318
    invoke-virtual {p1}, Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    .line 1314
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/UserDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1328
    :pswitch_6
    new-instance p1, Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;

    iget-object v1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userId:Ljava/lang/String;

    invoke-direct {p1, p0, v1}, Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v1, Lcom/ebay/nautilus/domain/data/trading/CommentType;->NEGATIVE:Lcom/ebay/nautilus/domain/data/trading/CommentType;

    .line 1330
    invoke-virtual {p1, v1}, Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;->setCommentType(Lcom/ebay/nautilus/domain/data/trading/CommentType;)Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;

    move-result-object p1

    .line 1331
    invoke-virtual {p1, v0}, Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;->setMonthRange(I)Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;

    move-result-object p1

    .line 1332
    invoke-virtual {p1}, Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    .line 1328
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/UserDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1321
    :pswitch_7
    new-instance p1, Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;

    iget-object v0, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userId:Ljava/lang/String;

    invoke-direct {p1, p0, v0}, Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v0, Lcom/ebay/nautilus/domain/data/trading/CommentType;->NEGATIVE:Lcom/ebay/nautilus/domain/data/trading/CommentType;

    .line 1323
    invoke-virtual {p1, v0}, Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;->setCommentType(Lcom/ebay/nautilus/domain/data/trading/CommentType;)Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;

    move-result-object p1

    .line 1324
    invoke-virtual {p1, v1}, Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;->setMonthRange(I)Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;

    move-result-object p1

    .line 1325
    invoke-virtual {p1}, Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    .line 1321
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/UserDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1335
    :pswitch_8
    new-instance p1, Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;

    iget-object v0, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userId:Ljava/lang/String;

    invoke-direct {p1, p0, v0}, Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v0, Lcom/ebay/nautilus/domain/data/trading/CommentType;->NEGATIVE:Lcom/ebay/nautilus/domain/data/trading/CommentType;

    .line 1337
    invoke-virtual {p1, v0}, Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;->setCommentType(Lcom/ebay/nautilus/domain/data/trading/CommentType;)Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;

    move-result-object p1

    .line 1338
    invoke-virtual {p1, v2}, Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;->setMonthRange(I)Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;

    move-result-object p1

    .line 1339
    invoke-virtual {p1}, Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    .line 1335
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/UserDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1370
    :pswitch_9
    invoke-direct {p0}, Lcom/ebay/mobile/activities/UserDetailActivity;->callSeller()V

    goto :goto_0

    .line 1364
    :pswitch_a
    iget-object p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1366
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/UserDetailActivity;->askQuestion()V

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0446
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f0a0f89
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7f0a0f9c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x7f0a0069 -> :sswitch_8
        0x7f0a0379 -> :sswitch_7
        0x7f0a0381 -> :sswitch_7
        0x7f0a0654 -> :sswitch_6
        0x7f0a0931 -> :sswitch_5
        0x7f0a0a65 -> :sswitch_4
        0x7f0a0a67 -> :sswitch_3
        0x7f0a0b07 -> :sswitch_2
        0x7f0a0c3c -> :sswitch_1
        0x7f0a0d40 -> :sswitch_6
        0x7f0a0d92 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 378
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->onCreate(Landroid/os/Bundle;)V

    .line 380
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object p1

    .line 381
    sget-object v0, Lcom/ebay/mobile/dcs/Dcs$Connect$B;->callTheSeller:Lcom/ebay/mobile/dcs/Dcs$Connect$B;

    invoke-interface {p1, v0}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->callTheSeller:Z

    .line 383
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/UserDetailActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/ebay/nautilus/kernel/content/EbayContext;->getNonFatalReporter()Lcom/ebay/nonfatalreporter/NonFatalReporter;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->nonFatalReporter:Lcom/ebay/nonfatalreporter/NonFatalReporter;

    .line 385
    sget-object v0, Lcom/ebay/mobile/dcs/Dcs$Connect$I;->profileForceDesignSystem:Lcom/ebay/mobile/dcs/Dcs$Connect$I;

    invoke-interface {p1, v0}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropInteger;)I

    move-result v0

    const v1, 0x7f0d0532

    const v2, 0x7f0d0531

    if-lez v0, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 403
    invoke-virtual {p0, v2}, Lcom/ebay/mobile/activities/UserDetailActivity;->setContentView(I)V

    goto :goto_0

    .line 393
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/activities/UserDetailActivity;->setContentView(I)V

    goto :goto_0

    .line 398
    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/ebay/mobile/activities/UserDetailActivity;->setContentView(I)V

    goto :goto_0

    .line 411
    :cond_0
    invoke-static {}, Lcom/ebay/mobile/themes/Ds6Configuration;->getInstance()Lcom/ebay/mobile/themes/Ds6ConfigurationContract;

    move-result-object v0

    invoke-interface {v0}, Lcom/ebay/mobile/themes/Ds6ConfigurationContract;->isDs6Applied()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 413
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/activities/UserDetailActivity;->setContentView(I)V

    goto :goto_0

    .line 417
    :cond_1
    invoke-virtual {p0, v2}, Lcom/ebay/mobile/activities/UserDetailActivity;->setContentView(I)V

    .line 421
    :goto_0
    new-instance v0, Lcom/ebay/mobile/activities/UserDetailActivity$ViewItemDataManagerObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ebay/mobile/activities/UserDetailActivity$ViewItemDataManagerObserver;-><init>(Lcom/ebay/mobile/activities/UserDetailActivity;Lcom/ebay/mobile/activities/UserDetailActivity$1;)V

    iput-object v0, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->viewItemDmObserver:Lcom/ebay/mobile/activities/UserDetailActivity$ViewItemDataManagerObserver;

    .line 423
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/UserDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "user_id"

    .line 424
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userId:Ljava/lang/String;

    const-string v2, "isBuyer"

    const/4 v3, 0x0

    .line 425
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->isBuyer:Z

    const-string v2, "isSeller"

    .line 426
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->isSeller:Z

    const-string/jumbo v2, "rating_star"

    .line 427
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->ratingStar:Ljava/lang/String;

    const-string v2, "is_sellers_other_item"

    .line 428
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->hasOtherItems:Z

    .line 430
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/UserDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v4, "view_item_view_data"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/ebay/mobile/viewitem/ViewItemViewData;

    iput-object v2, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->viewData:Lcom/ebay/mobile/viewitem/ViewItemViewData;

    const-string/jumbo v2, "requiresSignIn"

    .line 431
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->requireSignIn:Z

    const-string/jumbo v2, "search_other_countries"

    .line 432
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->searchOtherCountries:Z

    .line 434
    sget-object v2, Lcom/ebay/mobile/dcs/Dcs$Connect$B;->messageSenderLogging:Lcom/ebay/mobile/dcs/Dcs$Connect$B;

    invoke-interface {p1, v2}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "message_id"

    .line 435
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->messageId:Ljava/lang/String;

    :cond_2
    const-string p1, "noti_type_id"

    const/4 v2, -0x1

    .line 438
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v2, :cond_3

    .line 441
    sget-object p1, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->BUCKSEXP:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    invoke-virtual {p1}, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lcom/ebay/mobile/ServiceStarter;->startUpdateNotificationCacheService(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const p1, 0x7f0a0f84

    .line 445
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/UserDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/ebay/android/widget/RemoteImageView;

    iput-object p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userProfileImageView:Lcom/ebay/android/widget/RemoteImageView;

    const p1, 0x7f0a0653

    .line 446
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/UserDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->feedbackCountTextView:Landroid/widget/TextView;

    const p1, 0x7f0a0f88

    .line 448
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/UserDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userNameTextView:Landroid/widget/TextView;

    const p1, 0x7f0a0657

    .line 449
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/UserDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->feedbackStarImageView:Landroid/widget/ImageView;

    const p1, 0x7f0a09b2

    .line 450
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/UserDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->memberSinceTextView:Landroid/widget/TextView;

    const p1, 0x7f0a13b9

    .line 451
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/UserDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userLocationTextView:Landroid/widget/TextView;

    const p1, 0x7f0a0e50

    .line 454
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/UserDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->scrollViewSpacer:Landroid/view/View;

    const p1, 0x7f0a0280

    .line 455
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/UserDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->buttonLayout:Landroid/view/View;

    const p1, 0x7f0a0069

    .line 457
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/UserDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/ebay/mobile/sell/widget/TextImageButton;

    const v0, 0x7f0a0d92

    .line 458
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/UserDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ebay/mobile/sell/widget/TextImageButton;

    const v1, 0x7f080367

    .line 460
    invoke-virtual {p1, v1}, Lcom/ebay/mobile/sell/widget/TextImageButton;->setButtonDrawable(I)V

    const p1, 0x7f0802a0

    .line 461
    invoke-virtual {v0, p1}, Lcom/ebay/mobile/sell/widget/TextImageButton;->setButtonDrawable(I)V

    .line 463
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/UserDetailActivity;->initUIState()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 465
    invoke-direct {p0}, Lcom/ebay/mobile/activities/UserDetailActivity;->getUserProfile()V

    .line 467
    :cond_4
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/UserDetailActivity;->initDataManagers()V

    .line 469
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object p1

    sget-object v0, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Connect$B;->profileItemsForSale:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Connect$B;

    invoke-interface {p1, v0}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->showItemsForSale:Z

    .line 470
    iget-boolean p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->showItemsForSale:Z

    if-eqz p1, :cond_5

    .line 472
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/UserDetailActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object p1

    new-instance v0, Lcom/ebay/common/content/dm/search/SearchDataManager$KeyParams;

    invoke-direct {v0}, Lcom/ebay/common/content/dm/search/SearchDataManager$KeyParams;-><init>()V

    invoke-static {p1, v0}, Lcom/ebay/nautilus/domain/content/DataManager;->get(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/content/DataManager$DataManagerKeyParams;)Lcom/ebay/nautilus/domain/content/DataManager;

    move-result-object p1

    check-cast p1, Lcom/ebay/common/content/dm/search/SearchDataManager;

    iput-object p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->searchDataManager:Lcom/ebay/common/content/dm/search/SearchDataManager;

    .line 474
    :cond_5
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/UserDetailActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v2

    .line 476
    invoke-static {}, Lcom/ebay/mobile/themes/Ds6Configuration;->getInstance()Lcom/ebay/mobile/themes/Ds6ConfigurationContract;

    move-result-object p1

    invoke-interface {p1}, Lcom/ebay/mobile/themes/Ds6ConfigurationContract;->isDs6Applied()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 479
    new-instance p1, Lcom/ebay/mobile/connection/details/UserItemsProviderSemantic;

    iget-object v1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userId:Ljava/lang/String;

    iget-object v3, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->searchDataManager:Lcom/ebay/common/content/dm/search/SearchDataManager;

    const/4 v5, 0x1

    iget-boolean v6, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->searchOtherCountries:Z

    move-object v0, p1

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, Lcom/ebay/mobile/connection/details/UserItemsProviderSemantic;-><init>(Ljava/lang/String;Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/common/content/dm/search/SearchDataManager;Lcom/ebay/mobile/activities/UserDetailActivity;ZZ)V

    iput-object p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->itemsProviderSemantic:Lcom/ebay/mobile/connection/details/UserItemsProviderSemantic;

    goto :goto_1

    .line 485
    :cond_6
    iget-boolean p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->showItemsForSale:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->searchDataManager:Lcom/ebay/common/content/dm/search/SearchDataManager;

    if-eqz p1, :cond_7

    .line 487
    new-instance p1, Lcom/ebay/mobile/connection/details/UserItemsProviderSemantic;

    iget-object v1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userId:Ljava/lang/String;

    iget-object v3, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->searchDataManager:Lcom/ebay/common/content/dm/search/SearchDataManager;

    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->searchOtherCountries:Z

    move-object v0, p1

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, Lcom/ebay/mobile/connection/details/UserItemsProviderSemantic;-><init>(Ljava/lang/String;Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/common/content/dm/search/SearchDataManager;Lcom/ebay/mobile/activities/UserDetailActivity;ZZ)V

    iput-object p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->itemsProviderSemantic:Lcom/ebay/mobile/connection/details/UserItemsProviderSemantic;

    :cond_7
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onInitializeDataManagers(Lcom/ebay/nautilus/shell/app/DataManagerContainer;)V
    .locals 3

    .line 612
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->onInitializeDataManagers(Lcom/ebay/nautilus/shell/app/DataManagerContainer;)V

    .line 614
    sget-object v0, Lcom/ebay/mobile/connection/messages/m2mexp/MessageInfoDataManager;->KEY:Lcom/ebay/mobile/connection/messages/m2mexp/MessageInfoDataManager$KeyParams;

    invoke-virtual {p1, v0, p0}, Lcom/ebay/nautilus/shell/app/DataManagerContainer;->initialize(Lcom/ebay/nautilus/domain/content/DataManager$DataManagerKeyParams;Ljava/lang/Object;)Lcom/ebay/nautilus/domain/content/DataManager;

    move-result-object v0

    check-cast v0, Lcom/ebay/mobile/connection/messages/m2mexp/MessageInfoDataManager;

    iput-object v0, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->messageInfoDataManager:Lcom/ebay/mobile/connection/messages/m2mexp/MessageInfoDataManager;

    .line 616
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/common/Preferences;->getAuthentication()Lcom/ebay/nautilus/domain/app/Authentication;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 619
    new-instance v1, Lcom/ebay/common/content/dm/search/FollowingDataManager$KeyParams;

    invoke-direct {v1, v0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$KeyParams;-><init>(Lcom/ebay/nautilus/domain/app/Authentication;)V

    iget-object v2, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->followingDataManagerObserver:Lcom/ebay/mobile/activities/UserDetailActivity$FollowingDataManagerObserver;

    .line 620
    invoke-virtual {p1, v1, v2}, Lcom/ebay/nautilus/shell/app/DataManagerContainer;->initialize(Lcom/ebay/nautilus/domain/content/DataManager$DataManagerKeyParams;Ljava/lang/Object;)Lcom/ebay/nautilus/domain/content/DataManager;

    move-result-object v1

    check-cast v1, Lcom/ebay/common/content/dm/search/FollowingDataManager;

    iput-object v1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->followingDataManager:Lcom/ebay/common/content/dm/search/FollowingDataManager;

    .line 624
    :cond_0
    iget-boolean v1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->isUserViewingTheirOwnDetails:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 626
    iget-object v0, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->followingDataManager:Lcom/ebay/common/content/dm/search/FollowingDataManager;

    iget-object v1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->followingDataManagerObserver:Lcom/ebay/mobile/activities/UserDetailActivity$FollowingDataManagerObserver;

    invoke-virtual {v0, v1}, Lcom/ebay/common/content/dm/search/FollowingDataManager;->loadFollows(Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;)Lcom/ebay/nautilus/domain/content/TaskSync;

    .line 629
    :cond_1
    iget-object v0, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->viewData:Lcom/ebay/mobile/viewitem/ViewItemViewData;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->viewData:Lcom/ebay/mobile/viewitem/ViewItemViewData;

    iget-object v0, v0, Lcom/ebay/mobile/viewitem/ViewItemViewData;->keyParams:Lcom/ebay/mobile/viewitem/ViewItemDataManager$KeyParams;

    if-eqz v0, :cond_2

    .line 631
    iget-object v0, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->viewData:Lcom/ebay/mobile/viewitem/ViewItemViewData;

    iget-object v0, v0, Lcom/ebay/mobile/viewitem/ViewItemViewData;->keyParams:Lcom/ebay/mobile/viewitem/ViewItemDataManager$KeyParams;

    iget-object v1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->viewItemDmObserver:Lcom/ebay/mobile/activities/UserDetailActivity$ViewItemDataManagerObserver;

    invoke-virtual {p1, v0, v1}, Lcom/ebay/nautilus/shell/app/DataManagerContainer;->initialize(Lcom/ebay/nautilus/domain/content/DataManager$DataManagerKeyParams;Ljava/lang/Object;)Lcom/ebay/nautilus/domain/content/DataManager;

    move-result-object p1

    check-cast p1, Lcom/ebay/mobile/viewitem/ViewItemDataManager;

    iput-object p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->viewItemDataManager:Lcom/ebay/mobile/viewitem/ViewItemDataManager;

    .line 632
    iget-object p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->viewItemDataManager:Lcom/ebay/mobile/viewitem/ViewItemDataManager;

    iget-object v0, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->viewItemDmObserver:Lcom/ebay/mobile/activities/UserDetailActivity$ViewItemDataManagerObserver;

    iget-object v1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->viewData:Lcom/ebay/mobile/viewitem/ViewItemViewData;

    invoke-virtual {p1, v0, v1}, Lcom/ebay/mobile/viewitem/ViewItemDataManager;->loadData(Lcom/ebay/mobile/viewitem/ViewItemDataManager$Observer;Lcom/ebay/mobile/viewitem/ViewItemViewData;)Z

    :cond_2
    return-void
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 2

    .line 1571
    invoke-super {p0, p1, p2}, Lcom/ebay/mobile/activities/CoreActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1576
    iget-object v0, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1578
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/ebay/mobile/activities/UserDetailActivity;->enableMenuItems(Landroid/view/Menu;Ljava/lang/Boolean;)V

    .line 1582
    :cond_0
    new-instance p2, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    const-string v0, "OverflowMenu"

    sget-object v1, Lcom/ebay/nautilus/domain/analytics/TrackingType;->EVENT:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    invoke-direct {p2, v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;-><init>(Ljava/lang/String;Lcom/ebay/nautilus/domain/analytics/TrackingType;)V

    .line 1583
    new-instance v0, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;

    invoke-virtual {p0}, Lcom/ebay/mobile/activities/UserDetailActivity;->getTrackingEventName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->addSourceIdentification(Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;)V

    .line 1584
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/UserDetailActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    :cond_1
    return p1
.end method

.method public onMessageInfoResult(Lcom/ebay/mobile/connection/messages/m2mexp/MessageInfoDataManager;Lcom/ebay/mobile/connection/messages/m2mexp/MessageInfo;)V
    .locals 3

    if-eqz p2, :cond_0

    .line 516
    iget-object p1, p2, Lcom/ebay/mobile/connection/messages/m2mexp/MessageInfo;->modules:Lcom/ebay/mobile/connection/messages/m2mexp/MessageInfo$Modules;

    if-eqz p1, :cond_0

    iget-object p1, p2, Lcom/ebay/mobile/connection/messages/m2mexp/MessageInfo;->modules:Lcom/ebay/mobile/connection/messages/m2mexp/MessageInfo$Modules;

    iget-object p1, p1, Lcom/ebay/mobile/connection/messages/m2mexp/MessageInfo$Modules;->contactInfo:Lcom/ebay/mobile/connection/messages/m2mexp/MessageInfo$ContactInfo;

    if-eqz p1, :cond_0

    .line 518
    iget-object p1, p2, Lcom/ebay/mobile/connection/messages/m2mexp/MessageInfo;->modules:Lcom/ebay/mobile/connection/messages/m2mexp/MessageInfo$Modules;

    iget-object p1, p1, Lcom/ebay/mobile/connection/messages/m2mexp/MessageInfo$Modules;->contactInfo:Lcom/ebay/mobile/connection/messages/m2mexp/MessageInfo$ContactInfo;

    iget-object p1, p1, Lcom/ebay/mobile/connection/messages/m2mexp/MessageInfo$ContactInfo;->phoneNumber:Ljava/lang/String;

    iput-object p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userPhoneNumber:Ljava/lang/String;

    .line 521
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/UserDetailActivity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 526
    iput-boolean p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->isLoadingPhoneNumber:Z

    .line 527
    iget-boolean p2, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->isLoadingProfile:Z

    if-nez p2, :cond_2

    .line 529
    sget-object p2, Lcom/ebay/mobile/viewitem/ItemViewCommonProgressAndError$LayoutState;->NORMAL:Lcom/ebay/mobile/viewitem/ItemViewCommonProgressAndError$LayoutState;

    invoke-static {p0, p2}, Lcom/ebay/mobile/viewitem/ItemViewCommonProgressAndError;->showLayouts(Landroid/app/Activity;Lcom/ebay/mobile/viewitem/ItemViewCommonProgressAndError$LayoutState;)V

    .line 532
    :cond_2
    iget-boolean p2, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->isUserViewingTheirOwnDetails:Z

    const/4 v0, 0x1

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->item:Lcom/ebay/mobile/Item;

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_5

    .line 535
    iget-object p2, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userPhoneNumber:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const v1, 0x7f0a0447

    const v2, 0x7f0a0446

    if-nez p2, :cond_4

    .line 537
    invoke-virtual {p0, v2}, Lcom/ebay/mobile/activities/UserDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const p2, 0x7f1203c2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    .line 538
    invoke-direct {p0, v2, v0}, Lcom/ebay/mobile/activities/UserDetailActivity;->setupButton(IZ)V

    .line 539
    invoke-direct {p0, v1, v0}, Lcom/ebay/mobile/activities/UserDetailActivity;->setupButton(IZ)V

    goto :goto_1

    .line 543
    :cond_4
    invoke-direct {p0, v1, p1}, Lcom/ebay/mobile/activities/UserDetailActivity;->setupButton(IZ)V

    .line 544
    invoke-direct {p0, v2, v0}, Lcom/ebay/mobile/activities/UserDetailActivity;->setupButton(IZ)V

    goto :goto_1

    :cond_5
    const p1, 0x7f0a0445

    .line 549
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/UserDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .line 1648
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a09c1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a09ce

    if-eq v0, v1, :cond_0

    .line 1661
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 1651
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1652
    new-instance v0, Lcom/ebay/nautilus/domain/data/NameValue;

    const-string/jumbo v1, "sharerId"

    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ebay/common/Preferences;->getCurrentUser()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/ebay/nautilus/domain/data/NameValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1653
    new-instance v0, Lcom/ebay/nautilus/domain/data/NameValue;

    const-string/jumbo v1, "profileId"

    iget-object v3, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userId:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/ebay/nautilus/domain/data/NameValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1654
    iget-object v0, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->profileShareUrlFormat:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 1655
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ebay/common/Preferences;->getCurrentSite()Lcom/ebay/nautilus/domain/EbaySite;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ebay/nautilus/domain/EbaySite;->getDomain()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    iget-object v3, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1654
    invoke-direct {p0, p1, v0}, Lcom/ebay/mobile/activities/UserDetailActivity;->share(Ljava/util/List;Ljava/lang/String;)V

    return v2

    :cond_1
    const/4 p1, 0x0

    .line 1658
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/UserDetailActivity;->handleHelpSelected(Ljava/util/ArrayList;)V

    return v2
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 579
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 581
    iget-object p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->buttonLayout:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 582
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    new-instance v0, Lcom/ebay/mobile/activities/UserDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/activities/UserDetailActivity$1;-><init>(Lcom/ebay/mobile/activities/UserDetailActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .line 1592
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1593
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v1

    sget-object v2, Lcom/ebay/mobile/dcs/Dcs$App$B;->overflowProfile:Lcom/ebay/mobile/dcs/Dcs$App$B;

    invoke-interface {v1, v2}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 1595
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/ebay/mobile/activities/UserDetailActivity;->enableMenuItems(Landroid/view/Menu;Ljava/lang/Boolean;)V

    :cond_0
    return v0
.end method

.method protected onResume()V
    .locals 4

    .line 601
    invoke-super {p0}, Lcom/ebay/mobile/activities/CoreActivity;->onResume()V

    .line 602
    new-instance v0, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    invoke-virtual {p0}, Lcom/ebay/mobile/activities/UserDetailActivity;->getTrackingEventName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/ebay/nautilus/domain/analytics/TrackingType;->PAGE_IMPRESSION:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->trackingType(Lcom/ebay/nautilus/domain/analytics/TrackingType;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v0

    .line 603
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/UserDetailActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ebay/mobile/activities/UserDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->BUCKSEXP:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    .line 604
    invoke-virtual {v3}, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->name()Ljava/lang/String;

    move-result-object v3

    .line 603
    invoke-static {v1, v0, v2, v3}, Lcom/ebay/mobile/notifications/NotificationTrackingUtil;->addNotificationTracking(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;Landroid/content/Intent;Ljava/lang/String;)V

    .line 605
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/UserDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->setSourceIdentification(Landroid/content/Intent;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    .line 606
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->build()Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ebay/mobile/activities/UserDetailActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 496
    iget-object v0, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->itemsProviderSemantic:Lcom/ebay/mobile/connection/details/UserItemsProviderSemantic;

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->itemsProviderSemantic:Lcom/ebay/mobile/connection/details/UserItemsProviderSemantic;

    invoke-virtual {v0}, Lcom/ebay/mobile/connection/details/UserItemsProviderSemantic;->register()V

    .line 500
    :cond_0
    invoke-super {p0}, Lcom/ebay/mobile/activities/CoreActivity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 506
    iget-object v0, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->itemsProviderSemantic:Lcom/ebay/mobile/connection/details/UserItemsProviderSemantic;

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->itemsProviderSemantic:Lcom/ebay/mobile/connection/details/UserItemsProviderSemantic;

    invoke-virtual {v0}, Lcom/ebay/mobile/connection/details/UserItemsProviderSemantic;->unRegister()V

    .line 510
    :cond_0
    invoke-super {p0}, Lcom/ebay/mobile/activities/CoreActivity;->onStop()V

    return-void
.end method

.method protected onTaskComplete(ILcom/ebay/nautilus/shell/content/FwLoader;)V
    .locals 5

    .line 765
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/UserDetailActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 v1, 0x0

    .line 773
    iput-boolean v1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userProfileLoading:Z

    .line 776
    :cond_1
    instance-of v1, p2, Lcom/ebay/nautilus/shell/content/FwNetLoader;

    const/4 v2, 0x3

    if-eqz v1, :cond_4

    move-object v1, p2

    check-cast v1, Lcom/ebay/nautilus/shell/content/FwNetLoader;

    invoke-virtual {v1}, Lcom/ebay/nautilus/shell/content/FwNetLoader;->isError()Z

    move-result v1

    if-nez v1, :cond_4

    if-eq p1, v0, :cond_3

    if-eq p1, v2, :cond_2

    goto/16 :goto_0

    .line 784
    :cond_2
    check-cast p2, Lcom/ebay/common/net/api/trading/AddMemberMessageAAQNetLoader;

    invoke-direct {p0, p2}, Lcom/ebay/mobile/activities/UserDetailActivity;->onAddMessageComplete(Lcom/ebay/common/net/api/trading/AddMemberMessageAAQNetLoader;)V

    goto/16 :goto_0

    .line 781
    :cond_3
    check-cast p2, Lcom/ebay/common/net/api/shopping/GetUserProfileNetLoader;

    invoke-direct {p0, p2}, Lcom/ebay/mobile/activities/UserDetailActivity;->onGetUserProfileComplete(Lcom/ebay/common/net/api/shopping/GetUserProfileNetLoader;)V

    goto/16 :goto_0

    .line 788
    :cond_4
    instance-of v1, p2, Lcom/ebay/common/content/EbaySimpleNetLoader;

    if-eqz v1, :cond_a

    .line 790
    move-object v1, p2

    check-cast v1, Lcom/ebay/common/content/EbaySimpleNetLoader;

    .line 791
    invoke-static {v1}, Lcom/ebay/mobile/util/Util;->checkForIAFTokenError(Lcom/ebay/common/content/EbaySimpleNetLoader;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 794
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/UserDetailActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object p1

    const-class p2, Lcom/ebay/nautilus/domain/dagger/DomainComponent;

    invoke-interface {p1, p2}, Lcom/ebay/nautilus/kernel/content/EbayContext;->as(Ljava/lang/Class;)Lcom/ebay/nautilus/kernel/dagger/KernelComponent;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/dagger/DomainComponent;

    invoke-interface {p1}, Lcom/ebay/nautilus/domain/dagger/DomainComponent;->getSignOutHelper()Lcom/ebay/nautilus/domain/SignOutHelper;

    move-result-object p1

    .line 795
    invoke-interface {p1, p0}, Lcom/ebay/nautilus/domain/SignOutHelper;->signOutForIafTokenFailure(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 797
    :cond_5
    invoke-static {p0}, Lcom/ebay/mobile/util/Util;->hasNetwork(Landroid/content/Context;)Z

    move-result v3

    const v4, 0x7f120b08

    if-nez v3, :cond_7

    if-ne p1, v2, :cond_6

    .line 802
    invoke-virtual {p0, v4}, Lcom/ebay/mobile/activities/UserDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    check-cast p2, Lcom/ebay/common/net/api/trading/AddMemberMessageAAQNetLoader;

    .line 803
    invoke-virtual {p2}, Lcom/ebay/common/net/api/trading/AddMemberMessageAAQNetLoader;->getBody()Ljava/lang/String;

    move-result-object v0

    .line 804
    invoke-virtual {p2}, Lcom/ebay/common/net/api/trading/AddMemberMessageAAQNetLoader;->getPictureUrls()Ljava/util/ArrayList;

    move-result-object p2

    .line 802
    invoke-direct {p0, v1, p1, v0, p2}, Lcom/ebay/mobile/activities/UserDetailActivity;->handleAddMessageError(Lcom/ebay/common/content/EbaySimpleNetLoader;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_6
    const p1, 0x7f120369

    .line 808
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/UserDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 809
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/UserDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 810
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/UserDetailActivity;->finish()V

    goto :goto_0

    .line 815
    :cond_7
    invoke-virtual {v1}, Lcom/ebay/common/content/EbaySimpleNetLoader;->getServiceErrorsAndWarnings()Ljava/util/List;

    move-result-object p2

    .line 816
    invoke-direct {p0, p2}, Lcom/ebay/mobile/activities/UserDetailActivity;->handleEbayResponseErrors(Ljava/util/List;)Z

    move-result p2

    if-nez p2, :cond_a

    if-ne p1, v0, :cond_9

    .line 822
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/UserDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f120fe4

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 825
    iget-object p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->messageId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 826
    iget-object p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->nonFatalReporter:Lcom/ebay/nonfatalreporter/NonFatalReporter;

    sget-object p2, Lcom/ebay/nonfatalreporter/NonFatalReporterDomains;->IDENTITY:Lcom/ebay/nonfatalreporter/NonFatalReporterDomains;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserDetail error from message id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->messageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/ebay/nonfatalreporter/NonFatalReporter;->log(Lcom/ebay/nonfatalreporter/NonFatalReportingDomain;Ljava/lang/String;)V

    .line 829
    :cond_8
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/UserDetailActivity;->finish()V

    goto :goto_0

    :cond_9
    if-ne p1, v2, :cond_a

    .line 833
    invoke-virtual {p0, v4}, Lcom/ebay/mobile/activities/UserDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/ebay/mobile/activities/UserDetailActivity;->handleAddMessageError(Lcom/ebay/common/content/EbaySimpleNetLoader;Ljava/lang/String;)V

    :cond_a
    :goto_0
    return-void
.end method

.method final showUserProfile()V
    .locals 12

    .line 953
    iget-object v0, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userProfile:Lcom/ebay/nautilus/domain/data/UserProfile;

    if-eqz v0, :cond_e

    .line 955
    iget-object v0, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userProfile:Lcom/ebay/nautilus/domain/data/UserProfile;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/UserProfile;->ratingItemAsDescribed:Lcom/ebay/nautilus/domain/data/UserProfile$AverageRatingDetails;

    const-wide/16 v1, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userProfile:Lcom/ebay/nautilus/domain/data/UserProfile;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/UserProfile;->ratingItemAsDescribed:Lcom/ebay/nautilus/domain/data/UserProfile$AverageRatingDetails;

    iget-wide v5, v0, Lcom/ebay/nautilus/domain/data/UserProfile$AverageRatingDetails;->ratingCount:J

    cmp-long v0, v5, v1

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userProfile:Lcom/ebay/nautilus/domain/data/UserProfile;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/UserProfile;->ratingCommunication:Lcom/ebay/nautilus/domain/data/UserProfile$AverageRatingDetails;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userProfile:Lcom/ebay/nautilus/domain/data/UserProfile;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/UserProfile;->ratingCommunication:Lcom/ebay/nautilus/domain/data/UserProfile$AverageRatingDetails;

    iget-wide v5, v0, Lcom/ebay/nautilus/domain/data/UserProfile$AverageRatingDetails;->ratingCount:J

    cmp-long v0, v5, v1

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userProfile:Lcom/ebay/nautilus/domain/data/UserProfile;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/UserProfile;->ratingShippingAndHandlingCharges:Lcom/ebay/nautilus/domain/data/UserProfile$AverageRatingDetails;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userProfile:Lcom/ebay/nautilus/domain/data/UserProfile;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/UserProfile;->ratingShippingAndHandlingCharges:Lcom/ebay/nautilus/domain/data/UserProfile$AverageRatingDetails;

    iget-wide v5, v0, Lcom/ebay/nautilus/domain/data/UserProfile$AverageRatingDetails;->ratingCount:J

    cmp-long v0, v5, v1

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userProfile:Lcom/ebay/nautilus/domain/data/UserProfile;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/UserProfile;->ratingShippingTime:Lcom/ebay/nautilus/domain/data/UserProfile$AverageRatingDetails;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userProfile:Lcom/ebay/nautilus/domain/data/UserProfile;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/UserProfile;->ratingShippingTime:Lcom/ebay/nautilus/domain/data/UserProfile$AverageRatingDetails;

    iget-wide v5, v0, Lcom/ebay/nautilus/domain/data/UserProfile$AverageRatingDetails;->ratingCount:J

    cmp-long v0, v5, v1

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 964
    :goto_0
    iget-object v1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userProfile:Lcom/ebay/nautilus/domain/data/UserProfile;

    iget-boolean v1, v1, Lcom/ebay/nautilus/domain/data/UserProfile;->bIsTopRatedSeller:Z

    if-eqz v1, :cond_5

    .line 965
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getDeviceConfiguration()Lcom/ebay/mobile/dcs/DcsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ebay/mobile/dcs/DcsHelper;->isTopRatedSellerEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    const v2, 0x7f0a1349

    .line 966
    invoke-virtual {p0, v2}, Lcom/ebay/mobile/activities/UserDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v5, 0x8

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    goto :goto_2

    :cond_6
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 968
    iget-object v1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->feedbackCountTextView:Landroid/widget/TextView;

    const-string v2, "(%s)"

    new-array v6, v3, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userProfile:Lcom/ebay/nautilus/domain/data/UserProfile;

    iget v7, v7, Lcom/ebay/nautilus/domain/data/UserProfile;->feedbackScore:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 970
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/UserDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100022

    iget-object v6, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userProfile:Lcom/ebay/nautilus/domain/data/UserProfile;

    iget v6, v6, Lcom/ebay/nautilus/domain/data/UserProfile;->feedbackScore:I

    new-array v7, v3, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userProfile:Lcom/ebay/nautilus/domain/data/UserProfile;

    iget v8, v8, Lcom/ebay/nautilus/domain/data/UserProfile;->feedbackScore:I

    .line 972
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    .line 970
    invoke-virtual {v1, v2, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 973
    iget-object v2, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->feedbackCountTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 975
    iget-object v1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->ratingStar:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    .line 977
    iget-object v1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->feedbackStarImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_7

    .line 979
    iget-object v1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->feedbackStarImageView:Landroid/widget/ImageView;

    const/4 v6, 0x4

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 981
    :cond_7
    iget-object v1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->feedbackCountTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 985
    :cond_8
    iget-object v1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->feedbackStarImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_9

    .line 987
    iget-object v1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->feedbackStarImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->ratingStar:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/ebay/mobile/util/Util;->SetRatingStar(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_3

    .line 989
    :cond_9
    invoke-static {}, Lcom/ebay/mobile/themes/Ds6Configuration;->getInstance()Lcom/ebay/mobile/themes/Ds6ConfigurationContract;

    move-result-object v1

    invoke-interface {v1}, Lcom/ebay/mobile/themes/Ds6ConfigurationContract;->isDs6Applied()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 992
    iget-object v1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->ratingStar:Ljava/lang/String;

    invoke-static {v1}, Lcom/ebay/mobile/util/Util;->getDs6RatingStarResId(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_a

    .line 995
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/UserDetailActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 998
    iget-object v6, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->feedbackCountTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v2, v2, v1, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1005
    :cond_a
    :goto_3
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v1, v2, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-object v2, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userProfile:Lcom/ebay/nautilus/domain/data/UserProfile;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/UserProfile;->registrationDate:Ljava/util/Date;

    .line 1006
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 1008
    iget-object v2, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->memberSinceTextView:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f120fe7

    invoke-virtual {p0, v7}, Lcom/ebay/mobile/activities/UserDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1010
    iget-object v1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userLocationTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f120fe6

    invoke-virtual {p0, v6}, Lcom/ebay/mobile/activities/UserDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userProfile:Lcom/ebay/nautilus/domain/data/UserProfile;

    iget-object v6, v6, Lcom/ebay/nautilus/domain/data/UserProfile;->registrationSiteName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a0596

    .line 1013
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/activities/UserDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    goto :goto_4

    :cond_b
    const/16 v0, 0x8

    :goto_4
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a0d41

    .line 1014
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/UserDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a0c3c

    .line 1017
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/UserDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0a67

    .line 1018
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/UserDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0a65

    .line 1019
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/UserDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1021
    iget-object v0, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userProfile:Lcom/ebay/nautilus/domain/data/UserProfile;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/UserProfile;->ratingItemAsDescribed:Lcom/ebay/nautilus/domain/data/UserProfile$AverageRatingDetails;

    const v1, 0x7f0a0111

    const v2, 0x7f12060e

    .line 1022
    invoke-virtual {p0, v2}, Lcom/ebay/mobile/activities/UserDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1021
    invoke-direct {p0, v0, v1, v2}, Lcom/ebay/mobile/activities/UserDetailActivity;->setRating(Lcom/ebay/nautilus/domain/data/UserProfile$AverageRatingDetails;ILjava/lang/String;)V

    .line 1023
    iget-object v0, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userProfile:Lcom/ebay/nautilus/domain/data/UserProfile;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/UserProfile;->ratingCommunication:Lcom/ebay/nautilus/domain/data/UserProfile$AverageRatingDetails;

    const v1, 0x7f0a0f7e

    const v2, 0x7f120374

    .line 1024
    invoke-virtual {p0, v2}, Lcom/ebay/mobile/activities/UserDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1023
    invoke-direct {p0, v0, v1, v2}, Lcom/ebay/mobile/activities/UserDetailActivity;->setRating(Lcom/ebay/nautilus/domain/data/UserProfile$AverageRatingDetails;ILjava/lang/String;)V

    .line 1025
    iget-object v0, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userProfile:Lcom/ebay/nautilus/domain/data/UserProfile;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/UserProfile;->ratingShippingTime:Lcom/ebay/nautilus/domain/data/UserProfile$AverageRatingDetails;

    const v1, 0x7f0a0fa5

    const v2, 0x7f120e6e

    .line 1026
    invoke-virtual {p0, v2}, Lcom/ebay/mobile/activities/UserDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1025
    invoke-direct {p0, v0, v1, v2}, Lcom/ebay/mobile/activities/UserDetailActivity;->setRating(Lcom/ebay/nautilus/domain/data/UserProfile$AverageRatingDetails;ILjava/lang/String;)V

    .line 1027
    iget-object v0, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userProfile:Lcom/ebay/nautilus/domain/data/UserProfile;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/UserProfile;->ratingShippingAndHandlingCharges:Lcom/ebay/nautilus/domain/data/UserProfile$AverageRatingDetails;

    const v1, 0x7f0a0fa4

    const v2, 0x7f120e23

    .line 1028
    invoke-virtual {p0, v2}, Lcom/ebay/mobile/activities/UserDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1027
    invoke-direct {p0, v0, v1, v2}, Lcom/ebay/mobile/activities/UserDetailActivity;->setRating(Lcom/ebay/nautilus/domain/data/UserProfile$AverageRatingDetails;ILjava/lang/String;)V

    const v0, 0x7f120957

    .line 1030
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/UserDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v7, 0x7f0a0f9d

    .line 1031
    iget-object v1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userProfile:Lcom/ebay/nautilus/domain/data/UserProfile;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/UserProfile;->positiveFeedbackCount:[J

    aget-wide v8, v1, v4

    const/4 v11, 0x1

    move-object v6, p0

    move-object v10, v0

    invoke-direct/range {v6 .. v11}, Lcom/ebay/mobile/activities/UserDetailActivity;->setCell(IJLjava/lang/String;I)V

    const v7, 0x7f0a0f9e

    .line 1032
    iget-object v1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userProfile:Lcom/ebay/nautilus/domain/data/UserProfile;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/UserProfile;->positiveFeedbackCount:[J

    aget-wide v8, v1, v3

    const/4 v11, 0x6

    invoke-direct/range {v6 .. v11}, Lcom/ebay/mobile/activities/UserDetailActivity;->setCell(IJLjava/lang/String;I)V

    const v7, 0x7f0a0f9c

    .line 1033
    iget-object v1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userProfile:Lcom/ebay/nautilus/domain/data/UserProfile;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/UserProfile;->positiveFeedbackCount:[J

    const/4 v2, 0x2

    aget-wide v8, v1, v2

    const/16 v11, 0xc

    invoke-direct/range {v6 .. v11}, Lcom/ebay/mobile/activities/UserDetailActivity;->setCell(IJLjava/lang/String;I)V

    const v0, 0x7f1207ea

    .line 1035
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/UserDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v7, 0x7f0a0f8d

    .line 1036
    iget-object v1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userProfile:Lcom/ebay/nautilus/domain/data/UserProfile;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/UserProfile;->neutralFeedbackCount:[J

    aget-wide v8, v1, v4

    const/4 v11, 0x1

    move-object v10, v0

    invoke-direct/range {v6 .. v11}, Lcom/ebay/mobile/activities/UserDetailActivity;->setCell(IJLjava/lang/String;I)V

    const v7, 0x7f0a0f8e

    .line 1037
    iget-object v1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userProfile:Lcom/ebay/nautilus/domain/data/UserProfile;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/UserProfile;->neutralFeedbackCount:[J

    aget-wide v8, v1, v3

    const/4 v11, 0x6

    invoke-direct/range {v6 .. v11}, Lcom/ebay/mobile/activities/UserDetailActivity;->setCell(IJLjava/lang/String;I)V

    const v7, 0x7f0a0f8c

    .line 1038
    iget-object v1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userProfile:Lcom/ebay/nautilus/domain/data/UserProfile;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/UserProfile;->neutralFeedbackCount:[J

    aget-wide v8, v1, v2

    const/16 v11, 0xc

    invoke-direct/range {v6 .. v11}, Lcom/ebay/mobile/activities/UserDetailActivity;->setCell(IJLjava/lang/String;I)V

    const v0, 0x7f1207e9

    .line 1040
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/UserDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v7, 0x7f0a0f8a

    .line 1041
    iget-object v1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userProfile:Lcom/ebay/nautilus/domain/data/UserProfile;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/UserProfile;->negativeFeedbackCount:[J

    aget-wide v8, v1, v4

    const/4 v11, 0x1

    move-object v10, v0

    invoke-direct/range {v6 .. v11}, Lcom/ebay/mobile/activities/UserDetailActivity;->setCell(IJLjava/lang/String;I)V

    const v7, 0x7f0a0f8b

    .line 1042
    iget-object v1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userProfile:Lcom/ebay/nautilus/domain/data/UserProfile;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/UserProfile;->negativeFeedbackCount:[J

    aget-wide v8, v1, v3

    const/4 v11, 0x6

    invoke-direct/range {v6 .. v11}, Lcom/ebay/mobile/activities/UserDetailActivity;->setCell(IJLjava/lang/String;I)V

    const v7, 0x7f0a0f89

    .line 1043
    iget-object v1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userProfile:Lcom/ebay/nautilus/domain/data/UserProfile;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/UserProfile;->negativeFeedbackCount:[J

    aget-wide v8, v1, v2

    const/16 v11, 0xc

    invoke-direct/range {v6 .. v11}, Lcom/ebay/mobile/activities/UserDetailActivity;->setCell(IJLjava/lang/String;I)V

    .line 1045
    iput-boolean v4, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->isLoadingProfile:Z

    .line 1047
    iget-boolean v0, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->isLoadingPhoneNumber:Z

    if-nez v0, :cond_c

    .line 1049
    sget-object v0, Lcom/ebay/mobile/viewitem/ItemViewCommonProgressAndError$LayoutState;->NORMAL:Lcom/ebay/mobile/viewitem/ItemViewCommonProgressAndError$LayoutState;

    invoke-static {p0, v0}, Lcom/ebay/mobile/viewitem/ItemViewCommonProgressAndError;->showLayouts(Landroid/app/Activity;Lcom/ebay/mobile/viewitem/ItemViewCommonProgressAndError$LayoutState;)V

    :cond_c
    const v0, 0x7f0a0f82

    .line 1052
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/UserDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_f

    .line 1055
    iget-object v1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userProfile:Lcom/ebay/nautilus/domain/data/UserProfile;

    if-eqz v1, :cond_d

    .line 1057
    iget-object v1, p0, Lcom/ebay/mobile/activities/UserDetailActivity;->userProfile:Lcom/ebay/nautilus/domain/data/UserProfile;

    iget-wide v1, v1, Lcom/ebay/nautilus/domain/data/UserProfile;->positiveFeedbackPercent:D

    invoke-static {p0, v1, v2}, Lcom/ebay/mobile/util/Util;->getFeedbackPercentString(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 1061
    :cond_d
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 1068
    :cond_e
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/UserDetailActivity;->finish()V

    :cond_f
    :goto_5
    return-void
.end method
