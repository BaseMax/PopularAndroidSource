.class public Lcab/snapp/passenger/units/ride_rating/RideRatingView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/arch/protocol/BaseView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/LinearLayout;",
        "Lcab/snapp/arch/protocol/BaseView<",
        "Lcab/snapp/passenger/units/ride_rating/c;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcab/snapp/passenger/f/r;

.field protected b:Lcab/snapp/passenger/units/ride_rating/c;

.field protected c:Z

.field commentEditText:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a041b
    .end annotation
.end field

.field commentSubmitBtn:Lcab/snapp/snappuikit/SnappButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a041c
    .end annotation
.end field

.field d:Lcab/snapp/passenger/units/ride_rating/widget/RideRatingTabView;

.field driverImageView:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a042e
    .end annotation
.end field

.field driverInfoTextView:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a042f
    .end annotation
.end field

.field e:Lcab/snapp/passenger/units/ride_rating/widget/RideRatingTabView;

.field private f:Lbutterknife/Unbinder;

.field fakeCommentEditText:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a041e
    .end annotation
.end field

.field fakeCommentLayout:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a041f
    .end annotation
.end field

.field fakeCommentSubmitButton:Lcab/snapp/snappuikit/SnappButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0420
    .end annotation
.end field

.field feedbackTabDividerRed:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0425
    .end annotation
.end field

.field rateDescriptionTextView:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0421
    .end annotation
.end field

.field rideAddressTextView:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a042a
    .end annotation
.end field

.field rideTitleTextView:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a042b
    .end annotation
.end field

.field sceneContainerFl:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a042c
    .end annotation
.end field

.field starBar:Lcab/snapp/snappuikit/ratingbar/ScaleRatingBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a042d
    .end annotation
.end field

.field tabLayout:Lcom/google/android/material/tabs/TabLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0423
    .end annotation
.end field

.field toolbarCancelButton:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0279
    .end annotation
.end field

.field toolbarTitleTextView:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a027a
    .end annotation
.end field

.field viewPager:Landroidx/viewpager/widget/ViewPager;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0426
    .end annotation
.end field

.field writeCommentBtn:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0427
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 220
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 87
    iput-boolean p1, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 231
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 87
    iput-boolean p1, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 243
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 87
    iput-boolean p1, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->c:Z

    return-void
.end method

.method private a()V
    .locals 2

    .line 601
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->starBar:Lcab/snapp/snappuikit/ratingbar/ScaleRatingBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 603
    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/ratingbar/ScaleRatingBar;->setLayoutDirection(I)V

    .line 606
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    if-eqz v0, :cond_1

    .line 608
    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setLayoutDirection(I)V

    :cond_1
    return-void
.end method

.method private a(I)V
    .locals 2

    .line 571
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->sceneContainerFl:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    .line 576
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroidx/transition/Scene;->getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroidx/transition/Scene;

    move-result-object p1

    .line 578
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    .line 581
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->sceneContainerFl:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 584
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/transition/TransitionInflater;->from(Landroid/content/Context;)Landroidx/transition/TransitionInflater;

    move-result-object v0

    const/high16 v1, 0x7f150000

    invoke-virtual {v0, v1}, Landroidx/transition/TransitionInflater;->inflateTransition(I)Landroidx/transition/Transition;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/transition/TransitionManager;->go(Landroidx/transition/Scene;Landroidx/transition/Transition;)V

    .line 586
    iget-object p1, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->f:Lbutterknife/Unbinder;

    if-eqz p1, :cond_2

    .line 588
    invoke-interface {p1}, Lbutterknife/Unbinder;->unbind()V

    .line 591
    :cond_2
    invoke-static {p0, p0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->f:Lbutterknife/Unbinder;

    .line 592
    invoke-direct {p0}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->a()V

    return-void
.end method


# virtual methods
.method public addNegativeTabView()V
    .locals 2

    .line 617
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 619
    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$f;

    move-result-object v0

    iget-object v1, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->d:Lcab/snapp/passenger/units/ride_rating/widget/RideRatingTabView;

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$f;->setCustomView(Landroid/view/View;)Lcom/google/android/material/tabs/TabLayout$f;

    :cond_0
    return-void
.end method

.method public addPositiveTabView()V
    .locals 2

    .line 628
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 630
    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 633
    iget-object v1, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->e:Lcab/snapp/passenger/units/ride_rating/widget/RideRatingTabView;

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$f;->setCustomView(Landroid/view/View;)Lcom/google/android/material/tabs/TabLayout$f;

    :cond_0
    return-void
.end method

.method public getCurrentReasonPage()I
    .locals 1

    .line 465
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    .line 467
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hideLoading()V
    .locals 1

    .line 853
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->a:Lcab/snapp/passenger/f/r;

    invoke-virtual {v0}, Lcab/snapp/passenger/f/r;->hideLoadingDialog()V

    return-void
.end method

.method public hideNegativeTabBadge()V
    .locals 1

    .line 732
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->d:Lcab/snapp/passenger/units/ride_rating/widget/RideRatingTabView;

    if-eqz v0, :cond_0

    .line 734
    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_rating/widget/RideRatingTabView;->hideBadge()V

    :cond_0
    return-void
.end method

.method public hidePositiveTabBadge()V
    .locals 1

    .line 754
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->e:Lcab/snapp/passenger/units/ride_rating/widget/RideRatingTabView;

    if-eqz v0, :cond_0

    .line 756
    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_rating/widget/RideRatingTabView;->hideBadge()V

    :cond_0
    return-void
.end method

.method public hideRedDivider()V
    .locals 2

    .line 791
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->feedbackTabDividerRed:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 793
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public hideTabLayout()V
    .locals 2

    .line 539
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 541
    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method onCommentClicked()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0427
        }
    .end annotation

    .annotation runtime Lbutterknife/Optional;
    .end annotation

    .line 308
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->b:Lcab/snapp/passenger/units/ride_rating/c;

    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_rating/c;->onWantToWriteCommentClicked()V

    :cond_0
    return-void
