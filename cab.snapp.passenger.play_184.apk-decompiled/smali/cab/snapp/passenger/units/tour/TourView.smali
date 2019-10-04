.class public Lcab/snapp/passenger/units/tour/TourView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/arch/protocol/BaseView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/LinearLayout;",
        "Lcab/snapp/arch/protocol/BaseView<",
        "Lcab/snapp/passenger/units/tour/e;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcab/snapp/passenger/units/tour/e;

.field protected b:Lbutterknife/Unbinder;

.field circleIndicatorView:Lio/github/kshitij_jain/indicatorview/IndicatorView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a00ea
    .end annotation
.end field

.field enterButton:Lcab/snapp/snappuikit/SnappButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04da
    .end annotation
.end field

.field nextImageView:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04db
    .end annotation
.end field

.field nextImageViewLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04dc
    .end annotation
.end field

.field viewPager:Landroidx/viewpager/widget/ViewPager;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04ec
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public hideEnterButton()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcab/snapp/passenger/units/tour/TourView;->enterButton:Lcab/snapp/snappuikit/SnappButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/SnappButton;->setVisibility(I)V

    return-void
.end method

.method public hideNextImageView()V
    .locals 2

    .line 132
    iget-object v0, p0, Lcab/snapp/passenger/units/tour/TourView;->nextImageViewLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public onCancelTourTextViewClick()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a04d9
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcab/snapp/passenger/units/tour/TourView;->a:Lcab/snapp/passenger/units/tour/e;

    if-nez v0, :cond_0

    return-void

    .line 91
    :cond_0
    invoke-virtual {v0}, Lcab/snapp/passenger/units/tour/e;->onCancelTourClick()V

    return-void
.end method

.method public onEnterButtonClick()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a04da
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcab/snapp/passenger/units/tour/TourView;->a:Lcab/snapp/passenger/units/tour/e;

    if-nez v0, :cond_0

    return-void

    .line 80
    :cond_0
    invoke-virtual {v0}, Lcab/snapp/passenger/units/tour/e;->onEnterButtonClick()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 108
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 109
    invoke-static {p0, p0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/units/tour/TourView;->b:Lbutterknife/Unbinder;

    return-void
.end method

.method public onNextPageImageViewClick()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a04dc
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcab/snapp/passenger/units/tour/TourView;->a:Lcab/snapp/passenger/units/tour/e;

    if-nez v0, :cond_0

    return-void

    .line 102
    :cond_0
    invoke-virtual {v0}, Lcab/snapp/passenger/units/tour/e;->onNextPageImageViewClick()V

    return-void
.end method

.method public rotateNextImageViewForRTLLanguages()V
    .locals 2

    .line 149
    iget-object v0, p0, Lcab/snapp/passenger/units/tour/TourView;->nextImageView:Landroid/widget/ImageView;

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotationX(F)V

    return-void
.end method

.method public bridge synthetic setPresenter(Lcab/snapp/arch/protocol/BasePresenter;)V
    .locals 0

    .line 29
    check-cast p1, Lcab/snapp/passenger/units/tour/e;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/tour/TourView;->setPresenter(Lcab/snapp/passenger/units/tour/e;)V

    return-void
.end method

.method public setPresenter(Lcab/snapp/passenger/units/tour/e;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcab/snapp/passenger/units/tour/TourView;->a:Lcab/snapp/passenger/units/tour/e;

    return-void
.end method

.method public showEnterButton()V
    .locals 2

    .line 117
    iget-object v0, p0, Lcab/snapp/passenger/units/tour/TourView;->enterButton:Lcab/snapp/snappuikit/SnappButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/SnappButton;->setVisibility(I)V

    return-void
.end method

.method public showNextImageView()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcab/snapp/passenger/units/tour/TourView;->nextImageViewLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
