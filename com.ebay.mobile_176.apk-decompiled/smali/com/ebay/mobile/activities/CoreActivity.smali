.class public abstract Lcom/ebay/mobile/activities/CoreActivity;
.super Lcom/ebay/nautilus/shell/app/BaseActivity;
.source "CoreActivity.java"

# interfaces
.implements Landroidx/appcompat/app/ActionBarDrawerToggle$DelegateProvider;
.implements Landroidx/core/app/TaskStackBuilder$SupportParentable;
.implements Lcom/ebay/nautilus/shell/app/TrackingSupport;
.implements Lcom/ebay/nautilus/shell/content/ErrorResultHandler;
.implements Lcom/ebay/nautilus/shell/content/WarningResultHandler;
.implements Lcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/mobile/activities/CoreActivity$NavigationHeaderUserContextObserver;,
        Lcom/ebay/mobile/activities/CoreActivity$MessageFolderObserver;,
        Lcom/ebay/mobile/activities/CoreActivity$ShoppingCartCountChangeObserver;,
        Lcom/ebay/mobile/activities/CoreActivity$NavigationDrawerHierarchyListener;,
        Lcom/ebay/mobile/activities/CoreActivity$SymbanUpdateListener;,
        Lcom/ebay/mobile/activities/CoreActivity$ScrollUnderOffsetChangeListener;,
        Lcom/ebay/mobile/activities/CoreActivity$MessageHelper;
    }
.end annotation


# static fields
.field public static final CONTEXT_LIST:Ljava/lang/String; = "context_list"

.field public static final EXTRA_NAVIGATION_STATE:Ljava/lang/String; = "navigationState"

.field public static final EXTRA_NAV_DRAWER_PARCELABLE:Ljava/lang/String; = "navDrawerParcelable"

.field public static final EXTRA_UP_NAVIGATION:Ljava/lang/String; = "upNavOverride"

.field protected static final FLAG_AUXILIARY_TOOLBAR:I = 0x4

.field protected static final FLAG_CART_ACTION:I = 0x100

.field protected static final FLAG_COLLAPSING_PRIMARY:I = 0x400

.field protected static final FLAG_FAB:I = 0x8000

.field protected static final FLAG_GLOBAL_NAVIGATION:I = 0x40

.field protected static final FLAG_HELP_ACTION:I = 0x4000

.field protected static final FLAG_NONE:I = 0x0

.field protected static final FLAG_PRIMARY_TOOLBAR:I = 0x1

.field protected static final FLAG_SCROLL_AUXILIARY:I = 0x20

.field protected static final FLAG_SCROLL_PRIMARY:I = 0x8

.field protected static final FLAG_SCROLL_TABS:I = 0x10

.field protected static final FLAG_SEARCH_ACTION:I = 0x80

.field protected static final FLAG_SHOW_DRAWER_TOGGLE:I = 0x2000

.field protected static final FLAG_SHOW_LOGO_AS_TITLE:I = 0x800

.field protected static final FLAG_SHOW_UP_AS_CLOSE:I = 0x1000

.field protected static final FLAG_TABS_TOOLBAR:I = 0x2

.field public static final SURVEY_ACTIONS:Ljava/lang/String; = "survey_actions"

.field public static final SURVEY_KEY:Ljava/lang/String; = "survey_key"

.field public static final SURVEY_MODULE_LINK_TITLE:Ljava/lang/String; = "survey_module_link_title"

.field public static final SURVEY_TITLE:Ljava/lang/String; = "survey_module_title"


# instance fields
.field private activityResult:Lcom/ebay/mobile/activities/ActivityResult;

.field private cartButtonClicked:Z

.field private drawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

.field private interestsBrowseNodeId:Ljava/lang/String;

.field protected isNavigationProfileShowing:Z

.field isResumed:Z

