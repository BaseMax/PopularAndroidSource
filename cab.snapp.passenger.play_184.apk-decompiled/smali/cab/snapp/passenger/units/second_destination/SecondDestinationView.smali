.class public Lcab/snapp/passenger/units/second_destination/SecondDestinationView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/arch/protocol/BaseView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/RelativeLayout;",
        "Lcab/snapp/arch/protocol/BaseView<",
        "Lcab/snapp/passenger/units/second_destination/d;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcab/snapp/passenger/units/second_destination/d;

.field private b:Lcab/snapp/passenger/f/r;

.field btnMyLocationFab:Lcab/snapp/snappuikit/SnappFloatingActionButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a045b
    .end annotation
.end field

.field private c:Lcab/snapp/snappuikit/c;

.field pinMarkerDotIv:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0455
    .end annotation
.end field

.field pinMarkerShadowIv:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0457
    .end annotation
.end field

.field tvDescriptionAddress:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a045d
    .end annotation
.end field

.field tvMapBoxCopyright:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a045a
    .end annotation
.end field

.field vMapParent:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0459
    .end annotation
.end field

.field vPinMarker:Landroidx/appcompat/widget/AppCompatImageButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a045c
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 118
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 374
    iget-object p1, p0, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->a:Lcab/snapp/passenger/units/second_destination/d;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/second_destination/d;->onSearchClick()V

    return-void
.end method

.method private synthetic a(Landroid/view/MenuItem;)Z
    .locals 1

    .line 297
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0a007c

    if-ne p1, v0, :cond_0

    .line 299
    iget-object p1, p0, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->a:Lcab/snapp/passenger/units/second_destination/d;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/second_destination/d;->onSearchClick()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 0

    .line 288
    iget-object p1, p0, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->a:Lcab/snapp/passenger/units/second_destination/d;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/second_destination/d;->onBackPressed()V

    return-void
.end method

