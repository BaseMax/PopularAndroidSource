.class public Lcab/snapp/passenger/units/main/MainView;
.super Landroidx/drawerlayout/widget/DrawerLayout;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/arch/protocol/BaseView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/drawerlayout/widget/DrawerLayout;",
        "Lcab/snapp/arch/protocol/BaseView<",
        "Lcab/snapp/passenger/units/main/d;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

.field b:Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetDialogFragment;

.field private c:Lcab/snapp/passenger/units/main/d;

.field contentGradientView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0367
    .end annotation
.end field

.field private d:Lcab/snapp/snappdialog/b;

.field private e:Lcab/snapp/snappdialog/b;

.field private f:Lcab/snapp/snappdialog/b;

.field firstServiceTypeItem:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a049c
    .end annotation
.end field

.field firstServiceTypeItemImageView:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a049d
    .end annotation
.end field

.field firstServiceTypeItemTextView:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a049e
    .end annotation
.end field

.field footerContainerView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a036c
    .end annotation
.end field

.field private g:Lcab/snapp/passenger/f/r;

.field headerContainerView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0378
    .end annotation
.end field

.field headerGradientView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a037a
    .end annotation
.end field

.field locationSelectorDotIv:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0364
    .end annotation
.end field

.field locationSelectorImageButton:Landroid/widget/ImageButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0396
    .end annotation
.end field

.field locationSelectorShadowIv:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0366
    .end annotation
.end field

.field mapBoxCopyrightTv:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0399
    .end annotation
.end field

.field mapLayout:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0397
    .end annotation
.end field

.field myLocationFab:Lcab/snapp/snappuikit/SnappFloatingActionButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a039b
    .end annotation
.end field

.field secondServiceTypeItem:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04a0
    .end annotation
.end field

.field secondServiceTypeItemImageView:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04a1
    .end annotation
.end field

.field secondServiceTypeItemTextView:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04a2
    .end annotation
.end field

.field snappJekBottomSheet:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a039c
    .end annotation
.end field

.field snappJekFrame:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a039d
    .end annotation
.end field

.field snappJekRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a039e
    .end annotation
.end field

.field snappJekServiceTypesCardView:Landroidx/cardview/widget/CardView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a049b
    .end annotation
.end field

.field snappJekServiceTypesControl:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a039f
    .end annotation
.end field

.field thirdServiceTypeItem:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04a3
    .end annotation
.end field

.field thirdServiceTypeItemImageView:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04a4
    .end annotation
.end field

.field thirdServiceTypeItemTextView:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04a5
    .end annotation
.end field

.field updateBannerDescriptionTb:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03a0
    .end annotation
.end field

.field updateBannerLayout:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03a1
    .end annotation
.end field

.field updateBannerNewFeaturesBtn:Landroidx/appcompat/widget/AppCompatButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03a2
    .end annotation
.end field

