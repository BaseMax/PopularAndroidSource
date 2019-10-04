.class public Lcab/snapp/passenger/units/ride_options/RideOptionsView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/arch/protocol/BaseView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/RelativeLayout;",
        "Lcab/snapp/arch/protocol/BaseView<",
        "Lcab/snapp/passenger/units/ride_options/c;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcab/snapp/passenger/units/ride_options/c;

.field b:Lcab/snapp/snappdialog/b;

.field c:Lcab/snapp/snappdialog/b;

.field confirmOptionsBtn:Landroidx/appcompat/widget/AppCompatButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0409
    .end annotation
.end field

.field confirmOptionsLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a040a
    .end annotation
.end field

.field loading:Lcab/snapp/snappuikit/SnappLoading;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a040b
    .end annotation
.end field

.field rootRideStopLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a040d
    .end annotation
.end field

.field roundTripIv:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a040e
    .end annotation
.end field

.field roundTripLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a040f
    .end annotation
.end field

.field roundTripTv:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0410
    .end annotation
.end field

.field secondDestinationIv:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0411
    .end annotation
.end field

.field secondDestinationLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0412
    .end annotation
.end field

.field secondDestinationTv:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0413
    .end annotation
.end field

.field stopTimeIv:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0414
    .end annotation
.end field

.field stopTimeLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0415
    .end annotation
.end field

.field stopTimeTv:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0416
    .end annotation
.end field

.field userNameTv:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0417
    .end annotation
.end field

.field waitingIv:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0418
    .end annotation
.end field

.field waitingLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0419
    .end annotation
.end field

.field waitingTv:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a041a
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 168
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 179
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 191
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public dismissAndCancelChooseWaitingDialog()V
    .locals 1

    .line 357
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->b:Lcab/snapp/snappdialog/b;

    if-nez v0, :cond_0

    goto :goto_0

    .line 361
    :cond_0
    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 363
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->b:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->dismiss()V

    .line 365
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->b:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->cancel()V

    :cond_2
    :goto_0
    return-void
.end method

.method public dismissConfirmationDialog()V
    .locals 1

    .line 626
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->c:Lcab/snapp/snappdialog/b;

    if-eqz v0, :cond_0

    .line 628
    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->dismiss()V

    .line 629
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->c:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->cancel()V

    :cond_0
    return-void
.end method

.method public hideConfirmOptionsView()V
    .locals 2

    .line 575
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->confirmOptionsLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public hideLoading()V
    .locals 2

    .line 646
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->loading:Lcab/snapp/snappuikit/SnappLoading;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/SnappLoading;->setVisibility(I)V

    return-void
.end method