.end method

.method onCommentSubmitButtonClicked()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a041c
        }
    .end annotation

    .annotation runtime Lbutterknife/Optional;
    .end annotation

    .line 282
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->b:Lcab/snapp/passenger/units/ride_rating/c;

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_rating/c;->onCommentSubmitClicked()V

    :cond_0
    return-void
.end method

.method onFakeCommentSubmitButtonClicked()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0420
        }
    .end annotation

    .annotation runtime Lbutterknife/Optional;
    .end annotation

    .line 266
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->b:Lcab/snapp/passenger/units/ride_rating/c;

    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_rating/c;->onFakeCommentSubmitClicked()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 866
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 867
    invoke-static {p0, p0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->f:Lbutterknife/Unbinder;

    .line 1322
    new-instance v0, Lcab/snapp/passenger/units/ride_rating/widget/RideRatingTabView;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcab/snapp/passenger/units/ride_rating/widget/RideRatingTabView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->d:Lcab/snapp/passenger/units/ride_rating/widget/RideRatingTabView;

    .line 1323
    new-instance v0, Lcab/snapp/passenger/units/ride_rating/widget/RideRatingTabView;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcab/snapp/passenger/units/ride_rating/widget/RideRatingTabView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->e:Lcab/snapp/passenger/units/ride_rating/widget/RideRatingTabView;

    .line 1325
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->d:Lcab/snapp/passenger/units/ride_rating/widget/RideRatingTabView;

    const v1, 0x7f1201a8

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/ride_rating/widget/RideRatingTabView;->setText(I)V

    .line 1326
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->e:Lcab/snapp/passenger/units/ride_rating/widget/RideRatingTabView;

    const v1, 0x7f1201a7

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/ride_rating/widget/RideRatingTabView;->setText(I)V

    .line 1327
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->d:Lcab/snapp/passenger/units/ride_rating/widget/RideRatingTabView;

    const v1, 0x7f08006a

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/ride_rating/widget/RideRatingTabView;->setBadgeBackground(I)V

    .line 1328
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->e:Lcab/snapp/passenger/units/ride_rating/widget/RideRatingTabView;

    const v1, 0x7f08006b

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/ride_rating/widget/RideRatingTabView;->setBadgeBackground(I)V

    .line 869
    new-instance v0, Lcab/snapp/passenger/f/r;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcab/snapp/passenger/f/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->a:Lcab/snapp/passenger/f/r;

    return-void
.end method

.method onSubmitClicked()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0422
        }
    .end annotation

    .annotation runtime Lbutterknife/Optional;
    .end annotation

    .line 295
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->b:Lcab/snapp/passenger/units/ride_rating/c;

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_rating/c;->onSubmitClicked()V

    :cond_0
    return-void
.end method

.method onToolbarCancelButtonClicked()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0279
        }
    .end annotation

    .annotation runtime Lbutterknife/Optional;
    .end annotation

    .line 253
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->b:Lcab/snapp/passenger/units/ride_rating/c;

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_rating/c;->onToolbarCancelButtonClicked()V

    :cond_0
    return-void
