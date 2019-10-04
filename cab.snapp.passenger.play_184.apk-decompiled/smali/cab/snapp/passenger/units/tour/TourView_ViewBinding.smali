.class public Lcab/snapp/passenger/units/tour/TourView_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcab/snapp/passenger/units/tour/TourView;

.field private view7f0a04d9:Landroid/view/View;

.field private view7f0a04da:Landroid/view/View;

.field private view7f0a04dc:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcab/snapp/passenger/units/tour/TourView;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p1}, Lcab/snapp/passenger/units/tour/TourView_ViewBinding;-><init>(Lcab/snapp/passenger/units/tour/TourView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcab/snapp/passenger/units/tour/TourView;Landroid/view/View;)V
    .locals 4

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcab/snapp/passenger/units/tour/TourView_ViewBinding;->target:Lcab/snapp/passenger/units/tour/TourView;

    .line 38
    const-class v0, Landroidx/viewpager/widget/ViewPager;

    const v1, 0x7f0a04ec

    const-string v2, "field \'viewPager\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p1, Lcab/snapp/passenger/units/tour/TourView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const v0, 0x7f0a04dc

    const-string v1, "field \'nextImageViewLayout\' and method \'onNextPageImageViewClick\'"

    .line 39
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 40
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'nextImageViewLayout\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/tour/TourView;->nextImageViewLayout:Landroid/widget/LinearLayout;

    .line 41
    iput-object v1, p0, Lcab/snapp/passenger/units/tour/TourView_ViewBinding;->view7f0a04dc:Landroid/view/View;

    .line 42
    new-instance v0, Lcab/snapp/passenger/units/tour/TourView_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/tour/TourView_ViewBinding$1;-><init>(Lcab/snapp/passenger/units/tour/TourView_ViewBinding;Lcab/snapp/passenger/units/tour/TourView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04da

    const-string v1, "field \'enterButton\' and method \'onEnterButtonClick\'"

    .line 48
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 49
    const-class v2, Lcab/snapp/snappuikit/SnappButton;

    const-string v3, "field \'enterButton\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/SnappButton;

    iput-object v0, p1, Lcab/snapp/passenger/units/tour/TourView;->enterButton:Lcab/snapp/snappuikit/SnappButton;

    .line 50
    iput-object v1, p0, Lcab/snapp/passenger/units/tour/TourView_ViewBinding;->view7f0a04da:Landroid/view/View;

    .line 51
    new-instance v0, Lcab/snapp/passenger/units/tour/TourView_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/tour/TourView_ViewBinding$2;-><init>(Lcab/snapp/passenger/units/tour/TourView_ViewBinding;Lcab/snapp/passenger/units/tour/TourView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a04db

    const-string v2, "field \'nextImageView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcab/snapp/passenger/units/tour/TourView;->nextImageView:Landroid/widget/ImageView;

    .line 58
    const-class v0, Lio/github/kshitij_jain/indicatorview/IndicatorView;

    const v1, 0x7f0a00ea

    const-string v2, "field \'circleIndicatorView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/kshitij_jain/indicatorview/IndicatorView;

    iput-object v0, p1, Lcab/snapp/passenger/units/tour/TourView;->circleIndicatorView:Lio/github/kshitij_jain/indicatorview/IndicatorView;

    const v0, 0x7f0a04d9

    const-string v1, "method \'onCancelTourTextViewClick\'"

    .line 59
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 60
    iput-object p2, p0, Lcab/snapp/passenger/units/tour/TourView_ViewBinding;->view7f0a04d9:Landroid/view/View;

    .line 61
    new-instance v0, Lcab/snapp/passenger/units/tour/TourView_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/tour/TourView_ViewBinding$3;-><init>(Lcab/snapp/passenger/units/tour/TourView_ViewBinding;Lcab/snapp/passenger/units/tour/TourView;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 72
    iget-object v0, p0, Lcab/snapp/passenger/units/tour/TourView_ViewBinding;->target:Lcab/snapp/passenger/units/tour/TourView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 74
    iput-object v1, p0, Lcab/snapp/passenger/units/tour/TourView_ViewBinding;->target:Lcab/snapp/passenger/units/tour/TourView;

    .line 76
    iput-object v1, v0, Lcab/snapp/passenger/units/tour/TourView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 77
    iput-object v1, v0, Lcab/snapp/passenger/units/tour/TourView;->nextImageViewLayout:Landroid/widget/LinearLayout;

    .line 78
    iput-object v1, v0, Lcab/snapp/passenger/units/tour/TourView;->enterButton:Lcab/snapp/snappuikit/SnappButton;

    .line 79
    iput-object v1, v0, Lcab/snapp/passenger/units/tour/TourView;->nextImageView:Landroid/widget/ImageView;

    .line 80
    iput-object v1, v0, Lcab/snapp/passenger/units/tour/TourView;->circleIndicatorView:Lio/github/kshitij_jain/indicatorview/IndicatorView;

    .line 82
    iget-object v0, p0, Lcab/snapp/passenger/units/tour/TourView_ViewBinding;->view7f0a04dc:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iput-object v1, p0, Lcab/snapp/passenger/units/tour/TourView_ViewBinding;->view7f0a04dc:Landroid/view/View;

    .line 84
    iget-object v0, p0, Lcab/snapp/passenger/units/tour/TourView_ViewBinding;->view7f0a04da:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iput-object v1, p0, Lcab/snapp/passenger/units/tour/TourView_ViewBinding;->view7f0a04da:Landroid/view/View;

    .line 86
    iget-object v0, p0, Lcab/snapp/passenger/units/tour/TourView_ViewBinding;->view7f0a04d9:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iput-object v1, p0, Lcab/snapp/passenger/units/tour/TourView_ViewBinding;->view7f0a04d9:Landroid/view/View;

    return-void

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