.field updateBannerTitleTb:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03a3
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 252
    invoke-direct {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 263
    invoke-direct {p0, p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 275
    invoke-direct {p0, p1, p2, p3}, Landroidx/drawerlayout/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 757
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/MainView;->cancelInaccurateOriginLocationDialog()V

    return-void
.end method

.method public static synthetic lambda$Rcu4qPPod-DjjEHEb0jZ1OIxX84(Lcab/snapp/passenger/units/main/MainView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/main/MainView;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public cancelInaccurateOriginLocationDialog()V
    .locals 1

    .line 768
    iget-object v0, p0, Lcab/snapp/passenger/units/main/MainView;->f:Lcab/snapp/snappdialog/b;

    if-eqz v0, :cond_0

    .line 770
    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->dismiss()V

    .line 771
    iget-object v0, p0, Lcab/snapp/passenger/units/main/MainView;->f:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->cancel()V

    :cond_0
    return-void
.end method

.method public cancelNoLocationDialog()V
    .locals 1

    .line 711
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/MainView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 715
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/main/MainView;->g:Lcab/snapp/passenger/f/r;

    if-eqz v0, :cond_1

    .line 717
    invoke-virtual {v0}, Lcab/snapp/passenger/f/r;->dismissNoLocationDialog()V

    :cond_1
    return-void
.end method

.method public cancelUpdateDialog()V
    .locals 1

    .line 616
    iget-object v0, p0, Lcab/snapp/passenger/units/main/MainView;->d:Lcab/snapp/snappdialog/b;

    if-eqz v0, :cond_0

    .line 618
    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->dismiss()V

    .line 619
    iget-object v0, p0, Lcab/snapp/passenger/units/main/MainView;->d:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->cancel()V

    :cond_0
    return-void
.end method

.method public cancelWhatsNewDialog()V
    .locals 1

    .line 680
    iget-object v0, p0, Lcab/snapp/passenger/units/main/MainView;->e:Lcab/snapp/snappdialog/b;

    if-eqz v0, :cond_0

    .line 682
    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->dismiss()V

    .line 683
    iget-object v0, p0, Lcab/snapp/passenger/units/main/MainView;->e:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->cancel()V

    :cond_0
    return-void
.end method

.method public closeBottomSheet()V
    .locals 1

    .line 874
    iget-object v0, p0, Lcab/snapp/passenger/units/main/MainView;->b:Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetDialogFragment;

    if-eqz v0, :cond_0

    .line 876
    invoke-virtual {v0}, Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetDialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method public closeDrawer()V
    .locals 2

    const v0, 0x800003

    .line 396
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/main/MainView;->isDrawerOpen(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 398
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/main/MainView;->closeDrawer(I)V

    :cond_0
    return-void
.end method

.method public displaySnappServices(Lcab/snapp/passenger/units/main/a/e;)V
    .locals 1

    .line 838
    iget-object v0, p0, Lcab/snapp/passenger/units/main/MainView;->snappJekRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public getAppbarHeight()F
    .locals 2

    .line 811
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/MainView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/MainView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 813
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/MainView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getFooterContainerView()Landroid/view/View;
    .locals 1

    .line 334
    iget-object v0, p0, Lcab/snapp/passenger/units/main/MainView;->footerContainerView:Landroid/view/View;

    return-object v0
.end method

.method public getHeaderContainerView()Landroid/view/View;
    .locals 1

    .line 344
    iget-object v0, p0, Lcab/snapp/passenger/units/main/MainView;->headerContainerView:Landroid/view/View;

    return-object v0
.end method

.method public getHeaderHeight()F
    .locals 2

    .line 790
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/MainView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/MainView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 792
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/MainView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701d3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getHeaderStateChangeHeight()F
    .locals 2

    .line 801
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/MainView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/MainView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 803
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/MainView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected getLocationSelectorImageButton()Landroid/widget/ImageButton;
    .locals 1

    .line 324
    iget-object v0, p0, Lcab/snapp/passenger/units/main/MainView;->locationSelectorImageButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getWindowBottom()I
    .locals 1

    .line 785
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/MainView;->getBottom()I

    move-result v0

    return v0
.end method

.method public getWindowHeightWithoutStatusBarAndToolbar()F
    .locals 1

    .line 780
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/MainView;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public hideGradient()V
    .locals 2

    .line 827
    iget-object v0, p0, Lcab/snapp/passenger/units/main/MainView;->headerGradientView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 828
    iget-object v0, p0, Lcab/snapp/passenger/units/main/MainView;->contentGradientView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public hideLocationSelectorDot()V
    .locals 2

    .line 388
    iget-object v0, p0, Lcab/snapp/passenger/units/main/MainView;->locationSelectorDotIv:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public hideLocationSelectorShadow()V
    .locals 2

    .line 372
    iget-object v0, p0, Lcab/snapp/passenger/units/main/MainView;->locationSelectorShadowIv:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public hideMapBoxCopyright()V
    .locals 2

    .line 473
    iget-object v0, p0, Lcab/snapp/passenger/units/main/MainView;->mapBoxCopyrightTv:Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    return-void
.end method

.method public hideMyLocation()V
    .locals 2

    .line 457
    iget-object v0, p0, Lcab/snapp/passenger/units/main/MainView;->myLocationFab:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->setVisibility(I)V

    return-void
.end method

.method public hideUpdateBanner()V
    .locals 2

    .line 543
    iget-object v0, p0, Lcab/snapp/passenger/units/main/MainView;->updateBannerLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public isBottomSheetOpened()Z
    .locals 1

    .line 882
    iget-object v0, p0, Lcab/snapp/passenger/units/main/MainView;->b:Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetDialogFragment;

    if-eqz v0, :cond_0

    .line 884
    invoke-virtual {v0}, Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetDialogFragment;->isBottomSheetOpened()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isDrawerLocked()Z
    .locals 2

    .line 440
    invoke-virtual {p0, p0}, Lcab/snapp/passenger/units/main/MainView;->getDrawerLockMode(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isFirstItemInJekCompletelyVisible()Z
    .locals 1

    .line 356
    iget-object v0, p0, Lcab/snapp/passenger/units/main/MainView;->snappJekRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public lockDrawer()V
    .locals 1

    const/4 v0, 0x1

    .line 422
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/main/MainView;->setDrawerLockMode(I)V

    return-void
.end method

.method public makePinNormal()V
    .locals 7

    .line 512
    iget-object v0, p0, Lcab/snapp/passenger/units/main/MainView;->locationSelectorImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    const-wide/16 v1, 0xc8

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    .line 514
    iget-object v0, p0, Lcab/snapp/passenger/units/main/MainView;->locationSelectorImageButton:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setPivotY(F)V

    .line 515
    iget-object v0, p0, Lcab/snapp/passenger/units/main/MainView;->locationSelectorImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v3

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setPivotX(F)V

    .line 516
    iget-object v0, p0, Lcab/snapp/passenger/units/main/MainView;->locationSelectorImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 517
    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 518
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 519
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 520
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v5, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v5}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    .line 521
    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 522
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 524
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/main/MainView;->locationSelectorShadowIv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 526
    iget-object v0, p0, Lcab/snapp/passenger/units/main/MainView;->locationSelectorShadowIv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 527
    iget-object v0, p0, Lcab/snapp/passenger/units/main/MainView;->locationSelectorShadowIv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 528
    iget-object v0, p0, Lcab/snapp/passenger/units/main/MainView;->locationSelectorShadowIv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 529
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 530
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 531
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 532
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    .line 533
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 534
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    return-void
.end method

.method public makePinSmall()V
    .locals 6

    .line 481
    iget-object v0, p0, Lcab/snapp/passenger/units/main/MainView;->locationSelectorImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    const-wide/16 v1, 0xc8

    const/high16 v3, 0x40000000    # 2.0f

    if-nez v0, :cond_0

    .line 483
    iget-object v0, p0, Lcab/snapp/passenger/units/main/MainView;->locationSelectorImageButton:Landroid/widget/ImageButton;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setPivotY(F)V

    .line 484
    iget-object v0, p0, Lcab/snapp/passenger/units/main/MainView;->locationSelectorImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setPivotX(F)V

    .line 485
    iget-object v0, p0, Lcab/snapp/passenger/units/main/MainView;->locationSelectorImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v4, p0, Lcab/snapp/passenger/units/main/MainView;->locationSelectorImageButton:Landroid/widget/ImageButton;

    .line 486
    invoke-virtual {v4}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40c00000    # 6.0f

    div-float/2addr v4, v5

    neg-float v4, v4

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v4, 0x3f59999a    # 0.85f

    .line 487
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 488
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 489
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v4, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v4}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    .line 490
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 491
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 493
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/main/MainView;->locationSelectorShadowIv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 495
    iget-object v0, p0, Lcab/snapp/passenger/units/main/MainView;->locationSelectorShadowIv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 496
    iget-object v0, p0, Lcab/snapp/passenger/units/main/MainView;->locationSelectorShadowIv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 497
    iget-object v0, p0, Lcab/snapp/passenger/units/main/MainView;->locationSelectorShadowIv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 498
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 499
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v3, 0x3ee66666    # 0.45f

    .line 500
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 501
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    .line 502
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 503
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 848
    invoke-super {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->onFinishInflate()V

    .line 849
    invoke-static {p0, p0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 851
    new-instance v0, Lcab/snapp/passenger/f/r;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/MainView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcab/snapp/passenger/f/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/main/MainView;->g:Lcab/snapp/passenger/f/r;

    .line 852
    sget-object v0, Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;->JEK_TOPUP:Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;

    invoke-static {v0}, Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetDialogFragment;->newInstance(Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;)Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/units/main/MainView;->b:Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetDialogFragment;

    .line 853
    iget-object v0, p0, Lcab/snapp/passenger/units/main/MainView;->snappJekBottomSheet:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/units/main/MainView;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    return-void
.end method

.method onLocationSelectorClick()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0396
        }
    .end annotation

    .line 287
    iget-object v0, p0, Lcab/snapp/passenger/units/main/MainView;->c:Lcab/snapp/passenger/units/main/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/d;->onLocationSelectorClick()V

    return-void
.end method

.method onMyLocationClicked()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a039b
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lcab/snapp/passenger/units/main/MainView;->c:Lcab/snapp/passenger/units/main/d;

    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/d;->onMyLocationClicked()V

    :cond_0
    return-void
.end method

.method onNewFeaturesBtnClicked()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a03a2
        }
    .end annotation

    .line 308
    iget-object v0, p0, Lcab/snapp/passenger/units/main/MainView;->c:Lcab/snapp/passenger/units/main/d;

    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/d;->onUpdateBannerNewFeaturesBtnClicked()V

    :cond_0
    return-void
.end method

.method onRideItemOneClicked()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a049c
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcab/snapp/passenger/units/main/MainView;->c:Lcab/snapp/passenger/units/main/d;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 206
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/main/d;->a(I)V

    :cond_0
    return-void
.end method

.method onRideItemThreeClicked()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a04a3
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lcab/snapp/passenger/units/main/MainView;->c:Lcab/snapp/passenger/units/main/d;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 230
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/main/d;->a(I)V

    :cond_0
    return-void
.end method

.method onRideItemTwoClicked()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a04a0
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcab/snapp/passenger/units/main/MainView;->c:Lcab/snapp/passenger/units/main/d;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 218
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/main/d;->a(I)V

    :cond_0
    return-void
.end method

.method public openBottomSheet()V
    .locals 3

    .line 866
    iget-object v0, p0, Lcab/snapp/passenger/units/main/MainView;->b:Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetDialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetDialogFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 868
    iget-object v0, p0, Lcab/snapp/passenger/units/main/MainView;->b:Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetDialogFragment;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/MainView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "top_up_bottom_sheet"

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setLocationSelectorContentDescription(I)V
    .locals 2

    .line 630
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/MainView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 634
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/main/MainView;->locationSelectorImageButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/MainView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic setPresenter(Lcab/snapp/arch/protocol/BasePresenter;)V
    .locals 0

    .line 44
    check-cast p1, Lcab/snapp/passenger/units/main/d;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/main/MainView;->setPresenter(Lcab/snapp/passenger/units/main/d;)V

    return-void
.end method

.method public setPresenter(Lcab/snapp/passenger/units/main/d;)V
    .locals 0

    .line 861
    iput-object p1, p0, Lcab/snapp/passenger/units/main/MainView;->c:Lcab/snapp/passenger/units/main/d;

    return-void
.end method

.method public showGradient()V
    .locals 2

    .line 821
    iget-object v0, p0, Lcab/snapp/passenger/units/main/MainView;->headerGradientView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 822
    iget-object v0, p0, Lcab/snapp/passenger/units/main/MainView;->contentGradientView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showInaccurateOriginLocationDialog()V
    .locals 5

    .line 745
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/MainView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 749
    :cond_0
    new-instance v0, Lcab/snapp/snappdialog/b$a;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/MainView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcab/snapp/snappdialog/b$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080118

    .line 750
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setIcon(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    const v1, 0x7f12003e

    .line 751
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setDialogTitle(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    const/4 v1, 0x0

    .line 752
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setTheme(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    new-instance v2, Lcab/snapp/snappdialog/dialogViews/a/g$a;

    invoke-direct {v2}, Lcab/snapp/snappdialog/dialogViews/a/g$a;-><init>()V

    .line 754
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/MainView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120130

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->setMessage(Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/g$a;

    move-result-object v2

    .line 755
    invoke-virtual {v2}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->build()Lcab/snapp/snappdialog/dialogViews/a/g;

    move-result-object v2

    .line 753
    invoke-virtual {v0, v2}, Lcab/snapp/snappdialog/b$a;->setDialogViewType(Lcab/snapp/snappdialog/dialogViews/a/c;)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    const v2, 0x7f120170

    new-instance v3, Lcab/snapp/passenger/units/main/-$$Lambda$MainView$Rcu4qPPod-DjjEHEb0jZ1OIxX84;

    invoke-direct {v3, p0}, Lcab/snapp/passenger/units/main/-$$Lambda$MainView$Rcu4qPPod-DjjEHEb0jZ1OIxX84;-><init>(Lcab/snapp/passenger/units/main/MainView;)V

    .line 757
    invoke-virtual {v0, v2, v3}, Lcab/snapp/snappdialog/b$a;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    .line 758
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setCancelable(Z)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    const/4 v1, 0x1

    .line 759
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->showOnBuild(Z)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    .line 760
    invoke-virtual {v0}, Lcab/snapp/snappdialog/b$a;->build()Lcab/snapp/snappdialog/b;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/units/main/MainView;->f:Lcab/snapp/snappdialog/b;

    return-void
.end method

.method public showLocationSelectorDot()V
    .locals 2

    .line 380
    iget-object v0, p0, Lcab/snapp/passenger/units/main/MainView;->locationSelectorDotIv:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public showLocationSelectorShadow()V
    .locals 2

    .line 364
    iget-object v0, p0, Lcab/snapp/passenger/units/main/MainView;->locationSelectorShadowIv:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public showMapBoxCopyright()V
    .locals 2

    .line 465
    iget-object v0, p0, Lcab/snapp/passenger/units/main/MainView;->mapBoxCopyrightTv:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    return-void
.end method

.method public showMyLocation()V
    .locals 2

    .line 449
    iget-object v0, p0, Lcab/snapp/passenger/units/main/MainView;->myLocationFab:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->setVisibility(I)V

    return-void
.end method

.method public showNoLocationDialog(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 694
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/MainView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 699
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/main/MainView;->g:Lcab/snapp/passenger/f/r;

    if-eqz v0, :cond_1

    .line 701
    invoke-virtual {v0, p1, p2}, Lcab/snapp/passenger/f/r;->showNoLocationDialog(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public showNoPermissionDialog(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 728
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/MainView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 733
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/main/MainView;->g:Lcab/snapp/passenger/f/r;

    if-eqz v0, :cond_1

    .line 735
    invoke-virtual {v0, p1, p2}, Lcab/snapp/passenger/f/r;->showNoPermissionDialog(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public showUpdateBannerAtBottom()V
    .locals 3

    .line 565
    iget-object v0, p0, Lcab/snapp/passenger/units/main/MainView;->updateBannerLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcab/snapp/passenger/units/main/MainView;->updateBannerLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x3

    .line 568
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/4 v1, 0x2

    .line 569
    iget-object v2, p0, Lcab/snapp/passenger/units/main/MainView;->footerContainerView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 571
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/main/MainView;->updateBannerLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public showUpdateBannerAtTop()V
    .locals 3

    .line 551
    iget-object v0, p0, Lcab/snapp/passenger/units/main/MainView;->updateBannerLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcab/snapp/passenger/units/main/MainView;->updateBannerLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x2

    .line 554
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/4 v1, 0x3

    .line 555
    iget-object v2, p0, Lcab/snapp/passenger/units/main/MainView;->headerContainerView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 557
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/main/MainView;->updateBannerLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public showUpdateDialog(ILjava/lang/String;Ljava/lang/String;ILandroid/view/View$OnClickListener;ILandroid/view/View$OnClickListener;)V
    .locals 2

    .line 594
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/MainView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 598
    :cond_0
    new-instance v0, Lcab/snapp/snappdialog/b$a;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/MainView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcab/snapp/snappdialog/b$a;-><init>(Landroid/content/Context;)V

    .line 599
    invoke-virtual {v0, p1}, Lcab/snapp/snappdialog/b$a;->setIcon(I)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 600
    invoke-virtual {p1, p2}, Lcab/snapp/snappdialog/b$a;->setDialogTitle(Ljava/lang/String;)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    new-instance p2, Lcab/snapp/snappdialog/dialogViews/a/g$a;

    invoke-direct {p2}, Lcab/snapp/snappdialog/dialogViews/a/g$a;-><init>()V

    .line 602
    invoke-virtual {p2, p3}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->setMessage(Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/g$a;

    move-result-object p2

    .line 603
    invoke-virtual {p2}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->build()Lcab/snapp/snappdialog/dialogViews/a/g;

    move-result-object p2

    .line 601
    invoke-virtual {p1, p2}, Lcab/snapp/snappdialog/b$a;->setDialogViewType(Lcab/snapp/snappdialog/dialogViews/a/c;)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 605
    invoke-virtual {p1, p4, p5}, Lcab/snapp/snappdialog/b$a;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 606
    invoke-virtual {p1, p6, p7}, Lcab/snapp/snappdialog/b$a;->setNegativeButton(ILandroid/view/View$OnClickListener;)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    const/4 p2, 0x1

    .line 607
    invoke-virtual {p1, p2}, Lcab/snapp/snappdialog/b$a;->showOnBuild(Z)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 608
    invoke-virtual {p1}, Lcab/snapp/snappdialog/b$a;->build()Lcab/snapp/snappdialog/b;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/units/main/MainView;->d:Lcab/snapp/snappdialog/b;

    return-void
.end method

.method public showWhatsNewDialog(ILjava/lang/String;Ljava/util/ArrayList;ILandroid/view/View$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/view/View$OnClickListener;",
            "Landroid/content/DialogInterface$OnDismissListener;",
            ")V"
        }
    .end annotation

    .line 653
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/MainView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 658
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/MainView;->cancelWhatsNewDialog()V

    .line 660
    new-instance v0, Lcab/snapp/snappdialog/b$a;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/MainView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcab/snapp/snappdialog/b$a;-><init>(Landroid/content/Context;)V

    .line 661
    invoke-virtual {v0, p1}, Lcab/snapp/snappdialog/b$a;->setIcon(I)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    const/4 v0, 0x0

    .line 662
    invoke-virtual {p1, v0}, Lcab/snapp/snappdialog/b$a;->setTheme(I)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    new-instance v0, Lcab/snapp/snappdialog/dialogViews/a/h$a;

    invoke-direct {v0}, Lcab/snapp/snappdialog/dialogViews/a/h$a;-><init>()V

    .line 664
    invoke-virtual {v0, p2}, Lcab/snapp/snappdialog/dialogViews/a/h$a;->setMessage(Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/h$a;

    move-result-object p2

    .line 665
    invoke-virtual {p2, p3}, Lcab/snapp/snappdialog/dialogViews/a/h$a;->setMessageList(Ljava/util/List;)Lcab/snapp/snappdialog/dialogViews/a/h$a;

    move-result-object p2

    .line 666
    invoke-virtual {p2}, Lcab/snapp/snappdialog/dialogViews/a/h$a;->build()Lcab/snapp/snappdialog/dialogViews/a/h;

    move-result-object p2

    .line 663
    invoke-virtual {p1, p2}, Lcab/snapp/snappdialog/b$a;->setDialogViewType(Lcab/snapp/snappdialog/dialogViews/a/c;)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 668
    invoke-virtual {p1, p4, p5}, Lcab/snapp/snappdialog/b$a;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    const/4 p2, 0x1

    .line 669
    invoke-virtual {p1, p2}, Lcab/snapp/snappdialog/b$a;->showOnBuild(Z)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 670
    invoke-virtual {p1}, Lcab/snapp/snappdialog/b$a;->build()Lcab/snapp/snappdialog/b;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/units/main/MainView;->e:Lcab/snapp/snappdialog/b;

    .line 672
    iget-object p1, p0, Lcab/snapp/passenger/units/main/MainView;->e:Lcab/snapp/snappdialog/b;

    invoke-virtual {p1, p6}, Lcab/snapp/snappdialog/b;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public toggleDrawer()V
    .locals 2

    const v0, 0x800003

    .line 407
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/main/MainView;->isDrawerOpen(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 409
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/main/MainView;->closeDrawer(I)V

    return-void

    .line 413
    :cond_0
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/main/MainView;->openDrawer(I)V

    return-void
.end method

.method public unlockDrawer()V
    .locals 1

    const/4 v0, 0x0

    .line 430
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/main/MainView;->setDrawerLockMode(I)V

    return-void
.end method
