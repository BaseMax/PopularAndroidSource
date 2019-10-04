.class public Lcab/snapp/passenger/units/mainheader/MainHeaderView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/arch/protocol/BaseView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/RelativeLayout;",
        "Lcab/snapp/arch/protocol/BaseView<",
        "Lcab/snapp/passenger/units/mainheader/c;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcab/snapp/passenger/units/mainheader/c;

.field private b:Lcab/snapp/snappdialog/b;

.field backImageButton:Landroid/widget/ImageButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0373
    .end annotation
.end field

.field private c:Lcab/snapp/passenger/f/r;

.field cancelImageButton:Landroid/widget/ImageButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0374
    .end annotation
.end field

.field private d:Lcab/snapp/snappdialog/b;

.field drawerImageButton:Landroid/widget/ImageButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0375
    .end annotation
.end field

.field private e:Lcab/snapp/snappdialog/b;

.field endButtonsLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0376
    .end annotation
.end field

.field favoritesContainer:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0377
    .end annotation
.end field

.field freeRideTv:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0379
    .end annotation
.end field

.field messageToDriverImageView:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a038c
    .end annotation
.end field

.field messageToDriverTextView:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a038d
    .end annotation
.end field

.field optionsBtn:Landroidx/appcompat/widget/AppCompatButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a037b
    .end annotation
.end field

.field optionsContainerLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a037d
    .end annotation
.end field

.field optionsContainerView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a037c
    .end annotation
.end field

.field paymentStatusLayout:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a037e
    .end annotation
.end field

.field priceLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0380
    .end annotation
.end field

.field priceRialsTv:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0381
    .end annotation
.end field

.field priceTv:Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a037f
    .end annotation
.end field

.field promoButton:Landroidx/appcompat/widget/AppCompatButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0384
    .end annotation
.end field

.field promoEditText:Landroidx/appcompat/widget/AppCompatEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0385
    .end annotation
.end field

.field promoLayout:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0386
    .end annotation
.end field

.field searchImageButton:Landroid/widget/ImageButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0389
    .end annotation
.end field

.field shareRideButton:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a038a
    .end annotation
.end field

.field snappArrivedLayout:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a038b
    .end annotation
.end field

.field snappLoading:Lcab/snapp/snappuikit/SnappLoading;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0388
    .end annotation
.end field

.field snappToLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a038e
    .end annotation
.end field

.field snappToLayoutDummy:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a038f
    .end annotation
.end field

.field snappToTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0390
    .end annotation
.end field

.field startButtonsLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0391
    .end annotation
.end field

.field submitPromoButton:Landroidx/appcompat/widget/AppCompatButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0387
    .end annotation
.end field

.field sufficientCreditIv:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0382
    .end annotation
.end field

.field sufficientCreditTv:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0383
    .end annotation
.end field

