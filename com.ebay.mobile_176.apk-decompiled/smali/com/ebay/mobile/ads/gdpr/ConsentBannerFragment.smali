.class public Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;
.super Lcom/ebay/nautilus/shell/app/BaseDmDialogFragment;
.source "ConsentBannerFragment.java"

# interfaces
.implements Lcom/ebay/nautilus/domain/content/dm/ads/gdpr/ConsentDataManager$Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment$ConsentBottomSheetDialog;,
        Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment$ConsentTabletDialog;
    }
.end annotation


# static fields
.field public static final FRAGMENT_TAG:Ljava/lang/String; = "AdsConsentBannerFragment"


# instance fields
.field private accept:Landroid/widget/Button;

.field private allowDismissConsent:Z

.field private banner:Lcom/ebay/nautilus/domain/data/experience/ads/gdpr/ConsentBanner;

.field private bannerView:Landroid/view/View;

.field private dataManager:Lcom/ebay/nautilus/domain/content/dm/ads/gdpr/ConsentDataManager;

.field private dialogFragment:Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;

.field private isTablet:Z

.field private legalText:Landroid/widget/TextView;

.field private moreOptions:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/ebay/nautilus/shell/app/BaseDmDialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;->allowDismissConsent:Z

    return-void
.end method

.method private dpToPx(I)I
    .locals 1

    .line 205
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private finishUiAndTrack()V
    .locals 4

    .line 140
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/shell/app/FwActivity;

    invoke-interface {v0}, Lcom/ebay/nautilus/shell/app/FwActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    .line 142
    iget-object v0, p0, Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;->legalText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;->banner:Lcom/ebay/nautilus/domain/data/experience/ads/gdpr/ConsentBanner;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/ads/gdpr/ConsentBanner;->message:Lcom/ebay/nautilus/domain/data/experience/ads/gdpr/ConsentBanner$Message;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/ads/gdpr/ConsentBanner$Message;->additionalText:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    invoke-static {v0, v1}, Lcom/ebay/mobile/util/ExperienceUtil;->updateFromTextualDisplay(Landroid/widget/TextView;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)V

    .line 143
    iget-object v0, p0, Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;->moreOptions:Landroid/widget/Button;

    iget-object v1, p0, Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;->banner:Lcom/ebay/nautilus/domain/data/experience/ads/gdpr/ConsentBanner;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/ads/gdpr/ConsentBanner;->message:Lcom/ebay/nautilus/domain/data/experience/ads/gdpr/ConsentBanner$Message;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/ads/gdpr/ConsentBanner$Message;->additionalText:Ljava/util/List;

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    invoke-static {v0, v1}, Lcom/ebay/mobile/util/ExperienceUtil;->updateFromTextualDisplay(Landroid/widget/TextView;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)V

    .line 144
    iget-object v0, p0, Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;->accept:Landroid/widget/Button;

    iget-object v1, p0, Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;->banner:Lcom/ebay/nautilus/domain/data/experience/ads/gdpr/ConsentBanner;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/ads/gdpr/ConsentBanner;->acceptButton:Lcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;->bannerView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static show(Lcom/ebay/mobile/activities/CoreActivity;)V
    .locals 2
    .param p0    # Lcom/ebay/mobile/activities/CoreActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "activity must not be null"

    .line 58
    invoke-static {p0, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v0

    sget-object v1, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Ads$B;->gdprSupported:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Ads$B;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 67
    :cond_1
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "AdsConsentBannerFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 70
    check-cast v0, Landroidx/fragment/app/DialogFragment;

    .line 71
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 74
    :cond_2
    new-instance v0, Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;

    invoke-direct {v0}, Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;-><init>()V

    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v1, "AdsConsentBannerFragment"

    invoke-virtual {v0, p0, v1}, Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic consentDialogNotShown()V
    .locals 0

    invoke-static {p0}, Lcom/ebay/nautilus/domain/content/dm/ads/gdpr/ConsentDataManager$Observer$-CC;->$default$consentDialogNotShown(Lcom/ebay/nautilus/domain/content/dm/ads/gdpr/ConsentDataManager$Observer;)V

    return-void
.end method

.method onAcceptClicked(Landroid/view/View;)V
    .locals 1

    .line 172
    iget-object p1, p0, Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;->dataManager:Lcom/ebay/nautilus/domain/content/dm/ads/gdpr/ConsentDataManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/domain/content/dm/ads/gdpr/ConsentDataManager;->sendUserHasConsented(Z)V

    .line 173
    iget-object p1, p0, Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;->dialogFragment:Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;

    if-eqz p1, :cond_0

    .line 174
    iget-object p1, p0, Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;->dialogFragment:Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;

    invoke-virtual {p1}, Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;->dataManager:Lcom/ebay/nautilus/domain/content/dm/ads/gdpr/ConsentDataManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/content/dm/ads/gdpr/ConsentDataManager;->sendUserHasConsented(Z)V

    .line 160
    invoke-super {p0, p1}, Lcom/ebay/nautilus/shell/app/BaseDmDialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 121
    invoke-super {p0, p1}, Lcom/ebay/nautilus/shell/app/BaseDmDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 122
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;->initDataManagers()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 88
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f050007

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;->isTablet:Z

    .line 89
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 90
    :goto_0
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07017b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;->dpToPx(I)I

    move-result v0

    .line 92
    iget-boolean v1, p0, Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;->isTablet:Z

    if-eqz v1, :cond_1

    new-instance p1, Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment$ConsentTabletDialog;

    .line 93
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment$ConsentTabletDialog;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment$ConsentBottomSheetDialog;

    .line 94
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f130006

    invoke-direct {v1, v2, v3, p1, v0}, Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment$ConsentBottomSheetDialog;-><init>(Landroid/content/Context;IZI)V

    move-object p1, v1

    :goto_1
    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const p3, 0x7f0d014d

    .line 100
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;->bannerView:Landroid/view/View;

    .line 101
    iget-object p1, p0, Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;->bannerView:Landroid/view/View;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 102
    iget-object p1, p0, Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;->bannerView:Landroid/view/View;

    const p2, 0x7f0a06e6

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;->accept:Landroid/widget/Button;

    .line 103
    iget-object p1, p0, Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;->bannerView:Landroid/view/View;

    const p2, 0x7f0a09a4

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;->moreOptions:Landroid/widget/Button;

    .line 104
    iget-object p1, p0, Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;->bannerView:Landroid/view/View;

    const p2, 0x7f0a0934

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;->legalText:Landroid/widget/TextView;

    .line 106
    iget-object p1, p0, Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;->accept:Landroid/widget/Button;

    new-instance p2, Lcom/ebay/mobile/ads/gdpr/-$$Lambda$H6K1VPTifuFZbuj88JrXnnMm4Jk;

    invoke-direct {p2, p0}, Lcom/ebay/mobile/ads/gdpr/-$$Lambda$H6K1VPTifuFZbuj88JrXnnMm4Jk;-><init>(Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object p1, p0, Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;->moreOptions:Landroid/widget/Button;

    new-instance p2, Lcom/ebay/mobile/ads/gdpr/-$$Lambda$5A1BxzUpD9_f-6Hs---V1H9Q9jo;

    invoke-direct {p2, p0}, Lcom/ebay/mobile/ads/gdpr/-$$Lambda$5A1BxzUpD9_f-6Hs---V1H9Q9jo;-><init>(Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object p1

    .line 110
    sget-object p2, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Ads$B;->gdprUnambiguousSupport:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Ads$B;

    invoke-interface {p1, p2}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;->allowDismissConsent:Z

    .line 113
    iget-boolean p1, p0, Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;->allowDismissConsent:Z

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;->setCancelable(Z)V

    .line 115
    iget-object p1, p0, Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;->bannerView:Landroid/view/View;

    return-object p1
.end method

.method protected onInitializeDataManagers(Lcom/ebay/nautilus/shell/app/DataManagerContainer;)V
    .locals 2

    .line 128
    sget-object v0, Lcom/ebay/nautilus/domain/content/dm/ads/gdpr/ConsentDataManager;->KEY:Lcom/ebay/nautilus/domain/content/dm/ads/gdpr/ConsentDataManager$KeyParams;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/ebay/nautilus/shell/app/DataManagerContainer;->initialize(Lcom/ebay/nautilus/domain/content/DataManager$DataManagerKeyParams;Ljava/lang/Object;)Lcom/ebay/nautilus/domain/content/DataManager;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/content/dm/ads/gdpr/ConsentDataManager;

    iput-object p1, p0, Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;->dataManager:Lcom/ebay/nautilus/domain/content/dm/ads/gdpr/ConsentDataManager;

    .line 130
    iget-object p1, p0, Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;->dataManager:Lcom/ebay/nautilus/domain/content/dm/ads/gdpr/ConsentDataManager;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/content/dm/ads/gdpr/ConsentDataManager;->getCachedData()Lcom/ebay/nautilus/domain/data/experience/ads/gdpr/ConsentBanner;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;->banner:Lcom/ebay/nautilus/domain/data/experience/ads/gdpr/ConsentBanner;

    .line 132
    iget-object p1, p0, Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;->banner:Lcom/ebay/nautilus/domain/data/experience/ads/gdpr/ConsentBanner;

    if-eqz p1, :cond_0

    .line 133
    invoke-direct {p0}, Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;->finishUiAndTrack()V

    goto :goto_0

    .line 135
    :cond_0
    iget-object p1, p0, Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;->dataManager:Lcom/ebay/nautilus/domain/content/dm/ads/gdpr/ConsentDataManager;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/content/dm/ads/gdpr/ConsentDataManager;->checkBannerEligibility()Z

    :goto_0
    return-void
.end method

.method onMoreOptionsClicked(Landroid/view/View;)V
    .locals 1

    .line 184
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/shell/app/FwActivity;

    invoke-interface {p1}, Lcom/ebay/nautilus/shell/app/FwActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object p1

    .line 187
    iget-object v0, p0, Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;->dialogFragment:Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;->dialogFragment:Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;

    invoke-virtual {v0}, Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;->dismiss()V

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;->dataManager:Lcom/ebay/nautilus/domain/content/dm/ads/gdpr/ConsentDataManager;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/content/dm/ads/gdpr/ConsentDataManager;->clear()V

    .line 192
    invoke-static {p1}, Lcom/ebay/mobile/ads/gdpr/GdprWebViewActivity;->createIntent(Lcom/ebay/nautilus/kernel/content/EbayContext;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p0, p0, Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;->dialogFragment:Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;

    .line 81
    invoke-super {p0, p1, p2}, Lcom/ebay/nautilus/shell/app/BaseDmDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public showConsentDialog()V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;->dataManager:Lcom/ebay/nautilus/domain/content/dm/ads/gdpr/ConsentDataManager;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/content/dm/ads/gdpr/ConsentDataManager;->getCachedData()Lcom/ebay/nautilus/domain/data/experience/ads/gdpr/ConsentBanner;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;->banner:Lcom/ebay/nautilus/domain/data/experience/ads/gdpr/ConsentBanner;

    .line 200
    invoke-direct {p0}, Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;->finishUiAndTrack()V

    return-void
.end method