.field private menuOrder:[I

.field private messageFoldersDataManager:Lcom/ebay/nautilus/domain/content/dm/messages/MessageFoldersDataManager;

.field private messageFoldersObserver:Lcom/ebay/nautilus/domain/content/dm/messages/MessageFoldersDataManager$Observer;

.field private final messageHelper:Lcom/ebay/mobile/activities/CoreActivity$MessageHelper;

.field private navDrawerInsetTop:I

.field private navDrawerParcelable:Landroid/os/Parcelable;

.field private navDrawerSignedInDrawable:Landroid/graphics/drawable/Drawable;

.field private navDrawerSignedOutDrawable:Landroid/graphics/drawable/Drawable;

.field private navDrawerSignedOutHeight:I

.field private navigationDrawerHierarchyListener:Lcom/ebay/mobile/activities/CoreActivity$NavigationDrawerHierarchyListener;

.field private newMessagesCount:I

.field private newNotificationsCount:I

.field private symbanDataManager:Lcom/ebay/nautilus/domain/content/dm/symban/SymbanDataManager;

.field private symbanUpdateListener:Lcom/ebay/mobile/activities/CoreActivity$SymbanUpdateListener;

.field private titleContentDescription:Ljava/lang/String;

.field private toolbarFlags:I

.field private toolbarOrder:[I

.field protected upIntentOverride:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 125
    invoke-direct {p0}, Lcom/ebay/nautilus/shell/app/BaseActivity;-><init>()V

    .line 168
    new-instance v0, Lcom/ebay/mobile/activities/CoreActivity$1;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/activities/CoreActivity$1;-><init>(Lcom/ebay/mobile/activities/CoreActivity;)V

    iput-object v0, p0, Lcom/ebay/mobile/activities/CoreActivity;->messageHelper:Lcom/ebay/mobile/activities/CoreActivity$MessageHelper;

    const/16 v0, 0x21c1

    .line 178
    iput v0, p0, Lcom/ebay/mobile/activities/CoreActivity;->toolbarFlags:I

    const/4 v0, 0x3

    .line 179
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/ebay/mobile/activities/CoreActivity;->toolbarOrder:[I

    .line 180
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/ebay/mobile/activities/CoreActivity;->menuOrder:[I

    const/4 v0, 0x0

    .line 188
    iput-boolean v0, p0, Lcom/ebay/mobile/activities/CoreActivity;->isNavigationProfileShowing:Z

    .line 195
    iput-boolean v0, p0, Lcom/ebay/mobile/activities/CoreActivity;->isResumed:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
    .end array-data

    :array_1
    .array-data 4
        0x80
        0x100
        0x4000
    .end array-data
.end method

.method static synthetic access$000(Lcom/ebay/mobile/activities/CoreActivity;)Lcom/ebay/nautilus/domain/content/dm/symban/SymbanDataManager;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/ebay/mobile/activities/CoreActivity;->symbanDataManager:Lcom/ebay/nautilus/domain/content/dm/symban/SymbanDataManager;

    return-object p0
.end method

.method static synthetic access$100(ILandroid/content/Context;)V
    .locals 0

    .line 125
    invoke-static {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->setAppBadgeCount(ILandroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcom/ebay/mobile/activities/CoreActivity;Landroid/view/View;I)V
    .locals 0

    .line 125
    invoke-direct {p0, p1, p2}, Lcom/ebay/mobile/activities/CoreActivity;->setCartAccessibilityText(Landroid/view/View;I)V

    return-void
.end method

.method private addFabToCoordinator(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V
    .locals 4

    .line 917
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getFabLayout()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 921
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 922
    new-instance v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(II)V

    .line 924
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701c2

    .line 925
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    const v3, 0x7f0701c3

    .line 926
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    const v2, 0x800055

    .line 927
    iput v2, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 928
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 929
    invoke-virtual {p1, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addNavigationView(Landroidx/drawerlayout/widget/DrawerLayout;)V
    .locals 6

    .line 940
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x7f040343

    const v2, 0x7f13003d

    .line 941
    invoke-static {p0, v1, v2}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeResId(Landroid/content/Context;II)I

    move-result v1

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 942
    new-instance v1, Lcom/google/android/material/navigation/NavigationView;

    invoke-direct {v1, v0}, Lcom/google/android/material/navigation/NavigationView;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a0a62

    .line 943
    invoke-virtual {v1, v2}, Lcom/google/android/material/navigation/NavigationView;->setId(I)V

    const v2, 0x7f04033a

    .line 944
    invoke-static {v0, v2}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/navigation/NavigationView;->setBackgroundColor(I)V

    const v2, 0x7f04033c

    .line 945
    invoke-static {v0, v2}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/navigation/NavigationView;->setItemIconTintList(Landroid/content/res/ColorStateList;)V

    const v2, 0x7f040342

    .line 946
    invoke-static {v0, v2}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/navigation/NavigationView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    const v2, 0x7f040341

    const v3, 0x7f0801e6

    .line 947
    invoke-static {v0, v2, v3}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeDrawableResId(Landroid/content/Context;II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/navigation/NavigationView;->setItemBackgroundResource(I)V

    const v2, 0x7f04033e

    .line 949
    invoke-static {v0, v2}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/ebay/mobile/activities/CoreActivity;->navDrawerSignedInDrawable:Landroid/graphics/drawable/Drawable;

    const v2, 0x7f04033f

    .line 950
    invoke-static {v0, v2}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/ebay/mobile/activities/CoreActivity;->navDrawerSignedOutDrawable:Landroid/graphics/drawable/Drawable;

    .line 952
    iget-boolean v2, p0, Lcom/ebay/mobile/activities/CoreActivity;->isNavigationProfileShowing:Z

    if-eqz v2, :cond_0

    .line 953
    invoke-direct {p0, v1}, Lcom/ebay/mobile/activities/CoreActivity;->inflateProfileNavigationMenu(Lcom/google/android/material/navigation/NavigationView;)V

    goto :goto_0

    .line 955
    :cond_0
    invoke-direct {p0, v1}, Lcom/ebay/mobile/activities/CoreActivity;->inflateNavigationMenu(Lcom/google/android/material/navigation/NavigationView;)V

    :goto_0
    const v2, 0x7f04033b

    .line 957
    invoke-static {v0, v2}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeResId(Landroid/content/Context;I)I

    move-result v0

    .line 958
    invoke-virtual {v1, v0}, Lcom/google/android/material/navigation/NavigationView;->inflateHeaderView(I)Landroid/view/View;

    .line 959
    invoke-virtual {v1, p0}, Lcom/google/android/material/navigation/NavigationView;->setNavigationItemSelectedListener(Lcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;)V

    .line 961
    invoke-direct {p0, v1}, Lcom/ebay/mobile/activities/CoreActivity;->navigationDrawerRestoreInstance(Lcom/google/android/material/navigation/NavigationView;)V

    .line 963
    invoke-virtual {v1}, Lcom/google/android/material/navigation/NavigationView;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    if-lez v0, :cond_1

    .line 965
    invoke-virtual {v1, v2}, Lcom/google/android/material/navigation/NavigationView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 966
    instance-of v3, v0, Lcom/google/android/material/internal/NavigationMenuView;

    if-eqz v3, :cond_1

    .line 967
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    const v0, 0x7f0a0537

    .line 970
    invoke-virtual {v1, v0}, Lcom/google/android/material/navigation/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 971
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 972
    check-cast v0, Landroid/view/ViewGroup;

    new-instance v3, Lcom/ebay/mobile/activities/CoreActivity$NavigationDrawerHierarchyListener;

    invoke-direct {v3, p0}, Lcom/ebay/mobile/activities/CoreActivity$NavigationDrawerHierarchyListener;-><init>(Lcom/ebay/mobile/activities/CoreActivity;)V

    iput-object v3, p0, Lcom/ebay/mobile/activities/CoreActivity;->navigationDrawerHierarchyListener:Lcom/ebay/mobile/activities/CoreActivity$NavigationDrawerHierarchyListener;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 974
    :cond_2
    invoke-virtual {v1, v2}, Lcom/google/android/material/navigation/NavigationView;->getHeaderView(I)Landroid/view/View;

    move-result-object v0

    .line 975
    invoke-direct {p0, v0}, Lcom/ebay/mobile/activities/CoreActivity;->setupHeaderView(Landroid/view/View;)V

    .line 976
    new-instance v2, Lcom/ebay/mobile/activities/-$$Lambda$CoreActivity$orNMgwgxL4uQzwteJm-qzGTr2DA;

    invoke-direct {v2, p0}, Lcom/ebay/mobile/activities/-$$Lambda$CoreActivity$orNMgwgxL4uQzwteJm-qzGTr2DA;-><init>(Lcom/ebay/mobile/activities/CoreActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 977
    new-instance v2, Lcom/ebay/mobile/activities/-$$Lambda$CoreActivity$NGalkvLS-S-IuptB27rouqYRvDI;

    invoke-direct {v2, p0, v0}, Lcom/ebay/mobile/activities/-$$Lambda$CoreActivity$NGalkvLS-S-IuptB27rouqYRvDI;-><init>(Lcom/ebay/mobile/activities/CoreActivity;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 983
    new-instance v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    .line 984
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0702e1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v0, v2, v3}, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x3

    .line 986
    iput v2, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 987
    invoke-virtual {p1, v1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private adjustAppBarForAccessibility()V
    .locals 5

    .line 541
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getFixedAppBar()Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 545
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getAccessibilityManager()Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 546
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_2

    .line 547
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    .line 551
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getPrimaryToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ebay/mobile/activities/CoreActivity;->disableToolbarScrolling(Landroid/view/ViewGroup;)V

    .line 552
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getAuxiliaryToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ebay/mobile/activities/CoreActivity;->disableToolbarScrolling(Landroid/view/ViewGroup;)V

    .line 553
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ebay/mobile/activities/CoreActivity;->disableToolbarScrolling(Landroid/view/ViewGroup;)V

    .line 554
    invoke-virtual {v0, v2, v3}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    :cond_3
    return-void
.end method

.method private disableToolbarScrolling(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    .line 568
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    const/4 v1, 0x0

    .line 569
    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->setScrollFlags(I)V

    .line 570
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private getHelpViewClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 1756
    new-instance v0, Lcom/ebay/mobile/activities/-$$Lambda$CoreActivity$3AT9UIdjwBpJs21V-C-HNdST2Jg;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/activities/-$$Lambda$CoreActivity$3AT9UIdjwBpJs21V-C-HNdST2Jg;-><init>(Lcom/ebay/mobile/activities/CoreActivity;)V

    return-object v0
.end method

.method private handleHeaderClick()V
    .locals 3

    .line 1329
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getUserContext()Lcom/ebay/nautilus/domain/content/dm/UserContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/content/dm/UserContext;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1330
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->toggleMenus()V

    goto :goto_0

    .line 1333
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getNavigationDrawer()Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    .line 1335
    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(I)V

    .line 1337
    :cond_1
    new-instance v0, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;

    const-string v1, "Menu"

    const-string v2, "profile"

    invoke-direct {v0, v1, v2}, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Menu"

    .line 1340
    invoke-static {v1, p0}, Lcom/ebay/mobile/connection/idsignin/SignInActivity;->getIntentForSignIn(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.ebay.mobile.analytics.sid"

    .line 1341
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1342
    sget-object v0, Lcom/ebay/mobile/connection/idsignin/SignInActivity;->EXTRA_FROM_HOME:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1343
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/activities/CoreActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private inflateNavigationMenu(Lcom/google/android/material/navigation/NavigationView;)V
    .locals 5
    .param p1    # Lcom/google/android/material/navigation/NavigationView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    .line 1135
    invoke-virtual {p1}, Lcom/google/android/material/navigation/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04033d

    invoke-static {v0, v1}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeResId(Landroid/content/Context;I)I

    move-result v0

    .line 1136
    invoke-virtual {p1, v0}, Lcom/google/android/material/navigation/NavigationView;->inflateMenu(I)V

    .line 1138
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v0

    .line 1139
    invoke-virtual {p1}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 1141
    sget-object v2, Lcom/ebay/mobile/dcs/DcsBoolean;->Deals:Lcom/ebay/mobile/dcs/DcsBoolean;

    invoke-interface {v0, v2}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v2

    const v3, 0x7f0a0a52

    .line 1142
    invoke-interface {v1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1143
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1144
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1146
    sget-object v2, Lcom/ebay/mobile/dcs/Dcs$App$B;->ebayPlusMemberHub:Lcom/ebay/mobile/dcs/Dcs$App$B;

    invoke-interface {v0, v2}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v2

    const v3, 0x7f0a0a53

    .line 1147
    invoke-interface {v1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1148
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1149
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1151
    sget-object v2, Lcom/ebay/mobile/dcs/Dcs$App$B;->heartSave:Lcom/ebay/mobile/dcs/Dcs$App$B;

    invoke-interface {v0, v2}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v2

    const v3, 0x7f0a0a54

    .line 1152
    invoke-interface {v1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f0a0a5b

    .line 1153
    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 1154
    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1155
    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    xor-int/lit8 v4, v2, 0x1

    .line 1156
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    xor-int/lit8 v2, v2, 0x1

    .line 1157
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1159
    sget-object v2, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Payments$B;->wallet:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Payments$B;

    invoke-interface {v0, v2}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v2

    const v3, 0x7f0a0a59

    .line 1160
    invoke-interface {v1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1161
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1162
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1165
    sget-object v2, Lcom/ebay/mobile/dcs/Dcs$App$S;->browseInterests:Lcom/ebay/mobile/dcs/Dcs$App$S;

    invoke-interface {v0, v2}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropString;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/activities/CoreActivity;->interestsBrowseNodeId:Ljava/lang/String;

    .line 1166
    iget-object v0, p0, Lcom/ebay/mobile/activities/CoreActivity;->interestsBrowseNodeId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const v2, 0x7f0a0a56

    .line 1167
    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1168
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1169
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1171
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getNavigationId()I

    move-result v0

    .line 1172
    invoke-direct {p0, v1, v0}, Lcom/ebay/mobile/activities/CoreActivity;->setMenuContentDescriptions(Landroid/view/Menu;I)V

    .line 1173
    invoke-virtual {p1, v0}, Lcom/google/android/material/navigation/NavigationView;->setCheckedItem(I)V

    .line 1175
    iget-object v0, p0, Lcom/ebay/mobile/activities/CoreActivity;->symbanDataManager:Lcom/ebay/nautilus/domain/content/dm/symban/SymbanDataManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/activities/CoreActivity;->symbanDataManager:Lcom/ebay/nautilus/domain/content/dm/symban/SymbanDataManager;

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/content/dm/symban/SymbanDataManager;->getCountOrDefault(I)I

    move-result v1

    :goto_0
    const v0, 0x7f0a0a58

    .line 1176
    invoke-virtual {p0, v1, p1, v0}, Lcom/ebay/mobile/activities/CoreActivity;->updateMenuBadge(ILcom/google/android/material/navigation/NavigationView;I)V

    .line 1178
    iget-object p1, p0, Lcom/ebay/mobile/activities/CoreActivity;->messageFoldersDataManager:Lcom/ebay/nautilus/domain/content/dm/messages/MessageFoldersDataManager;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ebay/mobile/activities/CoreActivity;->messageFoldersObserver:Lcom/ebay/nautilus/domain/content/dm/messages/MessageFoldersDataManager$Observer;

    if-eqz p1, :cond_1

    .line 1179
    iget-object p1, p0, Lcom/ebay/mobile/activities/CoreActivity;->messageFoldersDataManager:Lcom/ebay/nautilus/domain/content/dm/messages/MessageFoldersDataManager;

    iget-object v0, p0, Lcom/ebay/mobile/activities/CoreActivity;->messageFoldersObserver:Lcom/ebay/nautilus/domain/content/dm/messages/MessageFoldersDataManager$Observer;

    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/domain/content/dm/messages/MessageFoldersDataManager;->loadData(Lcom/ebay/nautilus/domain/content/dm/messages/MessageFoldersDataManager$Observer;)V

    :cond_1
    return-void
.end method

.method private inflateProfileNavigationMenu(Lcom/google/android/material/navigation/NavigationView;)V
    .locals 1
    .param p1    # Lcom/google/android/material/navigation/NavigationView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    const v0, 0x7f0e000c

    .line 1187
    invoke-virtual {p1, v0}, Lcom/google/android/material/navigation/NavigationView;->inflateMenu(I)V

    .line 1189
    invoke-virtual {p1}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object p1

    .line 1190
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getNavigationId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/ebay/mobile/activities/CoreActivity;->setMenuContentDescriptions(Landroid/view/Menu;I)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$addNavigationView$0(Lcom/ebay/mobile/activities/CoreActivity;Landroid/view/View;)V
    .locals 0

    .line 976
    invoke-direct {p0}, Lcom/ebay/mobile/activities/CoreActivity;->handleHeaderClick()V

    return-void
.end method

.method public static synthetic lambda$addNavigationView$1(Lcom/ebay/mobile/activities/CoreActivity;Landroid/view/View;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    .line 978
    invoke-virtual {p3}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result p2

    iput p2, p0, Lcom/ebay/mobile/activities/CoreActivity;->navDrawerInsetTop:I

    .line 979
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getUserContext()Lcom/ebay/nautilus/domain/content/dm/UserContext;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/content/dm/UserContext;->isSignedIn()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/ebay/mobile/activities/CoreActivity;->updateHeaderContainer(Landroid/view/View;Ljava/lang/Boolean;)V

    .line 980
    invoke-virtual {p3}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$getCartViewClickListener$7(Lcom/ebay/mobile/activities/CoreActivity;Landroid/view/View;)V
    .locals 5

    .line 1796
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ebay/mobile/util/Util;->hasNetwork(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 1798
    new-array v0, v0, [Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;

    const/4 v1, 0x0

    .line 1799
    invoke-static {}, Lcom/ebay/nautilus/domain/content/InternalDomainError;->getNoNetworkMessage()Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->create([Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;)Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object v0

    .line 1798
    invoke-static {p0, p1, v0}, Lcom/ebay/common/view/EbayErrorHandler;->handleResultStatus(Landroidx/fragment/app/FragmentActivity;ILcom/ebay/nautilus/kernel/content/ResultStatus;)Z

    return-void

    .line 1806
    :cond_0
    iget-boolean p1, p0, Lcom/ebay/mobile/activities/CoreActivity;->cartButtonClicked:Z

    if-eqz p1, :cond_1

    return-void

    .line 1808
    :cond_1
    iput-boolean v0, p0, Lcom/ebay/mobile/activities/CoreActivity;->cartButtonClicked:Z

    .line 1810
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getTrackingEventName()Ljava/lang/String;

    move-result-object p1

    .line 1814
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getUserContext()Lcom/ebay/nautilus/domain/content/dm/UserContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/content/dm/UserContext;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1817
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ebay/mobile/shoppingcart/util/ShoppingCartUtil;->getShoppingCartIntent(Landroid/content/Context;Lcom/ebay/nautilus/kernel/content/EbayContext;)Landroid/content/Intent;

    move-result-object v0

    .line 1818
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.ebay.mobile.analytics.sid"

    .line 1819
    new-instance v2, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;

    const-string v3, "pmn"

    invoke-direct {v2, p1, v3}, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1824
    :cond_2
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getShoppingCartRequestCode()I

    move-result p1

    if-ltz p1, :cond_3

    .line 1826
    invoke-virtual {p0, v0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1828
    :cond_3
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/CoreActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1832
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1834
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ebay/mobile/activities/MainActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x4000000

    .line 1835
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1836
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "com.ebay.mobile.analytics.sid"

    .line 1837
    new-instance v3, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;

    const-string v4, "pmn"

    invoke-direct {v3, p1, v4}, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1839
    :cond_5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1841
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/ebay/mobile/shoppingcart/util/ShoppingCartUtil;->getShoppingCartIntent(Landroid/content/Context;Lcom/ebay/nautilus/kernel/content/EbayContext;)Landroid/content/Intent;

    move-result-object v1

    .line 1842
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "com.ebay.mobile.analytics.sid"

    .line 1843
    new-instance v3, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;

    const-string v4, "pmn"

    invoke-direct {v3, p1, v4}, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1845
    :cond_6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1847
    invoke-static {p1, p0}, Lcom/ebay/mobile/connection/idsignin/SignInActivity;->getIntentForSignIn(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 1848
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "com.ebay.mobile.analytics.sid"

    .line 1849
    new-instance v3, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;

    const-string v4, "pmn"

    invoke-direct {v3, p1, v4}, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1851
    :cond_7
    sget-object p1, Lcom/ebay/mobile/connection/idsignin/SignInActivity;->EXTRA_REDIRECT_INTENTS:Ljava/lang/String;

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1852
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/activities/CoreActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$getHelpViewClickListener$6(Lcom/ebay/mobile/activities/CoreActivity;Landroid/view/View;)V
    .locals 0

    .line 1758
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getHelpIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1760
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$getSearchImageClickListener$4(Lcom/ebay/mobile/activities/CoreActivity;Landroid/view/View;)V
    .locals 0

    .line 1729
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object p1

    invoke-static {p1}, Lcom/ebay/mobile/search/image/ImageSearchComponent;->get(Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;)Lcom/ebay/mobile/search/image/ImageSearchComponent;

    move-result-object p1

    .line 1730
    invoke-virtual {p1, p0}, Lcom/ebay/mobile/search/image/ImageSearchComponent;->getEntryPoint(Lcom/ebay/mobile/activities/CoreActivity;)Lcom/ebay/mobile/search/image/common/ImageSearchEntryPoint;

    move-result-object p1

    .line 1731
    invoke-interface {p1}, Lcom/ebay/mobile/search/image/common/ImageSearchEntryPoint;->startImageSearchFlow()V

    return-void
.end method

.method public static synthetic lambda$getSearchMicClickListener$3(Lcom/ebay/mobile/activities/CoreActivity;Landroid/view/View;)V
    .locals 2

    .line 1715
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getSearchLandingPageIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v0, "voiceSearch"

    const/4 v1, 0x1

    .line 1716
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1717
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$getSearchViewClickListener$5(Lcom/ebay/mobile/activities/CoreActivity;Landroid/view/View;)V
    .locals 0

    .line 1744
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getSearchLandingPageIntent()Landroid/content/Intent;

    move-result-object p1

    .line 1745
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$onPrepareOptionsMenu$2(Lcom/ebay/mobile/activities/CoreActivity;Landroid/view/MenuItem;Landroid/view/View;)V
    .locals 0

    const/4 p2, 0x0

    .line 1489
    invoke-virtual {p0, p2, p1}, Lcom/ebay/mobile/activities/CoreActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    return-void
.end method

.method static synthetic lambda$setAppBadgeCount$9(Landroid/content/Context;I)V
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2816
    invoke-static {p0}, Lcom/ebay/mobile/util/samsungbadger/Badge;->isBadgingSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2818
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2819
    const-class v1, Lcom/ebay/mobile/activities/MainActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2820
    invoke-static {p0}, Lcom/ebay/mobile/util/samsungbadger/Badge;->getBadge(Landroid/content/Context;)Lcom/ebay/mobile/util/samsungbadger/Badge;

    move-result-object v2

    if-nez v2, :cond_0

    .line 2823
    new-instance v2, Lcom/ebay/mobile/util/samsungbadger/Badge;

    invoke-direct {v2}, Lcom/ebay/mobile/util/samsungbadger/Badge;-><init>()V

    .line 2824
    iput-object v0, v2, Lcom/ebay/mobile/util/samsungbadger/Badge;->mPackage:Ljava/lang/String;

    .line 2825
    iput-object v1, v2, Lcom/ebay/mobile/util/samsungbadger/Badge;->mClass:Ljava/lang/String;

    .line 2826
    iput p1, v2, Lcom/ebay/mobile/util/samsungbadger/Badge;->mBadgeCount:I

    .line 2827
    invoke-virtual {v2, p0}, Lcom/ebay/mobile/util/samsungbadger/Badge;->save(Landroid/content/Context;)Landroid/net/Uri;

    goto :goto_0

    .line 2833
    :cond_0
    iput-object v0, v2, Lcom/ebay/mobile/util/samsungbadger/Badge;->mPackage:Ljava/lang/String;

    .line 2834
    iput-object v1, v2, Lcom/ebay/mobile/util/samsungbadger/Badge;->mClass:Ljava/lang/String;

    .line 2835
    iput p1, v2, Lcom/ebay/mobile/util/samsungbadger/Badge;->mBadgeCount:I

    .line 2836
    invoke-virtual {v2, p0}, Lcom/ebay/mobile/util/samsungbadger/Badge;->update(Landroid/content/Context;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic lambda$toggleMenus$8(Landroid/view/View;)V
    .locals 1

    .line 2162
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 2163
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 2164
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method private navigationDrawerRestoreInstance(Lcom/google/android/material/navigation/NavigationView;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1103
    invoke-virtual {p1}, Lcom/google/android/material/navigation/NavigationView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 1105
    invoke-virtual {p1, v0}, Lcom/google/android/material/navigation/NavigationView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 1106
    instance-of v0, p1, Lcom/google/android/material/internal/NavigationMenuView;

    if-eqz v0, :cond_0

    .line 1107
    check-cast p1, Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {p1}, Lcom/google/android/material/internal/NavigationMenuView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    iget-object v0, p0, Lcom/ebay/mobile/activities/CoreActivity;->navDrawerParcelable:Landroid/os/Parcelable;

    .line 1108
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method private navigationDrawerSaveInstance(Lcom/google/android/material/navigation/NavigationView;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1120
    invoke-virtual {p1}, Lcom/google/android/material/navigation/NavigationView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 1122
    invoke-virtual {p1, v0}, Lcom/google/android/material/navigation/NavigationView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 1124
    instance-of v0, p1, Lcom/google/android/material/internal/NavigationMenuView;

    if-eqz v0, :cond_0

    .line 1125
    check-cast p1, Lcom/google/android/material/internal/NavigationMenuView;

    .line 1126
    invoke-virtual {p1}, Lcom/google/android/material/internal/NavigationMenuView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/activities/CoreActivity;->navDrawerParcelable:Landroid/os/Parcelable;

    :cond_0
    return-void
.end method

.method private static setAppBadgeCount(ILandroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2809
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v0

    .line 2811
    sget-object v1, Lcom/ebay/mobile/dcs/DcsBoolean;->showLauncherAppBadge:Lcom/ebay/mobile/dcs/DcsBoolean;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2814
    :cond_0
    new-instance v0, Lcom/ebay/mobile/activities/-$$Lambda$CoreActivity$RJCsYcQ8TkadkMKbY25xlivzTac;

    invoke-direct {v0, p1, p0}, Lcom/ebay/mobile/activities/-$$Lambda$CoreActivity$RJCsYcQ8TkadkMKbY25xlivzTac;-><init>(Landroid/content/Context;I)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setCartAccessibilityText(Landroid/view/View;I)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0a09ba

    .line 1562
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1564
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f1000a3

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 1565
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p1, v1, p2, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1564
    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private setMenuContentDescriptions(Landroid/view/Menu;I)V
    .locals 7

    if-eqz p1, :cond_5

    .line 1201
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_5

    .line 1203
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_5

    .line 1206
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1209
    invoke-interface {v3}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1211
    invoke-interface {v3}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    .line 1212
    invoke-direct {p0, v3, p2}, Lcom/ebay/mobile/activities/CoreActivity;->setMenuContentDescriptions(Landroid/view/Menu;I)V

    goto :goto_3

    .line 1214
    :cond_0
    invoke-interface {v3}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1216
    invoke-interface {v3}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1219
    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    const v6, 0x7f0a0a57

    if-ne v5, v6, :cond_1

    .line 1221
    iget v6, p0, Lcom/ebay/mobile/activities/CoreActivity;->newMessagesCount:I

    if-lez v6, :cond_1

    .line 1222
    iget v6, p0, Lcom/ebay/mobile/activities/CoreActivity;->newMessagesCount:I

    goto :goto_1

    :cond_1
    const v6, 0x7f0a0a58

    if-ne v5, v6, :cond_2

    .line 1223
    iget v6, p0, Lcom/ebay/mobile/activities/CoreActivity;->newNotificationsCount:I

    if-lez v6, :cond_2

    .line 1224
    iget v6, p0, Lcom/ebay/mobile/activities/CoreActivity;->newNotificationsCount:I

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    if-ne v5, p2, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    .line 1226
    :goto_2
    invoke-direct {p0, v3, v4, v6, v5}, Lcom/ebay/mobile/activities/CoreActivity;->setMenuItemContentDescription(Landroid/view/MenuItem;Ljava/lang/String;IZ)V

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private setMenuItemContentDescription(Landroid/view/MenuItem;Ljava/lang/String;IZ)V
    .locals 2

    const v0, 0x7f120157

    .line 1235
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/CoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1236
    invoke-static {p0, p3}, Lcom/ebay/mobile/util/Util;->countAsString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    if-lez p3, :cond_0

    .line 1239
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    if-eqz p4, :cond_1

    .line 1242
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p2, 0x7f120102

    invoke-virtual {p0, p2}, Lcom/ebay/mobile/activities/CoreActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1244
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p2, 0x7f1200ff

    invoke-virtual {p0, p2}, Lcom/ebay/mobile/activities/CoreActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1246
    invoke-static {p1, p2}, Landroidx/core/view/MenuItemCompat;->setContentDescription(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setupHeaderView(Landroid/view/View;)V
    .locals 8

    const v0, 0x7f0a12f6

    .line 993
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a07d8

    .line 994
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ebay/mobile/widget/UserThumbnail;

    const v2, 0x7f0a12f7

    .line 995
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 996
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getUserContext()Lcom/ebay/nautilus/domain/content/dm/UserContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ebay/nautilus/domain/content/dm/UserContext;->isSignedIn()Z

    move-result v3

    .line 999
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/ebay/mobile/activities/CoreActivity;->updateHeaderContainer(Landroid/view/View;Ljava/lang/Boolean;)V

    const p1, 0x7f1200ff

    const v4, 0x7f120157

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-eqz v3, :cond_2

    .line 1004
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getUserContext()Lcom/ebay/nautilus/domain/content/dm/UserContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ebay/nautilus/domain/content/dm/UserContext;->getCurrentUser()Lcom/ebay/nautilus/domain/app/Authentication;

    move-result-object v3

    iget-object v3, v3, Lcom/ebay/nautilus/domain/app/Authentication;->user:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1007
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1008
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1009
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Lcom/ebay/mobile/activities/CoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1010
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1009
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz v1, :cond_1

    .line 1014
    invoke-virtual {v1, v6}, Lcom/ebay/mobile/widget/UserThumbnail;->setVisibility(I)V

    .line 1015
    invoke-virtual {v1, v3}, Lcom/ebay/mobile/widget/UserThumbnail;->setUserId(Ljava/lang/String;)V

    :cond_1
    if-eqz v2, :cond_5

    .line 1018
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 1023
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    if-eqz v1, :cond_4

    .line 1025
    invoke-virtual {v1, v5}, Lcom/ebay/mobile/widget/UserThumbnail;->setVisibility(I)V

    :cond_4
    if-eqz v2, :cond_5

    .line 1028
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1029
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f120eae

    invoke-virtual {p0, v1}, Lcom/ebay/mobile/activities/CoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1030
    invoke-virtual {p0, v4}, Lcom/ebay/mobile/activities/CoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1029
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private startActivityWithHome(Landroid/content/Intent;)V
    .locals 2

    .line 2096
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ebay/mobile/activities/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x10008000

    .line 2097
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 2098
    invoke-virtual {p0, v0, v1}, Lcom/ebay/mobile/activities/CoreActivity;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    .line 2099
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->startActivity(Landroid/content/Intent;)V

    const p1, 0x7f010019

    const v0, 0x7f01002e

    .line 2100
    invoke-virtual {p0, p1, v0}, Lcom/ebay/mobile/activities/CoreActivity;->overridePendingTransition(II)V

    return-void
.end method

.method private updateActionBar(Landroidx/appcompat/app/ActionBar;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 483
    :cond_0
    sget-object v0, Lcom/ebay/mobile/R$styleable;->ActionBarSearch:[I

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/CoreActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x1

    .line 484
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    .line 485
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x2

    .line 486
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 487
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 489
    iget v0, p0, Lcom/ebay/mobile/activities/CoreActivity;->toolbarFlags:I

    and-int/lit16 v0, v0, 0x2000

    const/4 v6, 0x0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/ebay/mobile/activities/CoreActivity;->toolbarFlags:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_1

    goto :goto_2

    .line 506
    :cond_1
    iget-object v0, p0, Lcom/ebay/mobile/activities/CoreActivity;->symbanDataManager:Lcom/ebay/nautilus/domain/content/dm/symban/SymbanDataManager;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ebay/mobile/activities/CoreActivity;->symbanDataManager:Lcom/ebay/nautilus/domain/content/dm/symban/SymbanDataManager;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/content/dm/symban/SymbanDataManager;->getCountIfExists()Ljava/lang/Integer;

    move-result-object v6

    .line 507
    :goto_0
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    if-eqz v6, :cond_4

    .line 508
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_4

    .line 510
    invoke-static {}, Lcom/ebay/mobile/themes/Ds6Configuration;->getInstance()Lcom/ebay/mobile/themes/Ds6ConfigurationContract;

    move-result-object v0

    invoke-interface {v0}, Lcom/ebay/mobile/themes/Ds6ConfigurationContract;->isDs6Applied()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0803bb

    .line 511
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(I)V

    goto :goto_1

    :cond_3
    const v0, 0x7f0803ba

    .line 513
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(I)V

    :goto_1
    const v0, 0x7f12013d

    .line 514
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/CoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setHomeActionContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 518
    :cond_4
    invoke-virtual {p1, v5}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f12073e

    .line 519
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/CoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setHomeActionContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 491
    :cond_5
    :goto_2
    invoke-virtual {p1, v3}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 493
    iget v0, p0, Lcom/ebay/mobile/activities/CoreActivity;->toolbarFlags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_6

    .line 495
    invoke-virtual {p1, v4}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f12033b

    .line 496
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setHomeActionContentDescription(I)V

    goto :goto_3

    .line 500
    :cond_6
    invoke-virtual {p1, v6}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 501
    invoke-virtual {p1, v6}, Landroidx/appcompat/app/ActionBar;->setHomeActionContentDescription(Ljava/lang/CharSequence;)V

    .line 523
    :goto_3
    iget v0, p0, Lcom/ebay/mobile/activities/CoreActivity;->toolbarFlags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_7

    .line 525
    invoke-virtual {p1, v2}, Landroidx/appcompat/app/ActionBar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 526
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 527
    invoke-virtual {p1, v3}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    goto :goto_4

    .line 531
    :cond_7
    invoke-virtual {p1, v3}, Landroidx/appcompat/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 532
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    :goto_4
    return-void
.end method

.method private updateAndCreateDrawerLayout()Landroidx/drawerlayout/widget/DrawerLayout;
    .locals 5

    .line 1298
    iget v0, p0, Lcom/ebay/mobile/activities/CoreActivity;->toolbarFlags:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_0

    .line 1302
    new-instance v0, Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v1, 0x0

    const v2, 0x7f0401da

    invoke-direct {v0, p0, v1, v2}, Landroidx/drawerlayout/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto :goto_0

    .line 1309
    :cond_0
    new-instance v0, Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-direct {v0, p0}, Landroidx/drawerlayout/widget/DrawerLayout;-><init>(Landroid/content/Context;)V

    .line 1311
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getScrollingAppBar()Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 1313
    invoke-virtual {v1, v2}, Lcom/google/android/material/appbar/AppBarLayout;->setFitsSystemWindows(Z)V

    .line 1315
    :cond_1
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x4000000

    .line 1318
    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 1322
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroidx/core/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v2

    .line 1321
    invoke-virtual {v1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    :goto_0
    return-object v0
.end method

.method private updateHeaderContainer(Landroid/view/View;Ljava/lang/Boolean;)V
    .locals 5

    const v0, 0x7f0a0cb1

    .line 1037
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1039
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1040
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v2, p0, Lcom/ebay/mobile/activities/CoreActivity;->navDrawerInsetTop:I

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 1043
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, -0x1

    if-eqz p2, :cond_0

    .line 1045
    iget-object p2, p0, Lcom/ebay/mobile/activities/CoreActivity;->navDrawerSignedInDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1046
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1052
    :cond_0
    iget-object p2, p0, Lcom/ebay/mobile/activities/CoreActivity;->navDrawerSignedOutDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1053
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/ebay/mobile/activities/CoreActivity;->navDrawerSignedOutHeight:I

    iget v2, p0, Lcom/ebay/mobile/activities/CoreActivity;->navDrawerInsetTop:I

    add-int/2addr v1, v2

    invoke-direct {p2, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected addToolbarFlags(I)V
    .locals 1

    .line 609
    iget v0, p0, Lcom/ebay/mobile/activities/CoreActivity;->toolbarFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/ebay/mobile/activities/CoreActivity;->toolbarFlags:I

    and-int/lit16 v0, p1, 0x1000

    if-nez v0, :cond_0

    and-int/lit16 v0, p1, 0x800

    if-nez v0, :cond_0

    and-int/lit16 p1, p1, 0x2000

    if-eqz p1, :cond_1

    .line 613
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->updateActionBar(Landroidx/appcompat/app/ActionBar;)V

    :cond_1
    return-void
.end method

.method protected constructToolbars()Landroid/view/View;
    .locals 16
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    move-object/from16 v0, p0

    .line 734
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual/range {p0 .. p0}, Lcom/ebay/mobile/activities/CoreActivity;->getToolbarTheme()I

    move-result v2

    invoke-direct {v1, v0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 737
    sget-object v2, Lcom/ebay/mobile/R$styleable;->CoreToolbar:[I

    invoke-virtual {v0, v2}, Lcom/ebay/mobile/activities/CoreActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v3, 0x0

    .line 738
    invoke-virtual {v2, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 739
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 741
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x1

    .line 742
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 744
    new-instance v6, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-direct {v6, v0}, Lcom/google/android/material/appbar/AppBarLayout;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0a068b

    .line 745
    invoke-virtual {v6, v7}, Lcom/google/android/material/appbar/AppBarLayout;->setId(I)V

    const-string v7, "fixedAppBar"

    .line 747
    invoke-static {v6, v7}, Landroidx/core/view/ViewCompat;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    const/4 v7, -0x2

    const/4 v8, -0x1

    .line 748
    invoke-virtual {v2, v6, v8, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 751
    new-instance v9, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-direct {v9, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;)V

    const v10, 0x7f0a1339

    .line 752
    invoke-virtual {v9, v10}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setId(I)V

    .line 753
    invoke-virtual {v2, v9, v8, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 756
    new-instance v10, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-direct {v10, v0}, Lcom/google/android/material/appbar/AppBarLayout;-><init>(Landroid/content/Context;)V

    const v11, 0x7f0a0e4b

    .line 757
    invoke-virtual {v10, v11}, Lcom/google/android/material/appbar/AppBarLayout;->setId(I)V

    const-string/jumbo v11, "scrollingAppBar"

    .line 758
    invoke-static {v10, v11}, Landroidx/core/view/ViewCompat;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    .line 759
    new-instance v11, Lcom/ebay/mobile/activities/CoreActivity$ScrollUnderOffsetChangeListener;

    invoke-direct {v11, v0}, Lcom/ebay/mobile/activities/CoreActivity$ScrollUnderOffsetChangeListener;-><init>(Lcom/ebay/mobile/activities/CoreActivity;)V

    invoke-virtual {v10, v11}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    .line 760
    invoke-virtual {v9, v10, v8, v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->addView(Landroid/view/View;II)V

    .line 763
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v11, 0x7f0a045f

    .line 764
    invoke-virtual {v7, v11}, Landroid/widget/FrameLayout;->setId(I)V

    .line 765
    new-instance v11, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-direct {v11, v8, v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(II)V

    .line 768
    new-instance v12, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;

    invoke-direct {v12}, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;-><init>()V

    invoke-virtual {v11, v12}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V

    .line 769
    invoke-virtual {v9, v7, v11}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 771
    iget v7, v0, Lcom/ebay/mobile/activities/CoreActivity;->toolbarFlags:I

    const v11, 0x8000

    and-int/2addr v7, v11

    if-eqz v7, :cond_0

    .line 772
    invoke-direct {v0, v9}, Lcom/ebay/mobile/activities/CoreActivity;->addFabToCoordinator(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V

    .line 777
    :cond_0
    iget-object v7, v0, Lcom/ebay/mobile/activities/CoreActivity;->toolbarOrder:[I

    array-length v9, v7

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    if-ge v11, v9, :cond_f

    aget v14, v7, v11

    const/4 v15, 0x4

    const/4 v5, 0x0

    const/16 v3, 0x8

    if-eq v14, v15, :cond_8

    packed-switch v14, :pswitch_data_0

    goto/16 :goto_5

    .line 841
    :pswitch_0
    iget v14, v0, Lcom/ebay/mobile/activities/CoreActivity;->toolbarFlags:I

    and-int/lit8 v14, v14, 0x2

    if-eqz v14, :cond_c

    .line 843
    new-instance v14, Lcom/google/android/material/tabs/TabLayout;

    const v15, 0x7f0401e2

    invoke-direct {v14, v1, v5, v15}, Lcom/google/android/material/tabs/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v15, 0x7f0a1231

    .line 844
    invoke-virtual {v14, v15}, Lcom/google/android/material/tabs/TabLayout;->setId(I)V

    .line 846
    iget v15, v0, Lcom/ebay/mobile/activities/CoreActivity;->toolbarFlags:I

    and-int/lit8 v15, v15, 0x10

    if-eqz v15, :cond_1

    if-nez v12, :cond_1

    .line 848
    new-instance v3, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    invoke-direct {v3, v8, v4}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;-><init>(II)V

    const/4 v13, 0x5

    .line 850
    invoke-virtual {v3, v13}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->setScrollFlags(I)V

    .line 852
    invoke-virtual {v6, v5}, Lcom/google/android/material/appbar/AppBarLayout;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 853
    invoke-virtual {v10, v14, v3}, Lcom/google/android/material/appbar/AppBarLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3

    :cond_1
    if-nez v13, :cond_3

    if-eqz v12, :cond_2

    goto :goto_1

    .line 865
    :cond_2
    invoke-virtual {v6, v14, v8, v4}, Lcom/google/android/material/appbar/AppBarLayout;->addView(Landroid/view/View;II)V

    goto/16 :goto_5

    .line 858
    :cond_3
    :goto_1
    new-instance v5, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    invoke-direct {v5, v8, v4}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;-><init>(II)V

    .line 860
    invoke-virtual {v5, v3}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->setScrollFlags(I)V

    .line 861
    invoke-virtual {v10, v14, v5}, Lcom/google/android/material/appbar/AppBarLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_5

    .line 782
    :pswitch_1
    iget v5, v0, Lcom/ebay/mobile/activities/CoreActivity;->toolbarFlags:I

    const/4 v14, 0x1

    and-int/2addr v5, v14

    if-eqz v5, :cond_c

    .line 784
    new-instance v5, Landroidx/appcompat/widget/Toolbar;

    invoke-direct {v5, v1}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;)V

    .line 785
    invoke-virtual/range {p0 .. p0}, Lcom/ebay/mobile/activities/CoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f070156

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    invoke-virtual {v5, v14}, Landroidx/appcompat/widget/Toolbar;->setContentInsetStartWithNavigation(I)V

    .line 787
    invoke-virtual/range {p0 .. p0}, Lcom/ebay/mobile/activities/CoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0701c0

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    const/4 v15, 0x0

    invoke-virtual {v5, v15, v14}, Landroidx/appcompat/widget/Toolbar;->setContentInsetsAbsolute(II)V

    const v14, 0x7f0a0c94

    .line 789
    invoke-virtual {v5, v14}, Landroidx/appcompat/widget/Toolbar;->setId(I)V

    const v14, 0x7f1305b9

    .line 790
    invoke-virtual {v5, v14}, Landroidx/appcompat/widget/Toolbar;->setPopupTheme(I)V

    .line 792
    iget v14, v0, Lcom/ebay/mobile/activities/CoreActivity;->toolbarFlags:I

    and-int/lit16 v14, v14, 0x400

    if-eqz v14, :cond_4

    .line 794
    new-instance v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-direct {v3, v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;-><init>(Landroid/content/Context;)V

    const v12, 0x7f0a0401

    .line 795
    invoke-virtual {v3, v12}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setId(I)V

    .line 796
    new-instance v12, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    invoke-direct {v12, v8, v8}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;-><init>(II)V

    const/16 v14, 0xf

    .line 799
    invoke-virtual {v12, v14}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->setScrollFlags(I)V

    const v14, 0x1010433

    .line 804
    invoke-static {v0, v14}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeColor(Landroid/content/Context;I)I

    move-result v14

    invoke-virtual {v3, v14}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setContentScrimColor(I)V

    .line 805
    invoke-virtual {v10, v3, v12}, Lcom/google/android/material/appbar/AppBarLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 806
    new-instance v12, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;

    invoke-direct {v12, v8, v4}, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;-><init>(II)V

    const/4 v14, 0x1

    .line 809
    invoke-virtual {v12, v14}, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->setCollapseMode(I)V

    const/16 v15, 0x30

    .line 810
    iput v15, v12, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->gravity:I

    .line 811
    invoke-virtual {v3, v5, v12}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v15, 0x0

    .line 812
    invoke-virtual {v6, v15, v15, v15, v15}, Lcom/google/android/material/appbar/AppBarLayout;->setPadding(IIII)V

    const/4 v12, 0x1

    goto/16 :goto_5

    :cond_4
    const/4 v15, 0x0

    .line 815
    iget v14, v0, Lcom/ebay/mobile/activities/CoreActivity;->toolbarFlags:I

    and-int/2addr v14, v3

    if-eqz v14, :cond_5

    .line 817
    new-instance v3, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    invoke-direct {v3, v8, v4}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;-><init>(II)V

    const/4 v13, 0x5

    .line 819
    invoke-virtual {v3, v13}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->setScrollFlags(I)V

    .line 821
    invoke-virtual {v10, v5, v3}, Lcom/google/android/material/appbar/AppBarLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    :cond_5
    if-nez v13, :cond_7

    if-eqz v12, :cond_6

    goto :goto_2

    .line 834
    :cond_6
    new-instance v3, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    invoke-direct {v3, v8, v4}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;-><init>(II)V

    .line 836
    invoke-virtual {v6, v5, v3}, Lcom/google/android/material/appbar/AppBarLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    .line 826
    :cond_7
    :goto_2
    new-instance v14, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    invoke-direct {v14, v8, v4}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;-><init>(II)V

    .line 828
    invoke-virtual {v14, v3}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->setScrollFlags(I)V

    .line 830
    invoke-virtual {v10, v5, v14}, Lcom/google/android/material/appbar/AppBarLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    .line 870
    :cond_8
    iget v14, v0, Lcom/ebay/mobile/activities/CoreActivity;->toolbarFlags:I

    and-int/2addr v14, v15

    if-eqz v14, :cond_c

    .line 872
    new-instance v14, Landroidx/appcompat/widget/Toolbar;

    invoke-direct {v14, v1}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;)V

    const v15, 0x7f0a0182

    .line 873
    invoke-virtual {v14, v15}, Landroidx/appcompat/widget/Toolbar;->setId(I)V

    .line 875
    iget v15, v0, Lcom/ebay/mobile/activities/CoreActivity;->toolbarFlags:I

    and-int/lit8 v15, v15, 0x20

    if-eqz v15, :cond_9

    if-nez v12, :cond_9

    .line 877
    new-instance v3, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    invoke-direct {v3, v8, v4}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;-><init>(II)V

    const/4 v13, 0x5

    .line 879
    invoke-virtual {v3, v13}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->setScrollFlags(I)V

    .line 881
    invoke-virtual {v6, v5}, Lcom/google/android/material/appbar/AppBarLayout;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 882
    invoke-virtual {v10, v14, v3}, Lcom/google/android/material/appbar/AppBarLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_3
    const/4 v13, 0x1

    goto :goto_5

    :cond_9
    if-nez v13, :cond_b

    if-eqz v12, :cond_a

    goto :goto_4

    .line 894
    :cond_a
    invoke-virtual {v6, v14, v8, v4}, Lcom/google/android/material/appbar/AppBarLayout;->addView(Landroid/view/View;II)V

    goto :goto_5

    .line 887
    :cond_b
    :goto_4
    new-instance v5, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    invoke-direct {v5, v8, v4}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;-><init>(II)V

    .line 889
    invoke-virtual {v5, v3}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->setScrollFlags(I)V

    .line 890
    invoke-virtual {v10, v14, v5}, Lcom/google/android/material/appbar/AppBarLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 901
    :cond_c
    :goto_5
    invoke-virtual {v10}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    move-result v3

    const v5, 0x7f070439

    if-lez v3, :cond_d

    const/4 v3, 0x0

    .line 903
    invoke-static {v6, v3}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 904
    invoke-virtual/range {p0 .. p0}, Lcom/ebay/mobile/activities/CoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v10, v3}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    goto :goto_6

    .line 906
    :cond_d
    invoke-virtual {v6}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    move-result v3

    if-lez v3, :cond_e

    .line 908
    invoke-virtual/range {p0 .. p0}, Lcom/ebay/mobile/activities/CoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v6, v3}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    :cond_e
    :goto_6
    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_f
    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getAccessibilityManager()Landroid/view/accessibility/AccessibilityManager;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 576
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method public getAuxiliaryToolbar()Landroidx/appcompat/widget/Toolbar;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const v0, 0x7f0a0182

    .line 676
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/CoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    return-object v0
.end method

.method protected getCartViewClickListener()Landroid/view/View$OnClickListener;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1794
    new-instance v0, Lcom/ebay/mobile/activities/-$$Lambda$CoreActivity$LYfJIH6QPSMbXuKJzK202ZlDjPk;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/activities/-$$Lambda$CoreActivity$LYfJIH6QPSMbXuKJzK202ZlDjPk;-><init>(Lcom/ebay/mobile/activities/CoreActivity;)V

    return-object v0
.end method

.method public getCollapsingToolbarLayout()Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const v0, 0x7f0a0401

    .line 687
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/CoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    return-object v0
.end method

.method protected getFabLayout()I
    .locals 1
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public getFixedAppBar()Lcom/google/android/material/appbar/AppBarLayout;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const v0, 0x7f0a068b

    .line 699
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/CoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    return-object v0
.end method

.method protected getHelpIntent()Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getNavigationDrawer()Landroidx/drawerlayout/widget/DrawerLayout;
    .locals 1

    const v0, 0x7f0a058c

    .line 1640
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/CoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout;

    return-object v0
.end method

.method protected getNavigationId()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected getNavigationView()Lcom/google/android/material/navigation/NavigationView;
    .locals 1

    const v0, 0x7f0a0a62

    .line 1648
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/CoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/navigation/NavigationView;

    return-object v0
.end method

.method public getPrimaryToolbar()Landroidx/appcompat/widget/Toolbar;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const v0, 0x7f0a0c94

    .line 665
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/CoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    return-object v0
.end method

.method public getScrollingAppBar()Lcom/google/android/material/appbar/AppBarLayout;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const v0, 0x7f0a0e4b

    .line 693
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/CoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    return-object v0
.end method

.method protected getSearchImageClickListener()Landroid/view/View$OnClickListener;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1729
    new-instance v0, Lcom/ebay/mobile/activities/-$$Lambda$CoreActivity$3eokejh5mTqVMZC7-Ju_6MOM-A8;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/activities/-$$Lambda$CoreActivity$3eokejh5mTqVMZC7-Ju_6MOM-A8;-><init>(Lcom/ebay/mobile/activities/CoreActivity;)V

    return-object v0
.end method

.method protected getSearchLandingPageIntent()Landroid/content/Intent;
    .locals 5

    .line 1771
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ebay/mobile/search/landing/SearchLandingPageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1773
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getTrackingEventName()Ljava/lang/String;

    move-result-object v1

    .line 1774
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.ebay.mobile.analytics.sid"

    .line 1775
    new-instance v3, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;

    const-string v4, "pmn"

    invoke-direct {v3, v1, v4}, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method protected getSearchMicClickListener()Landroid/view/View$OnClickListener;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1713
    new-instance v0, Lcom/ebay/mobile/activities/-$$Lambda$CoreActivity$Rn29t1dgssJm8F_On6Mgn7htzwY;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/activities/-$$Lambda$CoreActivity$Rn29t1dgssJm8F_On6Mgn7htzwY;-><init>(Lcom/ebay/mobile/activities/CoreActivity;)V

    return-object v0
.end method

.method protected getSearchViewClickListener()Landroid/view/View$OnClickListener;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1742
    new-instance v0, Lcom/ebay/mobile/activities/-$$Lambda$CoreActivity$Nm2GDg8bpEuPA9jLr0qdnCBqmmQ;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/activities/-$$Lambda$CoreActivity$Nm2GDg8bpEuPA9jLr0qdnCBqmmQ;-><init>(Lcom/ebay/mobile/activities/CoreActivity;)V

    return-object v0
.end method

.method protected getShoppingCartRequestCode()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getTabLayout()Lcom/google/android/material/tabs/TabLayout;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const v0, 0x7f0a1231

    .line 650
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/CoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    return-object v0
.end method

.method protected getToolbarFlags()I
    .locals 1

    .line 598
    iget v0, p0, Lcom/ebay/mobile/activities/CoreActivity;->toolbarFlags:I

    return v0
.end method

.method protected getToolbarTheme()I
    .locals 2
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation

    const v0, 0x7f040482

    const v1, 0x7f1305b6

    .line 723
    invoke-static {p0, v0, v1}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeResId(Landroid/content/Context;II)I

    move-result v0

    return v0
.end method

.method public getTrackingEventName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public handleError(Landroid/content/Context;Landroidx/fragment/app/Fragment;ILcom/ebay/nautilus/kernel/content/ResultStatus;)Z
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/ebay/nautilus/kernel/content/ResultStatus;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2311
    invoke-virtual {p0, p2, p3, p4}, Lcom/ebay/mobile/activities/CoreActivity;->showMessage(Landroidx/fragment/app/Fragment;ILcom/ebay/nautilus/kernel/content/ResultStatus;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected handleHelpSelected()V
    .locals 1

    const/4 v0, 0x0

    .line 2022
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/CoreActivity;->handleHelpSelected(Ljava/util/ArrayList;)V

    return-void
.end method

.method public handleHelpSelected(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ebay/nautilus/domain/data/NameValue;",
            ">;)V"
        }
    .end annotation

    .line 2031
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v0

    const-class v1, Lcom/ebay/nautilus/domain/dagger/DomainComponent;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/kernel/content/EbayContext;->as(Ljava/lang/Class;)Lcom/ebay/nautilus/kernel/dagger/KernelComponent;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/dagger/DomainComponent;

    invoke-interface {v0}, Lcom/ebay/nautilus/domain/dagger/DomainComponent;->getDeviceConfiguration()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v0

    .line 2032
    sget-object v1, Lcom/ebay/mobile/dcs/DcsBoolean;->OCS:Lcom/ebay/mobile/dcs/DcsBoolean;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v1

    .line 2033
    new-instance v2, Lcom/ebay/mobile/support/OcsUrlProvider;

    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/ebay/mobile/support/OcsUrlProvider;-><init>(Landroid/content/Context;Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;)V

    invoke-virtual {v2}, Lcom/ebay/mobile/support/OcsUrlProvider;->get()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_1

    .line 2034
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2036
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ebay/mobile/activities/OcsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2038
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getTrackingEventName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.ebay.mobile.analytics.sid"

    .line 2039
    new-instance v3, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;

    const-string v4, "Menu"

    const-string v5, "help"

    invoke-direct {v3, v1, v4, v5}, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string v1, "extra_tracking_data"

    .line 2043
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 2044
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/CoreActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2048
    :cond_1
    new-instance v0, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    const-string v1, "AppEvents"

    invoke-direct {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/ebay/nautilus/domain/analytics/TrackingType;->EVENT:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    .line 2049
    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->trackingType(Lcom/ebay/nautilus/domain/analytics/TrackingType;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v0

    const-string v1, "mfls"

    const-string v2, "HLP"

    .line 2050
    invoke-virtual {v0, v1, v2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v0

    .line 2051
    invoke-virtual {v0, p1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperties(Ljava/util/List;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object p1

    .line 2052
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->build()Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    move-result-object p1

    .line 2053
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    .line 2054
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ebay/mobile/util/Util;->composeSupportEmail(Landroid/app/Activity;Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    :goto_0
    return-void
.end method

.method public handleWarning(Landroid/content/Context;Landroidx/fragment/app/Fragment;ILcom/ebay/nautilus/kernel/content/ResultStatus;)Z
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/ebay/nautilus/kernel/content/ResultStatus;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2319
    invoke-virtual {p0, p2, p3, p4}, Lcom/ebay/mobile/activities/CoreActivity;->showMessage(Landroidx/fragment/app/Fragment;ILcom/ebay/nautilus/kernel/content/ResultStatus;)V

    const/4 p1, 0x1

    return p1
.end method

.method public invalidateNavigationMenu()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 2196
    invoke-static {}, Lcom/ebay/nautilus/kernel/NautilusKernel;->verifyMain()V

    .line 2197
    iget v0, p0, Lcom/ebay/mobile/activities/CoreActivity;->toolbarFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_3

    .line 2199
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getNavigationView()Lcom/google/android/material/navigation/NavigationView;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 2202
    invoke-virtual {v0, v1}, Lcom/google/android/material/navigation/NavigationView;->getHeaderView(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2204
    invoke-direct {p0, v1}, Lcom/ebay/mobile/activities/CoreActivity;->setupHeaderView(Landroid/view/View;)V

    .line 2207
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/Menu;->clear()V

    .line 2210
    iget-object v1, p0, Lcom/ebay/mobile/activities/CoreActivity;->navigationDrawerHierarchyListener:Lcom/ebay/mobile/activities/CoreActivity$NavigationDrawerHierarchyListener;

    if-eqz v1, :cond_1

    .line 2211
    iget-object v1, p0, Lcom/ebay/mobile/activities/CoreActivity;->navigationDrawerHierarchyListener:Lcom/ebay/mobile/activities/CoreActivity$NavigationDrawerHierarchyListener;

    invoke-virtual {v1}, Lcom/ebay/mobile/activities/CoreActivity$NavigationDrawerHierarchyListener;->resetNavigationIds()V

    .line 2214
    :cond_1
    iget-boolean v1, p0, Lcom/ebay/mobile/activities/CoreActivity;->isNavigationProfileShowing:Z

    if-eqz v1, :cond_2

    .line 2215
    invoke-direct {p0, v0}, Lcom/ebay/mobile/activities/CoreActivity;->inflateProfileNavigationMenu(Lcom/google/android/material/navigation/NavigationView;)V

    goto :goto_0

    .line 2217
    :cond_2
    invoke-direct {p0, v0}, Lcom/ebay/mobile/activities/CoreActivity;->inflateNavigationMenu(Lcom/google/android/material/navigation/NavigationView;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public isActivityResumed()Z
    .locals 1

    .line 295
    iget-boolean v0, p0, Lcom/ebay/mobile/activities/CoreActivity;->isResumed:Z

    return v0
.end method

.method protected isHelpAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 280
    invoke-super {p0, p1, p2, p3}, Lcom/ebay/nautilus/shell/app/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 282
    iget-boolean v0, p0, Lcom/ebay/mobile/activities/CoreActivity;->isResumed:Z

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {p0, p1, p2, p3}, Lcom/ebay/mobile/activities/CoreActivity;->onActivityResultSafe(IILandroid/content/Intent;)V

    goto :goto_0

    .line 285
    :cond_0
    new-instance v0, Lcom/ebay/mobile/activities/ActivityResult;

    invoke-direct {v0, p1, p2, p3}, Lcom/ebay/mobile/activities/ActivityResult;-><init>(IILandroid/content/Intent;)V

    iput-object v0, p0, Lcom/ebay/mobile/activities/CoreActivity;->activityResult:Lcom/ebay/mobile/activities/ActivityResult;

    :goto_0
    return-void
.end method

.method protected onActivityResultSafe(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 1363
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getNavigationDrawer()Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    .line 1365
    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1366
    :cond_0
    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(I)V

    goto :goto_0

    .line 1368
    :cond_1
    invoke-super {p0}, Lcom/ebay/nautilus/shell/app/BaseActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 208
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    new-instance v1, Lcom/ebay/mobile/activities/CoreLayoutInflater;

    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ebay/mobile/activities/CoreLayoutInflater;-><init>(Landroidx/appcompat/app/AppCompatDelegate;)V

    invoke-static {v0, v1}, Landroidx/core/view/LayoutInflaterCompat;->setFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    .line 209
    invoke-super {p0, p1}, Lcom/ebay/nautilus/shell/app/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 210
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v1, Lcom/ebay/mobile/activities/FloatingQuickTipLifeCycleObserver;

    invoke-direct {v1}, Lcom/ebay/mobile/activities/FloatingQuickTipLifeCycleObserver;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 212
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "upNavOverride"

    .line 215
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    iput-object v1, p0, Lcom/ebay/mobile/activities/CoreActivity;->upIntentOverride:Landroid/content/Intent;

    const-string v1, "navDrawerParcelable"

    .line 216
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/activities/CoreActivity;->navDrawerParcelable:Landroid/os/Parcelable;

    .line 219
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->initDataManagers()V

    if-eqz p1, :cond_1

    const-string v0, "navigationState"

    const/4 v1, 0x0

    .line 222
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ebay/mobile/activities/CoreActivity;->isNavigationProfileShowing:Z

    .line 224
    :cond_1
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0702e0

    .line 225
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/ebay/mobile/activities/CoreActivity;->navDrawerSignedOutHeight:I

    const p1, 0x7f04033e

    .line 226
    invoke-static {p0, p1}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/activities/CoreActivity;->navDrawerSignedInDrawable:Landroid/graphics/drawable/Drawable;

    const p1, 0x7f04033f

    .line 227
    invoke-static {p0, p1}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/activities/CoreActivity;->navDrawerSignedOutDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 8

    .line 1374
    invoke-super {p0, p1}, Lcom/ebay/nautilus/shell/app/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1378
    :goto_0
    iget-object v3, p0, Lcom/ebay/mobile/activities/CoreActivity;->menuOrder:[I

    array-length v3, v3

    if-ge v2, v3, :cond_4

    .line 1380
    iget-object v3, p0, Lcom/ebay/mobile/activities/CoreActivity;->menuOrder:[I

    aget v3, v3, v2

    const/16 v4, 0x80

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v3, v4, :cond_2

    const/16 v4, 0x100

    if-eq v3, v4, :cond_1

    const/16 v4, 0x4000

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 1404
    :cond_0
    iget v3, p0, Lcom/ebay/mobile/activities/CoreActivity;->toolbarFlags:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_3

    const v3, 0x7f0a09c0

    const v4, 0x7f120596

    .line 1407
    invoke-interface {p1, v1, v3, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 1408
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1409
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 1410
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v7, 0x7f04000c

    invoke-virtual {v5, v7, v4, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1411
    iget v4, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 1384
    :cond_1
    iget v3, p0, Lcom/ebay/mobile/activities/CoreActivity;->toolbarFlags:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_3

    const v3, 0x7f0a09cf

    const v4, 0x7f120e76

    .line 1387
    invoke-interface {p1, v1, v3, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 1388
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v4, 0x7f040007

    const v5, 0x7f0d04f5

    .line 1389
    invoke-static {p0, v4, v5}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeResId(Landroid/content/Context;II)I

    move-result v4

    .line 1390
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 1394
    :cond_2
    iget v3, p0, Lcom/ebay/mobile/activities/CoreActivity;->toolbarFlags:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_3

    const v3, 0x7f0a09cc

    const v4, 0x7f120be6

    .line 1396
    invoke-interface {p1, v1, v3, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 1397
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1398
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 1399
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v7, 0x7f040017

    invoke-virtual {v5, v7, v4, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1400
    iget v4, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    return v0
.end method

.method protected onInitializeDataManagers(Lcom/ebay/nautilus/shell/app/DataManagerContainer;)V
    .locals 2

    .line 335
    invoke-super {p0, p1}, Lcom/ebay/nautilus/shell/app/BaseActivity;->onInitializeDataManagers(Lcom/ebay/nautilus/shell/app/DataManagerContainer;)V

    .line 337
    sget-object v0, Lcom/ebay/nautilus/domain/content/dm/UserContextDataManager;->KEY:Lcom/ebay/nautilus/domain/content/dm/UserContextDataManager$KeyParams;

    new-instance v1, Lcom/ebay/mobile/activities/CoreActivity$NavigationHeaderUserContextObserver;

    invoke-direct {v1, p0}, Lcom/ebay/mobile/activities/CoreActivity$NavigationHeaderUserContextObserver;-><init>(Lcom/ebay/mobile/activities/CoreActivity;)V

    invoke-virtual {p1, v0, v1}, Lcom/ebay/nautilus/shell/app/DataManagerContainer;->initialize(Lcom/ebay/nautilus/domain/content/DataManager$DataManagerKeyParams;Ljava/lang/Object;)Lcom/ebay/nautilus/domain/content/DataManager;

    .line 338
    new-instance v0, Lcom/ebay/mobile/activities/CoreActivity$SymbanUpdateListener;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/activities/CoreActivity$SymbanUpdateListener;-><init>(Lcom/ebay/mobile/activities/CoreActivity;)V

    iput-object v0, p0, Lcom/ebay/mobile/activities/CoreActivity;->symbanUpdateListener:Lcom/ebay/mobile/activities/CoreActivity$SymbanUpdateListener;

    .line 339
    sget-object v0, Lcom/ebay/nautilus/domain/content/dm/symban/SymbanDataManager;->KEY:Lcom/ebay/nautilus/domain/content/dm/symban/SymbanDataManager$KeyParams;

    iget-object v1, p0, Lcom/ebay/mobile/activities/CoreActivity;->symbanUpdateListener:Lcom/ebay/mobile/activities/CoreActivity$SymbanUpdateListener;

    invoke-virtual {p1, v0, v1}, Lcom/ebay/nautilus/shell/app/DataManagerContainer;->initialize(Lcom/ebay/nautilus/domain/content/DataManager$DataManagerKeyParams;Ljava/lang/Object;)Lcom/ebay/nautilus/domain/content/DataManager;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/content/dm/symban/SymbanDataManager;

    iput-object v0, p0, Lcom/ebay/mobile/activities/CoreActivity;->symbanDataManager:Lcom/ebay/nautilus/domain/content/dm/symban/SymbanDataManager;

    .line 341
    iget v0, p0, Lcom/ebay/mobile/activities/CoreActivity;->toolbarFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    .line 343
    new-instance v0, Lcom/ebay/mobile/activities/CoreActivity$MessageFolderObserver;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/activities/CoreActivity$MessageFolderObserver;-><init>(Lcom/ebay/mobile/activities/CoreActivity;)V

    iput-object v0, p0, Lcom/ebay/mobile/activities/CoreActivity;->messageFoldersObserver:Lcom/ebay/nautilus/domain/content/dm/messages/MessageFoldersDataManager$Observer;

    .line 344
    sget-object v0, Lcom/ebay/nautilus/domain/content/dm/messages/MessageFoldersDataManager;->KEY:Lcom/ebay/nautilus/domain/content/dm/messages/MessageFoldersDataManager$KeyParams;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/ebay/nautilus/shell/app/DataManagerContainer;->initialize(Lcom/ebay/nautilus/domain/content/DataManager$DataManagerKeyParams;Ljava/lang/Object;)Lcom/ebay/nautilus/domain/content/DataManager;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/content/dm/messages/MessageFoldersDataManager;

    iput-object p1, p0, Lcom/ebay/mobile/activities/CoreActivity;->messageFoldersDataManager:Lcom/ebay/nautilus/domain/content/dm/messages/MessageFoldersDataManager;

    .line 345
    iget-object p1, p0, Lcom/ebay/mobile/activities/CoreActivity;->messageFoldersDataManager:Lcom/ebay/nautilus/domain/content/dm/messages/MessageFoldersDataManager;

    iget-object v0, p0, Lcom/ebay/mobile/activities/CoreActivity;->messageFoldersObserver:Lcom/ebay/nautilus/domain/content/dm/messages/MessageFoldersDataManager$Observer;

    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/domain/content/dm/messages/MessageFoldersDataManager;->registerObserver(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1    # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1860
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getNavigationDrawer()Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1862
    invoke-virtual {v0}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    .line 1864
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getNavigationView()Lcom/google/android/material/navigation/NavigationView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ebay/mobile/activities/CoreActivity;->navigationDrawerSaveInstance(Lcom/google/android/material/navigation/NavigationView;)V

    .line 1866
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    .line 1867
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getTrackingEventName()Ljava/lang/String;

    move-result-object v0

    .line 1870
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getNavigationId()I

    move-result v1

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    .line 1872
    new-instance p1, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;

    invoke-direct {p1, v0}, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;-><init>(Ljava/lang/String;)V

    .line 1873
    new-instance v0, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    const-string v1, "Dismiss"

    invoke-direct {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/ebay/nautilus/domain/analytics/TrackingType;->EVENT:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    .line 1874
    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->trackingType(Lcom/ebay/nautilus/domain/analytics/TrackingType;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v0

    .line 1875
    invoke-virtual {v0, p1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->setSourceIdentification(Lcom/ebay/nautilus/domain/analytics/model/SourceIdentificationProvider;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object p1

    .line 1876
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->build()Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    move-result-object p1

    .line 1877
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    return v2

    :cond_1
    const v1, 0x7f0a076d

    if-eq p1, v1, :cond_3

    const v1, 0x7f0a1020

    const/4 v3, 0x0

    if-eq p1, v1, :cond_2

    const/high16 v1, 0x24000000

    packed-switch p1, :pswitch_data_0

    const v4, 0x10008000

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_0

    .line 1884
    :pswitch_0
    new-instance p1, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;

    const-string v1, "Menu"

    const-string v3, "profile"

    invoke-direct {p1, v0, v1, v3}, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1887
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ebay/mobile/activities/UserDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.ebay.mobile.analytics.sid"

    .line 1888
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1889
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/CoreActivity;->startActivity(Landroid/content/Intent;)V

    .line 1891
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->toggleMenus()V

    goto/16 :goto_0

    .line 1959
    :pswitch_1
    invoke-static {p0}, Lcom/ebay/mobile/activities/MyEbayLandingActivity;->getWatchingActivityIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    .line 1960
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "com.ebay.mobile.analytics.sid"

    .line 1961
    new-instance v3, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;

    const-string v4, "Menu"

    const-string/jumbo v5, "watching"

    invoke-direct {v3, v0, v4, v5}, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "navDrawerParcelable"

    .line 1963
    iget-object v1, p0, Lcom/ebay/mobile/activities/CoreActivity;->navDrawerParcelable:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1964
    invoke-static {}, Lcom/ebay/mobile/myebay/ep/GuestWatchEpConfiguration;->getInstance()Lcom/ebay/mobile/myebay/ep/GuestWatchEpConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/mobile/myebay/ep/GuestWatchEpConfiguration;->isGuestWatchEnabled()Z

    move-result v0

    xor-int/2addr v0, v2

    .line 1965
    invoke-virtual {p0, p0, p1, v2, v0}, Lcom/ebay/mobile/activities/CoreActivity;->startActivityFromGlobalOrPillNavigation(Landroid/app/Activity;Landroid/content/Intent;ZZ)V

    goto/16 :goto_0

    .line 1894
    :pswitch_2
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object p1

    const-class v1, Lcom/ebay/nautilus/domain/dagger/DomainComponent;

    invoke-interface {p1, v1}, Lcom/ebay/nautilus/kernel/content/EbayContext;->as(Ljava/lang/Class;)Lcom/ebay/nautilus/kernel/dagger/KernelComponent;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/dagger/DomainComponent;

    invoke-interface {p1}, Lcom/ebay/nautilus/domain/dagger/DomainComponent;->getSignOutHelper()Lcom/ebay/nautilus/domain/SignOutHelper;

    move-result-object p1

    .line 1895
    new-instance v1, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;

    const-string v5, "Menu"

    const-string v6, "Signout"

    invoke-direct {v1, v0, v5, v6}, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v3, v1}, Lcom/ebay/nautilus/domain/SignOutHelper;->signOut(ZLcom/ebay/nautilus/domain/analytics/model/SourceIdentification;)V

    .line 1898
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/ebay/mobile/activities/MainActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1899
    invoke-virtual {p1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1900
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->startActivity(Landroid/content/Intent;)V

    .line 1902
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->toggleMenus()V

    goto/16 :goto_0

    .line 1984
    :pswitch_3
    new-instance p1, Landroid/content/Intent;

    const-class v4, Lcom/ebay/mobile/activities/SellingActivity;

    invoke-direct {p1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1985
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "com.ebay.mobile.analytics.sid"

    .line 1986
    new-instance v4, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;

    const-string v5, "Menu"

    const-string/jumbo v6, "selling"

    invoke-direct {v4, v0, v5, v6}, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "navDrawerParcelable"

    .line 1988
    iget-object v1, p0, Lcom/ebay/mobile/activities/CoreActivity;->navDrawerParcelable:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1989
    invoke-virtual {p0, p0, p1, v2, v3}, Lcom/ebay/mobile/activities/CoreActivity;->startActivityFromGlobalOrPillNavigation(Landroid/app/Activity;Landroid/content/Intent;ZZ)V

    goto/16 :goto_0

    .line 1976
    :pswitch_4
    invoke-static {p0}, Lcom/ebay/mobile/activities/MyEbayLandingActivity;->getPurchasesActivityIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    .line 1977
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "com.ebay.mobile.analytics.sid"

    .line 1978
    new-instance v3, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;

    const-string v4, "Menu"

    const-string v5, "purchases"

    invoke-direct {v3, v0, v4, v5}, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "navDrawerParcelable"

    .line 1980
    iget-object v1, p0, Lcom/ebay/mobile/activities/CoreActivity;->navDrawerParcelable:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1981
    invoke-virtual {p0, p0, p1, v2, v2}, Lcom/ebay/mobile/activities/CoreActivity;->startActivityFromGlobalOrPillNavigation(Landroid/app/Activity;Landroid/content/Intent;ZZ)V

    goto/16 :goto_0

    .line 2001
    :pswitch_5
    new-instance p1, Landroid/content/Intent;

    const-class v4, Lcom/ebay/mobile/payments/wallet/WalletFragmentActivity;

    invoke-direct {p1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2002
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "com.ebay.mobile.analytics.sid"

    .line 2003
    new-instance v4, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;

    const-string v5, "Menu"

    const-string/jumbo v6, "wallet"

    invoke-direct {v4, v0, v5, v6}, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "navDrawerParcelable"

    .line 2005
    iget-object v1, p0, Lcom/ebay/mobile/activities/CoreActivity;->navDrawerParcelable:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "WELCOME_SCREEN_TAG"

    const-string v1, "WALLET_FIRST_SCREEN_TAG"

    .line 2006
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2007
    invoke-virtual {p0, p0, p1, v3, v2}, Lcom/ebay/mobile/activities/CoreActivity;->startActivityFromGlobalOrPillNavigation(Landroid/app/Activity;Landroid/content/Intent;ZZ)V

    goto/16 :goto_0

    .line 1934
    :pswitch_6
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/ebay/mobile/user/symban/SymbanActivity;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.ebay.mobile.analytics.sid"

    .line 1935
    new-instance v4, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;

    const-string v5, "Menu"

    const-string v6, "notifications"

    invoke-direct {v4, v0, v5, v6}, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "navDrawerParcelable"

    .line 1937
    iget-object v1, p0, Lcom/ebay/mobile/activities/CoreActivity;->navDrawerParcelable:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1938
    invoke-virtual {p0, p0, p1, v3, v2}, Lcom/ebay/mobile/activities/CoreActivity;->startActivityFromGlobalOrPillNavigation(Landroid/app/Activity;Landroid/content/Intent;ZZ)V

    goto/16 :goto_0

    .line 1906
    :pswitch_7
    new-instance p1, Lcom/ebay/mobile/connection/messages/MessagesIntentBuilder;

    invoke-direct {p1}, Lcom/ebay/mobile/connection/messages/MessagesIntentBuilder;-><init>()V

    new-instance v1, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;

    const-string v3, "Menu"

    const-string v4, "msgs"

    invoke-direct {v1, v0, v3, v4}, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1907
    invoke-virtual {p1, v1}, Lcom/ebay/mobile/connection/messages/MessagesIntentBuilder;->setSourceIdentification(Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;)Lcom/ebay/mobile/connection/messages/MessagesIntentBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/ebay/mobile/activities/CoreActivity;->navDrawerParcelable:Landroid/os/Parcelable;

    .line 1908
    invoke-virtual {p1, v0}, Lcom/ebay/mobile/connection/messages/MessagesIntentBuilder;->setNavigationDrawerState(Landroid/os/Parcelable;)Lcom/ebay/mobile/connection/messages/MessagesIntentBuilder;

    move-result-object p1

    .line 1909
    invoke-virtual {p1, p0}, Lcom/ebay/mobile/connection/messages/MessagesIntentBuilder;->build(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    .line 1910
    invoke-virtual {p0, p0, p1, v2, v2}, Lcom/ebay/mobile/activities/CoreActivity;->startActivityFromGlobalOrPillNavigation(Landroid/app/Activity;Landroid/content/Intent;ZZ)V

    goto/16 :goto_0

    .line 1921
    :pswitch_8
    new-instance p1, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;

    const-string v1, "Menu"

    const-string v4, "interests"

    invoke-direct {p1, v0, v1, v4}, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1922
    new-instance v0, Lcom/ebay/mobile/browse/interests/InterestsIntentBuilder;

    iget-object v1, p0, Lcom/ebay/mobile/activities/CoreActivity;->interestsBrowseNodeId:Ljava/lang/String;

    invoke-direct {v0, p0, p1, v1}, Lcom/ebay/mobile/browse/interests/InterestsIntentBuilder;-><init>(Landroid/content/Context;Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;Ljava/lang/String;)V

    .line 1923
    invoke-virtual {v0}, Lcom/ebay/mobile/browse/interests/InterestsIntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    .line 1924
    invoke-virtual {p0, p0, p1, v2, v3}, Lcom/ebay/mobile/activities/CoreActivity;->startActivityFromGlobalOrPillNavigation(Landroid/app/Activity;Landroid/content/Intent;ZZ)V

    goto/16 :goto_0

    .line 1950
    :pswitch_9
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/ebay/mobile/activities/MainActivity;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1951
    invoke-virtual {p1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "com.ebay.mobile.analytics.sid"

    .line 1952
    new-instance v3, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;

    const-string v4, "Menu"

    const-string v5, "home"

    invoke-direct {v3, v0, v4, v5}, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "navDrawerParcelable"

    .line 1954
    iget-object v1, p0, Lcom/ebay/mobile/activities/CoreActivity;->navDrawerParcelable:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1955
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->startActivity(Landroid/content/Intent;)V

    const p1, 0x7f010019

    const v0, 0x7f01002e

    .line 1956
    invoke-virtual {p0, p1, v0}, Lcom/ebay/mobile/activities/CoreActivity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 1993
    :pswitch_a
    new-instance p1, Landroid/content/Intent;

    const-class v4, Lcom/ebay/mobile/following/BrowseFollowingActivity;

    invoke-direct {p1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1994
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "com.ebay.mobile.analytics.sid"

    .line 1995
    new-instance v4, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;

    const-string v5, "Menu"

    const-string v6, "following"

    invoke-direct {v4, v0, v5, v6}, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "navDrawerParcelable"

    .line 1997
    iget-object v1, p0, Lcom/ebay/mobile/activities/CoreActivity;->navDrawerParcelable:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1998
    invoke-virtual {p0, p0, p1, v2, v3}, Lcom/ebay/mobile/activities/CoreActivity;->startActivityFromGlobalOrPillNavigation(Landroid/app/Activity;Landroid/content/Intent;ZZ)V

    goto/16 :goto_0

    .line 2010
    :pswitch_b
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/ebay/mobile/plus/PlusActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2011
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "navDrawerParcelable"

    .line 2012
    iget-object v1, p0, Lcom/ebay/mobile/activities/CoreActivity;->navDrawerParcelable:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2013
    invoke-virtual {p0, p0, p1, v2, v2}, Lcom/ebay/mobile/activities/CoreActivity;->startActivityFromGlobalOrPillNavigation(Landroid/app/Activity;Landroid/content/Intent;ZZ)V

    goto/16 :goto_0

    .line 1927
    :pswitch_c
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/ebay/mobile/deals/BrowseDealsActivity;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.ebay.mobile.analytics.sid"

    .line 1928
    new-instance v4, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;

    const-string v5, "Menu"

    const-string v6, "Deals"

    invoke-direct {v4, v0, v5, v6}, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "navDrawerParcelable"

    .line 1930
    iget-object v1, p0, Lcom/ebay/mobile/activities/CoreActivity;->navDrawerParcelable:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1931
    invoke-virtual {p0, p0, p1, v2, v3}, Lcom/ebay/mobile/activities/CoreActivity;->startActivityFromGlobalOrPillNavigation(Landroid/app/Activity;Landroid/content/Intent;ZZ)V

    goto :goto_0

    .line 1913
    :pswitch_d
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.ebay.mobile.analytics.sid"

    .line 1915
    new-instance v3, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;

    const-string v4, "Menu"

    const-string v5, "browsecat"

    invoke-direct {v3, v0, v4, v5}, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "navDrawerParcelable"

    .line 1917
    iget-object v1, p0, Lcom/ebay/mobile/activities/CoreActivity;->navDrawerParcelable:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1918
    invoke-direct {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->startActivityWithHome(Landroid/content/Intent;)V

    goto :goto_0

    .line 1968
    :pswitch_e
    invoke-static {p0}, Lcom/ebay/mobile/activities/MyEbayLandingActivity;->getBidsOffersActivityIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    .line 1969
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "com.ebay.mobile.analytics.sid"

    .line 1970
    new-instance v3, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;

    const-string v4, "Menu"

    const-string v5, "buying"

    invoke-direct {v3, v0, v4, v5}, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "navDrawerParcelable"

    .line 1972
    iget-object v1, p0, Lcom/ebay/mobile/activities/CoreActivity;->navDrawerParcelable:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1973
    invoke-virtual {p0, p0, p1, v2, v2}, Lcom/ebay/mobile/activities/CoreActivity;->startActivityFromGlobalOrPillNavigation(Landroid/app/Activity;Landroid/content/Intent;ZZ)V

    goto :goto_0

    .line 1941
    :cond_2
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/ebay/mobile/settings/SettingsActivity;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.ebay.mobile.analytics.sid"

    .line 1942
    new-instance v4, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;

    const-string v5, "Menu"

    const-string/jumbo v6, "setting"

    invoke-direct {v4, v0, v5, v6}, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1944
    invoke-virtual {p0, p0, p1, v2, v3}, Lcom/ebay/mobile/activities/CoreActivity;->startActivityFromGlobalOrPillNavigation(Landroid/app/Activity;Landroid/content/Intent;ZZ)V

    goto :goto_0

    .line 1947
    :cond_3
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->handleHelpSelected()V

    :goto_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0a4f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f0a0a52
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 311
    invoke-super {p0, p1}, Lcom/ebay/nautilus/shell/app/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 315
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getNavigationDrawer()Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    .line 316
    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 318
    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(I)V

    .line 319
    iget-object p1, p0, Lcom/ebay/mobile/activities/CoreActivity;->drawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    if-eqz p1, :cond_0

    .line 320
    iget-object p1, p0, Lcom/ebay/mobile/activities/CoreActivity;->drawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->syncState()V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 1523
    iget v0, p0, Lcom/ebay/mobile/activities/CoreActivity;->toolbarFlags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 1524
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->finishAfterTransition()V

    .line 1526
    :cond_0
    iget v0, p0, Lcom/ebay/mobile/activities/CoreActivity;->toolbarFlags:I

    and-int/lit16 v0, v0, 0x2000

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/ebay/mobile/activities/CoreActivity;->toolbarFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ebay/mobile/activities/CoreActivity;->drawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ebay/mobile/activities/CoreActivity;->drawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    .line 1528
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    return v2

    .line 1532
    :cond_2
    invoke-super {p0, p1}, Lcom/ebay/nautilus/shell/app/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    .line 1536
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v3, 0x7f0a09c0

    if-eq v0, v3, :cond_7

    const v2, 0x7f0a09cc

    if-eq v0, v2, :cond_5

    const v2, 0x7f0a09cf

    if-eq v0, v2, :cond_4

    goto :goto_1

    .line 1539
    :cond_4
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getCartViewClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1541
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_1

    .line 1544
    :cond_5
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getSearchViewClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1546
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_6
    :goto_1
    return v1

    .line 1549
    :cond_7
    invoke-direct {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getHelpViewClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    .line 1550
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return v2
.end method

.method protected onPause()V
    .locals 1

    .line 272
    invoke-super {p0}, Lcom/ebay/nautilus/shell/app/BaseActivity;->onPause()V

    const/4 v0, 0x0

    .line 273
    iput-boolean v0, p0, Lcom/ebay/mobile/activities/CoreActivity;->isResumed:Z

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 352
    invoke-super {p0, p1}, Lcom/ebay/nautilus/shell/app/BaseActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 354
    iget p1, p0, Lcom/ebay/mobile/activities/CoreActivity;->toolbarFlags:I

    and-int/lit8 p1, p1, 0x40

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 357
    :goto_0
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getPrimaryToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 359
    invoke-virtual {p0, v2}, Lcom/ebay/mobile/activities/CoreActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    :cond_1
    if-eqz p1, :cond_3

    .line 364
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getNavigationDrawer()Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 367
    new-instance v9, Lcom/ebay/mobile/activities/CoreActivity$2;

    const v7, 0x7f12073e

    const v8, 0x7f12033b

    move-object v3, v9

    move-object v4, p0

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v3 .. v8}, Lcom/ebay/mobile/activities/CoreActivity$2;-><init>(Lcom/ebay/mobile/activities/CoreActivity;Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;II)V

    iput-object v9, p0, Lcom/ebay/mobile/activities/CoreActivity;->drawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    .line 405
    iget-object v3, p0, Lcom/ebay/mobile/activities/CoreActivity;->drawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    invoke-virtual {p1, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->addDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    .line 406
    iget-object p1, p0, Lcom/ebay/mobile/activities/CoreActivity;->drawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->setDrawerIndicatorEnabled(Z)V

    .line 408
    iget-object p1, p0, Lcom/ebay/mobile/activities/CoreActivity;->drawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->syncState()V

    .line 411
    :cond_2
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getNavigationView()Lcom/google/android/material/navigation/NavigationView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 414
    invoke-virtual {p1}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 417
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getNavigationId()I

    move-result v3

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 419
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 425
    :cond_3
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 428
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 429
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 430
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 431
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 433
    invoke-direct {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->updateActionBar(Landroidx/appcompat/app/ActionBar;)V

    if-eqz v2, :cond_7

    .line 438
    invoke-virtual {v2}, Landroidx/appcompat/widget/Toolbar;->getChildCount()I

    move-result p1

    :goto_1
    if-ge v0, p1, :cond_7

    .line 442
    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 443
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_6

    .line 445
    instance-of v3, v1, Landroid/widget/ImageButton;

    if-eqz v3, :cond_4

    const v3, 0x7f0a077e

    .line 447
    invoke-virtual {v1, v3}, Landroid/view/View;->setId(I)V

    goto :goto_2

    .line 448
    :cond_4
    instance-of v3, v1, Landroid/widget/TextView;

    if-eqz v3, :cond_5

    const v3, 0x7f0a131d

    .line 451
    invoke-virtual {v1, v3}, Landroid/view/View;->setId(I)V

    .line 452
    iget-object v3, p0, Lcom/ebay/mobile/activities/CoreActivity;->titleContentDescription:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 453
    iget-object v3, p0, Lcom/ebay/mobile/activities/CoreActivity;->titleContentDescription:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 455
    :cond_5
    instance-of v3, v1, Landroid/widget/ImageView;

    if-eqz v3, :cond_6

    const v3, 0x7f0a0988

    .line 458
    invoke-virtual {v1, v3}, Landroid/view/View;->setId(I)V

    .line 459
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f12023b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 462
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 463
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0701ca

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    :cond_6
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 11

    .line 1424
    invoke-super {p0, p1}, Lcom/ebay/nautilus/shell/app/BaseActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_a

    const v1, 0x7f0a09cf

    .line 1429
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_6

    .line 1432
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v4

    .line 1433
    iget v5, p0, Lcom/ebay/mobile/activities/CoreActivity;->toolbarFlags:I

    and-int/lit16 v5, v5, 0x100

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 1434
    :goto_0
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1435
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    if-eqz v5, :cond_6

    .line 1438
    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 1441
    const-class v6, Lcom/ebay/mobile/dagger/AppComponent;

    invoke-interface {v4, v6}, Lcom/ebay/nautilus/kernel/content/EbayContext;->as(Ljava/lang/Class;)Lcom/ebay/nautilus/kernel/dagger/KernelComponent;

    move-result-object v4

    check-cast v4, Lcom/ebay/mobile/dagger/AppComponent;

    invoke-interface {v4}, Lcom/ebay/mobile/dagger/AppComponent;->getPreferences()Lcom/ebay/common/Preferences;

    move-result-object v4

    .line 1442
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getUserContext()Lcom/ebay/nautilus/domain/content/dm/UserContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ebay/nautilus/domain/content/dm/UserContext;->isSignedIn()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1448
    invoke-static {}, Lcom/ebay/nautilus/domain/content/dm/payments/ShoppingCartDataManager;->getBuyableItemCount()I

    move-result v7

    const/4 v8, -0x1

    .line 1449
    invoke-virtual {v4, v8}, Lcom/ebay/common/Preferences;->getBuyableItemCount(I)I

    move-result v8

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    if-lez v7, :cond_4

    const v9, 0x7f0a003b

    .line 1455
    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_2

    .line 1458
    invoke-static {p0, v7}, Lcom/ebay/mobile/util/Util;->countAsString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1459
    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    if-le v7, v8, :cond_3

    if-ltz v8, :cond_3

    const v8, 0x7f0a003c

    .line 1464
    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_3

    const v9, 0x7f010026

    .line 1466
    invoke-static {p0, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1469
    :cond_3
    invoke-direct {p0, v5, v7}, Lcom/ebay/mobile/activities/CoreActivity;->setCartAccessibilityText(Landroid/view/View;I)V

    goto :goto_2

    :cond_4
    if-gez v7, :cond_5

    .line 1478
    sget-object v8, Lcom/ebay/nautilus/domain/content/dm/payments/ShoppingCartDataManager;->KEY:Lcom/ebay/nautilus/domain/content/dm/payments/ShoppingCartDataManager$KeyParams;

    .line 1479
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getDataManagerContainer()Lcom/ebay/nautilus/shell/app/DataManagerContainer;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 1482
    invoke-virtual {v9, v8}, Lcom/ebay/nautilus/shell/app/DataManagerContainer;->delete(Lcom/ebay/nautilus/domain/content/DataManager$DataManagerKeyParams;)V

    .line 1483
    new-instance v10, Lcom/ebay/mobile/activities/CoreActivity$ShoppingCartCountChangeObserver;

    invoke-direct {v10, p0, v1}, Lcom/ebay/mobile/activities/CoreActivity$ShoppingCartCountChangeObserver;-><init>(Lcom/ebay/mobile/activities/CoreActivity;Landroid/view/MenuItem;)V

    .line 1484
    invoke-virtual {v9, v8, v10}, Lcom/ebay/nautilus/shell/app/DataManagerContainer;->initialize(Lcom/ebay/nautilus/domain/content/DataManager$DataManagerKeyParams;Ljava/lang/Object;)Lcom/ebay/nautilus/domain/content/DataManager;

    .line 1488
    :cond_5
    :goto_2
    new-instance v8, Lcom/ebay/mobile/activities/-$$Lambda$CoreActivity$wfES6_pcwMqS7e3dFQRw0Z4h_Vc;

    invoke-direct {v8, p0, v1}, Lcom/ebay/mobile/activities/-$$Lambda$CoreActivity$wfES6_pcwMqS7e3dFQRw0Z4h_Vc;-><init>(Lcom/ebay/mobile/activities/CoreActivity;Landroid/view/MenuItem;)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v6, :cond_6

    .line 1492
    invoke-virtual {v4, v7}, Lcom/ebay/common/Preferences;->setBuyableItemCount(I)V

    :cond_6
    const v1, 0x7f0a09cc

    .line 1498
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 1501
    iget v4, p0, Lcom/ebay/mobile/activities/CoreActivity;->toolbarFlags:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    goto :goto_3

    :cond_7
    const/4 v4, 0x0

    .line 1502
    :goto_3
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1503
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_8
    const v1, 0x7f0a09c0

    .line 1507
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 1510
    iget v1, p0, Lcom/ebay/mobile/activities/CoreActivity;->toolbarFlags:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->isHelpAvailable()Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_4

    :cond_9
    const/4 v2, 0x0

    .line 1511
    :goto_4
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1512
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1513
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f120596

    invoke-virtual {p0, v2}, Lcom/ebay/mobile/activities/CoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_a
    return v0
.end method

.method protected onResume()V
    .locals 3

    .line 233
    invoke-super {p0}, Lcom/ebay/nautilus/shell/app/BaseActivity;->onResume()V

    const/4 v0, 0x1

    .line 234
    iput-boolean v0, p0, Lcom/ebay/mobile/activities/CoreActivity;->isResumed:Z

    const/4 v0, 0x0

    .line 235
    iput-boolean v0, p0, Lcom/ebay/mobile/activities/CoreActivity;->cartButtonClicked:Z

    .line 237
    iget-object v1, p0, Lcom/ebay/mobile/activities/CoreActivity;->symbanDataManager:Lcom/ebay/nautilus/domain/content/dm/symban/SymbanDataManager;

    const v2, 0x7f0a0a58

    if-nez v1, :cond_0

    .line 239
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getNavigationView()Lcom/google/android/material/navigation/NavigationView;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ebay/mobile/activities/CoreActivity;->updateMenuBadge(ILcom/google/android/material/navigation/NavigationView;I)V

    goto :goto_0

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/activities/CoreActivity;->symbanDataManager:Lcom/ebay/nautilus/domain/content/dm/symban/SymbanDataManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/content/dm/symban/SymbanDataManager;->getCountOrDefault(I)I

    move-result v0

    if-gez v0, :cond_1

    .line 244
    iget-object v1, p0, Lcom/ebay/mobile/activities/CoreActivity;->symbanUpdateListener:Lcom/ebay/mobile/activities/CoreActivity$SymbanUpdateListener;

    if-eqz v1, :cond_1

    .line 245
    iget-object v0, p0, Lcom/ebay/mobile/activities/CoreActivity;->symbanDataManager:Lcom/ebay/nautilus/domain/content/dm/symban/SymbanDataManager;

    iget-object v1, p0, Lcom/ebay/mobile/activities/CoreActivity;->symbanUpdateListener:Lcom/ebay/mobile/activities/CoreActivity$SymbanUpdateListener;

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/content/dm/symban/SymbanDataManager;->loadCount(Lcom/ebay/nautilus/domain/content/dm/symban/SymbanDataManager$Observer;)V

    goto :goto_0

    .line 247
    :cond_1
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getNavigationView()Lcom/google/android/material/navigation/NavigationView;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ebay/mobile/activities/CoreActivity;->updateMenuBadge(ILcom/google/android/material/navigation/NavigationView;I)V

    .line 250
    :goto_0
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->invalidateNavigationMenu()V

    .line 252
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getNavigationView()Lcom/google/android/material/navigation/NavigationView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 254
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getNavigationId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/navigation/NavigationView;->setCheckedItem(I)V

    .line 256
    :cond_2
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->invalidateOptionsMenu()V

    .line 258
    iget-object v0, p0, Lcom/ebay/mobile/activities/CoreActivity;->activityResult:Lcom/ebay/mobile/activities/ActivityResult;

    if-eqz v0, :cond_3

    .line 260
    iget-object v0, p0, Lcom/ebay/mobile/activities/CoreActivity;->activityResult:Lcom/ebay/mobile/activities/ActivityResult;

    iget v0, v0, Lcom/ebay/mobile/activities/ActivityResult;->requestCode:I

    iget-object v1, p0, Lcom/ebay/mobile/activities/CoreActivity;->activityResult:Lcom/ebay/mobile/activities/ActivityResult;

    iget v1, v1, Lcom/ebay/mobile/activities/ActivityResult;->resultCode:I

    iget-object v2, p0, Lcom/ebay/mobile/activities/CoreActivity;->activityResult:Lcom/ebay/mobile/activities/ActivityResult;

    iget-object v2, v2, Lcom/ebay/mobile/activities/ActivityResult;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1, v2}, Lcom/ebay/mobile/activities/CoreActivity;->onActivityResultSafe(IILandroid/content/Intent;)V

    const/4 v0, 0x0

    .line 261
    iput-object v0, p0, Lcom/ebay/mobile/activities/CoreActivity;->activityResult:Lcom/ebay/mobile/activities/ActivityResult;

    .line 264
    :cond_3
    invoke-static {p0}, Lcom/ebay/mobile/mktgtech/SyncUserOnDeviceService;->start(Landroid/content/Context;)V

    .line 266
    invoke-direct {p0}, Lcom/ebay/mobile/activities/CoreActivity;->adjustAppBarForAccessibility()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "navigationState"

    .line 327
    iget-boolean v1, p0, Lcom/ebay/mobile/activities/CoreActivity;->isNavigationProfileShowing:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 329
    invoke-super {p0, p1}, Lcom/ebay/nautilus/shell/app/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSearchRequested()Z
    .locals 2

    .line 2351
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ebay/mobile/search/landing/SearchLandingPageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/CoreActivity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    return v0
.end method

.method protected onStop()V
    .locals 2

    .line 1350
    iget-object v0, p0, Lcom/ebay/mobile/activities/CoreActivity;->messageFoldersDataManager:Lcom/ebay/nautilus/domain/content/dm/messages/MessageFoldersDataManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/activities/CoreActivity;->messageFoldersObserver:Lcom/ebay/nautilus/domain/content/dm/messages/MessageFoldersDataManager$Observer;

    if-eqz v0, :cond_0

    .line 1352
    iget-object v0, p0, Lcom/ebay/mobile/activities/CoreActivity;->messageFoldersDataManager:Lcom/ebay/nautilus/domain/content/dm/messages/MessageFoldersDataManager;

    iget-object v1, p0, Lcom/ebay/mobile/activities/CoreActivity;->messageFoldersObserver:Lcom/ebay/nautilus/domain/content/dm/messages/MessageFoldersDataManager$Observer;

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/content/dm/messages/MessageFoldersDataManager;->unregisterObserver(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 1353
    iput-object v0, p0, Lcom/ebay/mobile/activities/CoreActivity;->messageFoldersObserver:Lcom/ebay/nautilus/domain/content/dm/messages/MessageFoldersDataManager$Observer;

    .line 1354
    iput-object v0, p0, Lcom/ebay/mobile/activities/CoreActivity;->messageFoldersDataManager:Lcom/ebay/nautilus/domain/content/dm/messages/MessageFoldersDataManager;

    .line 1357
    :cond_0
    invoke-super {p0}, Lcom/ebay/nautilus/shell/app/BaseActivity;->onStop()V

    return-void
.end method

.method public onSupportNavigateUp()Z
    .locals 3

    .line 1594
    iget-object v0, p0, Lcom/ebay/mobile/activities/CoreActivity;->upIntentOverride:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/activities/CoreActivity;->upIntentOverride:Landroid/content/Intent;

    goto :goto_0

    .line 1596
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getSupportParentActivityIntent()Landroid/content/Intent;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 1601
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->onBackPressed()V

    return v1

    .line 1605
    :cond_1
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/CoreActivity;->supportShouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1607
    invoke-static {p0}, Landroidx/core/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroidx/core/app/TaskStackBuilder;

    move-result-object v0

    .line 1608
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/CoreActivity;->onCreateSupportNavigateUpTaskStack(Landroidx/core/app/TaskStackBuilder;)V

    .line 1609
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/CoreActivity;->onPrepareSupportNavigateUpTaskStack(Landroidx/core/app/TaskStackBuilder;)V

    .line 1610
    invoke-virtual {v0}, Landroidx/core/app/TaskStackBuilder;->startActivities()V

    .line 1613
    :try_start_0
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->finishAffinity()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1619
    :catch_0
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->finish()V

    goto :goto_1

    :cond_2
    const/high16 v2, 0x4000000

    .line 1626
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1627
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/CoreActivity;->startActivity(Landroid/content/Intent;)V

    .line 1628
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->finish()V

    :goto_1
    return v1
.end method

.method protected removeToolbarFlags(I)V
    .locals 2

    .line 624
    iget v0, p0, Lcom/ebay/mobile/activities/CoreActivity;->toolbarFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/ebay/mobile/activities/CoreActivity;->toolbarFlags:I

    and-int/lit16 v0, p1, 0x1000

    if-nez v0, :cond_0

    and-int/lit16 v0, p1, 0x800

    if-nez v0, :cond_0

    and-int/lit16 p1, p1, 0x2000

    if-eqz p1, :cond_1

    .line 628
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->updateActionBar(Landroidx/appcompat/app/ActionBar;)V

    :cond_1
    return-void
.end method

.method protected resetStatusBarColor()V
    .locals 2

    .line 2328
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    .line 2330
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    const/high16 v1, -0x80000000

    .line 2331
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const v1, 0x7f040163

    .line 2332
    invoke-static {p0, v1}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    return-void
.end method

.method public setAppBarExpanded(ZZ)V
    .locals 1

    .line 710
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getScrollingAppBar()Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 712
    invoke-virtual {v0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    :cond_0
    return-void
.end method

.method public setContentView(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    .line 1260
    iget v0, p0, Lcom/ebay/mobile/activities/CoreActivity;->toolbarFlags:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/activities/CoreActivity;->toolbarOrder:[I

    array-length v0, v0

    if-lez v0, :cond_0

    .line 1263
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->constructToolbars()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a045f

    .line 1264
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 1266
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, p1, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1270
    :cond_1
    :goto_0
    iget v2, p0, Lcom/ebay/mobile/activities/CoreActivity;->toolbarFlags:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_3

    .line 1272
    invoke-direct {p0}, Lcom/ebay/mobile/activities/CoreActivity;->updateAndCreateDrawerLayout()Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object v2

    const v3, 0x7f0a058c

    .line 1273
    invoke-virtual {v2, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->setId(I)V

    if-nez v0, :cond_2

    .line 1276
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p1, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_1

    :cond_2
    const/4 v1, -0x1

    .line 1278
    invoke-virtual {v2, v0, v1, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->addView(Landroid/view/View;II)V

    .line 1281
    :goto_1
    invoke-direct {p0, v2}, Lcom/ebay/mobile/activities/CoreActivity;->addNavigationView(Landroidx/drawerlayout/widget/DrawerLayout;)V

    move-object v0, v2

    goto :goto_2

    .line 1285
    :cond_3
    iget v2, p0, Lcom/ebay/mobile/activities/CoreActivity;->toolbarFlags:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_4

    .line 1286
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->resetStatusBarColor()V

    :cond_4
    :goto_2
    if-eqz v0, :cond_5

    .line 1289
    invoke-super {p0, v0}, Lcom/ebay/nautilus/shell/app/BaseActivity;->setContentView(Landroid/view/View;)V

    goto :goto_3

    .line 1291
    :cond_5
    invoke-super {p0, p1}, Lcom/ebay/nautilus/shell/app/BaseActivity;->setContentView(I)V

    :goto_3
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 3

    .line 1066
    iget v0, p0, Lcom/ebay/mobile/activities/CoreActivity;->toolbarFlags:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/activities/CoreActivity;->toolbarOrder:[I

    array-length v0, v0

    if-lez v0, :cond_0

    .line 1069
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->constructToolbars()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a045f

    .line 1070
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 1074
    invoke-virtual {v2, p1, v1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    move-object p1, v0

    .line 1080
    :cond_0
    iget v0, p0, Lcom/ebay/mobile/activities/CoreActivity;->toolbarFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_1

    .line 1082
    invoke-direct {p0}, Lcom/ebay/mobile/activities/CoreActivity;->updateAndCreateDrawerLayout()Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object v0

    const v2, 0x7f0a058c

    .line 1083
    invoke-virtual {v0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->setId(I)V

    .line 1084
    invoke-virtual {v0, p1, v1, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->addView(Landroid/view/View;II)V

    .line 1086
    invoke-direct {p0, v0}, Lcom/ebay/mobile/activities/CoreActivity;->addNavigationView(Landroidx/drawerlayout/widget/DrawerLayout;)V

    move-object p1, v0

    goto :goto_0

    .line 1090
    :cond_1
    iget v0, p0, Lcom/ebay/mobile/activities/CoreActivity;->toolbarFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 1091
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->resetStatusBarColor()V

    .line 1093
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/ebay/nautilus/shell/app/BaseActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method protected final setShowWarnings(Z)V
    .locals 1

    .line 2253
    iget-object v0, p0, Lcom/ebay/mobile/activities/CoreActivity;->messageHelper:Lcom/ebay/mobile/activities/CoreActivity$MessageHelper;

    invoke-virtual {v0, p1}, Lcom/ebay/mobile/activities/CoreActivity$MessageHelper;->setShowWarnings(Z)V

    return-void
.end method

.method public setTitleContentDescription(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    .line 2366
    :cond_0
    iput-object p1, p0, Lcom/ebay/mobile/activities/CoreActivity;->titleContentDescription:Ljava/lang/String;

    .line 2367
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getPrimaryToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    if-eqz v0, :cond_1

    const v1, 0x7f0a131d

    .line 2370
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 2372
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method protected setToolbarFlags(I)V
    .locals 0

    .line 589
    iput p1, p0, Lcom/ebay/mobile/activities/CoreActivity;->toolbarFlags:I

    return-void
.end method

.method protected setToolbarOrder([I)V
    .locals 0

    .line 639
    iput-object p1, p0, Lcom/ebay/mobile/activities/CoreActivity;->toolbarOrder:[I

    return-void
.end method

.method public final showMessage(ILcom/ebay/nautilus/kernel/content/ResultStatus;)V
    .locals 1

    const/4 v0, 0x0

    .line 2265
    invoke-virtual {p0, v0, p1, p2}, Lcom/ebay/mobile/activities/CoreActivity;->showMessage(Landroidx/fragment/app/Fragment;ILcom/ebay/nautilus/kernel/content/ResultStatus;)V

    return-void
.end method

.method public showMessage(Landroidx/fragment/app/Fragment;ILcom/ebay/nautilus/kernel/content/ResultStatus;)V
    .locals 1

    const/4 v0, 0x0

    .line 2278
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/ebay/mobile/activities/CoreActivity;->showMessage(Landroidx/fragment/app/Fragment;ILcom/ebay/nautilus/kernel/content/ResultStatus;Ljava/lang/String;)V

    return-void
.end method

.method public showMessage(Landroidx/fragment/app/Fragment;ILcom/ebay/nautilus/kernel/content/ResultStatus;Ljava/lang/String;)V
    .locals 6

    .line 2292
    iget-object v0, p0, Lcom/ebay/mobile/activities/CoreActivity;->messageHelper:Lcom/ebay/mobile/activities/CoreActivity$MessageHelper;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/ebay/mobile/activities/CoreActivity$MessageHelper;->showMessage(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/Fragment;ILcom/ebay/nautilus/kernel/content/ResultStatus;Ljava/lang/String;)V

    return-void
.end method

.method protected showMessageAsBar(Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;)Z
    .locals 2

    const-string v0, "network"

    .line 2304
    invoke-interface {p1}, Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2305
    invoke-static {p1}, Lcom/ebay/nautilus/domain/content/InternalDomainError;->isNoNetworkMessage(Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected showSnackBar(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Integer;Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2237
    invoke-static {p1, p2, p5}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p2

    .line 2238
    invoke-virtual {p2}, Lcom/google/android/material/snackbar/Snackbar;->getView()Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5, p4}, Landroid/view/View;->setId(I)V

    if-eqz p6, :cond_0

    if-eqz p7, :cond_0

    .line 2240
    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-virtual {p2, p4, p7}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    .line 2242
    :cond_0
    invoke-virtual {p1, p3}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 2243
    invoke-virtual {p2}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void
.end method

.method public startActivityFromGlobalOrPillNavigation(Landroid/app/Activity;Landroid/content/Intent;ZZ)V
    .locals 2

    if-eqz p4, :cond_2

    .line 2061
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getUserContext()Lcom/ebay/nautilus/domain/content/dm/UserContext;

    move-result-object p4

    invoke-virtual {p4}, Lcom/ebay/nautilus/domain/content/dm/UserContext;->isSignedIn()Z

    move-result p4

    if-nez p4, :cond_2

    const/4 p4, 0x0

    .line 2063
    invoke-static {p4, p1}, Lcom/ebay/mobile/connection/idsignin/SignInActivity;->getIntentForSignIn(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p4

    if-eqz p2, :cond_0

    const-string v0, "com.ebay.mobile.analytics.sid"

    .line 2065
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.ebay.mobile.analytics.sid"

    .line 2067
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    const-string v1, "com.ebay.mobile.analytics.sid"

    .line 2068
    invoke-virtual {p4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2070
    :cond_0
    sget-object v0, Lcom/ebay/mobile/connection/idsignin/SignInActivity;->EXTRA_FROM_HOME:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2073
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_1

    .line 2076
    new-instance p3, Landroid/content/Intent;

    const-class v1, Lcom/ebay/mobile/activities/MainActivity;

    invoke-direct {p3, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x10008000

    .line 2077
    invoke-virtual {p3, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2078
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2080
    :cond_1
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2082
    sget-object p2, Lcom/ebay/mobile/connection/idsignin/SignInActivity;->EXTRA_REDIRECT_INTENTS:Ljava/lang/String;

    invoke-virtual {p4, p2, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 2083
    invoke-virtual {p1, p4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    .line 2088
    invoke-direct {p0, p2}, Lcom/ebay/mobile/activities/CoreActivity;->startActivityWithHome(Landroid/content/Intent;)V

    goto :goto_0

    .line 2090
    :cond_3
    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method protected toggleMenus()V
    .locals 8

    .line 2115
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getNavigationView()Lcom/google/android/material/navigation/NavigationView;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2119
    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/Menu;->clear()V

    const/4 v1, 0x0

    .line 2120
    invoke-virtual {v0, v1}, Lcom/google/android/material/navigation/NavigationView;->getHeaderView(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a12f6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckedTextView;

    .line 2122
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getAccessibilityManager()Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 2123
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_1

    .line 2124
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 2127
    :goto_1
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v7

    if-eqz v5, :cond_2

    const/16 v5, 0x4000

    .line 2130
    invoke-virtual {v7, v5}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 2131
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2132
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityEvent;->getClassName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2133
    invoke-virtual {v7, v4}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 2138
    :cond_2
    iget-boolean v5, p0, Lcom/ebay/mobile/activities/CoreActivity;->isNavigationProfileShowing:Z

    if-eqz v5, :cond_3

    .line 2140
    iput-boolean v1, p0, Lcom/ebay/mobile/activities/CoreActivity;->isNavigationProfileShowing:Z

    .line 2142
    invoke-direct {p0, v0}, Lcom/ebay/mobile/activities/CoreActivity;->inflateNavigationMenu(Lcom/google/android/material/navigation/NavigationView;)V

    if-eqz v6, :cond_4

    .line 2146
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    const v1, 0x7f12073e

    invoke-virtual {p0, v1}, Lcom/ebay/mobile/activities/CoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2147
    invoke-virtual {v3, v7}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_2

    .line 2152
    :cond_3
    iput-boolean v4, p0, Lcom/ebay/mobile/activities/CoreActivity;->isNavigationProfileShowing:Z

    .line 2154
    invoke-direct {p0, v0}, Lcom/ebay/mobile/activities/CoreActivity;->inflateProfileNavigationMenu(Lcom/google/android/material/navigation/NavigationView;)V

    if-eqz v6, :cond_4

    const v0, 0x7f0a0a5f

    .line 2159
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/CoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2160
    new-instance v1, Lcom/ebay/mobile/activities/-$$Lambda$CoreActivity$EWA0RmnjFkQ-MajycMJyGyGria0;

    invoke-direct {v1, v0}, Lcom/ebay/mobile/activities/-$$Lambda$CoreActivity$EWA0RmnjFkQ-MajycMJyGyGria0;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 2167
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    const v1, 0x7f12013e

    invoke-virtual {p0, v1}, Lcom/ebay/mobile/activities/CoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2168
    invoke-virtual {v3, v7}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_4
    :goto_2
    if-eqz v2, :cond_5

    .line 2174
    iget-boolean v0, p0, Lcom/ebay/mobile/activities/CoreActivity;->isNavigationProfileShowing:Z

    invoke-virtual {v2, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :cond_5
    return-void
.end method

.method protected updateMenuBadge(ILcom/google/android/material/navigation/NavigationView;I)V
    .locals 6
    .param p2    # Lcom/google/android/material/navigation/NavigationView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p2, :cond_0

    return-void

    .line 1656
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    .line 1661
    :cond_1
    invoke-static {p0, p1}, Lcom/ebay/mobile/util/Util;->countAsString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 1663
    invoke-interface {p2, p3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 1666
    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    const v3, 0x7f0a0a51

    .line 1669
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-lez p1, :cond_2

    .line 1672
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1673
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    .line 1676
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1680
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getNavigationId()I

    move-result v0

    const/4 v1, 0x1

    const/16 v3, 0x17

    const v4, 0x7f0a0a58

    if-ne p3, v4, :cond_6

    .line 1685
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 1687
    invoke-direct {p0, v5}, Lcom/ebay/mobile/activities/CoreActivity;->updateActionBar(Landroidx/appcompat/app/ActionBar;)V

    .line 1689
    :cond_4
    iput p1, p0, Lcom/ebay/mobile/activities/CoreActivity;->newNotificationsCount:I

    .line 1690
    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 1691
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt p2, v3, :cond_8

    const p2, 0x7f1200a8

    .line 1692
    invoke-virtual {p0, p2}, Lcom/ebay/mobile/activities/CoreActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget v3, p0, Lcom/ebay/mobile/activities/CoreActivity;->newNotificationsCount:I

    if-ne p3, v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    invoke-direct {p0, p1, p2, v3, v1}, Lcom/ebay/mobile/activities/CoreActivity;->setMenuItemContentDescription(Landroid/view/MenuItem;Ljava/lang/String;IZ)V

    goto :goto_3

    :cond_6
    const v4, 0x7f0a0a57

    if-ne p3, v4, :cond_8

    .line 1697
    iput p1, p0, Lcom/ebay/mobile/activities/CoreActivity;->newMessagesCount:I

    .line 1698
    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 1699
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt p2, v3, :cond_8

    const p2, 0x7f120774

    .line 1700
    invoke-virtual {p0, p2}, Lcom/ebay/mobile/activities/CoreActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget v3, p0, Lcom/ebay/mobile/activities/CoreActivity;->newMessagesCount:I

    if-ne p3, v0, :cond_7

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    :goto_2
    invoke-direct {p0, p1, p2, v3, v1}, Lcom/ebay/mobile/activities/CoreActivity;->setMenuItemContentDescription(Landroid/view/MenuItem;Ljava/lang/String;IZ)V

    :cond_8
    :goto_3
    return-void
.end method
