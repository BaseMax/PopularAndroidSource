.class public Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/arch/protocol/BaseView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/LinearLayout;",
        "Lcab/snapp/arch/protocol/BaseView<",
        "Lcab/snapp/passenger/units/favorite_add_address/d;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcab/snapp/passenger/units/favorite_add_address/d;

.field private b:Lcab/snapp/passenger/f/r;

.field private c:Lcab/snapp/snappuikit/c;

.field private d:Lcab/snapp/snappdialog/b;

.field private e:Z

.field pinMarkerDotIv:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a033b
    .end annotation
.end field

.field pinMarkerShadowIv:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a033d
    .end annotation
.end field

.field viewFavoriteAddAddressMapBoxCopyrightTv:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0344
    .end annotation
.end field

.field viewFavoriteAddAddressMapParent:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a033f
    .end annotation
.end field

.field viewFavoriteAddAddressMyLocationFab:Lcab/snapp/snappuikit/SnappFloatingActionButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0345
    .end annotation
.end field

.field viewFavoriteAddAddressTv:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0340
    .end annotation
.end field

.field viewFavoriteAddressPinMarker:Landroidx/appcompat/widget/AppCompatImageButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0346
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 121
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 136
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 392
    iget-object p1, p0, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->a:Lcab/snapp/passenger/units/favorite_add_address/d;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/favorite_add_address/d;->onBackPressed()V

    return-void
.end method

