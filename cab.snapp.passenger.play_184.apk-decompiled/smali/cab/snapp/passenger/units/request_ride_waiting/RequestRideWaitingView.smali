.class public Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/arch/protocol/BaseView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/RelativeLayout;",
        "Lcab/snapp/arch/protocol/BaseView<",
        "Lcab/snapp/passenger/units/request_ride_waiting/c;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcab/snapp/passenger/units/request_ride_waiting/c;

.field private b:Lcab/snapp/snappdialog/b;

.field private c:Z

.field cancelRequestBackground:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03e4
    .end annotation
.end field

.field cancelRequestBtn:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03e5
    .end annotation
.end field

.field cancelRequestTv:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03e6
    .end annotation
.end field

.field holdToCancelTv:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03e8
    .end annotation
.end field

.field messageContentTv:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03e9
    .end annotation
.end field

.field messageTitleTv:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03ea
    .end annotation
.end field

.field titleTv:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03ec
    .end annotation
.end field

.field titleTvReallotement:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03eb
    .end annotation
.end field

.field waitingGifIv:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03e7
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 125
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 110
    iput-boolean p1, p0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 136
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 110
    iput-boolean p1, p0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 148
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 110
    iput-boolean p1, p0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->c:Z

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 467
    iget-object p1, p0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->a:Lcab/snapp/passenger/units/request_ride_waiting/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/request_ride_waiting/c;->onCloseUnderMaintenanceDialog()V

    return-void
.end method