.end method

.method public setAddressText(Ljava/lang/String;)V
    .locals 1

    .line 386
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->rideAddressTextView:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_0

    .line 388
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setCancelBtnIcon(I)V
    .locals 1

    .line 840
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->toolbarCancelButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 842
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public setCommentSubmitButtonText(I)V
    .locals 2

    .line 824
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->commentSubmitBtn:Lcab/snapp/snappuikit/SnappButton;

    if-eqz v0, :cond_0

    .line 826
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcab/snapp/snappuikit/SnappButton;->setText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setCommentText(Ljava/lang/String;)V
    .locals 1

    .line 816
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->commentEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 818
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setCommentTextChangeListener(Landroid/text/TextWatcher;)V
    .locals 1

    .line 438
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->commentEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 440
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method public setCurrentReasonPage(I)V
    .locals 1

    .line 482
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    .line 484
    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_0
    return-void
.end method

.method public setDriverImage(Ljava/lang/String;)V
    .locals 1

    .line 352
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->driverImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 357
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 358
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    .line 359
    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/x;

    move-result-object p1

    const v0, 0x7f0801d3

    .line 360
    invoke-virtual {p1, v0}, Lcom/squareup/picasso/x;->placeholder(I)Lcom/squareup/picasso/x;

    move-result-object p1

    new-instance v0, Lcab/snapp/passenger/f/l;

    invoke-direct {v0}, Lcab/snapp/passenger/f/l;-><init>()V

    .line 361
    invoke-virtual {p1, v0}, Lcom/squareup/picasso/x;->transform(Lcom/squareup/picasso/ae;)Lcom/squareup/picasso/x;

    move-result-object p1

    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->driverImageView:Landroid/widget/ImageView;

    .line 362
    invoke-virtual {p1, v0}, Lcom/squareup/picasso/x;->into(Landroid/widget/ImageView;)V

    :cond_1
    return-void
.end method

.method public setDriverInfoText(Ljava/lang/String;)V
    .locals 1

    .line 399
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->driverInfoTextView:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setFakeCommentTextChangeListener(Landroid/text/TextWatcher;)V
    .locals 1

    .line 425
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->fakeCommentEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 427
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method public setNegativeTabBadge(I)V
    .locals 1

    .line 697
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->d:Lcab/snapp/passenger/units/ride_rating/widget/RideRatingTabView;

    if-eqz v0, :cond_0

    .line 699
    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/ride_rating/widget/RideRatingTabView;->setBadge(I)V

    :cond_0
    return-void
.end method

.method public setNegativeTabText(I)V
    .locals 1

    .line 767
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->d:Lcab/snapp/passenger/units/ride_rating/widget/RideRatingTabView;

    if-eqz v0, :cond_0

    .line 769
    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/ride_rating/widget/RideRatingTabView;->setText(I)V

    :cond_0
    return-void
.end method

.method public setNegativeTabTextColor(I)V
    .locals 1

    .line 671
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->d:Lcab/snapp/passenger/units/ride_rating/widget/RideRatingTabView;

    if-eqz v0, :cond_0

    .line 673
    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/ride_rating/widget/RideRatingTabView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public setOnStarRateSelectedListener(Lcab/snapp/snappuikit/ratingbar/BaseRatingBar$a;)V
    .locals 1

    .line 339
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->starBar:Lcab/snapp/snappuikit/ratingbar/ScaleRatingBar;

    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {v0, p1}, Lcab/snapp/snappuikit/ratingbar/ScaleRatingBar;->setOnRatingChangeListener(Lcab/snapp/snappuikit/ratingbar/BaseRatingBar$a;)V

    :cond_0
    return-void
.end method

.method public setPagerAdapterForReasonPages(Lcab/snapp/passenger/a/k;)V
    .locals 1

    .line 451
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    if-nez v0, :cond_0

    return-void

    .line 455
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    return-void
.end method

.method public setPositiveTabBadge(I)V
    .locals 1

    .line 710
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->e:Lcab/snapp/passenger/units/ride_rating/widget/RideRatingTabView;

    if-eqz v0, :cond_0

    .line 712
    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/ride_rating/widget/RideRatingTabView;->setBadge(I)V

    :cond_0
    return-void
.end method

