.class public Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;

.field private view7f0a0131:Landroid/view/View;

.field private view7f0a0136:Landroid/view/View;

.field private view7f0a0337:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p1}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView_ViewBinding;-><init>(Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;Landroid/view/View;)V
    .locals 4

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView_ViewBinding;->target:Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;

    const v0, 0x7f0a0338

    const-string v1, "field \'messageLayout\'"

    .line 37
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->messageLayout:Landroid/view/View;

    .line 38
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a0339

    const-string v2, "field \'messageLayoutTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->messageLayoutTextView:Landroidx/appcompat/widget/AppCompatTextView;

    const v0, 0x7f0a0337

    const-string v1, "field \'messageLayoutIconImageView\' and method \'onMessageCloseBtnClicked\'"

    .line 39
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 40
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'messageLayoutIconImageView\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->messageLayoutIconImageView:Landroid/widget/ImageView;

    .line 41
    iput-object v1, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView_ViewBinding;->view7f0a0337:Landroid/view/View;

    .line 42
    new-instance v0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView_ViewBinding$1;-><init>(Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView_ViewBinding;Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a012f

    const-string v1, "field \'bottomButtonsLayout\'"

    .line 48
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->bottomButtonsLayout:Landroid/view/View;

    const v0, 0x7f0a0131

    const-string v1, "field \'callDriverButton\' and method \'onCallClicked\'"

    .line 49
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 50
    const-class v2, Landroidx/appcompat/widget/AppCompatTextView;

    const-string v3, "field \'callDriverButton\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->callDriverButton:Landroidx/appcompat/widget/AppCompatTextView;

    .line 51
    iput-object v1, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView_ViewBinding;->view7f0a0131:Landroid/view/View;

    .line 52
    new-instance v0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView_ViewBinding$2;-><init>(Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView_ViewBinding;Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0335

    const-string v1, "field \'rootView\'"

    .line 58
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->rootView:Landroid/view/View;

    const v0, 0x7f0a0136

    const-string v1, "field \'payCostTextView\' and method \'onPayCostClicked\'"

    .line 59
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 60
    const-class v2, Landroidx/appcompat/widget/AppCompatTextView;

    const-string v3, "field \'payCostTextView\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->payCostTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 61
    iput-object v1, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView_ViewBinding;->view7f0a0136:Landroid/view/View;

    .line 62
    new-instance v0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView_ViewBinding$3;-><init>(Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView_ViewBinding;Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a0133

    const-string v2, "field \'driverNameTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->driverNameTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 69
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a0130

    const-string v2, "field \'cabTypeTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->cabTypeTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 70
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0336

    const-string v2, "field \'driverAvatarImageView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->driverAvatarImageView:Landroid/widget/ImageView;

    .line 71
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a0135

    const-string v2, "field \'plateNumberLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->plateNumberLayout:Landroid/widget/LinearLayout;

    .line 72
    const-class v0, Lcab/snapp/snappuikit/SnappLoading;

    const v1, 0x7f0a0137

    const-string v2, "field \'payCostLoading\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcab/snapp/snappuikit/SnappLoading;

    iput-object p2, p1, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->payCostLoading:Lcab/snapp/snappuikit/SnappLoading;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView_ViewBinding;->target:Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 80
    iput-object v1, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView_ViewBinding;->target:Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;

    .line 82
    iput-object v1, v0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->messageLayout:Landroid/view/View;

    .line 83
    iput-object v1, v0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->messageLayoutTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 84
    iput-object v1, v0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->messageLayoutIconImageView:Landroid/widget/ImageView;

    .line 85
    iput-object v1, v0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->bottomButtonsLayout:Landroid/view/View;

    .line 86
    iput-object v1, v0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->callDriverButton:Landroidx/appcompat/widget/AppCompatTextView;

    .line 87
    iput-object v1, v0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->rootView:Landroid/view/View;

    .line 88
    iput-object v1, v0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->payCostTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 89
    iput-object v1, v0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->driverNameTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 90
    iput-object v1, v0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->cabTypeTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 91
    iput-object v1, v0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->driverAvatarImageView:Landroid/widget/ImageView;

    .line 92
    iput-object v1, v0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->plateNumberLayout:Landroid/widget/LinearLayout;

    .line 93
    iput-object v1, v0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->payCostLoading:Lcab/snapp/snappuikit/SnappLoading;

    .line 95
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView_ViewBinding;->view7f0a0337:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iput-object v1, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView_ViewBinding;->view7f0a0337:Landroid/view/View;

    .line 97
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView_ViewBinding;->view7f0a0131:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iput-object v1, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView_ViewBinding;->view7f0a0131:Landroid/view/View;

    .line 99
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView_ViewBinding;->view7f0a0136:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iput-object v1, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView_ViewBinding;->view7f0a0136:Landroid/view/View;

    return-void

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