.field titleTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0392
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 370
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 381
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 393
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private synthetic a(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 539
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 540
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->optionsContainerLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 542
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    :cond_0
    return-void
.end method

.method private synthetic b(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 514
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 515
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->optionsContainerLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 517
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$-NO8ykitacRzroCzMXQNPFwgxFs(Lcab/snapp/passenger/units/mainheader/MainHeaderView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->a(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic lambda$3i3YAFKserygF6qafeasQY_WRDA(Lcab/snapp/passenger/units/mainheader/MainHeaderView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->b(Landroid/animation/ValueAnimator;)V

    return-void
.end method


# virtual methods
.method public animateAndSetPriceFromZero(I)V
    .locals 1

    .line 822
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->priceTv:Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;->animateFromZero(Ljava/lang/Integer;)V

    return-void
.end method

.method public animatePriceText(ILandroid/animation/AnimatorListenerAdapter;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 865
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->priceTv:Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;

    invoke-virtual {v0, p2}, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;->setAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 867
    :cond_0
    iget-object p2, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->priceTv:Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;->animateText(Ljava/lang/Integer;)V

    return-void
.end method

.method public cancelMessageToDriverDialog()V
    .locals 1

    .line 761
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->b:Lcab/snapp/snappdialog/b;

    if-eqz v0, :cond_0

    .line 763
    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->dismiss()V

    .line 764
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->b:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->cancel()V

    :cond_0
    return-void
.end method

.method public getMessageToDriverView()Landroid/view/View;
    .locals 1

    .line 420
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->messageToDriverTextView:Landroidx/appcompat/widget/AppCompatTextView;

    return-object v0
.end method

.method public getOptionsBtn()Landroidx/appcompat/widget/AppCompatButton;
    .locals 1

    .line 1275
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->optionsBtn:Landroidx/appcompat/widget/AppCompatButton;

    return-object v0
.end method

.method public getOptionsContainerView()Landroid/view/View;
    .locals 1

    .line 472
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->optionsContainerView:Landroid/view/View;

    return-object v0
.end method

.method public getPromoCodeEditText()Landroid/view/View;
    .locals 1

    .line 1265
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->promoEditText:Landroidx/appcompat/widget/AppCompatEditText;

    return-object v0
.end method

.method public getPromoCodeText()Ljava/lang/String;
    .locals 1

    .line 406
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->promoEditText:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->promoEditText:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRideShareButton()Landroid/view/View;
    .locals 1

    .line 1071
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->shareRideButton:Landroidx/appcompat/widget/AppCompatTextView;

    return-object v0
.end method

.method public hideBackButton()V
    .locals 2

    .line 1145
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->backImageButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method public hideCancelRideButton()V
    .locals 2

    .line 1177
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->cancelImageButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method public hideCancelRideDialog()V
    .locals 1

    .line 1012
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->d:Lcab/snapp/snappdialog/b;

    if-eqz v0, :cond_0

    .line 1014
    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->dismiss()V

    .line 1015
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->d:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->cancel()V

    :cond_0
    return-void
.end method

.method public hideDummySnappToLayout()V
    .locals 2

    .line 1247
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->snappToLayoutDummy:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public hideFavoritesContainer()V
    .locals 2

    .line 1161
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->favoritesContainer:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public hideFreeRideTv()V
    .locals 2

    .line 1105
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->freeRideTv:Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    return-void
.end method

.method public hideLoadingDialog()V
    .locals 1

    .line 967
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->c:Lcab/snapp/passenger/f/r;

    if-eqz v0, :cond_0

    .line 969
    invoke-virtual {v0}, Lcab/snapp/passenger/f/r;->hideLoadingDialog()V

    :cond_0
    return-void
.end method

.method public hideOptionsContainer()V
    .locals 2

    .line 462
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->optionsContainerLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public hidePaymentStatus()V
    .locals 2

    .line 1299
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->paymentStatusLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public hidePriceLayout()V
    .locals 2

    .line 796
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->priceLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public hidePriceTv()V
    .locals 2

    .line 1079
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->priceTv:Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;->setVisibility(I)V

    .line 1080
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->priceRialsTv:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    return-void
.end method

.method public hidePromoLoading()V
    .locals 2

    .line 915
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->snappLoading:Lcab/snapp/snappuikit/SnappLoading;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/SnappLoading;->setVisibility(I)V

    return-void
.end method

.method public hidePromoSaveButton()V
    .locals 2

    .line 923
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->submitPromoButton:Landroidx/appcompat/widget/AppCompatButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setVisibility(I)V

    .line 924
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->promoEditText:Landroidx/appcompat/widget/AppCompatEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatEditText;->setEnabled(Z)V

    return-void
.end method

.method public hidePromoView()V
    .locals 2

    .line 438
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->promoLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public hideSearchButton()V
    .locals 2

    .line 1221
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->searchImageButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method public hideShareRide()V
    .locals 2

    .line 812
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->shareRideButton:Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    return-void
.end method

.method public hideShareRideDialog()V
    .locals 1

    .line 1057
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->e:Lcab/snapp/snappdialog/b;

    if-eqz v0, :cond_0

    .line 1059
    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->dismiss()V

    .line 1060
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->e:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->cancel()V

    :cond_0
    return-void
.end method

.method public hideSnappArrived()V
    .locals 2

    .line 711
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->snappArrivedLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public isOptionsContainerShowing()Z
    .locals 1

    .line 482
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->optionsContainerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->optionsContainerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMinimumHeight()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPromoViewShowing()Z
    .locals 1

    .line 430
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->promoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method onBackIbClicked()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0373
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->a:Lcab/snapp/passenger/units/mainheader/c;

    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/c;->onBackClicked()V

    :cond_0
    return-void
.end method

.method onCancelIbClicked()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0374
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->a:Lcab/snapp/passenger/units/mainheader/c;

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/c;->onCancelRideClicked()V

    :cond_0
    return-void
.end method

.method onDrawerIbClicked()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0375
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->a:Lcab/snapp/passenger/units/mainheader/c;

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/c;->onDrawerIconClicked()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 1284
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 1285
    invoke-static {p0, p0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 1286
    new-instance v0, Lcab/snapp/passenger/f/r;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcab/snapp/passenger/f/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->c:Lcab/snapp/passenger/f/r;

    return-void
.end method

.method onMainHeaderTitleClicked()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0392
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->a:Lcab/snapp/passenger/units/mainheader/c;

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/c;->onSearchClicked()V

    :cond_0
    return-void
.end method

.method onMessageToDriverIvClicked()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a038c
        }
    .end annotation

    .line 354
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->a:Lcab/snapp/passenger/units/mainheader/c;

    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/c;->onMessageToDriverClicked()V

    :cond_0
    return-void
.end method

.method onMessageToDriverTvClicked()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a038d
        }
    .end annotation

    .line 342
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->a:Lcab/snapp/passenger/units/mainheader/c;

    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/c;->onMessageToDriverClicked()V

    :cond_0
    return-void
.end method

.method onOptionsBtnClicked()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a037b
        }
    .end annotation

    .line 318
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->a:Lcab/snapp/passenger/units/mainheader/c;

    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/c;->onOptionsClicked()V

    :cond_0
    return-void
.end method

.method onPromoBtnClicked()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0384
        }
    .end annotation

    .line 306
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->a:Lcab/snapp/passenger/units/mainheader/c;

    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/c;->onPromoClicked()V

    :cond_0
    return-void
.end method

.method onSearchIbClicked()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0389
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->a:Lcab/snapp/passenger/units/mainheader/c;

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/c;->onSearchClicked()V

    :cond_0
    return-void
.end method

.method onShareRideClicked()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a038a
        }
    .end annotation

    .line 294
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->a:Lcab/snapp/passenger/units/mainheader/c;

    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/c;->onShareRideClicked()V

    :cond_0
    return-void
.end method

.method onSubmitPromoBtnClicked()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0387
        }
    .end annotation

    .line 330
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->a:Lcab/snapp/passenger/units/mainheader/c;

    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/c;->onSubmitPromoClicked()V

    :cond_0
    return-void
.end method

.method public scaleDownOptionsContainer(Landroid/animation/AnimatorListenerAdapter;)V
    .locals 3

    .line 531
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->optionsContainerLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 535
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMinimumHeight()I

    move-result v0

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput v2, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 536
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 537
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 538
    new-instance v1, Lcab/snapp/passenger/units/mainheader/-$$Lambda$MainHeaderView$-NO8ykitacRzroCzMXQNPFwgxFs;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/mainheader/-$$Lambda$MainHeaderView$-NO8ykitacRzroCzMXQNPFwgxFs;-><init>(Lcab/snapp/passenger/units/mainheader/MainHeaderView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 545
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 546
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public scaleUpOptionsContainer(Landroid/animation/AnimatorListenerAdapter;I)V
    .locals 6

    .line 493
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 498
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 500
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    goto :goto_0

    :cond_1
    const/high16 v0, 0x41c80000    # 25.0f

    .line 504
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    :goto_0
    double-to-int v0, v0

    .line 506
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700e9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 507
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 508
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070104

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v5, v4, v5

    const/4 v5, 0x1

    sub-int/2addr v2, v0

    sub-int/2addr v2, v1

    sub-int/2addr v2, v3

    aput v2, v4, v5

    .line 509
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 510
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 511
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v1, p2

    .line 512
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 513
    new-instance p2, Lcab/snapp/passenger/units/mainheader/-$$Lambda$MainHeaderView$3i3YAFKserygF6qafeasQY_WRDA;

    invoke-direct {p2, p0}, Lcab/snapp/passenger/units/mainheader/-$$Lambda$MainHeaderView$3i3YAFKserygF6qafeasQY_WRDA;-><init>(Lcab/snapp/passenger/units/mainheader/MainHeaderView;)V

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 520
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 521
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    :goto_1
    return-void
.end method

.method public setOptionsDisabled()V
    .locals 2

    .line 891
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->optionsBtn:Landroidx/appcompat/widget/AppCompatButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setEnabled(Z)V

    return-void
.end method

.method public setOptionsEnabled()V
    .locals 2

    .line 875
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->optionsBtn:Landroidx/appcompat/widget/AppCompatButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setEnabled(Z)V

    return-void
.end method

.method public bridge synthetic setPresenter(Lcab/snapp/arch/protocol/BasePresenter;)V
    .locals 0

    .line 46
    check-cast p1, Lcab/snapp/passenger/units/mainheader/c;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->setPresenter(Lcab/snapp/passenger/units/mainheader/c;)V

    return-void
.end method

.method public setPresenter(Lcab/snapp/passenger/units/mainheader/c;)V
    .locals 0

    .line 1294
    iput-object p1, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->a:Lcab/snapp/passenger/units/mainheader/c;

    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 1

    .line 600
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->priceTv:Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPriceEndValue(I)V
    .locals 1

    .line 842
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->priceTv:Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;->setEndValue(I)V

    return-void
.end method

.method public setPriceFormat(Ljava/lang/String;)V
    .locals 1

    .line 852
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->priceTv:Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;->setFormat(Ljava/lang/String;)V

    return-void
.end method

.method public setPriceStartValue(I)V
    .locals 1

    .line 832
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->priceTv:Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;->setStartValue(I)V

    return-void
.end method

.method public setPromoDisabled()V
    .locals 2

    .line 899
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->promoButton:Landroidx/appcompat/widget/AppCompatButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setEnabled(Z)V

    return-void
.end method

.method public setPromoEditTextDisabled()V
    .locals 2

    .line 1239
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->promoEditText:Landroidx/appcompat/widget/AppCompatEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatEditText;->setEnabled(Z)V

    return-void
.end method

.method public setPromoEnabled()V
    .locals 2

    .line 883
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->promoButton:Landroidx/appcompat/widget/AppCompatButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setEnabled(Z)V

    return-void
.end method

.method public setPromoText(Ljava/lang/String;)V
    .locals 1

    .line 1187
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->promoEditText:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSnappToAddressText(Ljava/lang/String;)V
    .locals 1

    .line 1231
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->snappToTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSufficientCreditIcon(I)V
    .locals 1

    .line 556
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->sufficientCreditIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setSufficientCreditText(I)V
    .locals 1

    .line 566
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->sufficientCreditTv:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    return-void
.end method

.method public setSufficientCreditText(Ljava/lang/String;)V
    .locals 1

    .line 576
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->sufficientCreditTv:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSufficientCreditTextColor(I)V
    .locals 2

    .line 586
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 590
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->sufficientCreditTv:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setTitleText(I)V
    .locals 1

    .line 1197
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public showBackButton()V
    .locals 2

    .line 1213
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->backImageButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method public showCancelRideButton()V
    .locals 2

    .line 1153
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->cancelImageButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method public showCancelRideDialog(IIILandroid/view/View$OnClickListener;ILandroid/view/View$OnClickListener;)V
    .locals 2

    .line 991
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 995
    :cond_0
    new-instance v0, Lcab/snapp/snappdialog/b$a;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcab/snapp/snappdialog/b$a;-><init>(Landroid/content/Context;)V

    .line 996
    invoke-virtual {v0, p1}, Lcab/snapp/snappdialog/b$a;->setDialogTitle(I)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    new-instance v0, Lcab/snapp/snappdialog/dialogViews/a/g$a;

    invoke-direct {v0}, Lcab/snapp/snappdialog/dialogViews/a/g$a;-><init>()V

    .line 998
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->setMessage(Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/g$a;

    move-result-object p2

    .line 999
    invoke-virtual {p2}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->build()Lcab/snapp/snappdialog/dialogViews/a/g;

    move-result-object p2

    .line 997
    invoke-virtual {p1, p2}, Lcab/snapp/snappdialog/b$a;->setDialogViewType(Lcab/snapp/snappdialog/dialogViews/a/c;)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 1001
    invoke-virtual {p1, p3, p4}, Lcab/snapp/snappdialog/b$a;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 1002
    invoke-virtual {p1, p5, p6}, Lcab/snapp/snappdialog/b$a;->setNegativeButton(ILandroid/view/View$OnClickListener;)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    const/4 p2, 0x1

    .line 1003
    invoke-virtual {p1, p2}, Lcab/snapp/snappdialog/b$a;->showOnBuild(Z)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 1004
    invoke-virtual {p1}, Lcab/snapp/snappdialog/b$a;->build()Lcab/snapp/snappdialog/b;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->d:Lcab/snapp/snappdialog/b;

    return-void
.end method

.method public showDummySnappToLayout()V
    .locals 2

    .line 1255
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->snappToLayoutDummy:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showFavoritesContainer()V
    .locals 2

    .line 1205
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->favoritesContainer:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public showFreeRideTv()V
    .locals 2

    .line 1097
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->freeRideTv:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    return-void
.end method

.method public showLoadingDialog()V
    .locals 1

    .line 956
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->c:Lcab/snapp/passenger/f/r;

    if-eqz v0, :cond_0

    .line 958
    invoke-virtual {v0}, Lcab/snapp/passenger/f/r;->showLoadingDialog()V

    :cond_0
    return-void
.end method

.method public showMessageToDriverDialog(Ljava/util/List;ILcab/snapp/snappdialog/dialogViews/a/e$b;IIIILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Lcab/snapp/snappdialog/dialogViews/a/e$b;",
            "IIII",
            "Landroid/view/View$OnClickListener;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .line 737
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getContext()Landroid/content/Context;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 741
    :cond_0
    new-instance p2, Lcab/snapp/snappdialog/b$a;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcab/snapp/snappdialog/b$a;-><init>(Landroid/content/Context;)V

    .line 742
    invoke-virtual {p2, p4}, Lcab/snapp/snappdialog/b$a;->setIconFont(I)Lcab/snapp/snappdialog/b$a;

    move-result-object p2

    .line 743
    invoke-virtual {p2, p5}, Lcab/snapp/snappdialog/b$a;->setDialogTitle(I)Lcab/snapp/snappdialog/b$a;

    move-result-object p2

    new-instance p4, Lcab/snapp/snappdialog/dialogViews/a/e$a;

    invoke-direct {p4}, Lcab/snapp/snappdialog/dialogViews/a/e$a;-><init>()V

    .line 746
    invoke-virtual {p4, p1}, Lcab/snapp/snappdialog/dialogViews/a/e$a;->setItems(Ljava/util/List;)Lcab/snapp/snappdialog/dialogViews/a/e$a;

    move-result-object p1

    .line 747
    invoke-virtual {p1, p3}, Lcab/snapp/snappdialog/dialogViews/a/e$a;->setOnItemSelectedListener(Lcab/snapp/snappdialog/dialogViews/a/e$b;)Lcab/snapp/snappdialog/dialogViews/a/e$a;

    move-result-object p1

    .line 748
    invoke-virtual {p1}, Lcab/snapp/snappdialog/dialogViews/a/e$a;->build()Lcab/snapp/snappdialog/dialogViews/a/e;

    move-result-object p1

    .line 744
    invoke-virtual {p2, p1}, Lcab/snapp/snappdialog/b$a;->setDialogViewType(Lcab/snapp/snappdialog/dialogViews/a/c;)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 750
    invoke-virtual {p1, p6, p9}, Lcab/snapp/snappdialog/b$a;->setNegativeButton(ILandroid/view/View$OnClickListener;)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 751
    invoke-virtual {p1, p7, p8}, Lcab/snapp/snappdialog/b$a;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    const/4 p2, 0x1

    .line 752
    invoke-virtual {p1, p2}, Lcab/snapp/snappdialog/b$a;->showOnBuild(Z)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 753
    invoke-virtual {p1}, Lcab/snapp/snappdialog/b$a;->build()Lcab/snapp/snappdialog/b;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->b:Lcab/snapp/snappdialog/b;

    return-void
.end method

.method public showOptionsContainer()V
    .locals 2

    .line 454
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->optionsContainerLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public showPaymentStatus()V
    .locals 2

    .line 1304
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->paymentStatusLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showPriceLayout()V
    .locals 2

    .line 788
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->priceLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public showPriceTv()V
    .locals 2

    .line 1088
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->priceTv:Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;->setVisibility(I)V

    .line 1089
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->priceRialsTv:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    return-void
.end method

.method public showPromoLoading()V
    .locals 2

    .line 907
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->snappLoading:Lcab/snapp/snappuikit/SnappLoading;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/SnappLoading;->setVisibility(I)V

    return-void
.end method

.method public showPromoSaveButton()V
    .locals 2

    .line 932
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->submitPromoButton:Landroidx/appcompat/widget/AppCompatButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setVisibility(I)V

    .line 933
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->promoEditText:Landroidx/appcompat/widget/AppCompatEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatEditText;->setEnabled(Z)V

    return-void
.end method

.method public showPromoView()V
    .locals 2

    .line 446
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->promoLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public showSearchButton()V
    .locals 2

    .line 1169
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->searchImageButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method public showShareRide()V
    .locals 2

    .line 804
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->shareRideButton:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    return-void
.end method

.method public showShareRideDialog(IIIILandroid/view/View$OnClickListener;)V
    .locals 2

    .line 1035
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1039
    :cond_0
    new-instance v0, Lcab/snapp/snappdialog/b$a;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcab/snapp/snappdialog/b$a;-><init>(Landroid/content/Context;)V

    .line 1040
    invoke-virtual {v0, p1}, Lcab/snapp/snappdialog/b$a;->setIconFont(I)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    const/4 v0, 0x0

    .line 1041
    invoke-virtual {p1, v0}, Lcab/snapp/snappdialog/b$a;->setTheme(I)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 1042
    invoke-virtual {p1, p2}, Lcab/snapp/snappdialog/b$a;->setDialogTitle(I)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    new-instance p2, Lcab/snapp/snappdialog/dialogViews/a/g$a;

    invoke-direct {p2}, Lcab/snapp/snappdialog/dialogViews/a/g$a;-><init>()V

    .line 1044
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->setMessage(Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/g$a;

    move-result-object p2

    .line 1045
    invoke-virtual {p2}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->build()Lcab/snapp/snappdialog/dialogViews/a/g;

    move-result-object p2

    .line 1043
    invoke-virtual {p1, p2}, Lcab/snapp/snappdialog/b$a;->setDialogViewType(Lcab/snapp/snappdialog/dialogViews/a/c;)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 1047
    invoke-virtual {p1, p4, p5}, Lcab/snapp/snappdialog/b$a;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    const/4 p2, 0x1

    .line 1048
    invoke-virtual {p1, p2}, Lcab/snapp/snappdialog/b$a;->showOnBuild(Z)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 1049
    invoke-virtual {p1}, Lcab/snapp/snappdialog/b$a;->build()Lcab/snapp/snappdialog/b;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->e:Lcab/snapp/snappdialog/b;

    return-void
.end method

.method public showSnappArrived()V
    .locals 2

    .line 608
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->snappArrivedLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public showToast(II)V
    .locals 2

    .line 776
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 780
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcab/snapp/snappuikit/b;->makeText(Landroid/content/Context;Ljava/lang/String;)Lcab/snapp/snappuikit/b;

    move-result-object p1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getContext()Landroid/content/Context;

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

.method public showToast(Ljava/lang/String;I)V
    .locals 1

    .line 944
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 948
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcab/snapp/snappuikit/b;->makeText(Landroid/content/Context;Ljava/lang/String;)Lcab/snapp/snappuikit/b;

    move-result-object p1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getContext()Landroid/content/Context;

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

.method public slideDownSnappArrived()V
    .locals 3

    .line 616
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 620
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->snappArrivedLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 622
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->snappArrivedLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 625
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->snappArrivedLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070106

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    .line 626
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->snappArrivedLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 627
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->snappArrivedLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 628
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 629
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 630
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/units/mainheader/MainHeaderView$1;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView$1;-><init>(Lcab/snapp/passenger/units/mainheader/MainHeaderView;)V

    .line 631
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 657
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_2
    :goto_0
    return-void
.end method

.method public slideDownSnappToLayout()V
    .locals 3

    .line 1129
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->snappToLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1131
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->snappToLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 1133
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->snappToLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->snappToLayout:Landroid/widget/LinearLayout;

    .line 1134
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 1135
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 1136
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1137
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public slideUpSnappArrived()V
    .locals 3

    .line 665
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 669
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->snappArrivedLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 671
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->snappArrivedLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 673
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->snappArrivedLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 674
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070106

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 675
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 676
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/units/mainheader/MainHeaderView$2;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView$2;-><init>(Lcab/snapp/passenger/units/mainheader/MainHeaderView;)V

    .line 677
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 703
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_2
    :goto_0
    return-void
.end method

.method public slideUpSnappToLayout()V
    .locals 3

    .line 1113
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->snappToLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1115
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->snappToLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 1117
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->snappToLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 1118
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 1119
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 1120
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1121
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
