.class public Lcom/ebay/mobile/activities/SellingActivity;
.super Lcom/ebay/mobile/activities/CoreActivity;
.source "SellingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ldagger/android/support/HasSupportFragmentInjector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/mobile/activities/SellingActivity$FlingBehavior;,
        Lcom/ebay/mobile/activities/SellingActivity$AugmentedListItemCardResources;
    }
.end annotation


# static fields
.field public static final EXTRA_LISTING_DRAFT_ID:Ljava/lang/String; = "RedirectDraftId"

.field public static final ROOT_FRAGMENT_TAG:Ljava/lang/String; = "rootFragment"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final augmentedCardResourcesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ebay/mobile/activities/SellingActivity$AugmentedListItemCardResources;",
            ">;"
        }
    .end annotation
.end field

.field private augmentedListItemCardEnabled:Z

.field fragmentInjector:Ldagger/android/DispatchingAndroidInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private resourceIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/ebay/mobile/activities/CoreActivity;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ebay/mobile/activities/SellingActivity;->augmentedCardResourcesList:Ljava/util/ArrayList;

    return-void
.end method

.method private initializeAugmentedCardResourcesList()V
    .locals 4

    .line 297
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/SellingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 299
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/SellingActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v1

    const-class v2, Lcom/ebay/nautilus/domain/dagger/DomainComponent;

    invoke-interface {v1, v2}, Lcom/ebay/nautilus/kernel/content/EbayContext;->as(Ljava/lang/Class;)Lcom/ebay/nautilus/kernel/dagger/KernelComponent;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/dagger/DomainComponent;

    invoke-interface {v1}, Lcom/ebay/nautilus/domain/dagger/DomainComponent;->getUserContext()Lcom/ebay/nautilus/domain/content/dm/UserContext;

    move-result-object v1

    .line 300
    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/content/dm/UserContext;->ensureCountry()Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object v1

    iget-object v1, v1, Lcom/ebay/nautilus/domain/EbayCountry;->site:Lcom/ebay/nautilus/domain/EbaySite;

    .line 302
    sget-object v2, Lcom/ebay/nautilus/domain/EbaySite;->DE:Lcom/ebay/nautilus/domain/EbaySite;

    invoke-virtual {v2, v1}, Lcom/ebay/nautilus/domain/EbaySite;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v1, 0x7f12008e

    .line 304
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120090

    .line 305
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 307
    :cond_0
    sget-object v2, Lcom/ebay/nautilus/domain/EbaySite;->UK:Lcom/ebay/nautilus/domain/EbaySite;

    invoke-virtual {v2, v1}, Lcom/ebay/nautilus/domain/EbaySite;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f12008f

    .line 309
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120091

    .line 310
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const v1, 0x7f120c9c

    .line 314
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120d1e

    .line 315
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 318
    :goto_0
    new-instance v2, Lcom/ebay/mobile/activities/SellingActivity$AugmentedListItemCardResources;

    const v3, 0x7f0803b1

    invoke-direct {v2, v3, v1}, Lcom/ebay/mobile/activities/SellingActivity$AugmentedListItemCardResources;-><init>(ILjava/lang/String;)V

    .line 319
    new-instance v1, Lcom/ebay/mobile/activities/SellingActivity$AugmentedListItemCardResources;

    const v3, 0x7f0803b2

    invoke-direct {v1, v3, v0}, Lcom/ebay/mobile/activities/SellingActivity$AugmentedListItemCardResources;-><init>(ILjava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/ebay/mobile/activities/SellingActivity;->augmentedCardResourcesList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    iget-object v0, p0, Lcom/ebay/mobile/activities/SellingActivity;->augmentedCardResourcesList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private launchSellNodeActivity(Z)V
    .locals 4

    .line 288
    new-instance v0, Lcom/ebay/mobile/listingform/PreListingFormIntentBuilder;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/listingform/PreListingFormIntentBuilder;-><init>(Landroid/content/Context;)V

    .line 289
    invoke-virtual {v0, p1}, Lcom/ebay/mobile/listingform/PreListingFormIntentBuilder;->setLaunchScanner(Z)Lcom/ebay/mobile/listingform/PreListingFormIntentBuilder;

    move-result-object p1

    new-instance v0, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;

    .line 290
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/SellingActivity;->getTrackingEventName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "listanitemaugmented"

    const-string/jumbo v3, "sell"

    invoke-direct {v0, v1, v2, v3}, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/ebay/mobile/listingform/PreListingFormIntentBuilder;->setSourceIdTag(Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;)Lcom/ebay/mobile/listingform/PreListingFormIntentBuilder;

    move-result-object p1

    .line 292
    invoke-virtual {p1}, Lcom/ebay/mobile/listingform/PreListingFormIntentBuilder;->buildAndStartActivity()V

    return-void
.end method

.method private launchSignInModalActivity(Z)V
    .locals 2

    .line 280
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/SellingActivity;->getTrackingEventName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/ebay/mobile/connection/idsignin/SignInActivity;->getIntentForSignIn(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const-string p1, "launch_scan_activity"

    .line 282
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 283
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/ebay/mobile/activities/SellingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method protected getNavigationId()I
    .locals 1

    const v0, 0x7f0a0a5c

    return v0
.end method

.method public getTrackingEventName()Ljava/lang/String;
    .locals 1

    const-string v0, "MyEbaySelling"

    return-object v0
.end method

.method protected onActivityResultSafe(IILandroid/content/Intent;)V
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_2

    .line 267
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "launch_scan_activity"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 268
    invoke-direct {p0, v0}, Lcom/ebay/mobile/activities/SellingActivity;->launchSellNodeActivity(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 270
    invoke-direct {p0, v0}, Lcom/ebay/mobile/activities/SellingActivity;->launchSellNodeActivity(Z)V

    .line 275
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/ebay/mobile/activities/CoreActivity;->onActivityResultSafe(IILandroid/content/Intent;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 235
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a02bb

    if-eq p1, v0, :cond_2

    const v0, 0x7f0a02bd

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 239
    :cond_0
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ebay/common/Preferences;->getAuthentication()Lcom/ebay/nautilus/domain/app/Authentication;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 240
    invoke-direct {p0, v0}, Lcom/ebay/mobile/activities/SellingActivity;->launchSignInModalActivity(Z)V

    goto :goto_0

    .line 242
    :cond_1
    invoke-direct {p0, v0}, Lcom/ebay/mobile/activities/SellingActivity;->launchSellNodeActivity(Z)V

    goto :goto_0

    .line 248
    :cond_2
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ebay/common/Preferences;->getAuthentication()Lcom/ebay/nautilus/domain/app/Authentication;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_3

    .line 249
    invoke-direct {p0, v0}, Lcom/ebay/mobile/activities/SellingActivity;->launchSignInModalActivity(Z)V

    goto :goto_0

    .line 251
    :cond_3
    invoke-direct {p0, v0}, Lcom/ebay/mobile/activities/SellingActivity;->launchSellNodeActivity(Z)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 82
    invoke-static {p0}, Ldagger/android/AndroidInjection;->inject(Landroid/app/Activity;)V

    .line 84
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f120089

    .line 85
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/SellingActivity;->setTitle(I)V

    .line 87
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object p1

    sget-object v0, Lcom/ebay/mobile/dcs/DcsBoolean;->Sell:Lcom/ebay/mobile/dcs/DcsBoolean;

    invoke-interface {p1, v0}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 88
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object p1

    sget-object v0, Lcom/ebay/mobile/dcs/Dcs$Selling$B;->augmentedListItemCard:Lcom/ebay/mobile/dcs/Dcs$Selling$B;

    invoke-interface {p1, v0}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/ebay/mobile/activities/SellingActivity;->augmentedListItemCardEnabled:Z

    .line 90
    iget-boolean p1, p0, Lcom/ebay/mobile/activities/SellingActivity;->augmentedListItemCardEnabled:Z

    if-eqz p1, :cond_1

    const/16 p1, 0x400

    .line 91
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/SellingActivity;->addToolbarFlags(I)V

    :cond_1
    const/16 p1, 0x2000

    .line 93
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/SellingActivity;->addToolbarFlags(I)V

    const p1, 0x7f0d002f

    .line 95
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/SellingActivity;->setContentView(I)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 167
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 168
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/SellingActivity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 108
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 110
    iget-boolean v0, p0, Lcom/ebay/mobile/activities/SellingActivity;->augmentedListItemCardEnabled:Z

    if-eqz v0, :cond_1

    .line 112
    invoke-direct {p0}, Lcom/ebay/mobile/activities/SellingActivity;->initializeAugmentedCardResourcesList()V

    if-eqz p1, :cond_0

    const-string/jumbo v0, "resource_index"

    .line 114
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/ebay/mobile/activities/SellingActivity;->resourceIndex:I

    .line 115
    iget-object p1, p0, Lcom/ebay/mobile/activities/SellingActivity;->augmentedCardResourcesList:Ljava/util/ArrayList;

    iget v0, p0, Lcom/ebay/mobile/activities/SellingActivity;->resourceIndex:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/mobile/activities/SellingActivity$AugmentedListItemCardResources;

    .line 117
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/SellingActivity;->getCollapsingToolbarLayout()Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 120
    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitleEnabled(Z)V

    const-wide/16 v2, 0xfa

    .line 121
    invoke-virtual {v0, v2, v3}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setScrimAnimationDuration(J)V

    .line 123
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/SellingActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d0436

    .line 125
    invoke-virtual {v2, v3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a0ed7

    .line 126
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 127
    invoke-virtual {p1}, Lcom/ebay/mobile/activities/SellingActivity$AugmentedListItemCardResources;->getImageResource()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 128
    invoke-virtual {v0, v3, v1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->addView(Landroid/view/View;I)V

    const v3, 0x7f0d0437

    .line 131
    invoke-virtual {v2, v3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a02bd

    .line 132
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 133
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a02bb

    .line 134
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 135
    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a0629

    .line 136
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 137
    invoke-virtual {p1}, Lcom/ebay/mobile/activities/SellingActivity$AugmentedListItemCardResources;->getExampleText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 138
    invoke-virtual {v0, v1, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->addView(Landroid/view/View;I)V

    .line 141
    invoke-virtual {v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    .line 142
    new-instance v0, Lcom/ebay/mobile/activities/SellingActivity$1;

    invoke-direct {v0, p0, v1}, Lcom/ebay/mobile/activities/SellingActivity$1;-><init>(Lcom/ebay/mobile/activities/SellingActivity;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    .line 152
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/SellingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070439

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    const v0, 0x7f080074

    .line 153
    invoke-static {p0, v0}, Landroid/animation/AnimatorInflater;->loadStateListAnimator(Landroid/content/Context;I)Landroid/animation/StateListAnimator;

    move-result-object v0

    .line 154
    invoke-virtual {p1, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 156
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 157
    new-instance v1, Lcom/ebay/mobile/activities/SellingActivity$FlingBehavior;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/ebay/mobile/activities/SellingActivity$FlingBehavior;-><init>(Lcom/ebay/mobile/activities/SellingActivity$1;)V

    invoke-virtual {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V

    .line 158
    invoke-virtual {p1, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->requestLayout()V

    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 101
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "resource_index"

    .line 102
    iget v1, p0, Lcom/ebay/mobile/activities/SellingActivity;->resourceIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onStart()V
    .locals 6

    .line 174
    invoke-super {p0}, Lcom/ebay/mobile/activities/CoreActivity;->onStart()V

    .line 176
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/SellingActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 179
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/SellingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "RedirectDraftId"

    .line 181
    invoke-virtual {v1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "RedirectDraftId"

    .line 183
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "RedirectDraftId"

    .line 184
    invoke-virtual {v1, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v3, "rootFragment"

    .line 187
    invoke-virtual {v0, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_3

    .line 190
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 191
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v4

    sget-object v5, Lcom/ebay/mobile/dcs/Dcs$Selling$B;->sellLandingExpSvc:Lcom/ebay/mobile/dcs/Dcs$Selling$B;

    invoke-interface {v4, v5}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Lcom/ebay/mobile/sellerlandingexperience/SellLandingFragment;

    invoke-direct {v4}, Lcom/ebay/mobile/sellerlandingexperience/SellLandingFragment;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v4, Lcom/ebay/mobile/sellerlanding/SellFragment;

    invoke-direct {v4}, Lcom/ebay/mobile/sellerlanding/SellFragment;-><init>()V

    :goto_0
    if-eqz v2, :cond_2

    const-string v5, "RedirectDraftId"

    .line 194
    invoke-virtual {v3, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_2
    invoke-virtual {v4, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 198
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v2, 0x7f0a06bd

    const-string/jumbo v3, "rootFragment"

    .line 199
    invoke-virtual {v0, v2, v4, v3}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_1

    .line 202
    :cond_3
    instance-of v0, v3, Lcom/ebay/mobile/sellerlanding/SellFragment;

    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    .line 205
    check-cast v3, Lcom/ebay/mobile/sellerlanding/SellFragment;

    invoke-virtual {v3, v2}, Lcom/ebay/mobile/sellerlanding/SellFragment;->openDraft(Ljava/lang/String;)V

    .line 208
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/SellingActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v0

    .line 209
    invoke-interface {v0}, Lcom/ebay/nautilus/kernel/content/EbayContext;->getNonFatalReporter()Lcom/ebay/nonfatalreporter/NonFatalReporter;

    move-result-object v2

    .line 210
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/SellingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/ebay/mobile/util/AppShortcutHelper;->processSellingShortcut(Lcom/ebay/nonfatalreporter/NonFatalReporter;Landroid/content/Context;Landroid/content/Intent;)Z

    .line 212
    new-instance v2, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    invoke-virtual {p0}, Lcom/ebay/mobile/activities/SellingActivity;->getTrackingEventName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/ebay/nautilus/domain/analytics/TrackingType;->PAGE_IMPRESSION:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    .line 213
    invoke-virtual {v2, v3}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->trackingType(Lcom/ebay/nautilus/domain/analytics/TrackingType;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v2

    .line 214
    invoke-virtual {v2, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->setSourceIdentification(Landroid/content/Intent;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    const/4 v3, 0x1

    .line 215
    invoke-static {v2, v1, v3}, Lcom/ebay/nautilus/domain/analytics/ExperienceTrackingUtil;->addXpTrackingToTrackingData(Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;Landroid/content/Intent;Z)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    .line 216
    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->build()Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    :cond_5
    return-void
.end method

.method public supportFragmentInjector()Ldagger/android/AndroidInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldagger/android/AndroidInjector<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/ebay/mobile/activities/SellingActivity;->fragmentInjector:Ldagger/android/DispatchingAndroidInjector;

    return-object v0
.end method