.method public setPositiveTabTextColor(I)V
    .locals 1

    .line 658
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->e:Lcab/snapp/passenger/units/ride_rating/widget/RideRatingTabView;

    if-eqz v0, :cond_0

    .line 660
    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/ride_rating/widget/RideRatingTabView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setPresenter(Lcab/snapp/arch/protocol/BasePresenter;)V
    .locals 0

    .line 73
    check-cast p1, Lcab/snapp/passenger/units/ride_rating/c;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->setPresenter(Lcab/snapp/passenger/units/ride_rating/c;)V

    return-void
.end method

.method public setPresenter(Lcab/snapp/passenger/units/ride_rating/c;)V
    .locals 0

    .line 877
    iput-object p1, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->b:Lcab/snapp/passenger/units/ride_rating/c;

    return-void
.end method

.method public setRateDescriptionText(Ljava/lang/String;)V
    .locals 1

    .line 495
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->rateDescriptionTextView:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_0

    .line 497
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setRateDescriptionTextColor(I)V
    .locals 2

    .line 508
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->rateDescriptionTextView:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_0

    .line 510
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public setReasonPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 1

    .line 645
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    .line 647
    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    :cond_0
    return-void
.end method

.method public setRideTitleText(Ljava/lang/String;)V
    .locals 1

    .line 373
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->rideTitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_0

    .line 375
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setStarRate(I)V
    .locals 1

    .line 412
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->starBar:Lcab/snapp/snappuikit/ratingbar/ScaleRatingBar;

    if-eqz v0, :cond_0

    int-to-float p1, p1

    .line 414
    invoke-virtual {v0, p1}, Lcab/snapp/snappuikit/ratingbar/ScaleRatingBar;->setRating(F)V

    :cond_0
    return-void
.end method

.method public setTabIndicatorColor(I)V
    .locals 2

    .line 684
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicatorColor(I)V

    :cond_0
    return-void
.end method

.method public setToolbarTitle(I)V
    .locals 1

    .line 808
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->toolbarTitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_0

    .line 810
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    :cond_0
    return-void
.end method

.method public setWriteCommetButtonText(I)V
    .locals 2

    .line 832
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->writeCommentBtn:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_0

    .line 834
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public showCommentScene()V
    .locals 1

    const v0, 0x7f0d00c7

    .line 550
    invoke-direct {p0, v0}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->a(I)V

    return-void
.end method

.method public showFakeCommentView()V
    .locals 2

    .line 558
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->fakeCommentLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 560
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public showFeedBackScene()V
    .locals 2

    const v0, 0x7f0d00c8

    .line 527
    invoke-direct {p0, v0}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->a(I)V

    .line 528
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    if-eqz v0, :cond_0

    .line 530
    iget-object v1, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    :cond_0
    return-void
.end method

.method public showLoading()V
    .locals 1

    .line 848
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->a:Lcab/snapp/passenger/f/r;

    invoke-virtual {v0}, Lcab/snapp/passenger/f/r;->showLoadingDialog()V

    return-void
.end method

.method public showNegativeTabBadge()V
    .locals 1

    .line 721
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->d:Lcab/snapp/passenger/units/ride_rating/widget/RideRatingTabView;

    if-eqz v0, :cond_0

    .line 723
    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_rating/widget/RideRatingTabView;->showBadge()V

    :cond_0
    return-void
.end method

.method public showNoInternetDialog()V
    .locals 1

    .line 858
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->a:Lcab/snapp/passenger/f/r;

    invoke-virtual {v0}, Lcab/snapp/passenger/f/r;->showNoInternetDialog()V

    return-void
.end method

.method public showPositiveTabBadge()V
    .locals 1

    .line 743
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->e:Lcab/snapp/passenger/units/ride_rating/widget/RideRatingTabView;

    if-eqz v0, :cond_0

    .line 745
    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_rating/widget/RideRatingTabView;->showBadge()V

    :cond_0
    return-void
.end method

.method public showRedDivider()V
    .locals 2

    .line 779
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->feedbackTabDividerRed:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 781
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public showStarScene()V
    .locals 1

    const v0, 0x7f0d00ca

    .line 519
    invoke-direct {p0, v0}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->a(I)V

    return-void
.end method

.method public showToastMessage(II)V
    .locals 2

    .line 799
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 803
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcab/snapp/snappuikit/b;->makeText(Landroid/content/Context;Ljava/lang/String;)Lcab/snapp/snappuikit/b;

    move-result-object p1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcab/snapp/snappuikit/b;->textColor(I)Lcab/snapp/snappuikit/b;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/snappuikit/b;->show()V

    return-void
.end method
