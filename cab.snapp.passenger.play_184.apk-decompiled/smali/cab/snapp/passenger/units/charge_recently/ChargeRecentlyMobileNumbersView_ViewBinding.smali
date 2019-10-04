.class public Lcab/snapp/passenger/units/charge_recently/ChargeRecentlyMobileNumbersView_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcab/snapp/passenger/units/charge_recently/ChargeRecentlyMobileNumbersView;

.field private view7f0a01ba:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcab/snapp/passenger/units/charge_recently/ChargeRecentlyMobileNumbersView;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p1}, Lcab/snapp/passenger/units/charge_recently/ChargeRecentlyMobileNumbersView_ViewBinding;-><init>(Lcab/snapp/passenger/units/charge_recently/ChargeRecentlyMobileNumbersView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcab/snapp/passenger/units/charge_recently/ChargeRecentlyMobileNumbersView;Landroid/view/View;)V
    .locals 4

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcab/snapp/passenger/units/charge_recently/ChargeRecentlyMobileNumbersView_ViewBinding;->target:Lcab/snapp/passenger/units/charge_recently/ChargeRecentlyMobileNumbersView;

    const v0, 0x7f0a01ba

    const-string v1, "field \'closeIv\' and method \'dismiss\'"

    .line 33
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 34
    const-class v2, Landroidx/appcompat/widget/AppCompatImageView;

    const-string v3, "field \'closeIv\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p1, Lcab/snapp/passenger/units/charge_recently/ChargeRecentlyMobileNumbersView;->closeIv:Landroidx/appcompat/widget/AppCompatImageView;

    .line 35
    iput-object v1, p0, Lcab/snapp/passenger/units/charge_recently/ChargeRecentlyMobileNumbersView_ViewBinding;->view7f0a01ba:Landroid/view/View;

    .line 36
    new-instance v0, Lcab/snapp/passenger/units/charge_recently/ChargeRecentlyMobileNumbersView_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/charge_recently/ChargeRecentlyMobileNumbersView_ViewBinding$1;-><init>(Lcab/snapp/passenger/units/charge_recently/ChargeRecentlyMobileNumbersView_ViewBinding;Lcab/snapp/passenger/units/charge_recently/ChargeRecentlyMobileNumbersView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0a025f

    const-string v2, "field \'recyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcab/snapp/passenger/units/charge_recently/ChargeRecentlyMobileNumbersView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 43
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a025e

    const-string v2, "field \'recentMobileNumberNotFound\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p2, p1, Lcab/snapp/passenger/units/charge_recently/ChargeRecentlyMobileNumbersView;->recentMobileNumberNotFound:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 49
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_recently/ChargeRecentlyMobileNumbersView_ViewBinding;->target:Lcab/snapp/passenger/units/charge_recently/ChargeRecentlyMobileNumbersView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 51
    iput-object v1, p0, Lcab/snapp/passenger/units/charge_recently/ChargeRecentlyMobileNumbersView_ViewBinding;->target:Lcab/snapp/passenger/units/charge_recently/ChargeRecentlyMobileNumbersView;

    .line 53
    iput-object v1, v0, Lcab/snapp/passenger/units/charge_recently/ChargeRecentlyMobileNumbersView;->closeIv:Landroidx/appcompat/widget/AppCompatImageView;

    .line 54
    iput-object v1, v0, Lcab/snapp/passenger/units/charge_recently/ChargeRecentlyMobileNumbersView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 55
    iput-object v1, v0, Lcab/snapp/passenger/units/charge_recently/ChargeRecentlyMobileNumbersView;->recentMobileNumberNotFound:Landroidx/appcompat/widget/AppCompatTextView;

    .line 57
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_recently/ChargeRecentlyMobileNumbersView_ViewBinding;->view7f0a01ba:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iput-object v1, p0, Lcab/snapp/passenger/units/charge_recently/ChargeRecentlyMobileNumbersView_ViewBinding;->view7f0a01ba:Landroid/view/View;

    return-void

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
