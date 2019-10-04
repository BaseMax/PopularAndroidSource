.class public Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/arch/protocol/BaseView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/LinearLayout;",
        "Lcab/snapp/arch/protocol/BaseView<",
        "Lcab/snapp/passenger/units/footer/ride_request_footer/c;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcab/snapp/passenger/units/footer/ride_request_footer/c;

.field actionButton:Landroidx/appcompat/widget/AppCompatButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0433
    .end annotation
.end field

.field actionLayout:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0434
    .end annotation
.end field

.field private b:Lcab/snapp/snappdialog/SnappControllerDialog;

.field private c:Lcab/snapp/snappdialog/b;

.field private d:Lcab/snapp/snappdialog/b;

.field disabledTextView:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0435
    .end annotation
.end field

.field private e:Lcab/snapp/snappdialog/b;

.field private f:Lcab/snapp/snappdialog/b;

.field freeRideTextView:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0436
    .end annotation
.end field

.field moreControllersContainer:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0437
    .end annotation
.end field

.field moreDescButton:Landroidx/appcompat/widget/AppCompatButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0445
    .end annotation
.end field

.field optionsButton:Landroidx/appcompat/widget/AppCompatButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0438
    .end annotation
.end field

.field optionsLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0439
    .end annotation
.end field

.field phoneNotVerifiedLayout:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a043a
    .end annotation
.end field

.field priceCountingTextView:Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a043b
    .end annotation
.end field

.field priceLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a043c
    .end annotation
.end field

.field promoButton:Landroidx/appcompat/widget/AppCompatButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a043d
    .end annotation
.end field

.field promoEditText:Landroidx/appcompat/widget/AppCompatEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a043e
    .end annotation
.end field

.field promoLayout:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a043f
    .end annotation
.end field

.field promoSaveButton:Landroidx/appcompat/widget/AppCompatButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0440
    .end annotation
.end field

.field recyclerLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0442
    .end annotation
.end field

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0443
    .end annotation
.end field

.field shortDescriptionTextView:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0446
    .end annotation
.end field

.field snapp:Lcab/snapp/snappuikit/SnappLoading;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0441
    .end annotation
.end field