.method public onConfirmOptionsClick()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0409
        }
    .end annotation

    .line 251
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->a:Lcab/snapp/passenger/units/ride_options/c;

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/c;->onConfirmOptionsClicked()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 675
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 676
    invoke-static {p0, p0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method

.method public onRoundTripClick()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a040f
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->a:Lcab/snapp/passenger/units/ride_options/c;

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/c;->onRoundTripClicked()V

    :cond_0
    return-void
.end method

.method public onSecondDestinationClick()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0412
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->a:Lcab/snapp/passenger/units/ride_options/c;

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/c;->onSecondDestinationClicked()V

    :cond_0
    return-void
.end method

.method public onStopTimeClick()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0415
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->a:Lcab/snapp/passenger/units/ride_options/c;

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/c;->onStopTimeClicked()V

    :cond_0
    return-void
.end method

.method public onWaitingClick()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0419
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->a:Lcab/snapp/passenger/units/ride_options/c;

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/c;->onWaitingClicked()V

    :cond_0
    return-void
.end method

.method public setConfirmOptionsButtonText(Ljava/lang/String;)V
    .locals 1

    .line 656
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->confirmOptionsBtn:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic setPresenter(Lcab/snapp/arch/protocol/BasePresenter;)V
    .locals 0

    .line 31
    check-cast p1, Lcab/snapp/passenger/units/ride_options/c;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->setPresenter(Lcab/snapp/passenger/units/ride_options/c;)V

    return-void
.end method

.method public setPresenter(Lcab/snapp/passenger/units/ride_options/c;)V
    .locals 0

    .line 684
    iput-object p1, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->a:Lcab/snapp/passenger/units/ride_options/c;

    return-void
.end method

.method public setRoundTripIcon(I)V
    .locals 1

    .line 425
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->roundTripIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setRoundTripSelected()V
    .locals 2

    .line 281
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->roundTripLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    return-void
.end method

.method public setRoundTripTextColor(I)V
    .locals 1

    .line 435
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->roundTripTv:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    return-void
.end method

.method public setRoundTripUnselected()V
    .locals 2

    .line 289
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->roundTripLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    return-void
.end method

.method public setSecondDestinationDisabled()V
    .locals 2

    .line 473
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->secondDestinationLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    return-void
.end method

.method public setSecondDestinationIcon(I)V
    .locals 1

    .line 395
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->secondDestinationIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setSecondDestinationIconDisabled()V
    .locals 2

    .line 489
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->secondDestinationIv:Landroid/widget/ImageView;

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method public setSecondDestinationSelected()V
    .locals 2

    .line 265
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->secondDestinationLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    return-void
.end method

.method public setSecondDestinationText(Ljava/lang/String;)V
    .locals 1

    .line 415
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->secondDestinationTv:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSecondDestinationTextColor(I)V
    .locals 1

    .line 405
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->secondDestinationTv:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    return-void
.end method

.method public setSecondDestinationTextDisabled()V
    .locals 2

    .line 481
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->secondDestinationTv:Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setAlpha(F)V

    return-void
.end method

.method public setSecondDestinationUnselected()V
    .locals 2

    .line 273
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->secondDestinationLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    return-void
.end method

.method public setStopIconDisabled()V
    .locals 2

    .line 531
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->stopTimeIv:Landroid/widget/ImageView;

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method public setStopTextDisabled()V
    .locals 2

    .line 523
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->stopTimeTv:Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setAlpha(F)V

    return-void
.end method

.method public setStopTime(Ljava/lang/String;)V
    .locals 1

    .line 375
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->stopTimeTv:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setStopTimeIcon(I)V
    .locals 1

    .line 465
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->stopTimeIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setStopTimeIconTintColor(I)V
    .locals 2

    .line 666
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->stopTimeIv:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setStopTimeTextColor(I)V
    .locals 1

    .line 385
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->stopTimeTv:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 1

    .line 585
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->userNameTv:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 586
    iget-object p1, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->userNameTv:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setTextDirection(I)V

    return-void
.end method

.method public setWaitingDisabled()V
    .locals 2

    .line 497
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->waitingLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 498
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->stopTimeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 499
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->rootRideStopLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    return-void
.end method

.method public setWaitingIcon(I)V
    .locals 1

    .line 445
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->waitingIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setWaitingIconDisabled()V
    .locals 2

    .line 515
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->waitingIv:Landroid/widget/ImageView;

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method public setWaitingSelected()V
    .locals 2

    .line 297
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->waitingLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 298
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->stopTimeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 299
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->rootRideStopLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    return-void
.end method

.method public setWaitingTextColor(I)V
    .locals 1

    .line 455
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->waitingTv:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    return-void
.end method

.method public setWaitingTextDisabled()V
    .locals 2

    .line 507
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->waitingTv:Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setAlpha(F)V

    return-void
.end method

.method public setWaitingUnselected()V
    .locals 2

    .line 307
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->waitingLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 308
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->stopTimeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 309
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->rootRideStopLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    return-void
.end method

.method public showChooseWaitingDialog(Ljava/util/List;Lcab/snapp/snappdialog/dialogViews/a/e$b;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcab/snapp/snappdialog/dialogViews/a/e$b;",
            "Ljava/lang/String;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .line 325
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 329
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->b:Lcab/snapp/snappdialog/b;

    if-eqz v0, :cond_1

    .line 331
    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->cancel()V

    const/4 v0, 0x0

    .line 332
    iput-object v0, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->b:Lcab/snapp/snappdialog/b;

    :cond_1
    if-eqz p1, :cond_3

    .line 334
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 338
    :cond_2
    new-instance v0, Lcab/snapp/snappdialog/b$a;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcab/snapp/snappdialog/b$a;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcab/snapp/snappdialog/dialogViews/a/e$a;

    invoke-direct {v1}, Lcab/snapp/snappdialog/dialogViews/a/e$a;-><init>()V

    .line 341
    invoke-virtual {v1, p1}, Lcab/snapp/snappdialog/dialogViews/a/e$a;->setItems(Ljava/util/List;)Lcab/snapp/snappdialog/dialogViews/a/e$a;

    move-result-object p1

    .line 342
    invoke-virtual {p1, p2}, Lcab/snapp/snappdialog/dialogViews/a/e$a;->setOnItemSelectedListener(Lcab/snapp/snappdialog/dialogViews/a/e$b;)Lcab/snapp/snappdialog/dialogViews/a/e$a;

    move-result-object p1

    .line 343
    invoke-virtual {p1}, Lcab/snapp/snappdialog/dialogViews/a/e$a;->build()Lcab/snapp/snappdialog/dialogViews/a/e;

    move-result-object p1

    .line 339
    invoke-virtual {v0, p1}, Lcab/snapp/snappdialog/b$a;->setDialogViewType(Lcab/snapp/snappdialog/dialogViews/a/c;)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    const/4 p2, 0x0

    .line 345
    invoke-virtual {p1, p2}, Lcab/snapp/snappdialog/b$a;->setTheme(I)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    const/4 p2, 0x1

    .line 346
    invoke-virtual {p1, p2}, Lcab/snapp/snappdialog/b$a;->setCancelable(Z)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 347
    invoke-virtual {p1, p3, p4}, Lcab/snapp/snappdialog/b$a;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 348
    invoke-virtual {p1, p2}, Lcab/snapp/snappdialog/b$a;->showOnBuild(Z)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 349
    invoke-virtual {p1}, Lcab/snapp/snappdialog/b$a;->build()Lcab/snapp/snappdialog/b;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->b:Lcab/snapp/snappdialog/b;

    :cond_3
    :goto_0
    return-void
.end method

.method public showConfirmOptionsView()V
    .locals 2

    .line 567
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->confirmOptionsLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public showConfirmationDialog(ILjava/lang/String;ILandroid/view/View$OnClickListener;I)V
    .locals 2

    .line 600
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 604
    :cond_0
    new-instance v0, Lcab/snapp/snappdialog/b$a;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcab/snapp/snappdialog/b$a;-><init>(Landroid/content/Context;)V

    .line 605
    invoke-virtual {v0, p1}, Lcab/snapp/snappdialog/b$a;->setDialogTitle(I)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    const/4 v0, 0x0

    .line 606
    invoke-virtual {p1, v0}, Lcab/snapp/snappdialog/b$a;->setTheme(I)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    new-instance v1, Lcab/snapp/snappdialog/dialogViews/a/g$a;

    invoke-direct {v1}, Lcab/snapp/snappdialog/dialogViews/a/g$a;-><init>()V

    .line 608
    invoke-virtual {v1, p2}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->setMessage(Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/g$a;

    move-result-object p2

    .line 609
    invoke-virtual {p2}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->build()Lcab/snapp/snappdialog/dialogViews/a/g;

    move-result-object p2

    .line 607
    invoke-virtual {p1, p2}, Lcab/snapp/snappdialog/b$a;->setDialogViewType(Lcab/snapp/snappdialog/dialogViews/a/c;)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 611
    invoke-virtual {p1, p3, p4}, Lcab/snapp/snappdialog/b$a;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 612
    invoke-virtual {p1, v0}, Lcab/snapp/snappdialog/b$a;->showOnBuild(Z)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 613
    invoke-virtual {p1}, Lcab/snapp/snappdialog/b$a;->build()Lcab/snapp/snappdialog/b;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->c:Lcab/snapp/snappdialog/b;

    .line 615
    iget-object p1, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->c:Lcab/snapp/snappdialog/b;

    const p2, 0x7f0a010a

    invoke-virtual {p1, p2}, Lcab/snapp/snappdialog/b;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p5}, Landroid/view/View;->setTextDirection(I)V

    .line 617
    iget-object p1, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->c:Lcab/snapp/snappdialog/b;

    invoke-virtual {p1}, Lcab/snapp/snappdialog/b;->show()V

    return-void
.end method

.method public showLoading()V
    .locals 2

    .line 638
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->loading:Lcab/snapp/snappuikit/SnappLoading;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/SnappLoading;->setVisibility(I)V

    return-void
.end method

.method public showToast(I)V
    .locals 2

    .line 541
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 545
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcab/snapp/snappuikit/b;->makeText(Landroid/content/Context;Ljava/lang/String;)Lcab/snapp/snappuikit/b;

    move-result-object p1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcab/snapp/snappuikit/b;->textColor(I)Lcab/snapp/snappuikit/b;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/snappuikit/b;->show()V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 1

    .line 555
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 559
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcab/snapp/snappuikit/b;->makeText(Landroid/content/Context;Ljava/lang/String;)Lcab/snapp/snappuikit/b;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/snappuikit/b;->show()V

    return-void
.end method
