.class public Lcab/snapp/passenger/units/splash/SplashView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/arch/protocol/BaseView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/RelativeLayout;",
        "Lcab/snapp/arch/protocol/BaseView<",
        "Lcab/snapp/passenger/units/splash/c;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcab/snapp/passenger/units/splash/c;

.field private b:Landroid/view/animation/Animation$AnimationListener;

.field private c:Lcab/snapp/snappdialog/b;

.field private d:Lcab/snapp/snappdialog/b;

.field snappLogoIv:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a02c9
    .end annotation
.end field

.field tryAgainButton:Lcab/snapp/snappuikit/SnappButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a02cb
    .end annotation
.end field

.field versionNameTv:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a02cc
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 104
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 116
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 332
    iget-object p1, p0, Lcab/snapp/passenger/units/splash/SplashView;->a:Lcab/snapp/passenger/units/splash/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/splash/c;->downloadGplayClicked()V

    return-void
.end method

.method public static synthetic lambda$C3Tfo5hmiAFF6IAz_O7-rpMqJ6g(Lcab/snapp/passenger/units/splash/SplashView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/splash/SplashView;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public cancelEndPointSelectionDialog()V
    .locals 1

    .line 381
    iget-object v0, p0, Lcab/snapp/passenger/units/splash/SplashView;->c:Lcab/snapp/snappdialog/b;

    if-eqz v0, :cond_0

    .line 383
    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->dismiss()V

    .line 384
    iget-object v0, p0, Lcab/snapp/passenger/units/splash/SplashView;->c:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->cancel()V

    const/4 v0, 0x0

    .line 385
    iput-object v0, p0, Lcab/snapp/passenger/units/splash/SplashView;->c:Lcab/snapp/snappdialog/b;

    :cond_0
    return-void
.end method

.method public closeQAEndpointsDialog()V
    .locals 1

    .line 490
    iget-object v0, p0, Lcab/snapp/passenger/units/splash/SplashView;->d:Lcab/snapp/snappdialog/b;

    if-eqz v0, :cond_0

    .line 491
    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->hide()V

    :cond_0
    return-void
.end method

.method public fadeInBottomElements()V
    .locals 0

    return-void
.end method

.method public fadeOutBottomElements()V
    .locals 0

    return-void
.end method

.method getSlideUpAnimationListener()Landroid/view/animation/Animation$AnimationListener;
    .locals 1

    .line 203
    iget-object v0, p0, Lcab/snapp/passenger/units/splash/SplashView;->b:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method public hideBottomSkyLine()V
    .locals 0

    return-void
.end method

.method public hideTryAgainButton()V
    .locals 2

    .line 219
    iget-object v0, p0, Lcab/snapp/passenger/units/splash/SplashView;->tryAgainButton:Lcab/snapp/snappuikit/SnappButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/SnappButton;->setVisibility(I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 501
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 502
    invoke-static {}, Lcab/snapp/passenger/f/a;->isDevCloudQAEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcab/snapp/passenger/units/splash/SplashView;->d:Lcab/snapp/snappdialog/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcab/snapp/passenger/units/splash/SplashView;->d:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->dismiss()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 153
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 154
    invoke-static {p0, p0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method

.method public onTryAgainButtonClicked()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a02cb
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcab/snapp/passenger/units/splash/SplashView;->a:Lcab/snapp/passenger/units/splash/c;

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Lcab/snapp/passenger/units/splash/c;->onTryAgainButtonClicked()V

    :cond_0
    return-void
.end method

.method public onVersionNameClicked()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a02cc
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcab/snapp/passenger/units/splash/SplashView;->a:Lcab/snapp/passenger/units/splash/c;

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0}, Lcab/snapp/passenger/units/splash/c;->onVersionClicked()V

    :cond_0
    return-void
.end method

.method public scaleDownBottomSkyLine()V
    .locals 0

    return-void
.end method

.method public bridge synthetic setPresenter(Lcab/snapp/arch/protocol/BasePresenter;)V
    .locals 0

    .line 34
    check-cast p1, Lcab/snapp/passenger/units/splash/c;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/splash/SplashView;->setPresenter(Lcab/snapp/passenger/units/splash/c;)V

    return-void
.end method

.method public setPresenter(Lcab/snapp/passenger/units/splash/c;)V
    .locals 0

    .line 395
    iput-object p1, p0, Lcab/snapp/passenger/units/splash/SplashView;->a:Lcab/snapp/passenger/units/splash/c;

    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 1

    .line 405
    iget-object v0, p0, Lcab/snapp/passenger/units/splash/SplashView;->versionNameTv:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showBottomSkyLine()V
    .locals 0

    return-void
.end method

.method public showEndPointSelectionDialog(Ljava/lang/String;ILjava/util/List;Lcab/snapp/snappdialog/b/d;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcab/snapp/snappdialog/b/d;",
            "Ljava/lang/String;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .line 355
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/SplashView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 359
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/splash/SplashView;->c:Lcab/snapp/snappdialog/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/SplashView;->cancelEndPointSelectionDialog()V

    .line 363
    :cond_1
    new-instance v0, Lcab/snapp/snappdialog/b$a;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/SplashView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcab/snapp/snappdialog/b$a;-><init>(Landroid/content/Context;)V

    .line 364
    invoke-virtual {v0, p1}, Lcab/snapp/snappdialog/b$a;->setDialogTitle(Ljava/lang/String;)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    const/4 v0, 0x0

    .line 365
    invoke-virtual {p1, v0}, Lcab/snapp/snappdialog/b$a;->setTheme(I)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 366
    invoke-virtual {p1, p2}, Lcab/snapp/snappdialog/b$a;->setIconFont(I)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    new-instance p2, Lcab/snapp/snappdialog/dialogViews/a/i$a;

    invoke-direct {p2}, Lcab/snapp/snappdialog/dialogViews/a/i$a;-><init>()V

    .line 368
    invoke-virtual {p2, p3}, Lcab/snapp/snappdialog/dialogViews/a/i$a;->setMessageList(Ljava/util/List;)Lcab/snapp/snappdialog/dialogViews/a/i$a;

    move-result-object p2

    .line 369
    invoke-virtual {p2, p4}, Lcab/snapp/snappdialog/dialogViews/a/i$a;->setSingleItemSelectedListener(Lcab/snapp/snappdialog/b/d;)Lcab/snapp/snappdialog/dialogViews/a/i$a;

    move-result-object p2

    .line 370
    invoke-virtual {p2}, Lcab/snapp/snappdialog/dialogViews/a/i$a;->build()Lcab/snapp/snappdialog/dialogViews/a/i;

    move-result-object p2

    .line 367
    invoke-virtual {p1, p2}, Lcab/snapp/snappdialog/b$a;->setDialogViewType(Lcab/snapp/snappdialog/dialogViews/a/c;)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 371
    invoke-virtual {p1, p5, p6}, Lcab/snapp/snappdialog/b$a;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    const/4 p2, 0x1

    .line 372
    invoke-virtual {p1, p2}, Lcab/snapp/snappdialog/b$a;->showOnBuild(Z)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 373
    invoke-virtual {p1}, Lcab/snapp/snappdialog/b$a;->build()Lcab/snapp/snappdialog/b;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/units/splash/SplashView;->c:Lcab/snapp/snappdialog/b;

    return-void
.end method

.method public showGplayServiceUpdateDialog()V
    .locals 5

    .line 325
    new-instance v0, Lcab/snapp/snappdialog/b$a;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/SplashView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcab/snapp/snappdialog/b$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0800a6

    .line 326
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setIcon(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    .line 327
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/SplashView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1200f2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setDialogTitle(Ljava/lang/String;)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    const/4 v1, 0x1

    .line 328
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setTheme(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    new-instance v2, Lcab/snapp/snappdialog/dialogViews/a/g$a;

    invoke-direct {v2}, Lcab/snapp/snappdialog/dialogViews/a/g$a;-><init>()V

    .line 330
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/SplashView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1200f1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->setMessage(Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/g$a;

    move-result-object v2

    .line 331
    invoke-virtual {v2}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->build()Lcab/snapp/snappdialog/dialogViews/a/g;

    move-result-object v2

    .line 329
    invoke-virtual {v0, v2}, Lcab/snapp/snappdialog/b$a;->setDialogViewType(Lcab/snapp/snappdialog/dialogViews/a/c;)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    .line 332
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/SplashView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f120273

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcab/snapp/passenger/units/splash/-$$Lambda$SplashView$C3Tfo5hmiAFF6IAz_O7-rpMqJ6g;

    invoke-direct {v3, p0}, Lcab/snapp/passenger/units/splash/-$$Lambda$SplashView$C3Tfo5hmiAFF6IAz_O7-rpMqJ6g;-><init>(Lcab/snapp/passenger/units/splash/SplashView;)V

    invoke-virtual {v0, v2, v3}, Lcab/snapp/snappdialog/b$a;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    const/4 v2, 0x0

    .line 333
    invoke-virtual {v0, v2}, Lcab/snapp/snappdialog/b$a;->setCancelable(Z)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    .line 334
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->showOnBuild(Z)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    .line 335
    invoke-virtual {v0}, Lcab/snapp/snappdialog/b$a;->build()Lcab/snapp/snappdialog/b;

    return-void
.end method

.method public showQAEndpointDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/TextWatcher;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 464
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/SplashView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 469
    :cond_0
    new-instance v0, Lcab/snapp/snappdialog/dialogViews/a/d$a;

    invoke-direct {v0}, Lcab/snapp/snappdialog/dialogViews/a/d$a;-><init>()V

    .line 470
    invoke-virtual {v0, p2}, Lcab/snapp/snappdialog/dialogViews/a/d$a;->setFirstEditTextHint(Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/d$a;

    move-result-object p2

    .line 471
    invoke-virtual {p2, p3}, Lcab/snapp/snappdialog/dialogViews/a/d$a;->setFirstEditTextText(Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/d$a;

    move-result-object p2

    .line 472
    invoke-virtual {p2, p4}, Lcab/snapp/snappdialog/dialogViews/a/d$a;->setFirstEtTextWatcher(Landroid/text/TextWatcher;)Lcab/snapp/snappdialog/dialogViews/a/d$a;

    move-result-object p2

    const/4 p3, 0x0

    .line 475
    invoke-virtual {p2, p3}, Lcab/snapp/snappdialog/dialogViews/a/d$a;->setChekboxText(Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/d$a;

    .line 477
    new-instance p3, Lcab/snapp/snappdialog/b$a;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/SplashView;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p3, p4}, Lcab/snapp/snappdialog/b$a;-><init>(Landroid/content/Context;)V

    const p4, 0x7f080166

    .line 478
    invoke-virtual {p3, p4}, Lcab/snapp/snappdialog/b$a;->setIcon(I)Lcab/snapp/snappdialog/b$a;

    move-result-object p3

    .line 479
    invoke-virtual {p3, p1}, Lcab/snapp/snappdialog/b$a;->setDialogTitle(Ljava/lang/String;)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 480
    invoke-virtual {p2}, Lcab/snapp/snappdialog/dialogViews/a/d$a;->build()Lcab/snapp/snappdialog/dialogViews/a/d;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcab/snapp/snappdialog/b$a;->setDialogViewType(Lcab/snapp/snappdialog/dialogViews/a/c;)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 481
    invoke-virtual {p1, p5, p6}, Lcab/snapp/snappdialog/b$a;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    const/4 p2, 0x1

    .line 482
    invoke-virtual {p1, p2}, Lcab/snapp/snappdialog/b$a;->showOnBuild(Z)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 483
    invoke-virtual {p1}, Lcab/snapp/snappdialog/b$a;->build()Lcab/snapp/snappdialog/b;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/units/splash/SplashView;->d:Lcab/snapp/snappdialog/b;

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 1

    .line 267
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/SplashView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 271
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/SplashView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcab/snapp/snappuikit/b;->makeText(Landroid/content/Context;Ljava/lang/String;)Lcab/snapp/snappuikit/b;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/snappuikit/b;->show()V

    return-void
.end method

.method public showTryAgainButton()V
    .locals 2

    .line 211
    iget-object v0, p0, Lcab/snapp/passenger/units/splash/SplashView;->tryAgainButton:Lcab/snapp/snappuikit/SnappButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/SnappButton;->setVisibility(I)V

    return-void
.end method

.method public showVersionName()V
    .locals 2

    .line 400
    iget-object v0, p0, Lcab/snapp/passenger/units/splash/SplashView;->versionNameTv:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    return-void
.end method

.method public slideUpScreenElements()V
    .locals 0

    return-void
.end method

.method public startLoadingAnimation()V
    .locals 0

    return-void
.end method

.method public stopLoadingAnimation()V
    .locals 0

    return-void
.end method

.method public translateDownSnappLogo()V
    .locals 3

    .line 419
    iget-object v0, p0, Lcab/snapp/passenger/units/splash/SplashView;->snappLogoIv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/SplashView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701f4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 420
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 421
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public translateUpSnappLogo()V
    .locals 3

    .line 412
    iget-object v0, p0, Lcab/snapp/passenger/units/splash/SplashView;->snappLogoIv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/SplashView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701f4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 413
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 414
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