.method public static synthetic lambda$2RlnAijY8lzYSsxaosaqS2sYPCY(Lcab/snapp/passenger/units/second_destination/SecondDestinationView;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->a(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$_CfaDYSCuONyY9q5uKY1N7_q4OQ(Lcab/snapp/passenger/units/second_destination/SecondDestinationView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$bw7VjTpKGKCbscrlwYCUFnV_xf4(Lcab/snapp/passenger/units/second_destination/SecondDestinationView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->b(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public cancelNoLocationDialog()V
    .locals 1

    .line 355
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 359
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->b:Lcab/snapp/passenger/f/r;

    if-eqz v0, :cond_1

    .line 361
    invoke-virtual {v0}, Lcab/snapp/passenger/f/r;->dismissNoLocationDialog()V

    :cond_1
    return-void
.end method

.method public hideLoadingDialog()V
    .locals 1

    .line 250
    iget-object v0, p0, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->b:Lcab/snapp/passenger/f/r;

    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {v0}, Lcab/snapp/passenger/f/r;->hideLoadingDialog()V

    :cond_0
    return-void
.end method

.method public hideMapBoxCopyright()V
    .locals 2

    .line 269
    iget-object v0, p0, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->tvMapBoxCopyright:Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    return-void
.end method

.method public makePinNormal()V
    .locals 7

    .line 153
    iget-object v0, p0, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->vPinMarker:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatImageButton;->getVisibility()I

    move-result v0

    const-wide/16 v1, 0xc8

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->vPinMarker:Landroidx/appcompat/widget/AppCompatImageButton;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/AppCompatImageButton;->setPivotY(F)V

    .line 156
    iget-object v0, p0, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->vPinMarker:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatImageButton;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v3

    invoke-virtual {v0, v6}, Landroidx/appcompat/widget/AppCompatImageButton;->setPivotX(F)V

    .line 157
    iget-object v0, p0, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->vPinMarker:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 158
    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 159
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 160
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 161
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v5, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v5}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    .line 162
    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 165
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->pinMarkerShadowIv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 167
    iget-object v0, p0, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->pinMarkerShadowIv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 168
    iget-object v0, p0, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->pinMarkerShadowIv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 169
    iget-object v0, p0, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->pinMarkerShadowIv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 170
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 171
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 172
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 173
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    .line 174
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    return-void
.end method

.method public makePinSmall()V
    .locals 6

    .line 184
    iget-object v0, p0, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->vPinMarker:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatImageButton;->getVisibility()I

    move-result v0

    const-wide/16 v1, 0xc8

    const/high16 v3, 0x40000000    # 2.0f

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->vPinMarker:Landroidx/appcompat/widget/AppCompatImageButton;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/AppCompatImageButton;->setPivotY(F)V

    .line 187
    iget-object v0, p0, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->vPinMarker:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatImageButton;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/AppCompatImageButton;->setPivotX(F)V

    .line 188
    iget-object v0, p0, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->vPinMarker:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v4, p0, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->vPinMarker:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 189
    invoke-virtual {v4}, Landroidx/appcompat/widget/AppCompatImageButton;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40c00000    # 6.0f

    div-float/2addr v4, v5

    neg-float v4, v4

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v4, 0x3f59999a    # 0.85f

    .line 190
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 191
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 192
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v4, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v4}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    .line 193
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 194
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 196
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->pinMarkerShadowIv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 198
    iget-object v0, p0, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->pinMarkerShadowIv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 199
    iget-object v0, p0, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->pinMarkerShadowIv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 200
    iget-object v0, p0, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->pinMarkerShadowIv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 201
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 202
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v3, 0x3ee66666    # 0.45f

    .line 203
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 204
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    .line 205
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 206
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 370
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 371
    invoke-static {p0, p0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 372
    new-instance v0, Lcab/snapp/passenger/f/r;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcab/snapp/passenger/f/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->b:Lcab/snapp/passenger/f/r;

    .line 373
    new-instance v0, Lcab/snapp/snappuikit/c;

    invoke-direct {v0, p0}, Lcab/snapp/snappuikit/c;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->c:Lcab/snapp/snappuikit/c;

    .line 374
    iget-object v0, p0, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->c:Lcab/snapp/snappuikit/c;

    new-instance v1, Lcab/snapp/passenger/units/second_destination/-$$Lambda$SecondDestinationView$_CfaDYSCuONyY9q5uKY1N7_q4OQ;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/second_destination/-$$Lambda$SecondDestinationView$_CfaDYSCuONyY9q5uKY1N7_q4OQ;-><init>(Lcab/snapp/passenger/units/second_destination/SecondDestinationView;)V

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/c;->setOnTitleClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onMyLocationClick()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a045b
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->a:Lcab/snapp/passenger/units/second_destination/d;

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0}, Lcab/snapp/passenger/units/second_destination/d;->onMyLocationClicked()V

    :cond_0
    return-void
.end method

.method public onPinClick()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a045c
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->a:Lcab/snapp/passenger/units/second_destination/d;

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0}, Lcab/snapp/passenger/units/second_destination/d;->onPinClicked()V

    :cond_0
    return-void
.end method

.method public setFormattedAddress(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 313
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    iget-object v0, p0, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->tvDescriptionAddress:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setPresenter(Lcab/snapp/arch/protocol/BasePresenter;)V
    .locals 0

    .line 26
    check-cast p1, Lcab/snapp/passenger/units/second_destination/d;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->setPresenter(Lcab/snapp/passenger/units/second_destination/d;)V

    return-void
.end method

.method public setPresenter(Lcab/snapp/passenger/units/second_destination/d;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->a:Lcab/snapp/passenger/units/second_destination/d;

    return-void
.end method

.method public setToolbarBackButton()V
    .locals 4

    .line 288
    iget-object v0, p0, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->c:Lcab/snapp/snappuikit/c;

    new-instance v1, Lcab/snapp/passenger/units/second_destination/-$$Lambda$SecondDestinationView$bw7VjTpKGKCbscrlwYCUFnV_xf4;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/second_destination/-$$Lambda$SecondDestinationView$bw7VjTpKGKCbscrlwYCUFnV_xf4;-><init>(Lcab/snapp/passenger/units/second_destination/SecondDestinationView;)V

    const v2, 0x7f0800bb

    const v3, 0x7f120040

    invoke-virtual {v0, v2, v1, v3}, Lcab/snapp/snappuikit/c;->setBackButton(ILandroid/view/View$OnClickListener;I)V

    return-void
.end method

.method public setToolbarMenu()V
    .locals 3

    .line 296
    iget-object v0, p0, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->c:Lcab/snapp/snappuikit/c;

    new-instance v1, Lcab/snapp/passenger/units/second_destination/-$$Lambda$SecondDestinationView$2RlnAijY8lzYSsxaosaqS2sYPCY;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/second_destination/-$$Lambda$SecondDestinationView$2RlnAijY8lzYSsxaosaqS2sYPCY;-><init>(Lcab/snapp/passenger/units/second_destination/SecondDestinationView;)V

    const/high16 v2, 0x7f0e0000

    invoke-virtual {v0, v2, v1}, Lcab/snapp/snappuikit/c;->setMenu(ILandroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;)V

    return-void
.end method

.method public setToolbarTitle(I)V
    .locals 2

    .line 280
    iget-object v0, p0, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->c:Lcab/snapp/snappuikit/c;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcab/snapp/snappuikit/c;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public showLoadingDialog()V
    .locals 1

    .line 239
    iget-object v0, p0, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->b:Lcab/snapp/passenger/f/r;

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {v0}, Lcab/snapp/passenger/f/r;->showLoadingDialog()V

    :cond_0
    return-void
.end method

.method public showMapBoxCopyright()V
    .locals 2

    .line 261
    iget-object v0, p0, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->tvMapBoxCopyright:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    return-void
.end method

.method public showNoLocationDialog(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 326
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 331
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->b:Lcab/snapp/passenger/f/r;

    if-eqz v0, :cond_1

    .line 333
    invoke-virtual {v0, p1, p2}, Lcab/snapp/passenger/f/r;->showNoLocationDialog(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public showNoPermissionDialog(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 344
    iget-object v0, p0, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->b:Lcab/snapp/passenger/f/r;

    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {v0, p1, p2}, Lcab/snapp/passenger/f/r;->showNoPermissionDialog(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public showToast(I)V
    .locals 1

    .line 217
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 1

    .line 227
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 231
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcab/snapp/snappuikit/b;->makeText(Landroid/content/Context;Ljava/lang/String;)Lcab/snapp/snappuikit/b;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/snappuikit/b;->show()V

    return-void
.end method
