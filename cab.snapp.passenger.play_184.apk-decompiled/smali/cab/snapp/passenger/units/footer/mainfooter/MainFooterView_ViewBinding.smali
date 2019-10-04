.class public Lcab/snapp/passenger/units/footer/mainfooter/MainFooterView_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcab/snapp/passenger/units/footer/mainfooter/MainFooterView;


# direct methods
.method public constructor <init>(Lcab/snapp/passenger/units/footer/mainfooter/MainFooterView;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p1}, Lcab/snapp/passenger/units/footer/mainfooter/MainFooterView_ViewBinding;-><init>(Lcab/snapp/passenger/units/footer/mainfooter/MainFooterView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcab/snapp/passenger/units/footer/mainfooter/MainFooterView;Landroid/view/View;)V
    .locals 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcab/snapp/passenger/units/footer/mainfooter/MainFooterView_ViewBinding;->target:Lcab/snapp/passenger/units/footer/mainfooter/MainFooterView;

    .line 28
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a0370

    const-string v2, "field \'selectOriginLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/footer/mainfooter/MainFooterView;->selectOriginLayout:Landroid/widget/LinearLayout;

    .line 29
    const-class v0, Lcab/snapp/snappuikit/SnappCircleProgressBar;

    const v1, 0x7f0a0371

    const-string v2, "field \'vehiclesProgressBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/SnappCircleProgressBar;

    iput-object v0, p1, Lcab/snapp/passenger/units/footer/mainfooter/MainFooterView;->vehiclesProgressBar:Lcab/snapp/snappuikit/SnappCircleProgressBar;

    .line 30
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0372

    const-string v2, "field \'vehiclesTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/footer/mainfooter/MainFooterView;->vehiclesTextView:Landroid/widget/TextView;

    .line 31
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a036a

    const-string v2, "field \'addressTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/footer/mainfooter/MainFooterView;->addressTextView:Landroid/widget/TextView;

    .line 32
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a036f

    const-string v2, "field \'selectDestinationLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/footer/mainfooter/MainFooterView;->selectDestinationLayout:Landroid/widget/LinearLayout;

    .line 33
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a036d

    const-string v2, "field \'originAddressTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/footer/mainfooter/MainFooterView;->originAddressTextView:Landroid/widget/TextView;

    .line 34
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a036b

    const-string v2, "field \'destAddressTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcab/snapp/passenger/units/footer/mainfooter/MainFooterView;->destAddressTextView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 40
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/mainfooter/MainFooterView_ViewBinding;->target:Lcab/snapp/passenger/units/footer/mainfooter/MainFooterView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 42
    iput-object v1, p0, Lcab/snapp/passenger/units/footer/mainfooter/MainFooterView_ViewBinding;->target:Lcab/snapp/passenger/units/footer/mainfooter/MainFooterView;

    .line 44
    iput-object v1, v0, Lcab/snapp/passenger/units/footer/mainfooter/MainFooterView;->selectOriginLayout:Landroid/widget/LinearLayout;

    .line 45
    iput-object v1, v0, Lcab/snapp/passenger/units/footer/mainfooter/MainFooterView;->vehiclesProgressBar:Lcab/snapp/snappuikit/SnappCircleProgressBar;

    .line 46
    iput-object v1, v0, Lcab/snapp/passenger/units/footer/mainfooter/MainFooterView;->vehiclesTextView:Landroid/widget/TextView;

    .line 47
    iput-object v1, v0, Lcab/snapp/passenger/units/footer/mainfooter/MainFooterView;->addressTextView:Landroid/widget/TextView;

    .line 48
    iput-object v1, v0, Lcab/snapp/passenger/units/footer/mainfooter/MainFooterView;->selectDestinationLayout:Landroid/widget/LinearLayout;

    .line 49
    iput-object v1, v0, Lcab/snapp/passenger/units/footer/mainfooter/MainFooterView;->originAddressTextView:Landroid/widget/TextView;

    .line 50
    iput-object v1, v0, Lcab/snapp/passenger/units/footer/mainfooter/MainFooterView;->destAddressTextView:Landroid/widget/TextView;

    return-void

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
