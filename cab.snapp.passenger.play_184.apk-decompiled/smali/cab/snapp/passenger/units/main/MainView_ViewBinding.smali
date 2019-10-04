.class public Lcab/snapp/passenger/units/main/MainView_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcab/snapp/passenger/units/main/MainView;

.field private view7f0a0396:Landroid/view/View;

.field private view7f0a039b:Landroid/view/View;

.field private view7f0a03a2:Landroid/view/View;

.field private view7f0a049c:Landroid/view/View;

.field private view7f0a04a0:Landroid/view/View;

.field private view7f0a04a3:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcab/snapp/passenger/units/main/MainView;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p1}, Lcab/snapp/passenger/units/main/MainView_ViewBinding;-><init>(Lcab/snapp/passenger/units/main/MainView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcab/snapp/passenger/units/main/MainView;Landroid/view/View;)V
    .locals 4

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcab/snapp/passenger/units/main/MainView_ViewBinding;->target:Lcab/snapp/passenger/units/main/MainView;

    .line 48
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0364

    const-string v2, "field \'locationSelectorDotIv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcab/snapp/passenger/units/main/MainView;->locationSelectorDotIv:Landroid/widget/ImageView;

    .line 49
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0366

    const-string v2, "field \'locationSelectorShadowIv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcab/snapp/passenger/units/main/MainView;->locationSelectorShadowIv:Landroid/widget/ImageView;

    const v0, 0x7f0a0396

    const-string v1, "field \'locationSelectorImageButton\' and method \'onLocationSelectorClick\'"

    .line 50
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 51
    const-class v2, Landroid/widget/ImageButton;

    const-string v3, "field \'locationSelectorImageButton\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p1, Lcab/snapp/passenger/units/main/MainView;->locationSelectorImageButton:Landroid/widget/ImageButton;

    .line 52
    iput-object v1, p0, Lcab/snapp/passenger/units/main/MainView_ViewBinding;->view7f0a0396:Landroid/view/View;

    .line 53
    new-instance v0, Lcab/snapp/passenger/units/main/MainView_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/main/MainView_ViewBinding$1;-><init>(Lcab/snapp/passenger/units/main/MainView_ViewBinding;Lcab/snapp/passenger/units/main/MainView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a036c

    const-string v1, "field \'footerContainerView\'"

    .line 59
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcab/snapp/passenger/units/main/MainView;->footerContainerView:Landroid/view/View;

    const v0, 0x7f0a0378

    const-string v1, "field \'headerContainerView\'"

    .line 60
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcab/snapp/passenger/units/main/MainView;->headerContainerView:Landroid/view/View;

    .line 61
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0397

    const-string v2, "field \'mapLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/main/MainView;->mapLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a039b

    const-string v1, "field \'myLocationFab\' and method \'onMyLocationClicked\'"

    .line 62
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 63
    const-class v2, Lcab/snapp/snappuikit/SnappFloatingActionButton;

    const-string v3, "field \'myLocationFab\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/SnappFloatingActionButton;

    iput-object v0, p1, Lcab/snapp/passenger/units/main/MainView;->myLocationFab:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    .line 64
    iput-object v1, p0, Lcab/snapp/passenger/units/main/MainView_ViewBinding;->view7f0a039b:Landroid/view/View;

    .line 65
    new-instance v0, Lcab/snapp/passenger/units/main/MainView_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/main/MainView_ViewBinding$2;-><init>(Lcab/snapp/passenger/units/main/MainView_ViewBinding;Lcab/snapp/passenger/units/main/MainView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a0399

    const-string v2, "field \'mapBoxCopyrightTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/main/MainView;->mapBoxCopyrightTv:Landroidx/appcompat/widget/AppCompatTextView;

    .line 72
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a03a1

    const-string v2, "field \'updateBannerLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/main/MainView;->updateBannerLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a03a2

    const-string v1, "field \'updateBannerNewFeaturesBtn\' and method \'onNewFeaturesBtnClicked\'"

    .line 73
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 74
    const-class v2, Landroidx/appcompat/widget/AppCompatButton;

    const-string v3, "field \'updateBannerNewFeaturesBtn\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    iput-object v0, p1, Lcab/snapp/passenger/units/main/MainView;->updateBannerNewFeaturesBtn:Landroidx/appcompat/widget/AppCompatButton;

    .line 75
    iput-object v1, p0, Lcab/snapp/passenger/units/main/MainView_ViewBinding;->view7f0a03a2:Landroid/view/View;

    .line 76
    new-instance v0, Lcab/snapp/passenger/units/main/MainView_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/main/MainView_ViewBinding$3;-><init>(Lcab/snapp/passenger/units/main/MainView_ViewBinding;Lcab/snapp/passenger/units/main/MainView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a03a3

    const-string v2, "field \'updateBannerTitleTb\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/main/MainView;->updateBannerTitleTb:Landroidx/appcompat/widget/AppCompatTextView;

    .line 83
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a03a0

    const-string v2, "field \'updateBannerDescriptionTb\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/main/MainView;->updateBannerDescriptionTb:Landroidx/appcompat/widget/AppCompatTextView;

    const v0, 0x7f0a0367

    const-string v1, "field \'contentGradientView\'"

    .line 84
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcab/snapp/passenger/units/main/MainView;->contentGradientView:Landroid/view/View;

    const v0, 0x7f0a037a

    const-string v1, "field \'headerGradientView\'"

    .line 85
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcab/snapp/passenger/units/main/MainView;->headerGradientView:Landroid/view/View;

    .line 86
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0a039e

    const-string v2, "field \'snappJekRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcab/snapp/passenger/units/main/MainView;->snappJekRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 87
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a039c

    const-string v2, "field \'snappJekBottomSheet\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/main/MainView;->snappJekBottomSheet:Landroid/widget/LinearLayout;

    const v0, 0x7f0a039d

    const-string v1, "field \'snappJekFrame\'"

    .line 88
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcab/snapp/passenger/units/main/MainView;->snappJekFrame:Landroid/view/View;

    .line 89
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a039f

    const-string v2, "field \'snappJekServiceTypesControl\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/main/MainView;->snappJekServiceTypesControl:Landroid/widget/RelativeLayout;

    .line 90
    const-class v0, Landroidx/cardview/widget/CardView;

    const v1, 0x7f0a049b

    const-string v2, "field \'snappJekServiceTypesCardView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p1, Lcab/snapp/passenger/units/main/MainView;->snappJekServiceTypesCardView:Landroidx/cardview/widget/CardView;

    const v0, 0x7f0a049c

    const-string v1, "field \'firstServiceTypeItem\' and method \'onRideItemOneClicked\'"

    .line 91
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 92
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'firstServiceTypeItem\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/main/MainView;->firstServiceTypeItem:Landroid/widget/LinearLayout;

    .line 93
    iput-object v1, p0, Lcab/snapp/passenger/units/main/MainView_ViewBinding;->view7f0a049c:Landroid/view/View;

    .line 94
    new-instance v0, Lcab/snapp/passenger/units/main/MainView_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/main/MainView_ViewBinding$4;-><init>(Lcab/snapp/passenger/units/main/MainView_ViewBinding;Lcab/snapp/passenger/units/main/MainView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a049d

    const-string v2, "field \'firstServiceTypeItemImageView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcab/snapp/passenger/units/main/MainView;->firstServiceTypeItemImageView:Landroid/widget/ImageView;

    .line 101
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a049e

    const-string v2, "field \'firstServiceTypeItemTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/main/MainView;->firstServiceTypeItemTextView:Landroidx/appcompat/widget/AppCompatTextView;

    const v0, 0x7f0a04a0

    const-string v1, "field \'secondServiceTypeItem\' and method \'onRideItemTwoClicked\'"

    .line 102
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 103
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'secondServiceTypeItem\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/main/MainView;->secondServiceTypeItem:Landroid/widget/LinearLayout;

    .line 104
    iput-object v1, p0, Lcab/snapp/passenger/units/main/MainView_ViewBinding;->view7f0a04a0:Landroid/view/View;

    .line 105
    new-instance v0, Lcab/snapp/passenger/units/main/MainView_ViewBinding$5;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/main/MainView_ViewBinding$5;-><init>(Lcab/snapp/passenger/units/main/MainView_ViewBinding;Lcab/snapp/passenger/units/main/MainView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a04a1

    const-string v2, "field \'secondServiceTypeItemImageView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcab/snapp/passenger/units/main/MainView;->secondServiceTypeItemImageView:Landroid/widget/ImageView;

    .line 112
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a04a2

    const-string v2, "field \'secondServiceTypeItemTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/main/MainView;->secondServiceTypeItemTextView:Landroidx/appcompat/widget/AppCompatTextView;

    const v0, 0x7f0a04a3

    const-string v1, "field \'thirdServiceTypeItem\' and method \'onRideItemThreeClicked\'"

    .line 113
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 114
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'thirdServiceTypeItem\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/main/MainView;->thirdServiceTypeItem:Landroid/widget/LinearLayout;

    .line 115
    iput-object v1, p0, Lcab/snapp/passenger/units/main/MainView_ViewBinding;->view7f0a04a3:Landroid/view/View;

    .line 116
    new-instance v0, Lcab/snapp/passenger/units/main/MainView_ViewBinding$6;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/main/MainView_ViewBinding$6;-><init>(Lcab/snapp/passenger/units/main/MainView_ViewBinding;Lcab/snapp/passenger/units/main/MainView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a04a4

    const-string v2, "field \'thirdServiceTypeItemImageView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcab/snapp/passenger/units/main/MainView;->thirdServiceTypeItemImageView:Landroid/widget/ImageView;

    .line 123
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a04a5

    const-string v2, "field \'thirdServiceTypeItemTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p2, p1, Lcab/snapp/passenger/units/main/MainView;->thirdServiceTypeItemTextView:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcab/snapp/passenger/units/main/MainView_ViewBinding;->target:Lcab/snapp/passenger/units/main/MainView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 131
    iput-object v1, p0, Lcab/snapp/passenger/units/main/MainView_ViewBinding;->target:Lcab/snapp/passenger/units/main/MainView;

    .line 133
    iput-object v1, v0, Lcab/snapp/passenger/units/main/MainView;->locationSelectorDotIv:Landroid/widget/ImageView;

    .line 134
    iput-object v1, v0, Lcab/snapp/passenger/units/main/MainView;->locationSelectorShadowIv:Landroid/widget/ImageView;

    .line 135
    iput-object v1, v0, Lcab/snapp/passenger/units/main/MainView;->locationSelectorImageButton:Landroid/widget/ImageButton;

    .line 136
    iput-object v1, v0, Lcab/snapp/passenger/units/main/MainView;->footerContainerView:Landroid/view/View;

    .line 137
    iput-object v1, v0, Lcab/snapp/passenger/units/main/MainView;->headerContainerView:Landroid/view/View;

    .line 138
    iput-object v1, v0, Lcab/snapp/passenger/units/main/MainView;->mapLayout:Landroid/widget/RelativeLayout;

    .line 139
    iput-object v1, v0, Lcab/snapp/passenger/units/main/MainView;->myLocationFab:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    .line 140
    iput-object v1, v0, Lcab/snapp/passenger/units/main/MainView;->mapBoxCopyrightTv:Landroidx/appcompat/widget/AppCompatTextView;

    .line 141
    iput-object v1, v0, Lcab/snapp/passenger/units/main/MainView;->updateBannerLayout:Landroid/widget/RelativeLayout;

    .line 142
    iput-object v1, v0, Lcab/snapp/passenger/units/main/MainView;->updateBannerNewFeaturesBtn:Landroidx/appcompat/widget/AppCompatButton;

    .line 143
    iput-object v1, v0, Lcab/snapp/passenger/units/main/MainView;->updateBannerTitleTb:Landroidx/appcompat/widget/AppCompatTextView;

    .line 144
    iput-object v1, v0, Lcab/snapp/passenger/units/main/MainView;->updateBannerDescriptionTb:Landroidx/appcompat/widget/AppCompatTextView;

    .line 145
    iput-object v1, v0, Lcab/snapp/passenger/units/main/MainView;->contentGradientView:Landroid/view/View;

    .line 146
    iput-object v1, v0, Lcab/snapp/passenger/units/main/MainView;->headerGradientView:Landroid/view/View;

    .line 147
    iput-object v1, v0, Lcab/snapp/passenger/units/main/MainView;->snappJekRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 148
    iput-object v1, v0, Lcab/snapp/passenger/units/main/MainView;->snappJekBottomSheet:Landroid/widget/LinearLayout;

    .line 149
    iput-object v1, v0, Lcab/snapp/passenger/units/main/MainView;->snappJekFrame:Landroid/view/View;

    .line 150
    iput-object v1, v0, Lcab/snapp/passenger/units/main/MainView;->snappJekServiceTypesControl:Landroid/widget/RelativeLayout;

    .line 151
    iput-object v1, v0, Lcab/snapp/passenger/units/main/MainView;->snappJekServiceTypesCardView:Landroidx/cardview/widget/CardView;

    .line 152
    iput-object v1, v0, Lcab/snapp/passenger/units/main/MainView;->firstServiceTypeItem:Landroid/widget/LinearLayout;

    .line 153
    iput-object v1, v0, Lcab/snapp/passenger/units/main/MainView;->firstServiceTypeItemImageView:Landroid/widget/ImageView;

    .line 154
    iput-object v1, v0, Lcab/snapp/passenger/units/main/MainView;->firstServiceTypeItemTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 155
    iput-object v1, v0, Lcab/snapp/passenger/units/main/MainView;->secondServiceTypeItem:Landroid/widget/LinearLayout;

    .line 156
    iput-object v1, v0, Lcab/snapp/passenger/units/main/MainView;->secondServiceTypeItemImageView:Landroid/widget/ImageView;

    .line 157
    iput-object v1, v0, Lcab/snapp/passenger/units/main/MainView;->secondServiceTypeItemTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 158
    iput-object v1, v0, Lcab/snapp/passenger/units/main/MainView;->thirdServiceTypeItem:Landroid/widget/LinearLayout;

    .line 159
    iput-object v1, v0, Lcab/snapp/passenger/units/main/MainView;->thirdServiceTypeItemImageView:Landroid/widget/ImageView;

    .line 160
    iput-object v1, v0, Lcab/snapp/passenger/units/main/MainView;->thirdServiceTypeItemTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 162
    iget-object v0, p0, Lcab/snapp/passenger/units/main/MainView_ViewBinding;->view7f0a0396:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iput-object v1, p0, Lcab/snapp/passenger/units/main/MainView_ViewBinding;->view7f0a0396:Landroid/view/View;

    .line 164
    iget-object v0, p0, Lcab/snapp/passenger/units/main/MainView_ViewBinding;->view7f0a039b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iput-object v1, p0, Lcab/snapp/passenger/units/main/MainView_ViewBinding;->view7f0a039b:Landroid/view/View;

    .line 166
    iget-object v0, p0, Lcab/snapp/passenger/units/main/MainView_ViewBinding;->view7f0a03a2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iput-object v1, p0, Lcab/snapp/passenger/units/main/MainView_ViewBinding;->view7f0a03a2:Landroid/view/View;

    .line 168
    iget-object v0, p0, Lcab/snapp/passenger/units/main/MainView_ViewBinding;->view7f0a049c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iput-object v1, p0, Lcab/snapp/passenger/units/main/MainView_ViewBinding;->view7f0a049c:Landroid/view/View;

    .line 170
    iget-object v0, p0, Lcab/snapp/passenger/units/main/MainView_ViewBinding;->view7f0a04a0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iput-object v1, p0, Lcab/snapp/passenger/units/main/MainView_ViewBinding;->view7f0a04a0:Landroid/view/View;

    .line 172
    iget-object v0, p0, Lcab/snapp/passenger/units/main/MainView_ViewBinding;->view7f0a04a3:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iput-object v1, p0, Lcab/snapp/passenger/units/main/MainView_ViewBinding;->view7f0a04a3:Landroid/view/View;

    return-void

    .line 130
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