.method private synthetic a(Landroid/view/MenuItem;)Z
    .locals 1

    .line 401
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0a007c

    if-ne p1, v0, :cond_0

    .line 403
    iget-object p1, p0, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->a:Lcab/snapp/passenger/units/favorite_add_address/d;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/favorite_add_address/d;->onSearchClicked()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic lambda$2dbUkOfmVS-zkH4jniI2Cuq9IJg(Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->a(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$5EPILWLkPTe2L2LGQfMfcTpelhA(Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public cancelAddFavoriteDialog()V
    .locals 1

    .line 479
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->d:Lcab/snapp/snappdialog/b;

    if-eqz v0, :cond_1

    .line 481
    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->d:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->dismiss()V

    .line 485
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->d:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->cancel()V

    const/4 v0, 0x0

    .line 486
    iput-boolean v0, p0, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->e:Z

    :cond_1
    return-void
.end method

.method public cancelLoadingDialog()V
    .locals 1

    .line 344
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->b:Lcab/snapp/passenger/f/r;

    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {v0}, Lcab/snapp/passenger/f/r;->hideLoadingDialog()V

    :cond_0
    return-void
.end method

.method public cancelNoLocationDialog()V
    .locals 1

    .line 444
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 448
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->b:Lcab/snapp/passenger/f/r;

    if-eqz v0, :cond_1

    .line 450
    invoke-virtual {v0}, Lcab/snapp/passenger/f/r;->dismissNoLocationDialog()V

    :cond_1
    return-void
.end method

.method public dismissAddFavoriteDialog()V
    .locals 1

    .line 492
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->d:Lcab/snapp/snappdialog/b;

    if-eqz v0, :cond_0

    .line 494
    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->dismiss()V

    :cond_0
    return-void
.end method

.method public hideMapBoxCopyright()V
    .locals 2

    .line 374
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->viewFavoriteAddAddressMapBoxCopyrightTv:Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    return-void
.end method

.method public makePinNormal()V
    .locals 7

    .line 191
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->viewFavoriteAddressPinMarker:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatImageButton;->getVisibility()I

    move-result v0

    const-wide/16 v1, 0xc8

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    .line 193
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->viewFavoriteAddressPinMarker:Landroidx/appcompat/widget/AppCompatImageButton;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/AppCompatImageButton;->setPivotY(F)V

    .line 194
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->viewFavoriteAddressPinMarker:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatImageButton;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v3

    invoke-virtual {v0, v6}, Landroidx/appcompat/widget/AppCompatImageButton;->setPivotX(F)V

    .line 195
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->viewFavoriteAddressPinMarker:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 196
    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 197
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 198
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 199
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v5, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v5}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    .line 200
    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 203
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->pinMarkerShadowIv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 205
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->pinMarkerShadowIv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 206
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->pinMarkerShadowIv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 207
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->pinMarkerShadowIv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 208
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 209
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 210
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 211
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    .line 212
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 213
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    return-void
.end method

.method public makePinSmall()V
    .locals 6

    .line 222
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->viewFavoriteAddressPinMarker:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatImageButton;->getVisibility()I

    move-result v0

    const-wide/16 v1, 0xc8

    const/high16 v3, 0x40000000    # 2.0f

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->viewFavoriteAddressPinMarker:Landroidx/appcompat/widget/AppCompatImageButton;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/AppCompatImageButton;->setPivotY(F)V

    .line 225
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->viewFavoriteAddressPinMarker:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatImageButton;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/AppCompatImageButton;->setPivotX(F)V

    .line 226
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->viewFavoriteAddressPinMarker:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v4, p0, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->viewFavoriteAddressPinMarker:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 227
    invoke-virtual {v4}, Landroidx/appcompat/widget/AppCompatImageButton;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40c00000    # 6.0f

    div-float/2addr v4, v5

    neg-float v4, v4

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v4, 0x3f59999a    # 0.85f

    .line 228
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 229
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 230
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v4, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v4}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    .line 231
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 232
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 234
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->pinMarkerShadowIv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 236
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->pinMarkerShadowIv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 237
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->pinMarkerShadowIv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 238
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->pinMarkerShadowIv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 239
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 240
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v3, 0x3ee66666    # 0.45f

    .line 241
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 242
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    .line 243
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 244
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 169
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 170
    invoke-static {p0, p0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 171
    new-instance v0, Lcab/snapp/passenger/f/r;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcab/snapp/passenger/f/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->b:Lcab/snapp/passenger/f/r;

    .line 172
    new-instance v0, Lcab/snapp/snappuikit/c;

    invoke-direct {v0, p0}, Lcab/snapp/snappuikit/c;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->c:Lcab/snapp/snappuikit/c;

    return-void
.end method

.method public onMyLocationClick()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0345
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->a:Lcab/snapp/passenger/units/favorite_add_address/d;

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {v0}, Lcab/snapp/passenger/units/favorite_add_address/d;->onMyLocationClicked()V

    :cond_0
    return-void
.end method

.method public onPinClick()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0346
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->a:Lcab/snapp/passenger/units/favorite_add_address/d;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Lcab/snapp/passenger/units/favorite_add_address/d;->onPinClicked()V

    :cond_0
    return-void
.end method

.method public setFormattedAddress(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 417
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 419
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->viewFavoriteAddAddressTv:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setPresenter(Lcab/snapp/arch/protocol/BasePresenter;)V
    .locals 0

    .line 32
    check-cast p1, Lcab/snapp/passenger/units/favorite_add_address/d;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->setPresenter(Lcab/snapp/passenger/units/favorite_add_address/d;)V

    return-void
.end method

.method public setPresenter(Lcab/snapp/passenger/units/favorite_add_address/d;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->a:Lcab/snapp/passenger/units/favorite_add_address/d;

    return-void
.end method

.method public setToolbarBackButton()V
    .locals 4

    .line 392
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->c:Lcab/snapp/snappuikit/c;

    new-instance v1, Lcab/snapp/passenger/units/favorite_add_address/-$$Lambda$FavoriteAddAddressView$5EPILWLkPTe2L2LGQfMfcTpelhA;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/favorite_add_address/-$$Lambda$FavoriteAddAddressView$5EPILWLkPTe2L2LGQfMfcTpelhA;-><init>(Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;)V

    const v2, 0x7f0800bb

    const v3, 0x7f120040

    invoke-virtual {v0, v2, v1, v3}, Lcab/snapp/snappuikit/c;->setBackButton(ILandroid/view/View$OnClickListener;I)V

    return-void
.end method

.method public setToolbarMenu()V
    .locals 3

    .line 400
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->c:Lcab/snapp/snappuikit/c;

    new-instance v1, Lcab/snapp/passenger/units/favorite_add_address/-$$Lambda$FavoriteAddAddressView$2dbUkOfmVS-zkH4jniI2Cuq9IJg;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/favorite_add_address/-$$Lambda$FavoriteAddAddressView$2dbUkOfmVS-zkH4jniI2Cuq9IJg;-><init>(Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;)V

    const/high16 v2, 0x7f0e0000

    invoke-virtual {v0, v2, v1}, Lcab/snapp/snappuikit/c;->setMenu(ILandroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;)V

    return-void
.end method

.method public setToolbarTitle(I)V
    .locals 2

    .line 384
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->c:Lcab/snapp/snappuikit/c;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcab/snapp/snappuikit/c;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public showAddFavoriteDialog(IIIILandroid/text/TextWatcher;IILandroid/text/TextWatcher;ILandroid/widget/CompoundButton$OnCheckedChangeListener;ILandroid/view/View$OnClickListener;)V
    .locals 2

    .line 277
    new-instance v0, Lcab/snapp/snappdialog/dialogViews/a/d$a;

    invoke-direct {v0}, Lcab/snapp/snappdialog/dialogViews/a/d$a;-><init>()V

    .line 278
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcab/snapp/snappdialog/dialogViews/a/d$a;->setFirstEditTextTitle(Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/d$a;

    move-result-object p3

    .line 279
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcab/snapp/snappdialog/dialogViews/a/d$a;->setFirstEditTextHint(Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/d$a;

    move-result-object p3

    .line 280
    invoke-virtual {p3, p5}, Lcab/snapp/snappdialog/dialogViews/a/d$a;->setFirstEtTextWatcher(Landroid/text/TextWatcher;)Lcab/snapp/snappdialog/dialogViews/a/d$a;

    move-result-object p3

    .line 281
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4, p6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcab/snapp/snappdialog/dialogViews/a/d$a;->setSecondEditTextTitle(Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/d$a;

    move-result-object p3

    .line 282
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4, p7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcab/snapp/snappdialog/dialogViews/a/d$a;->setSecondEditTextHint(Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/d$a;

    move-result-object p3

    .line 283
    invoke-virtual {p3, p8}, Lcab/snapp/snappdialog/dialogViews/a/d$a;->setSecondEtTextWatcher(Landroid/text/TextWatcher;)Lcab/snapp/snappdialog/dialogViews/a/d$a;

    move-result-object p3

    .line 285
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4, p9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcab/snapp/snappdialog/dialogViews/a/d$a;->setChekboxText(Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/d$a;

    move-result-object p4

    const/4 p5, 0x1

    .line 286
    invoke-virtual {p4, p5}, Lcab/snapp/snappdialog/dialogViews/a/d$a;->setCheckboxIsChecked(Z)Lcab/snapp/snappdialog/dialogViews/a/d$a;

    move-result-object p4

    .line 287
    invoke-virtual {p4, p10}, Lcab/snapp/snappdialog/dialogViews/a/d$a;->setCheckboxCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)Lcab/snapp/snappdialog/dialogViews/a/d$a;

    .line 290
    new-instance p4, Lcab/snapp/snappdialog/b$a;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->getContext()Landroid/content/Context;

    move-result-object p6

    invoke-direct {p4, p6}, Lcab/snapp/snappdialog/b$a;-><init>(Landroid/content/Context;)V

    .line 291
    invoke-virtual {p4, p1}, Lcab/snapp/snappdialog/b$a;->setIcon(I)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 292
    invoke-virtual {p1, p2}, Lcab/snapp/snappdialog/b$a;->setDialogTitle(I)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 293
    invoke-virtual {p3}, Lcab/snapp/snappdialog/dialogViews/a/d$a;->build()Lcab/snapp/snappdialog/dialogViews/a/d;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcab/snapp/snappdialog/b$a;->setDialogViewType(Lcab/snapp/snappdialog/dialogViews/a/c;)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 294
    invoke-virtual {p1, p11, p12}, Lcab/snapp/snappdialog/b$a;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 295
    invoke-virtual {p1, p5}, Lcab/snapp/snappdialog/b$a;->showOnBuild(Z)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 296
    invoke-virtual {p1}, Lcab/snapp/snappdialog/b$a;->build()Lcab/snapp/snappdialog/b;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->d:Lcab/snapp/snappdialog/b;

    .line 297
    iput-boolean p5, p0, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->e:Z

    return-void
.end method

.method public showAddFavoriteDialogIfNeeded()V
    .locals 1

    .line 500
    iget-boolean v0, p0, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->d:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 502
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->d:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->show()V

    :cond_0
    return-void
.end method

.method public showLoadingDialog()V
    .locals 1

    .line 333
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->b:Lcab/snapp/passenger/f/r;

    if-eqz v0, :cond_0

    .line 335
    invoke-virtual {v0}, Lcab/snapp/passenger/f/r;->showLoadingDialog()V

    :cond_0
    return-void
.end method

.method public showLocationAddedToast()V
    .locals 3

    .line 355
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 357
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1201ee

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public showLocationNotAvailableDialog(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 428
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 433
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->b:Lcab/snapp/passenger/f/r;

    if-eqz v0, :cond_1

    .line 435
    invoke-virtual {v0, p1, p2}, Lcab/snapp/passenger/f/r;->showNoLocationDialog(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public showMapBoxCopyright()V
    .locals 2

    .line 366
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->viewFavoriteAddAddressMapBoxCopyrightTv:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    return-void
.end method

.method public showNoPermissionDialog(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 462
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 467
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->b:Lcab/snapp/passenger/f/r;

    if-eqz v0, :cond_1

    .line 469
    invoke-virtual {v0, p1, p2}, Lcab/snapp/passenger/f/r;->showNoPermissionDialog(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public showToast(I)V
    .locals 1

    .line 307
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 311
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f06004b

    invoke-virtual {p0, p1, v0}, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->showToast(Ljava/lang/String;I)V

    return-void
.end method

.method public showToast(Ljava/lang/String;I)V
    .locals 1

    .line 321
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 325
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcab/snapp/snappuikit/b;->makeText(Landroid/content/Context;Ljava/lang/String;)Lcab/snapp/snappuikit/b;

    move-result-object p1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->getContext()Landroid/content/Context;

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
