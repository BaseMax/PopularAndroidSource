.class public Lcom/ebay/mobile/activities/OcsActivity;
.super Lcom/ebay/mobile/activities/ShowWebViewActivity;
.source "OcsActivity.java"


# static fields
.field private static final LOG_TAG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;


# instance fields
.field private stateStore:Lcom/ebay/mobile/screenshare/StateStore;

.field private viewModel:Lcom/ebay/mobile/screenshare/ocshelp/OcsActivityViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 22
    new-instance v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "SCREEN_SHARE"

    const-string v2, "OcsActivity"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/mobile/activities/OcsActivity;->LOG_TAG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onCreate$0(Lcom/ebay/mobile/activities/OcsActivity;Ljava/lang/Boolean;)V
    .locals 2

    .line 53
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 55
    iget-object p1, p0, Lcom/ebay/mobile/activities/OcsActivity;->stateStore:Lcom/ebay/mobile/screenshare/StateStore;

    iget-object v0, p0, Lcom/ebay/mobile/activities/OcsActivity;->viewModel:Lcom/ebay/mobile/screenshare/ocshelp/OcsActivityViewModel;

    invoke-virtual {v0}, Lcom/ebay/mobile/screenshare/ocshelp/OcsActivityViewModel;->getGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ebay/mobile/activities/OcsActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v1

    invoke-virtual {p1, p0, v0, v1}, Lcom/ebay/mobile/screenshare/StateStore;->initPresence(Landroid/app/Activity;Ljava/lang/String;Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 47
    invoke-static {}, Lcom/ebay/mobile/screenshare/StateStore;->getInstance()Lcom/ebay/mobile/screenshare/StateStore;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/activities/OcsActivity;->stateStore:Lcom/ebay/mobile/screenshare/StateStore;

    .line 48
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/FragmentActivity;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object v0

    const-class v1, Lcom/ebay/mobile/screenshare/ocshelp/OcsActivityViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/ebay/mobile/screenshare/ocshelp/OcsActivityViewModel;

    iput-object v0, p0, Lcom/ebay/mobile/activities/OcsActivity;->viewModel:Lcom/ebay/mobile/screenshare/ocshelp/OcsActivityViewModel;

    .line 49
    iget-object v0, p0, Lcom/ebay/mobile/activities/OcsActivity;->viewModel:Lcom/ebay/mobile/screenshare/ocshelp/OcsActivityViewModel;

    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ebay/mobile/activities/OcsActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ebay/mobile/screenshare/ocshelp/OcsActivityViewModel;->init(Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    .line 50
    iget-object v0, p0, Lcom/ebay/mobile/activities/OcsActivity;->viewModel:Lcom/ebay/mobile/screenshare/ocshelp/OcsActivityViewModel;

    invoke-virtual {v0}, Lcom/ebay/mobile/screenshare/ocshelp/OcsActivityViewModel;->activatePresence()V

    .line 51
    iget-object v0, p0, Lcom/ebay/mobile/activities/OcsActivity;->viewModel:Lcom/ebay/mobile/screenshare/ocshelp/OcsActivityViewModel;

    invoke-virtual {v0}, Lcom/ebay/mobile/screenshare/ocshelp/OcsActivityViewModel;->getPresenceSwitch()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/ebay/mobile/activities/-$$Lambda$OcsActivity$NRLrM_dzw5T22bTSowd9Zfqg9h8;

    invoke-direct {v1, p0}, Lcom/ebay/mobile/activities/-$$Lambda$OcsActivity$NRLrM_dzw5T22bTSowd9Zfqg9h8;-><init>(Lcom/ebay/mobile/activities/OcsActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 58
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected readIntent()V
    .locals 4

    .line 28
    invoke-super {p0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->readIntent()V

    const-string v0, "ContactEbaySupport"

    .line 30
    iput-object v0, p0, Lcom/ebay/mobile/activities/OcsActivity;->impression:Ljava/lang/String;

    const v0, 0x7f1203d8

    .line 31
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/OcsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/activities/OcsActivity;->title:Ljava/lang/String;

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/ebay/mobile/activities/OcsActivity;->useBackStack:Z

    .line 34
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getDeviceConfiguration()Lcom/ebay/mobile/dcs/DcsHelper;

    move-result-object v1

    .line 35
    invoke-virtual {v1}, Lcom/ebay/mobile/dcs/DcsHelper;->getConfig()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v2

    .line 37
    sget-object v3, Lcom/ebay/mobile/dcs/Dcs$Connect$S;->ocsSsoScope:Lcom/ebay/mobile/dcs/Dcs$Connect$S;

    invoke-interface {v2, v3}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropString;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ebay/mobile/activities/OcsActivity;->scope:Ljava/lang/String;

    .line 38
    invoke-virtual {v1}, Lcom/ebay/mobile/dcs/DcsHelper;->ocsUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ebay/mobile/activities/OcsActivity;->url:Ljava/lang/String;

    .line 40
    iget-object v1, p0, Lcom/ebay/mobile/activities/OcsActivity;->scope:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ebay/common/Preferences;->isSignedIn()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/ebay/mobile/activities/OcsActivity;->useSso:Z

    .line 41
    iput-boolean v2, p0, Lcom/ebay/mobile/activities/OcsActivity;->addDeviceId:Z

    return-void
.end method