.method static synthetic a(Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->c:Z

    return p0
.end method

.method static synthetic a(Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->c:Z

    return p1
.end method

.method public static synthetic lambda$T0lwEqDRhJYI8OPQ_SuPYd768yI(Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public dismissUnderMaintenanceDialog()V
    .locals 1

    .line 479
    iget-object v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->b:Lcab/snapp/snappdialog/b;

    if-eqz v0, :cond_0

    .line 481
    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->dismiss()V

    :cond_0
    return-void
.end method

.method public hideHoldToCancelWithAnimation(I)V
    .locals 3

    .line 290
    iget-object v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->holdToCancelTv:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->holdToCancelTv:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 294
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->holdToCancelTv:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 295
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 296
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v1, p1

    .line 297
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 298
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public hideMessageContent()V
    .locals 2

    .line 255
    iget-object v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->messageContentTv:Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    return-void
.end method

.method public hideMessageTitle()V
    .locals 2

    .line 229
    iget-object v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->messageTitleTv:Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 491
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 492
    invoke-static {p0, p0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method

.method public scaleDownCancelRequestWithAnimation(I)V
    .locals 3

    .line 309
    iget-object v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->cancelRequestBackground:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->cancelRequestBackground:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 313
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->cancelRequestBackground:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 314
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 315
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v1, p1

    .line 316
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView$1;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView$1;-><init>(Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;)V

    .line 317
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 325
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public scaleUpCancelRequestWithAnimation(I)V
    .locals 3

    .line 335
    iget-object v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->cancelRequestBackground:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->cancelRequestBackground:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 339
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->cancelRequestBackground:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    .line 340
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 341
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v1, p1

    .line 342
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView$2;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView$2;-><init>(Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;)V

    .line 343
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 371
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public setCancelRequestBackground(I)V
    .locals 1

    .line 401
    iget-object v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->cancelRequestBackground:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    return-void
.end method

.method public setCancelRequestTextColor(I)V
    .locals 1

    .line 411
    iget-object v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->cancelRequestTv:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    return-void
.end method

.method public setCancelRequestTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1

    .line 201
    iget-object v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->cancelRequestBackground:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setHoldToCancelTextColor(I)V
    .locals 1

    .line 381
    iget-object v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->holdToCancelTv:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    return-void
.end method

.method public setMessageContent(Ljava/lang/String;)V
    .locals 1

    .line 247
    iget-object v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->messageContentTv:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMessageContentTextColor(I)V
    .locals 1

    .line 421
    iget-object v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->messageContentTv:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    return-void
.end method

.method public setMessageTitle(Ljava/lang/String;)V
    .locals 1

    .line 221
    iget-object v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->messageTitleTv:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic setPresenter(Lcab/snapp/arch/protocol/BasePresenter;)V
    .locals 0

    .line 43
    check-cast p1, Lcab/snapp/passenger/units/request_ride_waiting/c;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->setPresenter(Lcab/snapp/passenger/units/request_ride_waiting/c;)V

    return-void
.end method

.method public setPresenter(Lcab/snapp/passenger/units/request_ride_waiting/c;)V
    .locals 0

    .line 500
    iput-object p1, p0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->a:Lcab/snapp/passenger/units/request_ride_waiting/c;

    return-void
.end method

.method public setTitle(Ljava/lang/String;Z)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 183
    iget-object p2, p0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->titleTvReallotement:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object p1, p0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->titleTvReallotement:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 185
    iget-object p1, p0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->titleTv:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    return-void

    .line 188
    :cond_0
    iget-object p2, p0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->titleTv:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object p1, p0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->titleTv:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 190
    iget-object p1, p0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->titleTvReallotement:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    return-void
.end method

.method public setTitleTextColor(I)V
    .locals 1

    .line 391
    iget-object v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->titleTv:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    return-void
.end method

.method public setWaitingGifTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1

    .line 211
    iget-object v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->waitingGifIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public showHoldToCancelWithAnimation(I)V
    .locals 3

    .line 273
    iget-object v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->holdToCancelTv:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->holdToCancelTv:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 277
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->holdToCancelTv:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 278
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v1, p1

    .line 279
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 280
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public showMessageContent()V
    .locals 2

    .line 263
    iget-object v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->messageContentTv:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    return-void
.end method

.method public showMessageTitle()V
    .locals 2

    .line 237
    iget-object v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->messageTitleTv:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    return-void
.end method

.method public showToast(II)V
    .locals 1

    .line 447
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 451
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->showToast(Ljava/lang/String;I)V

    return-void
.end method

.method public showToast(Ljava/lang/String;I)V
    .locals 1

    .line 432
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 436
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcab/snapp/snappuikit/b;->makeText(Landroid/content/Context;Ljava/lang/String;)Lcab/snapp/snappuikit/b;

    move-result-object p1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->getContext()Landroid/content/Context;

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

.method public showUnderMaintenanceDialog()V
    .locals 5

    .line 459
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->dismissUnderMaintenanceDialog()V

    .line 461
    new-instance v0, Lcab/snapp/snappdialog/b$a;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcab/snapp/snappdialog/b$a;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 462
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setTheme(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    const v2, 0x7f12014f

    .line 463
    invoke-virtual {v0, v2}, Lcab/snapp/snappdialog/b$a;->setDialogTitle(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    new-instance v2, Lcab/snapp/snappdialog/dialogViews/a/g$a;

    invoke-direct {v2}, Lcab/snapp/snappdialog/dialogViews/a/g$a;-><init>()V

    .line 465
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1200c5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->setMessage(Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/g$a;

    move-result-object v2

    .line 466
    invoke-virtual {v2}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->build()Lcab/snapp/snappdialog/dialogViews/a/g;

    move-result-object v2

    .line 464
    invoke-virtual {v0, v2}, Lcab/snapp/snappdialog/b$a;->setDialogViewType(Lcab/snapp/snappdialog/dialogViews/a/c;)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    new-instance v2, Lcab/snapp/passenger/units/request_ride_waiting/-$$Lambda$RequestRideWaitingView$T0lwEqDRhJYI8OPQ_SuPYd768yI;

    invoke-direct {v2, p0}, Lcab/snapp/passenger/units/request_ride_waiting/-$$Lambda$RequestRideWaitingView$T0lwEqDRhJYI8OPQ_SuPYd768yI;-><init>(Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;)V

    const v3, 0x7f120060

    .line 467
    invoke-virtual {v0, v3, v2}, Lcab/snapp/snappdialog/b$a;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    .line 468
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setCancelable(Z)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    .line 469
    invoke-virtual {v0}, Lcab/snapp/snappdialog/b$a;->build()Lcab/snapp/snappdialog/b;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->b:Lcab/snapp/snappdialog/b;

    .line 471
    iget-object v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->b:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->show()V

    return-void
.end method

.method public showWaitingGif(Ljava/lang/String;)V
    .locals 2

    .line 162
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->waitingGifIv:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/koushikdutta/ion/Ion;->with(Landroid/widget/ImageView;)Lcom/koushikdutta/ion/builder/Builders$IV$F;

    move-result-object v0

    sget-object v1, Lcom/koushikdutta/ion/builder/AnimateGifMode;->ANIMATE:Lcom/koushikdutta/ion/builder/AnimateGifMode;

    .line 168
    invoke-interface {v0, v1}, Lcom/koushikdutta/ion/builder/Builders$IV$F;->animateGif(Lcom/koushikdutta/ion/builder/AnimateGifMode;)Lcom/koushikdutta/ion/builder/ImageViewBuilder;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/ion/builder/Builders$IV$F;

    const v1, 0x7f0802e8

    .line 169
    invoke-interface {v0, v1}, Lcom/koushikdutta/ion/builder/Builders$IV$F;->placeholder(I)Lcom/koushikdutta/ion/builder/ImageViewBuilder;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/ion/builder/Builders$IV$F;

    .line 170
    invoke-interface {v0, v1}, Lcom/koushikdutta/ion/builder/Builders$IV$F;->error(I)Lcom/koushikdutta/ion/builder/ImageViewBuilder;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/ion/builder/Builders$IV$F;

    .line 171
    invoke-interface {v0, p1}, Lcom/koushikdutta/ion/builder/Builders$IV$F;->load(Ljava/lang/String;)Lcom/koushikdutta/ion/future/ImageViewFuture;

    :cond_1
    :goto_0
    return-void
.end method