.field tooltipsLayout:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0444
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 169
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 180
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 192
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private synthetic a(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 339
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 340
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->moreControllersContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {v0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    :cond_0
    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 583
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->d:Lcab/snapp/snappdialog/b;

    invoke-virtual {p1}, Lcab/snapp/snappdialog/b;->dismiss()V

    return-void
.end method

.method private synthetic b(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 312
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 313
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->moreControllersContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {v0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    :cond_0
    return-void
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 0

    .line 540
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->dismissInfoDialogIfAble()V

    return-void
.end method

.method public static synthetic lambda$7i3quOXqgjVp7J0X_84yUMGSUqI(Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->b(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic lambda$R5RDvSm6myPe9MdArksqsHsyjQE(Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$q5DZGRNhbcFS7qTpLHJ27ecjy_g(Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->b(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$ui7GBvxxnm5rzGQrqvt-fJP-9Rg(Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->a(Landroid/animation/ValueAnimator;)V

    return-void
.end method


# virtual methods
.method public cancelSnappConfirmationDialog()V
    .locals 1

    .line 632
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->e:Lcab/snapp/snappdialog/b;

    if-eqz v0, :cond_0

    .line 634
    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->dismiss()V

    .line 635
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->e:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->cancel()V

    :cond_0
    return-void
.end method

.method public cancelSnappRoseConfirmationDialog()V
    .locals 1

    .line 593
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->d:Lcab/snapp/snappdialog/b;

    if-eqz v0, :cond_0

    .line 595
    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->dismiss()V

    .line 596
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->d:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->cancel()V

    :cond_0
    return-void
.end method

.method public dismissFreeRideDialog()V
    .locals 1

    .line 668
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->f:Lcab/snapp/snappdialog/b;

    if-eqz v0, :cond_0

    .line 670
    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->dismiss()V

    .line 671
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->f:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->cancel()V

    :cond_0
    return-void
.end method

.method public dismissInfoDialogIfAble()V
    .locals 1

    .line 551
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->c:Lcab/snapp/snappdialog/b;

    if-eqz v0, :cond_0

    .line 553
    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->cancel()V

    :cond_0
    return-void
.end method

.method public dismissPhoneVerificationUnitDialog()V
    .locals 1

    .line 491
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->b:Lcab/snapp/snappdialog/SnappControllerDialog;

    if-eqz v0, :cond_0

    .line 493
    invoke-virtual {v0}, Lcab/snapp/snappdialog/SnappControllerDialog;->cancel()V

    :cond_0
    return-void
.end method

.method public hideActionLayout()V
    .locals 2

    .line 378
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->actionLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public hideOptionsLayout()V
    .locals 2

    .line 362
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->optionsLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public hidePhoneNotVerified()V
    .locals 2

    .line 394
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->phoneNotVerifiedLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public hidePromoLoading()V
    .locals 2

    .line 410
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->snapp:Lcab/snapp/snappuikit/SnappLoading;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/SnappLoading;->setVisibility(I)V

    return-void
.end method

.method public hidePromoSaveButton()V
    .locals 2

    .line 418
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->promoSaveButton:Landroidx/appcompat/widget/AppCompatButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setVisibility(I)V

    return-void
.end method

.method onActionClicked()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0433
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->onActionClicked()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 263
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->onViewDetached()V

    .line 267
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 256
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 257
    invoke-static {p0, p0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method

.method onOptionsClicked()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0438
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->onOptionsClicked()V

    return-void
.end method

.method onPhoneNotVerifiedClicked()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a043a
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->onPhoneNotVerifiedClicked()V

    return-void
.end method

.method onPromoClicked()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a043d
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->onPromoClicked()V

    return-void
.end method

.method onPromoSaveClicked()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0440
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->onPromoSaveClicked()V

    return-void
.end method

.method onTooltipDetailsClicked()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0445
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->onTooltipDetailsClicked()V

    return-void
.end method

.method public scaleDownOptionsContainer(Landroid/animation/AnimatorListenerAdapter;)V
    .locals 3

    .line 329
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->moreControllersContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 333
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->moreControllersContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMinimumHeight()I

    move-result v0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07018b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700e9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput v2, v1, v0

    .line 335
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 336
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 337
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 338
    new-instance v1, Lcab/snapp/passenger/units/footer/ride_request_footer/-$$Lambda$RideRequestFooterView$ui7GBvxxnm5rzGQrqvt-fJP-9Rg;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/-$$Lambda$RideRequestFooterView$ui7GBvxxnm5rzGQrqvt-fJP-9Rg;-><init>(Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 345
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 346
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method public scaleUpOptionsContainer(Landroid/animation/AnimatorListenerAdapter;)V
    .locals 8

    .line 285
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 290
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 292
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    goto :goto_0

    :cond_1
    const/high16 v0, 0x41c80000    # 25.0f

    .line 296
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 298
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 299
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07018c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 300
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07018b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 301
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700bf

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 303
    iget-object v4, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 305
    invoke-virtual {v4}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getMainViewHeight()I

    move-result v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    const/4 v6, 0x2

    new-array v6, v6, [I

    .line 308
    iget-object v7, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->moreControllersContainer:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    aput v7, v6, v5

    const/4 v5, 0x1

    sub-int/2addr v4, v0

    sub-int/2addr v4, v3

    sub-int/2addr v4, v1

    sub-int/2addr v4, v2

    aput v4, v6, v5

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 309
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 310
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 311
    new-instance v1, Lcab/snapp/passenger/units/footer/ride_request_footer/-$$Lambda$RideRequestFooterView$7i3quOXqgjVp7J0X_84yUMGSUqI;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/-$$Lambda$RideRequestFooterView$7i3quOXqgjVp7J0X_84yUMGSUqI;-><init>(Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 318
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 319
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    :goto_2
    return-void
.end method

.method public bridge synthetic setPresenter(Lcab/snapp/arch/protocol/BasePresenter;)V
    .locals 0

    .line 44
    check-cast p1, Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->setPresenter(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)V

    return-void
.end method

.method public setPresenter(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    return-void
.end method

.method public setTopMargin(I)V
    .locals 1

    .line 682
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 683
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 684
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public showActionLayout()V
    .locals 2

    .line 370
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->actionLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showFreeRideDialog(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    .locals 2

    .line 649
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->f:Lcab/snapp/snappdialog/b;

    if-eqz v0, :cond_0

    if-eqz v0, :cond_1

    .line 650
    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 652
    :cond_0
    new-instance v0, Lcab/snapp/snappdialog/b$a;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcab/snapp/snappdialog/b$a;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 653
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setTheme(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    const v1, 0x7f120109

    .line 654
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setIconFont(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    .line 655
    invoke-virtual {v0, p1}, Lcab/snapp/snappdialog/b$a;->setDialogTitle(Ljava/lang/String;)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    new-instance v0, Lcab/snapp/snappdialog/dialogViews/a/g$a;

    invoke-direct {v0}, Lcab/snapp/snappdialog/dialogViews/a/g$a;-><init>()V

    .line 656
    invoke-virtual {v0, p2}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->setMessage(Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/g$a;

    move-result-object p2

    invoke-virtual {p2, p4}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->setDirection(I)Lcab/snapp/snappdialog/dialogViews/a/g$a;

    move-result-object p2

    invoke-virtual {p2}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->build()Lcab/snapp/snappdialog/dialogViews/a/g;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcab/snapp/snappdialog/b$a;->setDialogViewType(Lcab/snapp/snappdialog/dialogViews/a/c;)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    const p2, 0x7f120170

    .line 657
    invoke-virtual {p1, p2, p3}, Lcab/snapp/snappdialog/b$a;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    const/4 p2, 0x1

    .line 658
    invoke-virtual {p1, p2}, Lcab/snapp/snappdialog/b$a;->showOnBuild(Z)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/snappdialog/b$a;->build()Lcab/snapp/snappdialog/b;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->f:Lcab/snapp/snappdialog/b;

    :cond_1
    return-void
.end method

.method public showInfoDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 531
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->dismissInfoDialogIfAble()V

    .line 533
    new-instance v0, Lcab/snapp/snappdialog/b$a;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcab/snapp/snappdialog/b$a;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 534
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setTheme(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    const/4 v1, 0x1

    .line 535
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->isErrorInformation(Z)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    const v2, 0x7f120115

    .line 536
    invoke-virtual {v0, v2}, Lcab/snapp/snappdialog/b$a;->setIconFont(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    new-instance v2, Lcab/snapp/snappdialog/dialogViews/a/g$a;

    invoke-direct {v2}, Lcab/snapp/snappdialog/dialogViews/a/g$a;-><init>()V

    .line 537
    invoke-virtual {v2, p2}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->setMessage(Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/g$a;

    move-result-object p2

    invoke-virtual {p2}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->build()Lcab/snapp/snappdialog/dialogViews/a/g;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcab/snapp/snappdialog/b$a;->setDialogViewType(Lcab/snapp/snappdialog/dialogViews/a/c;)Lcab/snapp/snappdialog/b$a;

    move-result-object p2

    .line 538
    invoke-virtual {p2, p1}, Lcab/snapp/snappdialog/b$a;->setDialogTitle(Ljava/lang/String;)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 539
    invoke-virtual {p1, v1}, Lcab/snapp/snappdialog/b$a;->setCancelable(Z)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    new-instance p2, Lcab/snapp/passenger/units/footer/ride_request_footer/-$$Lambda$RideRequestFooterView$q5DZGRNhbcFS7qTpLHJ27ecjy_g;

    invoke-direct {p2, p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/-$$Lambda$RideRequestFooterView$q5DZGRNhbcFS7qTpLHJ27ecjy_g;-><init>(Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;)V

    const v0, 0x7f120170

    .line 540
    invoke-virtual {p1, v0, p2}, Lcab/snapp/snappdialog/b$a;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 541
    invoke-virtual {p1}, Lcab/snapp/snappdialog/b$a;->build()Lcab/snapp/snappdialog/b;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->c:Lcab/snapp/snappdialog/b;

    .line 543
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->c:Lcab/snapp/snappdialog/b;

    invoke-virtual {p1}, Lcab/snapp/snappdialog/b;->show()V

    return-void
.end method

.method public showOptionsLayout()V
    .locals 2

    .line 354
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->optionsLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public showPhoneNotVerified()V
    .locals 2

    .line 386
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->phoneNotVerifiedLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showPhoneVerificationUnitAsDialog(Lcab/snapp/passenger/units/phone_verification/PhoneVerificationController;Landroidx/fragment/app/FragmentManager;)Lcab/snapp/snappdialog/SnappControllerDialog;
    .locals 1

    .line 475
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->dismissPhoneVerificationUnitDialog()V

    .line 477
    new-instance v0, Lcab/snapp/snappdialog/SnappControllerDialog$a;

    invoke-direct {v0}, Lcab/snapp/snappdialog/SnappControllerDialog$a;-><init>()V

    .line 478
    invoke-virtual {v0, p1}, Lcab/snapp/snappdialog/SnappControllerDialog$a;->setController(Landroidx/fragment/app/Fragment;)Lcab/snapp/snappdialog/SnappControllerDialog$a;

    move-result-object p1

    .line 479
    invoke-virtual {p1, p2}, Lcab/snapp/snappdialog/SnappControllerDialog$a;->setFragmentManager(Landroidx/fragment/app/FragmentManager;)Lcab/snapp/snappdialog/SnappControllerDialog$a;

    move-result-object p1

    const/4 p2, 0x1

    .line 480
    invoke-virtual {p1, p2}, Lcab/snapp/snappdialog/SnappControllerDialog$a;->showOnBuild(Z)Lcab/snapp/snappdialog/SnappControllerDialog$a;

    move-result-object p1

    .line 481
    invoke-virtual {p1}, Lcab/snapp/snappdialog/SnappControllerDialog$a;->build()Lcab/snapp/snappdialog/SnappControllerDialog;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->b:Lcab/snapp/snappdialog/SnappControllerDialog;

    .line 483
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->b:Lcab/snapp/snappdialog/SnappControllerDialog;

    return-object p1
.end method

.method public showPromoLoading()V
    .locals 2

    .line 402
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->snapp:Lcab/snapp/snappuikit/SnappLoading;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/SnappLoading;->setVisibility(I)V

    return-void
.end method

.method public showPromoSaveButton()V
    .locals 2

    .line 426
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->promoSaveButton:Landroidx/appcompat/widget/AppCompatButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setVisibility(I)V

    return-void
.end method

.method public showSnappConfirmationDialog(IILjava/lang/String;IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 613
    new-instance v0, Lcab/snapp/snappdialog/b$a;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcab/snapp/snappdialog/b$a;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 614
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setTheme(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    .line 615
    invoke-virtual {v0, p1}, Lcab/snapp/snappdialog/b$a;->setIconFont(I)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 616
    invoke-virtual {p1, p2}, Lcab/snapp/snappdialog/b$a;->setDialogTitle(I)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    new-instance p2, Lcab/snapp/snappdialog/dialogViews/a/g$a;

    invoke-direct {p2}, Lcab/snapp/snappdialog/dialogViews/a/g$a;-><init>()V

    .line 618
    invoke-virtual {p2, p3}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->setMessage(Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/g$a;

    move-result-object p2

    .line 619
    invoke-virtual {p2}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->build()Lcab/snapp/snappdialog/dialogViews/a/g;

    move-result-object p2

    .line 617
    invoke-virtual {p1, p2}, Lcab/snapp/snappdialog/b$a;->setDialogViewType(Lcab/snapp/snappdialog/dialogViews/a/c;)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 621
    invoke-virtual {p1, p4, p6}, Lcab/snapp/snappdialog/b$a;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 622
    invoke-virtual {p1, p5, p7}, Lcab/snapp/snappdialog/b$a;->setNegativeButton(ILandroid/view/View$OnClickListener;)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 623
    invoke-virtual {p1, v1}, Lcab/snapp/snappdialog/b$a;->showOnBuild(Z)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 624
    invoke-virtual {p1}, Lcab/snapp/snappdialog/b$a;->build()Lcab/snapp/snappdialog/b;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->e:Lcab/snapp/snappdialog/b;

    return-void
.end method

.method public showSnappRoseConfirmationDialog(IIIIILandroid/view/View$OnClickListener;)V
    .locals 2

    .line 569
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 574
    :cond_0
    new-instance v0, Lcab/snapp/snappdialog/b$a;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcab/snapp/snappdialog/b$a;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 575
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setTheme(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    .line 576
    invoke-virtual {v0, p1}, Lcab/snapp/snappdialog/b$a;->setIconFont(I)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 577
    invoke-virtual {p1, p2}, Lcab/snapp/snappdialog/b$a;->setDialogTitle(I)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    new-instance p2, Lcab/snapp/snappdialog/dialogViews/a/g$a;

    invoke-direct {p2}, Lcab/snapp/snappdialog/dialogViews/a/g$a;-><init>()V

    .line 579
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->setMessage(Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/g$a;

    move-result-object p2

    .line 580
    invoke-virtual {p2}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->build()Lcab/snapp/snappdialog/dialogViews/a/g;

    move-result-object p2

    .line 578
    invoke-virtual {p1, p2}, Lcab/snapp/snappdialog/b$a;->setDialogViewType(Lcab/snapp/snappdialog/dialogViews/a/c;)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 582
    invoke-virtual {p1, p4, p6}, Lcab/snapp/snappdialog/b$a;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    new-instance p2, Lcab/snapp/passenger/units/footer/ride_request_footer/-$$Lambda$RideRequestFooterView$R5RDvSm6myPe9MdArksqsHsyjQE;

    invoke-direct {p2, p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/-$$Lambda$RideRequestFooterView$R5RDvSm6myPe9MdArksqsHsyjQE;-><init>(Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;)V

    .line 583
    invoke-virtual {p1, p5, p2}, Lcab/snapp/snappdialog/b$a;->setNegativeButton(ILandroid/view/View$OnClickListener;)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 584
    invoke-virtual {p1, v1}, Lcab/snapp/snappdialog/b$a;->showOnBuild(Z)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 585
    invoke-virtual {p1}, Lcab/snapp/snappdialog/b$a;->build()Lcab/snapp/snappdialog/b;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->d:Lcab/snapp/snappdialog/b;

    return-void
.end method

.method public showToast(I)V
    .locals 1

    .line 517
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 519
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->showToast(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 2

    .line 504
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 506
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcab/snapp/snappuikit/b;->makeText(Landroid/content/Context;Ljava/lang/String;)Lcab/snapp/snappuikit/b;

    move-result-object p1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcab/snapp/snappuikit/b;->textColor(I)Lcab/snapp/snappuikit/b;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/snappuikit/b;->show()V

    :cond_0
    return-void
.end method

.method public showTooltipDetailDialog(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 440
    invoke-static {}, Lcab/snapp/passenger/f/g;->isCurrentLocalRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "\u202b"

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 443
    new-instance v0, Lcab/snapp/snappdialog/dialogViews/a/g$a;

    invoke-direct {v0}, Lcab/snapp/snappdialog/dialogViews/a/g$a;-><init>()V

    invoke-virtual {v0, p2}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->setMessage(Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/g$a;

    move-result-object p2

    const/16 v0, 0x3ea

    invoke-virtual {p2, v0}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->setDirection(I)Lcab/snapp/snappdialog/dialogViews/a/g$a;

    move-result-object p2

    invoke-virtual {p2}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->build()Lcab/snapp/snappdialog/dialogViews/a/g;

    move-result-object p2

    goto :goto_0

    .line 448
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "\u202a"

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 449
    new-instance v0, Lcab/snapp/snappdialog/dialogViews/a/g$a;

    invoke-direct {v0}, Lcab/snapp/snappdialog/dialogViews/a/g$a;-><init>()V

    invoke-virtual {v0, p2}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->setMessage(Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/g$a;

    move-result-object p2

    invoke-virtual {p2}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->build()Lcab/snapp/snappdialog/dialogViews/a/g;

    move-result-object p2

    .line 453
    :goto_0
    new-instance v0, Lcab/snapp/snappdialog/b$a;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcab/snapp/snappdialog/b$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcab/snapp/snappdialog/b$a;->setDialogTitle(Ljava/lang/String;)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 454
    invoke-virtual {p1, p3}, Lcab/snapp/snappdialog/b$a;->setIcon(I)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    const/4 p3, 0x0

    .line 455
    invoke-virtual {p1, p3}, Lcab/snapp/snappdialog/b$a;->setTheme(I)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 456
    invoke-virtual {p1, p2}, Lcab/snapp/snappdialog/b$a;->setDialogViewType(Lcab/snapp/snappdialog/dialogViews/a/c;)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    const/16 p2, 0x191

    .line 457
    invoke-virtual {p1, p2}, Lcab/snapp/snappdialog/b$a;->dismissOnButtonClick(I)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    const p2, 0x7f1200f4

    .line 458
    invoke-virtual {p1, p2}, Lcab/snapp/snappdialog/b$a;->setPositiveButtonText(I)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcab/snapp/snappdialog/b$a;->showOnBuild(Z)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/snappdialog/b$a;->build()Lcab/snapp/snappdialog/b;

    move-result-object p1

    const p2, 0x7f0a010a

    .line 460
    invoke-virtual {p1, p2}, Lcab/snapp/snappdialog/b;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x5

    invoke-virtual {p2, p3}, Landroid/view/View;->setTextDirection(I)V

    .line 462
    invoke-virtual {p1}, Lcab/snapp/snappdialog/b;->show()V

    return-void
.end method

.method public smoothScrollToServiceTypeAtItem(I)V
    .locals 1

    .line 693
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method
