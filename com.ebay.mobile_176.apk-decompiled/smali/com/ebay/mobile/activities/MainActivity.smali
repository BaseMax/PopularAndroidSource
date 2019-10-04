.class public Lcom/ebay/mobile/activities/MainActivity;
.super Lcom/ebay/mobile/activities/CoreActivity;
.source "MainActivity.java"

# interfaces
.implements Lcom/ebay/nautilus/domain/content/dm/UserContextDataManager$Observer;
.implements Lcom/ebay/nautilus/domain/content/dm/ads/gdpr/ConsentDataManager$Observer;
.implements Lcom/ebay/nautilus/domain/content/dm/home/HomeAnswersDataManager$Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo;,
        Lcom/ebay/mobile/activities/MainActivity$MainActivityLinkProcessor;,
        Lcom/ebay/mobile/activities/MainActivity$ShowHideSearchActionOffsetChangeListener;,
        Lcom/ebay/mobile/activities/MainActivity$DeviceConfigurationObserver;
    }
.end annotation


# static fields
.field public static final ANNOUNCE_WELCOME_MESSAGE:Ljava/lang/String; = "announceWelcomeMessage"

.field public static final STATUS_BAR_COLOR_ADJUSTMENT:F = 0.8f


# instance fields
.field private announceWelcomeMessage:Z

.field private consentDataManager:Lcom/ebay/nautilus/domain/content/dm/ads/gdpr/ConsentDataManager;

.field private final dcsObserver:Lcom/ebay/mobile/activities/MainActivity$DeviceConfigurationObserver;

.field public fragment:Lcom/ebay/mobile/home/answers/HomeAnswersFragment;

.field private imageSearchComponent:Lcom/ebay/mobile/search/image/ImageSearchComponent;

.field private noPlayServices:Z

.field playServicesAvailabilityHelper:Lcom/ebay/mobile/playservices/PlayServicesAvailabilityHelper;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private searchBarOffsetChangeListener:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

.field private searchView:Lcom/ebay/mobile/widget/SearchViewPlaceholderView;

.field private shouldShowRateThisAppDialog:Z

.field private takeoverInfo:Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo;

.field private userContextDataManager:Lcom/ebay/nautilus/domain/content/dm/UserContextDataManager;

.field private welcomeEvent:Landroid/view/accessibility/AccessibilityEvent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 106
    invoke-direct {p0}, Lcom/ebay/mobile/activities/CoreActivity;-><init>()V

    .line 122
    new-instance v0, Lcom/ebay/mobile/activities/MainActivity$DeviceConfigurationObserver;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/activities/MainActivity$DeviceConfigurationObserver;-><init>(Lcom/ebay/mobile/activities/MainActivity;)V

    iput-object v0, p0, Lcom/ebay/mobile/activities/MainActivity;->dcsObserver:Lcom/ebay/mobile/activities/MainActivity$DeviceConfigurationObserver;

    .line 125
    new-instance v0, Lcom/ebay/mobile/activities/MainActivity$ShowHideSearchActionOffsetChangeListener;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/activities/MainActivity$ShowHideSearchActionOffsetChangeListener;-><init>(Lcom/ebay/mobile/activities/CoreActivity;)V

    iput-object v0, p0, Lcom/ebay/mobile/activities/MainActivity;->searchBarOffsetChangeListener:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    .line 136
    new-instance v0, Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo;

    invoke-direct {v0}, Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo;-><init>()V

    iput-object v0, p0, Lcom/ebay/mobile/activities/MainActivity;->takeoverInfo:Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo;

    const/4 v0, 0x1

    .line 139
    iput-boolean v0, p0, Lcom/ebay/mobile/activities/MainActivity;->announceWelcomeMessage:Z

    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Lcom/ebay/mobile/activities/MainActivity;->welcomeEvent:Landroid/view/accessibility/AccessibilityEvent;

    const/4 v0, 0x0

    .line 142
    iput-boolean v0, p0, Lcom/ebay/mobile/activities/MainActivity;->noPlayServices:Z

    .line 146
    new-instance v0, Lcom/ebay/mobile/playservices/PlayServicesAvailabilityHelper;

    invoke-direct {v0}, Lcom/ebay/mobile/playservices/PlayServicesAvailabilityHelper;-><init>()V

    iput-object v0, p0, Lcom/ebay/mobile/activities/MainActivity;->playServicesAvailabilityHelper:Lcom/ebay/mobile/playservices/PlayServicesAvailabilityHelper;

    return-void
.end method

