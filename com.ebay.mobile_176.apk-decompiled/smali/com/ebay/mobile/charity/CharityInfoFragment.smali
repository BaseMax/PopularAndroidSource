.class public Lcom/ebay/mobile/charity/CharityInfoFragment;
.super Lcom/ebay/nautilus/shell/app/BaseDmDialogFragment;
.source "CharityInfoFragment.java"

# interfaces
.implements Lcom/ebay/nautilus/domain/content/dm/NonProfitDataManager$Observer;


# static fields
.field public static final CHARITY_NONPROFIT:Ljava/lang/String; = "charity_nonprofit"

.field public static final CHARITY_SELECTION_ENABLED:Ljava/lang/String; = "charity_selection_enabled"

.field public static final CHARITY_SELECTION_TEXT:Ljava/lang/String; = "charity_selection_text"

.field public static final NONPROFIT_SELECTED_SIGN_IN:I = 0x1

.field public static final TOOLBAR_TITLE:Ljava/lang/String; = "toolbar_title"


# instance fields
.field private charity:Lcom/ebay/nautilus/domain/data/Nonprofit;

.field private image:Lcom/ebay/android/widget/RemoteImageView;

.field private imageFrame:Landroid/widget/FrameLayout;

.field protected isSelectionEnabled:Z

.field private location:Landroid/widget/TextView;

.field private locationLabel:Landroid/widget/TextView;

.field private mission:Landroid/widget/TextView;

.field private nonprofitDataManager:Lcom/ebay/nautilus/domain/content/dm/NonProfitDataManager;

.field private resetTitle:Ljava/lang/String;

.field private selectCharityButtonText:Ljava/lang/String;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/ebay/nautilus/shell/app/BaseDmDialogFragment;-><init>()V

    return-void
.end method

