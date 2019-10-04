.class public Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

.field private view7f0a0433:Landroid/view/View;

.field private view7f0a0438:Landroid/view/View;

.field private view7f0a043a:Landroid/view/View;

.field private view7f0a043d:Landroid/view/View;

.field private view7f0a0440:Landroid/view/View;

.field private view7f0a0445:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView_ViewBinding;-><init>(Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;Landroid/view/View;)V
    .locals 4

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView_ViewBinding;->target:Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    .line 46
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0444

    const-string v2, "field \'tooltipsLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->tooltipsLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0445

    const-string v1, "field \'moreDescButton\' and method \'onTooltipDetailsClicked\'"

    .line 47
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 48
    const-class v2, Landroidx/appcompat/widget/AppCompatButton;

    const-string v3, "field \'moreDescButton\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    iput-object v0, p1, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->moreDescButton:Landroidx/appcompat/widget/AppCompatButton;

    .line 49
    iput-object v1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView_ViewBinding;->view7f0a0445:Landroid/view/View;

    .line 50
    new-instance v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView_ViewBinding$1;-><init>(Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView_ViewBinding;Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a0446

    const-string v2, "field \'shortDescriptionTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->shortDescriptionTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 57
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a0442

    const-string v2, "field \'recyclerLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->recyclerLayout:Landroid/widget/LinearLayout;

    .line 58
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0a0443

    const-string v2, "field \'recyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 59
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a0439

    const-string v2, "field \'optionsLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->optionsLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0438

    const-string v1, "field \'optionsButton\' and method \'onOptionsClicked\'"

    .line 60
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 61
    const-class v2, Landroidx/appcompat/widget/AppCompatButton;

    const-string v3, "field \'optionsButton\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    iput-object v0, p1, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->optionsButton:Landroidx/appcompat/widget/AppCompatButton;

    .line 62
    iput-object v1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView_ViewBinding;->view7f0a0438:Landroid/view/View;

    .line 63
    new-instance v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView_ViewBinding$2;-><init>(Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView_ViewBinding;Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a043d

    const-string v1, "field \'promoButton\' and method \'onPromoClicked\'"

    .line 69
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 70
    const-class v2, Landroidx/appcompat/widget/AppCompatButton;

    const-string v3, "field \'promoButton\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    iput-object v0, p1, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->promoButton:Landroidx/appcompat/widget/AppCompatButton;

    .line 71
    iput-object v1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView_ViewBinding;->view7f0a043d:Landroid/view/View;

    .line 72
    new-instance v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView_ViewBinding$3;-><init>(Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView_ViewBinding;Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    const-class v0, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;

    const v1, 0x7f0a043b

    const-string v2, "field \'priceCountingTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->priceCountingTextView:Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;

    const v0, 0x7f0a0433

    const-string v1, "field \'actionButton\' and method \'onActionClicked\'"

    .line 79
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 80
    const-class v2, Landroidx/appcompat/widget/AppCompatButton;

    const-string v3, "field \'actionButton\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    iput-object v0, p1, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->actionButton:Landroidx/appcompat/widget/AppCompatButton;

    .line 81
    iput-object v1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView_ViewBinding;->view7f0a0433:Landroid/view/View;

    .line 82
    new-instance v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView_ViewBinding$4;-><init>(Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView_ViewBinding;Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a043f

    const-string v2, "field \'promoLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->promoLayout:Landroid/widget/RelativeLayout;

    .line 89
    const-class v0, Landroidx/appcompat/widget/AppCompatEditText;

    const v1, 0x7f0a043e

    const-string v2, "field \'promoEditText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatEditText;

    iput-object v0, p1, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->promoEditText:Landroidx/appcompat/widget/AppCompatEditText;

    const v0, 0x7f0a0440

    const-string v1, "field \'promoSaveButton\' and method \'onPromoSaveClicked\'"

    .line 90
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 91
    const-class v2, Landroidx/appcompat/widget/AppCompatButton;

    const-string v3, "field \'promoSaveButton\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    iput-object v0, p1, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->promoSaveButton:Landroidx/appcompat/widget/AppCompatButton;

    .line 92
    iput-object v1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView_ViewBinding;->view7f0a0440:Landroid/view/View;

    .line 93
    new-instance v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView_ViewBinding$5;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView_ViewBinding$5;-><init>(Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView_ViewBinding;Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    const-class v0, Lcab/snapp/snappuikit/SnappLoading;

    const v1, 0x7f0a0441

    const-string v2, "field \'snapp\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/SnappLoading;

    iput-object v0, p1, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->snapp:Lcab/snapp/snappuikit/SnappLoading;

    const v0, 0x7f0a0437

    const-string v1, "field \'moreControllersContainer\'"

    .line 100
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->moreControllersContainer:Landroid/view/View;

    const v0, 0x7f0a0434

    const-string v1, "field \'actionLayout\'"

    .line 101
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->actionLayout:Landroid/view/View;

    const v0, 0x7f0a043a

    const-string v1, "field \'phoneNotVerifiedLayout\' and method \'onPhoneNotVerifiedClicked\'"

    .line 102
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 103
    iput-object v0, p1, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->phoneNotVerifiedLayout:Landroid/view/View;

    .line 104
    iput-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView_ViewBinding;->view7f0a043a:Landroid/view/View;

    .line 105
    new-instance v1, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView_ViewBinding$6;

    invoke-direct {v1, p0, p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView_ViewBinding$6;-><init>(Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView_ViewBinding;Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a0436

    const-string v2, "field \'freeRideTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->freeRideTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 112
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a0435

    const-string v2, "field \'disabledTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->disabledTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 113
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a043c

    const-string v2, "field \'priceLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p1, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->priceLayout:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView_ViewBinding;->target:Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 121
    iput-object v1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView_ViewBinding;->target:Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    .line 123
    iput-object v1, v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->tooltipsLayout:Landroid/widget/RelativeLayout;

    .line 124
    iput-object v1, v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->moreDescButton:Landroidx/appcompat/widget/AppCompatButton;

    .line 125
    iput-object v1, v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->shortDescriptionTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 126
    iput-object v1, v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->recyclerLayout:Landroid/widget/LinearLayout;

    .line 127
    iput-object v1, v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 128
    iput-object v1, v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->optionsLayout:Landroid/widget/LinearLayout;

    .line 129
    iput-object v1, v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->optionsButton:Landroidx/appcompat/widget/AppCompatButton;

    .line 130
    iput-object v1, v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->promoButton:Landroidx/appcompat/widget/AppCompatButton;

    .line 131
    iput-object v1, v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->priceCountingTextView:Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;

    .line 132
    iput-object v1, v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->actionButton:Landroidx/appcompat/widget/AppCompatButton;

    .line 133
    iput-object v1, v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->promoLayout:Landroid/widget/RelativeLayout;

    .line 134
    iput-object v1, v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->promoEditText:Landroidx/appcompat/widget/AppCompatEditText;

    .line 135
    iput-object v1, v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->promoSaveButton:Landroidx/appcompat/widget/AppCompatButton;

    .line 136
    iput-object v1, v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->snapp:Lcab/snapp/snappuikit/SnappLoading;

    .line 137
    iput-object v1, v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->moreControllersContainer:Landroid/view/View;

    .line 138
    iput-object v1, v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->actionLayout:Landroid/view/View;

    .line 139
    iput-object v1, v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->phoneNotVerifiedLayout:Landroid/view/View;

    .line 140
    iput-object v1, v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->freeRideTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 141
    iput-object v1, v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->disabledTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 142
    iput-object v1, v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->priceLayout:Landroid/widget/LinearLayout;

    .line 144
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView_ViewBinding;->view7f0a0445:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iput-object v1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView_ViewBinding;->view7f0a0445:Landroid/view/View;

    .line 146
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView_ViewBinding;->view7f0a0438:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iput-object v1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView_ViewBinding;->view7f0a0438:Landroid/view/View;

    .line 148
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView_ViewBinding;->view7f0a043d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iput-object v1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView_ViewBinding;->view7f0a043d:Landroid/view/View;

    .line 150
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView_ViewBinding;->view7f0a0433:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iput-object v1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView_ViewBinding;->view7f0a0433:Landroid/view/View;

    .line 152
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView_ViewBinding;->view7f0a0440:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iput-object v1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView_ViewBinding;->view7f0a0440:Landroid/view/View;

    .line 154
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView_ViewBinding;->view7f0a043a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iput-object v1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView_ViewBinding;->view7f0a043a:Landroid/view/View;

    return-void

    .line 120
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