.method private a11yModeAnnounceWelcomeMessage()V
    .locals 6

    .line 231
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/common/Preferences;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/ebay/mobile/activities/MainActivity;->announceWelcomeMessage:Z

    if-eqz v0, :cond_2

    const v0, 0x7f12018c

    .line 233
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 234
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ebay/common/Preferences;->getCurrentUser()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 233
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    .line 237
    iget-object v3, p0, Lcom/ebay/mobile/activities/MainActivity;->welcomeEvent:Landroid/view/accessibility/AccessibilityEvent;

    if-nez v3, :cond_0

    .line 239
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v3

    iput-object v3, p0, Lcom/ebay/mobile/activities/MainActivity;->welcomeEvent:Landroid/view/accessibility/AccessibilityEvent;

    .line 240
    iget-object v3, p0, Lcom/ebay/mobile/activities/MainActivity;->welcomeEvent:Landroid/view/accessibility/AccessibilityEvent;

    const/16 v5, 0x4000

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 241
    iget-object v3, p0, Lcom/ebay/mobile/activities/MainActivity;->welcomeEvent:Landroid/view/accessibility/AccessibilityEvent;

    iget-object v5, p0, Lcom/ebay/mobile/activities/MainActivity;->welcomeEvent:Landroid/view/accessibility/AccessibilityEvent;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v3, p0, Lcom/ebay/mobile/activities/MainActivity;->welcomeEvent:Landroid/view/accessibility/AccessibilityEvent;

    iget-object v5, p0, Lcom/ebay/mobile/activities/MainActivity;->welcomeEvent:Landroid/view/accessibility/AccessibilityEvent;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityEvent;->getClassName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v3, p0, Lcom/ebay/mobile/activities/MainActivity;->welcomeEvent:Landroid/view/accessibility/AccessibilityEvent;

    invoke-virtual {v3, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 245
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ebay/mobile/util/Util;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ebay/mobile/activities/MainActivity;->welcomeEvent:Landroid/view/accessibility/AccessibilityEvent;

    if-eqz v1, :cond_1

    .line 247
    iget-object v1, p0, Lcom/ebay/mobile/activities/MainActivity;->welcomeEvent:Landroid/view/accessibility/AccessibilityEvent;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    iget-object v0, p0, Lcom/ebay/mobile/activities/MainActivity;->welcomeEvent:Landroid/view/accessibility/AccessibilityEvent;

    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 250
    :cond_1
    iput-boolean v4, p0, Lcom/ebay/mobile/activities/MainActivity;->announceWelcomeMessage:Z

    :cond_2
    return-void
.end method

.method private static calculateStatusBarTakeoverColor(IF)I
    .locals 2

    .line 833
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 834
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 835
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float v0, v0

    mul-float v0, v0, p1

    float-to-int v0, v0

    int-to-float v1, v1

    mul-float v1, v1, p1

    float-to-int v1, v1

    int-to-float p0, p0

    mul-float p0, p0, p1

    float-to-int p0, p0

    .line 836
    invoke-static {v0, v1, p0}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    return p0
.end method

.method private clearNavigationMenuTakeover()V
    .locals 2

    .line 649
    invoke-direct {p0}, Lcom/ebay/mobile/activities/MainActivity;->getNavigationHeader()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 651
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method private displayDs6WelcomeScreenAndRecordToPreferencesIfNeeded()Z
    .locals 3

    .line 264
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v0

    .line 265
    sget-object v1, Lcom/ebay/mobile/dcs/Dcs$App$B;->shouldShowDs6WelcomeScreen:Lcom/ebay/mobile/dcs/Dcs$App$B;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 269
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object v0

    .line 270
    invoke-virtual {v0, v1}, Lcom/ebay/common/Preferences;->hasShownDs6WelcomeScreen(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 275
    const-class v1, Lcom/ebay/mobile/home/splash/SplashFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 276
    new-instance v2, Lcom/ebay/mobile/home/splash/SplashFragment;

    invoke-direct {v2}, Lcom/ebay/mobile/home/splash/SplashFragment;-><init>()V

    .line 277
    invoke-virtual {v2, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method private executeMenuItemsTakeover(Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo;)V
    .locals 1
    .param p1    # Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 748
    iget-boolean v0, p1, Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo;->haveActiveTakeover:Z

    if-eqz v0, :cond_0

    .line 749
    iget p1, p1, Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo;->secondaryColor:I

    invoke-direct {p0, p1}, Lcom/ebay/mobile/activities/MainActivity;->recolorMenuItems(I)V

    :cond_0
    return-void
.end method

.method private executeNavigationMenuTakeover(Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo;)V
    .locals 1
    .param p1    # Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 642
    invoke-direct {p0}, Lcom/ebay/mobile/activities/MainActivity;->getNavigationHeader()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 644
    iget p1, p1, Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo;->primaryColor:I

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method private executeStatusBarRecolor(Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo;)V
    .locals 6
    .param p1    # Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 811
    iget p1, p1, Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo;->primaryColor:I

    const v0, 0x3f4ccccd    # 0.8f

    invoke-static {p1, v0}, Lcom/ebay/mobile/activities/MainActivity;->calculateStatusBarTakeoverColor(IF)I

    move-result p1

    .line 812
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 814
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, -0x80000000

    .line 815
    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 817
    invoke-virtual {v1}, Landroid/view/Window;->getStatusBarColor()I

    move-result v2

    .line 819
    new-instance v3, Landroid/animation/ArgbEvaluator;

    invoke-direct {v3}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v4, v2

    invoke-static {v3, v4}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p1

    int-to-long v2, v0

    .line 820
    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 821
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 822
    new-instance v0, Lcom/ebay/mobile/activities/-$$Lambda$MainActivity$erLqtOniMvvXveFNiQQU_I9DR1s;

    invoke-direct {v0, v1}, Lcom/ebay/mobile/activities/-$$Lambda$MainActivity$erLqtOniMvvXveFNiQQU_I9DR1s;-><init>(Landroid/view/Window;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 823
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private executeToolbarBarRecolor(Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo;)V
    .locals 11
    .param p1    # Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 662
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/MainActivity;->getPrimaryToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    .line 663
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/MainActivity;->getAuxiliaryToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 667
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0001

    .line 668
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 671
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 672
    instance-of v4, v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 673
    check-cast v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 675
    :goto_0
    new-instance v4, Landroid/animation/ArgbEvaluator;

    invoke-direct {v4}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    .line 676
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v5

    iget v3, p1, Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo;->primaryColor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v8, 0x1

    aput-object v3, v7, v8

    .line 675
    invoke-static {v4, v7}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v3

    int-to-long v9, v2

    .line 677
    invoke-virtual {v3, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 678
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 679
    new-instance v2, Lcom/ebay/mobile/activities/-$$Lambda$MainActivity$8XMSbMWpEvWH9vpW3GlT3hovNC0;

    invoke-direct {v2, v0, v1}, Lcom/ebay/mobile/activities/-$$Lambda$MainActivity$8XMSbMWpEvWH9vpW3GlT3hovNC0;-><init>(Landroidx/appcompat/widget/Toolbar;Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {v3, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 687
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 689
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v1

    .line 690
    sget-object v2, Lcom/ebay/mobile/dcs/Dcs$Homescreen$B;->holidayTakeoverExtended:Lcom/ebay/mobile/dcs/Dcs$Homescreen$B;

    invoke-interface {v1, v2}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 692
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a077e

    .line 693
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0a0988

    .line 694
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 696
    new-instance v2, Landroid/animation/ArgbEvaluator;

    invoke-direct {v2}, Landroid/animation/ArgbEvaluator;-><init>()V

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, -0x1

    .line 697
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget p1, p1, Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo;->secondaryColor:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v8

    .line 696
    invoke-static {v2, v3}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 698
    invoke-virtual {p1, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 699
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 701
    new-instance v2, Lcom/ebay/mobile/activities/-$$Lambda$MainActivity$14LrdDeuTB8ijXHfPi1By4FGArU;

    invoke-direct {v2, p0, v1, v0}, Lcom/ebay/mobile/activities/-$$Lambda$MainActivity$14LrdDeuTB8ijXHfPi1By4FGArU;-><init>(Lcom/ebay/mobile/activities/MainActivity;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 706
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void
.end method

.method public static getFragmentTag(Lcom/ebay/nautilus/domain/EbayCountry;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 962
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "answersRootFragment"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2d

    if-eqz p0, :cond_0

    .line 965
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/EbayCountry;->getCountryCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz p1, :cond_1

    .line 967
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 969
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getNavigationHeader()Landroid/view/View;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 629
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/MainActivity;->getNavigationDrawer()Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f0a0a62

    .line 632
    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/navigation/NavigationView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 635
    invoke-virtual {v0, v1}, Lcom/google/android/material/navigation/NavigationView;->getHeaderView(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$executeStatusBarRecolor$2(Landroid/view/Window;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 822
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    return-void
.end method

.method static synthetic lambda$executeToolbarBarRecolor$0(Landroidx/appcompat/widget/Toolbar;Landroidx/appcompat/widget/Toolbar;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 681
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 682
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/Toolbar;->setBackgroundColor(I)V

    if-eqz p1, :cond_0

    .line 684
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/Toolbar;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$executeToolbarBarRecolor$1(Lcom/ebay/mobile/activities/MainActivity;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 703
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 704
    invoke-direct {p0, p1, p2, p3}, Lcom/ebay/mobile/activities/MainActivity;->recolorHomeLogo(Landroid/widget/ImageView;Landroid/widget/ImageView;I)V

    return-void
.end method

.method static synthetic lambda$showDeletedSaveSnackBar$3(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/net/api/search/following/InterestDescriptor;Ljava/lang/String;Ljava/util/List;Lcom/ebay/mobile/home/answers/HomeAnswersFragment$HomeFollowingObserver;Landroid/view/View;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    .line 1106
    invoke-virtual/range {v0 .. v6}, Lcom/ebay/common/content/dm/search/FollowingDataManager;->followSearch(Lcom/ebay/common/net/api/search/following/InterestParameters;Lcom/ebay/common/net/api/search/following/InterestDescriptor;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;)Lcom/ebay/nautilus/domain/content/TaskSync;

    return-void
.end method

.method private recolorHomeLogo(Landroid/widget/ImageView;Landroid/widget/ImageView;I)V
    .locals 0
    .param p1    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 760
    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    if-eqz p1, :cond_0

    .line 762
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 764
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method

.method private recolorMenuItems(I)V
    .locals 6
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 773
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/MainActivity;->getPrimaryToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 776
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/4 v1, 0x0

    .line 778
    invoke-interface {v0}, Landroid/view/Menu;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_4

    .line 780
    invoke-interface {v0, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 781
    invoke-interface {v3}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_1

    :cond_0
    move-object v5, v4

    :goto_1
    if-eqz v5, :cond_1

    .line 785
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 786
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_2

    :cond_1
    if-eqz v3, :cond_2

    .line 790
    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    :cond_2
    if-eqz v4, :cond_3

    const v3, 0x7f0a003c

    .line 794
    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    if-eqz v3, :cond_3

    .line 796
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private removeTakeoverColors()V
    .locals 5

    .line 716
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/MainActivity;->getPrimaryToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    .line 717
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/MainActivity;->getAuxiliaryToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 721
    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/ebay/mobile/activities/MainActivity;->getToolbarTheme()I

    move-result v3

    invoke-direct {v2, p0, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const v3, 0x7f040162

    .line 723
    invoke-static {v2, v3}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeColor(Landroid/content/Context;I)I

    move-result v3

    const v4, 0x1010036

    .line 724
    invoke-static {v2, v4}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeColor(Landroid/content/Context;I)I

    move-result v2

    .line 726
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/Toolbar;->setBackgroundColor(I)V

    if-eqz v1, :cond_0

    .line 728
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/Toolbar;->setBackgroundColor(I)V

    .line 730
    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a077e

    .line 731
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v3, 0x7f0a0988

    .line 732
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v3, 0x0

    .line 734
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 735
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 736
    invoke-direct {p0, v2}, Lcom/ebay/mobile/activities/MainActivity;->recolorMenuItems(I)V

    :cond_1
    return-void
.end method

.method private tryDisplayingOtherOverlay()V
    .locals 3

    .line 201
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "AdsConsentBannerFragment"

    .line 203
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 207
    invoke-static {}, Lcom/ebay/mobile/themes/Ds6Configuration;->getInstance()Lcom/ebay/mobile/themes/Ds6ConfigurationContract;

    move-result-object v2

    invoke-interface {v2}, Lcom/ebay/mobile/themes/Ds6ConfigurationContract;->isDs6Applied()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    invoke-direct {p0}, Lcom/ebay/mobile/activities/MainActivity;->displayDs6WelcomeScreenAndRecordToPreferencesIfNeeded()Z

    move-result v1

    .line 210
    :cond_0
    const-class v2, Lcom/ebay/mobile/home/splash/SplashFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-nez v1, :cond_1

    if-nez v2, :cond_1

    .line 213
    invoke-direct {p0}, Lcom/ebay/mobile/activities/MainActivity;->tryDisplayingSocialAccountSplashScreen()Z

    move-result v1

    .line 215
    const-class v2, Lcom/ebay/mobile/home/splash/SocialAccountSplashFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    .line 217
    iget-boolean v0, p0, Lcom/ebay/mobile/activities/MainActivity;->shouldShowRateThisAppDialog:Z

    if-eqz v0, :cond_1

    .line 219
    new-instance v0, Lcom/ebay/mobile/RateThisAppDialogFragment;

    invoke-direct {v0}, Lcom/ebay/mobile/RateThisAppDialogFragment;-><init>()V

    .line 220
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/ebay/mobile/RateThisAppDialogFragment;->FRAGMENT_MANAGER_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ebay/mobile/RateThisAppDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private tryDisplayingSocialAccountSplashScreen()Z
    .locals 4

    .line 295
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v0

    .line 296
    sget-object v1, Lcom/ebay/mobile/dcs/Dcs$App$B;->showSocialAccountSplashScreen:Lcom/ebay/mobile/dcs/Dcs$App$B;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v1

    .line 297
    sget-object v2, Lcom/ebay/mobile/dcs/Dcs$Connect$B;->facebookSignIn:Lcom/ebay/mobile/dcs/Dcs$Connect$B;

    invoke-interface {v0, v2}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v2

    .line 298
    sget-object v3, Lcom/ebay/mobile/dcs/Dcs$Connect$B;->googleSignIn:Lcom/ebay/mobile/dcs/Dcs$Connect$B;

    invoke-interface {v0, v3}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-nez v2, :cond_0

    if-eqz v0, :cond_1

    .line 302
    :cond_0
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object v0

    .line 303
    invoke-virtual {v0}, Lcom/ebay/common/Preferences;->isSignedIn()Z

    move-result v1

    const/4 v2, 0x0

    .line 304
    invoke-virtual {v0, v2}, Lcom/ebay/common/Preferences;->getLastSignInEntered(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 305
    invoke-virtual {v0, v3}, Lcom/ebay/common/Preferences;->hasShownSocialAccountSplashScreen(Z)Z

    move-result v0

    if-nez v1, :cond_1

    .line 307
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 309
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 310
    const-class v1, Lcom/ebay/mobile/home/splash/SocialAccountSplashFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 311
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_1

    .line 314
    new-instance v2, Lcom/ebay/mobile/home/splash/SocialAccountSplashFragment;

    invoke-direct {v2}, Lcom/ebay/mobile/home/splash/SocialAccountSplashFragment;-><init>()V

    .line 315
    invoke-virtual {v2, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_1
    return v3
.end method


# virtual methods
.method public consentDialogNotShown()V
    .locals 0

    .line 861
    invoke-direct {p0}, Lcom/ebay/mobile/activities/MainActivity;->tryDisplayingOtherOverlay()V

    return-void
.end method

.method protected getFabLayout()I
    .locals 1

    const v0, 0x7f0d01ba

    return v0
.end method

.method protected getNavigationId()I
    .locals 1

    const v0, 0x7f0a0a55

    return v0
.end method

.method public getTrackingEventName()Ljava/lang/String;
    .locals 1

    const-string v0, "HomePage"

    return-object v0
.end method

.method public handleNewTakeoverInfo(Lcom/ebay/mobile/home/answers/module/CampaignViewModel;)V
    .locals 4
    .param p1    # Lcom/ebay/mobile/home/answers/module/CampaignViewModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 598
    new-instance v0, Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo;

    invoke-direct {v0}, Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo;-><init>()V

    iput-object v0, p0, Lcom/ebay/mobile/activities/MainActivity;->takeoverInfo:Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo;

    if-eqz p1, :cond_1

    .line 599
    invoke-virtual {p1}, Lcom/ebay/mobile/home/answers/module/CampaignViewModel;->shouldExecuteTakeover()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 601
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/ebay/mobile/activities/MainActivity;->getToolbarTheme()I

    move-result v1

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f040162

    .line 603
    invoke-static {v0, v1}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeColor(Landroid/content/Context;I)I

    move-result v1

    .line 605
    iget-object v2, p0, Lcom/ebay/mobile/activities/MainActivity;->takeoverInfo:Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo;->haveActiveTakeover:Z

    .line 606
    iget-object v2, p0, Lcom/ebay/mobile/activities/MainActivity;->takeoverInfo:Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo;

    invoke-virtual {p1, v1}, Lcom/ebay/mobile/home/answers/module/CampaignViewModel;->getFirstCampaignBackgroundColor(I)I

    move-result v1

    iput v1, v2, Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo;->primaryColor:I

    .line 607
    iget-object v1, p0, Lcom/ebay/mobile/activities/MainActivity;->takeoverInfo:Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo;

    sget-object v2, Lcom/ebay/mobile/home/answers/module/BannerTextType;->HEADLINE:Lcom/ebay/mobile/home/answers/module/BannerTextType;

    invoke-virtual {p1, v0, v2}, Lcom/ebay/mobile/home/answers/module/CampaignViewModel;->determineTextColor(Landroid/content/Context;Lcom/ebay/mobile/home/answers/module/BannerTextType;)I

    move-result p1

    iput p1, v1, Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo;->secondaryColor:I

    .line 609
    iget-object p1, p0, Lcom/ebay/mobile/activities/MainActivity;->takeoverInfo:Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo;

    invoke-direct {p0, p1}, Lcom/ebay/mobile/activities/MainActivity;->executeToolbarBarRecolor(Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo;)V

    .line 610
    iget-object p1, p0, Lcom/ebay/mobile/activities/MainActivity;->takeoverInfo:Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo;

    invoke-direct {p0, p1}, Lcom/ebay/mobile/activities/MainActivity;->executeStatusBarRecolor(Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo;)V

    .line 612
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object p1

    .line 613
    sget-object v0, Lcom/ebay/mobile/dcs/Dcs$Homescreen$B;->holidayTakeoverExtended:Lcom/ebay/mobile/dcs/Dcs$Homescreen$B;

    invoke-interface {p1, v0}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 614
    iget-object p1, p0, Lcom/ebay/mobile/activities/MainActivity;->takeoverInfo:Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo;

    invoke-direct {p0, p1}, Lcom/ebay/mobile/activities/MainActivity;->executeMenuItemsTakeover(Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo;)V

    .line 616
    :cond_0
    iget-object p1, p0, Lcom/ebay/mobile/activities/MainActivity;->takeoverInfo:Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo;

    invoke-direct {p0, p1}, Lcom/ebay/mobile/activities/MainActivity;->executeNavigationMenuTakeover(Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo;)V

    goto :goto_0

    .line 620
    :cond_1
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/MainActivity;->resetStatusBarColor()V

    .line 621
    invoke-direct {p0}, Lcom/ebay/mobile/activities/MainActivity;->removeTakeoverColors()V

    .line 622
    invoke-direct {p0}, Lcom/ebay/mobile/activities/MainActivity;->clearNavigationMenuTakeover()V

    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 929
    invoke-super {p0, p1, p2, p3}, Lcom/ebay/mobile/activities/CoreActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0xa

    if-eq p1, v0, :cond_3

    const/16 v0, 0x14

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_1

    const v0, 0xface

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 935
    :cond_0
    new-instance v0, Lcom/ebay/mobile/connection/idsignin/social/SocialSignInCallbackHelper;

    new-instance v1, Lcom/ebay/mobile/connection/idsignin/social/ExternalSocialSignInImpl;

    invoke-virtual {p0}, Lcom/ebay/mobile/activities/MainActivity;->getTrackingEventName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/ebay/mobile/connection/idsignin/social/ExternalSocialSignInImpl;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/ebay/mobile/connection/idsignin/social/SocialSignInCallbackHelper;-><init>(Lcom/ebay/mobile/connection/idsignin/social/SocialSignInCallbackHelper$SocialSignInListener;)V

    .line 936
    invoke-virtual {v0, p0}, Lcom/ebay/mobile/connection/idsignin/social/SocialSignInCallbackHelper;->facebookSignInCallback(Landroid/app/Activity;)Lcom/facebook/CallbackManager;

    move-result-object v0

    .line 937
    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    if-ne p2, p1, :cond_4

    .line 945
    invoke-static {p2, p3, p0}, Lcom/ebay/common/view/util/BarcodeScanUtil;->handleBarcodeResultForSearch(ILandroid/content/Intent;Lcom/ebay/mobile/activities/CoreActivity;)V

    goto :goto_0

    .line 948
    :cond_2
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/MainActivity;->finish()V

    goto :goto_0

    .line 940
    :cond_3
    new-instance p1, Lcom/ebay/mobile/connection/idsignin/social/SocialSignInCallbackHelper;

    new-instance v0, Lcom/ebay/mobile/connection/idsignin/social/ExternalSocialSignInImpl;

    invoke-virtual {p0}, Lcom/ebay/mobile/activities/MainActivity;->getTrackingEventName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ebay/mobile/connection/idsignin/social/ExternalSocialSignInImpl;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/ebay/mobile/connection/idsignin/social/SocialSignInCallbackHelper;-><init>(Lcom/ebay/mobile/connection/idsignin/social/SocialSignInCallbackHelper$SocialSignInListener;)V

    .line 941
    invoke-virtual {p1, p2, p3, p0}, Lcom/ebay/mobile/connection/idsignin/social/SocialSignInCallbackHelper;->googleSignInCallback(ILandroid/content/Intent;Landroid/app/Activity;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onCacheRemoved(Lcom/ebay/nautilus/domain/content/dm/home/HomeAnswersDataManager;)V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 152
    invoke-static {}, Lcom/ebay/mobile/themes/Ds6Configuration;->getInstance()Lcom/ebay/mobile/themes/Ds6ConfigurationContract;

    move-result-object v0

    invoke-interface {v0}, Lcom/ebay/mobile/themes/Ds6ConfigurationContract;->isDs6Applied()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f13001b

    goto :goto_0

    :cond_0
    const v0, 0x7f130015

    :goto_0
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/MainActivity;->setTheme(I)V

    .line 153
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0xa9e5

    .line 155
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/MainActivity;->setToolbarFlags(I)V

    const v0, 0x7f0d002c

    .line 166
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/MainActivity;->setContentView(I)V

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 171
    invoke-static {p0}, Lcom/ebay/mobile/analytics/InstallTracking;->testFirstRun(Landroid/app/Activity;)V

    .line 173
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ebay/common/Preferences;->isSignedIn()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 174
    new-instance p1, Lcom/ebay/common/UserCache;

    invoke-direct {p1, p0}, Lcom/ebay/common/UserCache;-><init>(Lcom/ebay/nautilus/shell/app/BaseActivity;)V

    invoke-virtual {p1}, Lcom/ebay/common/UserCache;->refreshAll()V

    goto :goto_1

    :cond_1
    const-string/jumbo v1, "takeoverInfo"

    .line 178
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo;

    iput-object v1, p0, Lcom/ebay/mobile/activities/MainActivity;->takeoverInfo:Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo;

    const-string v1, "announceWelcomeMessage"

    .line 179
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ebay/mobile/activities/MainActivity;->announceWelcomeMessage:Z

    .line 183
    :cond_2
    :goto_1
    invoke-static {}, Lcom/ebay/mobile/RateThisAppDialogFragment;->shouldShowDialog()Z

    move-result p1

    iput-boolean p1, p0, Lcom/ebay/mobile/activities/MainActivity;->shouldShowRateThisAppDialog:Z

    .line 185
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object p1

    invoke-static {p1}, Lcom/ebay/mobile/search/image/ImageSearchComponent;->get(Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;)Lcom/ebay/mobile/search/image/ImageSearchComponent;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/activities/MainActivity;->imageSearchComponent:Lcom/ebay/mobile/search/image/ImageSearchComponent;

    .line 187
    iget-object p1, p0, Lcom/ebay/mobile/activities/MainActivity;->playServicesAvailabilityHelper:Lcom/ebay/mobile/playservices/PlayServicesAvailabilityHelper;

    .line 188
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/MainActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/ebay/nautilus/kernel/content/EbayContext;->getNonFatalReporter()Lcom/ebay/nonfatalreporter/NonFatalReporter;

    move-result-object v1

    const/16 v2, 0x14

    .line 187
    invoke-virtual {p1, p0, v1, v2}, Lcom/ebay/mobile/playservices/PlayServicesAvailabilityHelper;->isPlayServicesAvailable(Landroid/app/Activity;Lcom/ebay/nonfatalreporter/NonFatalReporter;I)Z

    move-result p1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/ebay/mobile/activities/MainActivity;->noPlayServices:Z

    return-void
.end method

.method public onCurrentCountryChanged(Lcom/ebay/nautilus/domain/content/dm/UserContextDataManager;Lcom/ebay/nautilus/domain/EbayCountry;)V
    .locals 0

    return-void
.end method

.method public onCurrentUserChanged(Lcom/ebay/nautilus/domain/content/dm/UserContextDataManager;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method protected onInitializeDataManagers(Lcom/ebay/nautilus/shell/app/DataManagerContainer;)V
    .locals 3

    .line 425
    iget-boolean v0, p0, Lcom/ebay/mobile/activities/MainActivity;->noPlayServices:Z

    if-eqz v0, :cond_0

    return-void

    .line 428
    :cond_0
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->onInitializeDataManagers(Lcom/ebay/nautilus/shell/app/DataManagerContainer;)V

    .line 429
    sget-object v0, Lcom/ebay/nautilus/domain/content/dm/UserContextDataManager;->KEY:Lcom/ebay/nautilus/domain/content/dm/UserContextDataManager$KeyParams;

    invoke-virtual {p1, v0, p0}, Lcom/ebay/nautilus/shell/app/DataManagerContainer;->initialize(Lcom/ebay/nautilus/domain/content/DataManager$DataManagerKeyParams;Ljava/lang/Object;)Lcom/ebay/nautilus/domain/content/DataManager;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/content/dm/UserContextDataManager;

    iput-object v0, p0, Lcom/ebay/mobile/activities/MainActivity;->userContextDataManager:Lcom/ebay/nautilus/domain/content/dm/UserContextDataManager;

    .line 430
    sget-object v0, Lcom/ebay/nautilus/domain/content/dm/ads/gdpr/ConsentDataManager;->KEY:Lcom/ebay/nautilus/domain/content/dm/ads/gdpr/ConsentDataManager$KeyParams;

    invoke-virtual {p1, v0, p0}, Lcom/ebay/nautilus/shell/app/DataManagerContainer;->initialize(Lcom/ebay/nautilus/domain/content/DataManager$DataManagerKeyParams;Ljava/lang/Object;)Lcom/ebay/nautilus/domain/content/DataManager;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/content/dm/ads/gdpr/ConsentDataManager;

    iput-object v0, p0, Lcom/ebay/mobile/activities/MainActivity;->consentDataManager:Lcom/ebay/nautilus/domain/content/dm/ads/gdpr/ConsentDataManager;

    .line 431
    iget-object v0, p0, Lcom/ebay/mobile/activities/MainActivity;->userContextDataManager:Lcom/ebay/nautilus/domain/content/dm/UserContextDataManager;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/content/dm/UserContextDataManager;->getCurrentCountry()Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object v0

    if-nez v0, :cond_1

    .line 433
    invoke-static {p0}, Lcom/ebay/common/view/util/EbayCountryManager;->detectCountry(Landroid/content/Context;)Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object v0

    .line 434
    iget-object v1, p0, Lcom/ebay/mobile/activities/MainActivity;->userContextDataManager:Lcom/ebay/nautilus/domain/content/dm/UserContextDataManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/ebay/nautilus/domain/content/dm/UserContextDataManager;->setCurrentCountry(Lcom/ebay/nautilus/domain/EbayCountry;Z)V

    .line 436
    :cond_1
    sget-object v0, Lcom/ebay/nautilus/domain/content/dm/home/HomeAnswersDataManager;->KEY:Lcom/ebay/nautilus/domain/content/dm/home/HomeAnswersDataManager$KeyParams;

    invoke-virtual {p1, v0, p0}, Lcom/ebay/nautilus/shell/app/DataManagerContainer;->initialize(Lcom/ebay/nautilus/domain/content/DataManager$DataManagerKeyParams;Ljava/lang/Object;)Lcom/ebay/nautilus/domain/content/DataManager;

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 488
    invoke-super {p0}, Lcom/ebay/mobile/activities/CoreActivity;->onPause()V

    const v0, 0x7f0a0e4b

    .line 491
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_0

    .line 493
    iget-object v1, p0, Lcom/ebay/mobile/activities/MainActivity;->searchBarOffsetChangeListener:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->removeOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    :cond_0
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 326
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 329
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/MainActivity;->getAuxiliaryToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 332
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0112

    const/4 v2, 0x0

    .line 333
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ebay/mobile/widget/SearchViewPlaceholderView;

    iput-object v0, p0, Lcom/ebay/mobile/activities/MainActivity;->searchView:Lcom/ebay/mobile/widget/SearchViewPlaceholderView;

    .line 334
    iget-object v0, p0, Lcom/ebay/mobile/activities/MainActivity;->searchView:Lcom/ebay/mobile/widget/SearchViewPlaceholderView;

    invoke-virtual {p0}, Lcom/ebay/mobile/activities/MainActivity;->getSearchViewClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/mobile/widget/SearchViewPlaceholderView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    iget-object v0, p0, Lcom/ebay/mobile/activities/MainActivity;->searchView:Lcom/ebay/mobile/widget/SearchViewPlaceholderView;

    iget-object v1, p0, Lcom/ebay/mobile/activities/MainActivity;->imageSearchComponent:Lcom/ebay/mobile/search/image/ImageSearchComponent;

    invoke-virtual {v1}, Lcom/ebay/mobile/search/image/ImageSearchComponent;->isImageSearchSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ebay/mobile/widget/SearchViewPlaceholderView;->showImageSearch(Z)V

    .line 336
    iget-object v0, p0, Lcom/ebay/mobile/activities/MainActivity;->searchView:Lcom/ebay/mobile/widget/SearchViewPlaceholderView;

    invoke-virtual {p0}, Lcom/ebay/mobile/activities/MainActivity;->getSearchMicClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/mobile/widget/SearchViewPlaceholderView;->setOnMicClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    iget-object v0, p0, Lcom/ebay/mobile/activities/MainActivity;->searchView:Lcom/ebay/mobile/widget/SearchViewPlaceholderView;

    invoke-virtual {p0}, Lcom/ebay/mobile/activities/MainActivity;->getSearchImageClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/mobile/widget/SearchViewPlaceholderView;->setOnImageCLickListener(Landroid/view/View$OnClickListener;)V

    const-string/jumbo v0, "search"

    .line 338
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    if-eqz v0, :cond_0

    .line 341
    new-instance v1, Landroid/content/ComponentName;

    .line 342
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v0

    .line 343
    iget-object v1, p0, Lcom/ebay/mobile/activities/MainActivity;->searchView:Lcom/ebay/mobile/widget/SearchViewPlaceholderView;

    invoke-virtual {v1, v0}, Lcom/ebay/mobile/widget/SearchViewPlaceholderView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/activities/MainActivity;->searchView:Lcom/ebay/mobile/widget/SearchViewPlaceholderView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 346
    invoke-virtual {p1, v2, v2}, Landroidx/appcompat/widget/Toolbar;->setContentInsetsAbsolute(II)V

    .line 347
    invoke-virtual {p1, v2, v2, v2, v2}, Landroidx/appcompat/widget/Toolbar;->setPadding(IIII)V

    .line 348
    iget-object p1, p0, Lcom/ebay/mobile/activities/MainActivity;->searchView:Lcom/ebay/mobile/widget/SearchViewPlaceholderView;

    invoke-virtual {p1}, Lcom/ebay/mobile/widget/SearchViewPlaceholderView;->clearFocus()V

    :cond_1
    return-void
.end method

.method protected onPostResume()V
    .locals 1

    .line 355
    invoke-super {p0}, Lcom/ebay/mobile/activities/CoreActivity;->onPostResume()V

    .line 356
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/MainActivity;->getPrimaryToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .line 529
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 531
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v1

    .line 532
    sget-object v2, Lcom/ebay/mobile/dcs/Dcs$Homescreen$B;->holidayTakeoverExtended:Lcom/ebay/mobile/dcs/Dcs$Homescreen$B;

    invoke-interface {v1, v2}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 533
    invoke-static {}, Lcom/ebay/mobile/themes/Ds6Configuration;->getInstance()Lcom/ebay/mobile/themes/Ds6ConfigurationContract;

    move-result-object v1

    invoke-interface {v1}, Lcom/ebay/mobile/themes/Ds6ConfigurationContract;->isDs6Applied()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 534
    iget-object v1, p0, Lcom/ebay/mobile/activities/MainActivity;->takeoverInfo:Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ebay/mobile/activities/MainActivity;->takeoverInfo:Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo;

    iget-boolean v1, v1, Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo;->haveActiveTakeover:Z

    if-eqz v1, :cond_1

    .line 535
    iget-object v1, p0, Lcom/ebay/mobile/activities/MainActivity;->takeoverInfo:Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo;

    invoke-direct {p0, v1}, Lcom/ebay/mobile/activities/MainActivity;->executeMenuItemsTakeover(Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo;)V

    :cond_1
    if-eqz v0, :cond_2

    const v1, 0x7f0a09cc

    .line 540
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 542
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    return v0
.end method

.method public onResume()V
    .locals 4

    .line 442
    invoke-super {p0}, Lcom/ebay/mobile/activities/CoreActivity;->onResume()V

    .line 444
    iget-boolean v0, p0, Lcom/ebay/mobile/activities/MainActivity;->noPlayServices:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0a0e4b

    .line 448
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_1

    .line 450
    iget-object v1, p0, Lcom/ebay/mobile/activities/MainActivity;->searchBarOffsetChangeListener:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    .line 453
    :cond_1
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object v0

    .line 454
    invoke-virtual {v0}, Lcom/ebay/common/Preferences;->getCountryAutoDetected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 456
    invoke-virtual {v0}, Lcom/ebay/common/Preferences;->getCurrentCountryIfSet()Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object v1

    .line 457
    invoke-static {p0}, Lcom/ebay/common/view/util/EbayCountryManager;->detectCountry(Landroid/content/Context;)Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object v2

    .line 459
    invoke-virtual {v2, v1}, Lcom/ebay/nautilus/domain/EbayCountry;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 460
    iget-object v1, p0, Lcom/ebay/mobile/activities/MainActivity;->userContextDataManager:Lcom/ebay/nautilus/domain/content/dm/UserContextDataManager;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/ebay/nautilus/domain/content/dm/UserContextDataManager;->setCurrentCountry(Lcom/ebay/nautilus/domain/EbayCountry;Z)V

    .line 464
    :cond_2
    invoke-virtual {v0}, Lcom/ebay/common/Preferences;->clearLastKeywordSearch()V

    const/4 v0, 0x0

    .line 468
    iget-object v1, p0, Lcom/ebay/mobile/activities/MainActivity;->consentDataManager:Lcom/ebay/nautilus/domain/content/dm/ads/gdpr/ConsentDataManager;

    if-eqz v1, :cond_3

    .line 469
    iget-object v0, p0, Lcom/ebay/mobile/activities/MainActivity;->consentDataManager:Lcom/ebay/nautilus/domain/content/dm/ads/gdpr/ConsentDataManager;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/content/dm/ads/gdpr/ConsentDataManager;->checkBannerEligibility()Z

    move-result v0

    :cond_3
    if-nez v0, :cond_4

    .line 475
    invoke-direct {p0}, Lcom/ebay/mobile/activities/MainActivity;->tryDisplayingOtherOverlay()V

    .line 477
    :cond_4
    iget-object v0, p0, Lcom/ebay/mobile/activities/MainActivity;->takeoverInfo:Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ebay/mobile/activities/MainActivity;->takeoverInfo:Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo;

    iget-boolean v0, v0, Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo;->haveActiveTakeover:Z

    if-eqz v0, :cond_5

    .line 479
    iget-object v0, p0, Lcom/ebay/mobile/activities/MainActivity;->takeoverInfo:Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo;

    invoke-direct {p0, v0}, Lcom/ebay/mobile/activities/MainActivity;->executeToolbarBarRecolor(Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo;)V

    .line 480
    iget-object v0, p0, Lcom/ebay/mobile/activities/MainActivity;->takeoverInfo:Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo;

    invoke-direct {p0, v0}, Lcom/ebay/mobile/activities/MainActivity;->executeStatusBarRecolor(Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo;)V

    .line 482
    :cond_5
    invoke-direct {p0}, Lcom/ebay/mobile/activities/MainActivity;->a11yModeAnnounceWelcomeMessage()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 405
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "takeoverInfo"

    .line 406
    iget-object v1, p0, Lcom/ebay/mobile/activities/MainActivity;->takeoverInfo:Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "announceWelcomeMessage"

    .line 407
    iget-boolean v1, p0, Lcom/ebay/mobile/activities/MainActivity;->announceWelcomeMessage:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onSearchFollowed(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/model/search/following/FollowDescriptor;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V
    .locals 1

    .line 1052
    iget-object v0, p0, Lcom/ebay/mobile/activities/MainActivity;->fragment:Lcom/ebay/mobile/home/answers/HomeAnswersFragment;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ebay/mobile/home/answers/HomeAnswersFragment;->onFollowSearchComplete(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/model/search/following/FollowDescriptor;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V

    .line 1055
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object p1

    sget-object p2, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Homescreen$I;->saveSearchTooltipDismissMax:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Homescreen$I;

    invoke-interface {p1, p2}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropInteger;)I

    move-result p1

    .line 1057
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/MainActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object p2

    const-class p3, Lcom/ebay/nautilus/domain/dagger/DomainComponent;

    invoke-interface {p2, p3}, Lcom/ebay/nautilus/kernel/content/EbayContext;->as(Ljava/lang/Class;)Lcom/ebay/nautilus/kernel/dagger/KernelComponent;

    move-result-object p2

    check-cast p2, Lcom/ebay/nautilus/domain/dagger/DomainComponent;

    invoke-interface {p2}, Lcom/ebay/nautilus/domain/dagger/DomainComponent;->getEbayPreferences()Lcom/ebay/nautilus/domain/content/EbayPreferences;

    move-result-object p2

    .line 1058
    invoke-interface {p2}, Lcom/ebay/nautilus/domain/content/EbayPreferences;->edit()Lcom/ebay/nautilus/domain/content/EbayPreferences$Editor;

    move-result-object p2

    const-string p3, "HP_HSB_TOOLTIP_COUNT"

    const/4 p4, 0x1

    invoke-interface {p2, p4, p3, p1}, Lcom/ebay/nautilus/domain/content/EbayPreferences$Editor;->putInt(ZLjava/lang/String;I)Lcom/ebay/nautilus/domain/content/EbayPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Lcom/ebay/nautilus/domain/content/EbayPreferences$Editor;->apply()V

    return-void
.end method

.method public onSellerSegmentChanged(Lcom/ebay/nautilus/domain/content/dm/UserContextDataManager;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 364
    invoke-super {p0}, Lcom/ebay/mobile/activities/CoreActivity;->onStart()V

    .line 366
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object v0

    .line 367
    invoke-virtual {v0}, Lcom/ebay/common/Preferences;->getCurrentCountryIfSet()Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object v1

    .line 368
    invoke-virtual {v0}, Lcom/ebay/common/Preferences;->getCurrentUser()Ljava/lang/String;

    move-result-object v0

    .line 370
    invoke-static {v1, v0}, Lcom/ebay/mobile/activities/MainActivity;->getFragmentTag(Lcom/ebay/nautilus/domain/EbayCountry;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 373
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 376
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/ebay/mobile/home/answers/HomeAnswersFragment;

    iput-object v2, p0, Lcom/ebay/mobile/activities/MainActivity;->fragment:Lcom/ebay/mobile/home/answers/HomeAnswersFragment;

    .line 378
    iget-object v2, p0, Lcom/ebay/mobile/activities/MainActivity;->fragment:Lcom/ebay/mobile/home/answers/HomeAnswersFragment;

    if-nez v2, :cond_0

    .line 380
    new-instance v2, Lcom/ebay/mobile/home/answers/HomeAnswersFragment;

    invoke-direct {v2}, Lcom/ebay/mobile/home/answers/HomeAnswersFragment;-><init>()V

    iput-object v2, p0, Lcom/ebay/mobile/activities/MainActivity;->fragment:Lcom/ebay/mobile/home/answers/HomeAnswersFragment;

    .line 382
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0a06bd

    iget-object v3, p0, Lcom/ebay/mobile/activities/MainActivity;->fragment:Lcom/ebay/mobile/home/answers/HomeAnswersFragment;

    .line 383
    invoke-virtual {v1, v2, v3, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 384
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 390
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/MainActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v0

    const-class v1, Lcom/ebay/nautilus/domain/dagger/DomainComponent;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/kernel/content/EbayContext;->as(Ljava/lang/Class;)Lcom/ebay/nautilus/kernel/dagger/KernelComponent;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/dagger/DomainComponent;

    invoke-interface {v0}, Lcom/ebay/nautilus/domain/dagger/DomainComponent;->getDeviceConfigurationObservable()Lcom/ebay/nautilus/domain/dcs/DeviceConfigurationObservable;

    move-result-object v0

    .line 391
    iget-object v1, p0, Lcom/ebay/mobile/activities/MainActivity;->dcsObserver:Lcom/ebay/mobile/activities/MainActivity$DeviceConfigurationObserver;

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfigurationObservable;->registerObserver(Landroid/database/DataSetObserver;)V

    .line 394
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/MainActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/ebay/nautilus/kernel/content/EbayContext;->getAsBeaconManager()Lcom/ebay/nautilus/kernel/net/AsBeaconManager;

    move-result-object v0

    .line 398
    invoke-virtual {v0}, Lcom/ebay/nautilus/kernel/net/AsBeaconManager;->currentBeacon()Lcom/ebay/nautilus/kernel/net/AsBeacon;

    move-result-object v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 413
    iget-boolean v0, p0, Lcom/ebay/mobile/activities/MainActivity;->noPlayServices:Z

    if-nez v0, :cond_0

    .line 416
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/MainActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v0

    const-class v1, Lcom/ebay/nautilus/domain/dagger/DomainComponent;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/kernel/content/EbayContext;->as(Ljava/lang/Class;)Lcom/ebay/nautilus/kernel/dagger/KernelComponent;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/dagger/DomainComponent;

    invoke-interface {v0}, Lcom/ebay/nautilus/domain/dagger/DomainComponent;->getDeviceConfigurationObservable()Lcom/ebay/nautilus/domain/dcs/DeviceConfigurationObservable;

    move-result-object v0

    .line 417
    iget-object v1, p0, Lcom/ebay/mobile/activities/MainActivity;->dcsObserver:Lcom/ebay/mobile/activities/MainActivity$DeviceConfigurationObserver;

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfigurationObservable;->unregisterObserver(Landroid/database/DataSetObserver;)V

    .line 419
    :cond_0
    invoke-super {p0}, Lcom/ebay/mobile/activities/CoreActivity;->onStop()V

    return-void
.end method

.method public onStreamChanged(Lcom/ebay/nautilus/domain/content/dm/home/HomeAnswersDataManager;Lcom/ebay/nautilus/domain/data/experience/home/HomeData;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V
    .locals 0

    .line 569
    invoke-virtual {p3}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->hasError()Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz p2, :cond_2

    .line 571
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/data/experience/home/HomeData;->getStandardModuleEntries()Ljava/util/List;

    move-result-object p1

    .line 574
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object p2

    .line 575
    sget-object p3, Lcom/ebay/mobile/dcs/Dcs$Homescreen$B;->holidayTakeover:Lcom/ebay/mobile/dcs/Dcs$Homescreen$B;

    invoke-interface {p2, p3}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 576
    invoke-static {}, Lcom/ebay/mobile/themes/Ds6Configuration;->getInstance()Lcom/ebay/mobile/themes/Ds6ConfigurationContract;

    move-result-object p2

    invoke-interface {p2}, Lcom/ebay/mobile/themes/Ds6ConfigurationContract;->isDs6Applied()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 577
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 579
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;

    invoke-static {p1}, Lcom/ebay/mobile/home/answers/HomeViewModelFactory;->getRecolorCampaign(Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;)Lcom/ebay/mobile/home/answers/module/CampaignViewModel;

    move-result-object p1

    .line 580
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/MainActivity;->handleNewTakeoverInfo(Lcom/ebay/mobile/home/answers/module/CampaignViewModel;)V

    goto :goto_1

    .line 584
    :cond_1
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/MainActivity;->resetStatusBarColor()V

    .line 585
    invoke-direct {p0}, Lcom/ebay/mobile/activities/MainActivity;->removeTakeoverColors()V

    .line 586
    invoke-direct {p0}, Lcom/ebay/mobile/activities/MainActivity;->clearNavigationMenuTakeover()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onUserSignedInStatusChanged(Lcom/ebay/nautilus/domain/content/dm/UserContextDataManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p4, :cond_0

    const/4 p1, 0x1

    .line 501
    iput-boolean p1, p0, Lcom/ebay/mobile/activities/MainActivity;->announceWelcomeMessage:Z

    :cond_0
    return-void
.end method

.method public synthetic requiresInlineInitialLoad(Lcom/ebay/nautilus/domain/content/dm/UserContextDataManager;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/ebay/nautilus/domain/content/dm/UserContextDataManager$Observer$-CC;->$default$requiresInlineInitialLoad(Lcom/ebay/nautilus/domain/content/dm/UserContextDataManager$Observer;Lcom/ebay/nautilus/domain/content/dm/UserContextDataManager;)Z

    move-result p1

    return p1
.end method

.method public showConsentDialog()V
    .locals 0

    .line 851
    invoke-static {p0}, Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;->show(Lcom/ebay/mobile/activities/CoreActivity;)V

    return-void
.end method

.method public showDeletedSaveSnackBar(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/mobile/home/answers/HomeAnswersFragment$HomeFollowingObserver;Ljava/lang/String;Lcom/ebay/common/net/api/search/following/InterestDescriptor;Ljava/lang/String;Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/common/content/dm/search/FollowingDataManager;",
            "Lcom/ebay/mobile/home/answers/HomeAnswersFragment$HomeFollowingObserver;",
            "Ljava/lang/String;",
            "Lcom/ebay/common/net/api/search/following/InterestDescriptor;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ebay/common/model/search/following/FollowDescriptor$NotificationEnum;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7f0a045f

    move-object/from16 v9, p0

    .line 1103
    invoke-virtual {v9, v0}, Lcom/ebay/mobile/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f120fce

    .line 1105
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/ebay/mobile/activities/-$$Lambda$MainActivity$P41DwnkjvSVQwtX4pKfh6u9RxSk;

    move-object v10, v0

    move-object/from16 v11, p1

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    move-object/from16 v15, p2

    invoke-direct/range {v10 .. v15}, Lcom/ebay/mobile/activities/-$$Lambda$MainActivity$P41DwnkjvSVQwtX4pKfh6u9RxSk;-><init>(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/net/api/search/following/InterestDescriptor;Ljava/lang/String;Ljava/util/List;Lcom/ebay/mobile/home/answers/HomeAnswersFragment$HomeFollowingObserver;)V

    const v5, 0x7f0a1125

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p3

    move-object v8, v0

    .line 1104
    invoke-virtual/range {v1 .. v8}, Lcom/ebay/mobile/activities/MainActivity;->showSnackBar(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Integer;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public showFollowDialog(Lcom/ebay/nautilus/domain/data/search/refine/SearchOptions;)V
    .locals 3

    .line 1066
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/MainActivity;->getUserContext()Lcom/ebay/nautilus/domain/content/dm/UserContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/content/dm/UserContext;->getCurrentUser()Lcom/ebay/nautilus/domain/app/Authentication;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1072
    :try_start_0
    new-instance v1, Lcom/ebay/common/net/api/search/following/InterestParameters;

    sget-object v2, Lcom/ebay/nautilus/domain/EbaySite;->US:Lcom/ebay/nautilus/domain/EbaySite;

    .line 1073
    invoke-static {v2}, Lcom/ebay/nautilus/domain/EbayCountry;->getInstance(Lcom/ebay/nautilus/domain/EbaySite;)Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/ebay/common/net/api/search/following/InterestParameters;-><init>(Lcom/ebay/nautilus/domain/EbayCountry;Lcom/ebay/nautilus/domain/data/search/refine/SearchOptions;)V

    .line 1074
    iget-object p1, v0, Lcom/ebay/nautilus/domain/app/Authentication;->user:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/ebay/mobile/search/SaveSearchDialogFragment;->newInstance(Lcom/ebay/common/net/api/search/following/InterestParameters;Ljava/lang/String;)Lcom/ebay/mobile/search/SaveSearchDialogFragment;

    move-result-object p1

    .line 1076
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "follow_dialog"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1086
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/MainActivity;->getTrackingEventName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/ebay/mobile/connection/idsignin/SignInActivity;->getIntentForSignIn(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "postSignInAction"

    const-string v1, "followSearch"

    .line 1087
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x4

    .line 1088
    invoke-virtual {p0, p1, v0}, Lcom/ebay/mobile/activities/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :catch_0
    :goto_0
    return-void
.end method

.method protected updateSearchView()V
    .locals 2

    .line 561
    iget-object v0, p0, Lcom/ebay/mobile/activities/MainActivity;->searchView:Lcom/ebay/mobile/widget/SearchViewPlaceholderView;

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/ebay/mobile/activities/MainActivity;->searchView:Lcom/ebay/mobile/widget/SearchViewPlaceholderView;

    iget-object v1, p0, Lcom/ebay/mobile/activities/MainActivity;->imageSearchComponent:Lcom/ebay/mobile/search/image/ImageSearchComponent;

    invoke-virtual {v1}, Lcom/ebay/mobile/search/image/ImageSearchComponent;->isImageSearchSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ebay/mobile/widget/SearchViewPlaceholderView;->showImageSearch(Z)V

    :cond_0
    return-void
.end method