.method private updateUI()V
    .locals 3

    .line 175
    iget-object v0, p0, Lcom/ebay/mobile/charity/CharityInfoFragment;->image:Lcom/ebay/android/widget/RemoteImageView;

    iget-object v1, p0, Lcom/ebay/mobile/charity/CharityInfoFragment;->charity:Lcom/ebay/nautilus/domain/data/Nonprofit;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/Nonprofit;->getLogoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/android/widget/RemoteImageView;->setRemoteImageUrl(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/ebay/mobile/charity/CharityInfoFragment;->charity:Lcom/ebay/nautilus/domain/data/Nonprofit;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/Nonprofit;->getLogoUrl()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/ebay/mobile/charity/CharityInfoFragment;->imageFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/charity/CharityInfoFragment;->title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ebay/mobile/charity/CharityInfoFragment;->charity:Lcom/ebay/nautilus/domain/data/Nonprofit;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/Nonprofit;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v0, p0, Lcom/ebay/mobile/charity/CharityInfoFragment;->mission:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ebay/mobile/charity/CharityInfoFragment;->charity:Lcom/ebay/nautilus/domain/data/Nonprofit;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/Nonprofit;->mission:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v0, p0, Lcom/ebay/mobile/charity/CharityInfoFragment;->charity:Lcom/ebay/nautilus/domain/data/Nonprofit;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/Nonprofit;->getLocationString()Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 183
    iget-object v1, p0, Lcom/ebay/mobile/charity/CharityInfoFragment;->location:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/ebay/mobile/charity/CharityInfoFragment;->location:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/ebay/mobile/charity/CharityInfoFragment;->locationLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getTrackingEventName()Ljava/lang/String;
    .locals 1

    const-string v0, "GivingWorksCharityDetail"

    return-object v0
.end method

.method public nonProfitSelected()V
    .locals 2

    .line 210
    invoke-virtual {p0}, Lcom/ebay/mobile/charity/CharityInfoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 211
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ebay/common/Preferences;->isSignedIn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/ebay/mobile/charity/CharityInfoFragment;->getTrackingEventName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ebay/mobile/connection/idsignin/SignInActivity;->getIntentForSignIn(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x20000

    .line 214
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 215
    invoke-virtual {p0, v0, v1}, Lcom/ebay/mobile/charity/CharityInfoFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 219
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/charity/CharityInfoFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    .line 220
    instance-of v1, v0, Lcom/ebay/mobile/charity/CharitySelectionListener;

    if-eqz v1, :cond_1

    .line 221
    check-cast v0, Lcom/ebay/mobile/charity/CharitySelectionListener;

    iget-object v1, p0, Lcom/ebay/mobile/charity/CharityInfoFragment;->charity:Lcom/ebay/nautilus/domain/data/Nonprofit;

    invoke-interface {v0, v1}, Lcom/ebay/mobile/charity/CharitySelectionListener;->onCharitySelected(Lcom/ebay/nautilus/domain/data/Nonprofit;)V

    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/4 p3, 0x1

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-ne p1, p2, :cond_1

    .line 199
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ebay/common/Preferences;->isSignedIn()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 201
    invoke-virtual {p0}, Lcom/ebay/mobile/charity/CharityInfoFragment;->initDataManagers()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 59
    invoke-super {p0, p1}, Lcom/ebay/nautilus/shell/app/BaseDmDialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    const v0, 0x7f13001a

    .line 60
    invoke-virtual {p0, p1, v0}, Lcom/ebay/mobile/charity/CharityInfoFragment;->setStyle(II)V

    .line 61
    invoke-virtual {p0}, Lcom/ebay/mobile/charity/CharityInfoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Activity requires a nonprofit extra. None found."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {p0}, Lcom/ebay/mobile/charity/CharityInfoFragment;->dismiss()V

    return-void

    :cond_0
    const-string v0, "charity_nonprofit"

    .line 68
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/Nonprofit;

    iput-object p1, p0, Lcom/ebay/mobile/charity/CharityInfoFragment;->charity:Lcom/ebay/nautilus/domain/data/Nonprofit;

    .line 69
    iget-object p1, p0, Lcom/ebay/mobile/charity/CharityInfoFragment;->charity:Lcom/ebay/nautilus/domain/data/Nonprofit;

    if-nez p1, :cond_1

    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Nonprofit given in intent was null, cannot continue."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {p0}, Lcom/ebay/mobile/charity/CharityInfoFragment;->dismiss()V

    .line 75
    :cond_1
    invoke-virtual {p0}, Lcom/ebay/mobile/charity/CharityInfoFragment;->initDataManagers()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    const v1, 0x7f0d00ae

    .line 82
    invoke-virtual {p1, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 83
    invoke-virtual {p0}, Lcom/ebay/mobile/charity/CharityInfoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/ebay/mobile/charity/CharityInfoFragment;->resetTitle:Ljava/lang/String;

    const p2, 0x7f12032c

    .line 84
    invoke-virtual {p0, p2}, Lcom/ebay/mobile/charity/CharityInfoFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ebay/mobile/charity/CharityInfoFragment;->setTitleInParentActivity(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a0382

    .line 85
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ebay/android/widget/RemoteImageView;

    iput-object v1, p0, Lcom/ebay/mobile/charity/CharityInfoFragment;->image:Lcom/ebay/android/widget/RemoteImageView;

    const v1, 0x7f0a0383

    .line 86
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/ebay/mobile/charity/CharityInfoFragment;->imageFrame:Landroid/widget/FrameLayout;

    const v1, 0x7f0a0390

    .line 87
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ebay/mobile/charity/CharityInfoFragment;->title:Landroid/widget/TextView;

    const v1, 0x7f0a0389

    .line 88
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ebay/mobile/charity/CharityInfoFragment;->locationLabel:Landroid/widget/TextView;

    const v1, 0x7f0a0388

    .line 89
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ebay/mobile/charity/CharityInfoFragment;->location:Landroid/widget/TextView;

    const v1, 0x7f0a038a

    .line 90
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ebay/mobile/charity/CharityInfoFragment;->mission:Landroid/widget/TextView;

    const v1, 0x7f0a0384

    .line 91
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0ebd

    .line 92
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 93
    new-instance v3, Lcom/ebay/mobile/charity/CharityInfoFragment$1;

    invoke-direct {v3, p0}, Lcom/ebay/mobile/charity/CharityInfoFragment$1;-><init>(Lcom/ebay/mobile/charity/CharityInfoFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    invoke-virtual {p0}, Lcom/ebay/mobile/charity/CharityInfoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    if-eqz p3, :cond_0

    const-string p2, "favorite_button_enabled"

    .line 104
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/ebay/mobile/charity/CharityInfoFragment;->isSelectionEnabled:Z

    const-string p2, "charity_selection_text"

    .line 105
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/ebay/mobile/charity/CharityInfoFragment;->selectCharityButtonText:Ljava/lang/String;

    const-string p2, "charity_title"

    .line 106
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 107
    invoke-virtual {p0, p2}, Lcom/ebay/mobile/charity/CharityInfoFragment;->setTitleInParentActivity(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_2

    const-string p3, "charity_selection_enabled"

    .line 111
    invoke-virtual {v3, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/ebay/mobile/charity/CharityInfoFragment;->isSelectionEnabled:Z

    const-string p3, "charity_selection_text"

    .line 112
    invoke-virtual {v3, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/ebay/mobile/charity/CharityInfoFragment;->selectCharityButtonText:Ljava/lang/String;

    const-string/jumbo p3, "toolbar_title"

    .line 114
    invoke-virtual {v3, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    .line 116
    invoke-virtual {p0, p2}, Lcom/ebay/mobile/charity/CharityInfoFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/ebay/mobile/charity/CharityInfoFragment;->setTitleInParentActivity(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 118
    :cond_1
    invoke-virtual {p0, p3}, Lcom/ebay/mobile/charity/CharityInfoFragment;->setTitleInParentActivity(Ljava/lang/CharSequence;)V

    .line 121
    :cond_2
    :goto_0
    iget-boolean p2, p0, Lcom/ebay/mobile/charity/CharityInfoFragment;->isSelectionEnabled:Z

    if-eqz p2, :cond_4

    .line 123
    iget-object p2, p0, Lcom/ebay/mobile/charity/CharityInfoFragment;->selectCharityButtonText:Ljava/lang/String;

    if-eqz p2, :cond_3

    .line 124
    iget-object p2, p0, Lcom/ebay/mobile/charity/CharityInfoFragment;->selectCharityButtonText:Ljava/lang/String;

    invoke-virtual {v2, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 126
    :cond_3
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_4
    const/16 p2, 0x8

    .line 129
    invoke-virtual {v1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 131
    :goto_1
    invoke-direct {p0}, Lcom/ebay/mobile/charity/CharityInfoFragment;->updateUI()V

    .line 132
    invoke-virtual {p1}, Landroid/view/View;->refreshDrawableState()V

    return-object p1
.end method

.method protected onInitializeDataManagers(Lcom/ebay/nautilus/shell/app/DataManagerContainer;)V
    .locals 1

    .line 231
    sget-object v0, Lcom/ebay/nautilus/domain/content/dm/NonProfitDataManager;->KEY:Lcom/ebay/nautilus/domain/content/dm/NonProfitDataManager$KeyParams;

    invoke-virtual {p1, v0, p0}, Lcom/ebay/nautilus/shell/app/DataManagerContainer;->initialize(Lcom/ebay/nautilus/domain/content/DataManager$DataManagerKeyParams;Ljava/lang/Object;)Lcom/ebay/nautilus/domain/content/DataManager;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/content/dm/NonProfitDataManager;

    iput-object p1, p0, Lcom/ebay/mobile/charity/CharityInfoFragment;->nonprofitDataManager:Lcom/ebay/nautilus/domain/content/dm/NonProfitDataManager;

    .line 232
    iget-object p1, p0, Lcom/ebay/mobile/charity/CharityInfoFragment;->nonprofitDataManager:Lcom/ebay/nautilus/domain/content/dm/NonProfitDataManager;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/content/dm/NonProfitDataManager;->forceReloadData()V

    return-void
.end method

.method public onNonProfitsChanged(Lcom/ebay/nautilus/domain/content/dm/NonProfitDataManager;Lcom/ebay/nautilus/domain/content/Content;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/content/dm/NonProfitDataManager;",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/Nonprofit;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 165
    invoke-super {p0}, Lcom/ebay/nautilus/shell/app/BaseDmDialogFragment;->onResume()V

    .line 167
    invoke-virtual {p0}, Lcom/ebay/mobile/charity/CharityInfoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 168
    instance-of v1, v0, Lcom/ebay/nautilus/shell/app/FwActivity;

    if-eqz v1, :cond_0

    .line 169
    new-instance v1, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    invoke-virtual {p0}, Lcom/ebay/mobile/charity/CharityInfoFragment;->getTrackingEventName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/ebay/nautilus/domain/analytics/TrackingType;->PAGE_IMPRESSION:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    invoke-direct {v1, v2, v3}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;-><init>(Ljava/lang/String;Lcom/ebay/nautilus/domain/analytics/TrackingType;)V

    check-cast v0, Lcom/ebay/nautilus/shell/app/FwActivity;

    .line 170
    invoke-interface {v0}, Lcom/ebay/nautilus/shell/app/FwActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 144
    invoke-super {p0, p1}, Lcom/ebay/nautilus/shell/app/BaseDmDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "favorite_button_enabled"

    .line 145
    iget-boolean v1, p0, Lcom/ebay/mobile/charity/CharityInfoFragment;->isSelectionEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "charity_selection_text"

    .line 146
    iget-object v1, p0, Lcom/ebay/mobile/charity/CharityInfoFragment;->selectCharityButtonText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "charity_title"

    .line 147
    invoke-virtual {p0}, Lcom/ebay/mobile/charity/CharityInfoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/ebay/mobile/charity/CharityInfoFragment;->resetTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/charity/CharityInfoFragment;->setTitleInParentActivity(Ljava/lang/CharSequence;)V

    .line 159
    invoke-super {p0}, Lcom/ebay/nautilus/shell/app/BaseDmDialogFragment;->onStop()V

    return-void
.end method

.method public setTitleInParentActivity(Ljava/lang/CharSequence;)V
    .locals 1

    .line 138
    invoke-virtual {p0}, Lcom/ebay/mobile/charity/CharityInfoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
