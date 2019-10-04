.class public Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView;

.field private view7f0a01c3:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p1}, Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView_ViewBinding;-><init>(Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView;Landroid/view/View;)V
    .locals 4

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView_ViewBinding;->target:Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView;

    .line 34
    const-class v0, Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f0a01d9

    const-string v2, "field \'toolbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const v0, 0x7f0a01c3

    const-string v1, "field \'backLayout\' and method \'onBackLayoutClicked\'"

    .line 35
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 36
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'backLayout\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView;->backLayout:Landroid/widget/LinearLayout;

    .line 37
    iput-object v1, p0, Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView_ViewBinding;->view7f0a01c3:Landroid/view/View;

    .line 38
    new-instance v0, Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView_ViewBinding$1;-><init>(Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView_ViewBinding;Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0a02c1

    const-string v2, "field \'snappChargeTransactionsRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView;->snappChargeTransactionsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0a02c0

    const-string v1, "field \'emptyStatRl\'"

    .line 45
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView;->emptyStatRl:Landroid/view/View;

    .line 46
    const-class v0, Lcab/snapp/snappuikit/SnappLoading;

    const v1, 0x7f0a02c2

    const-string v2, "field \'snappLoading\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcab/snapp/snappuikit/SnappLoading;

    iput-object p2, p1, Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView;->snappLoading:Lcab/snapp/snappuikit/SnappLoading;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 52
    iget-object v0, p0, Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView_ViewBinding;->target:Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 54
    iput-object v1, p0, Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView_ViewBinding;->target:Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView;

    .line 56
    iput-object v1, v0, Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 57
    iput-object v1, v0, Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView;->backLayout:Landroid/widget/LinearLayout;

    .line 58
    iput-object v1, v0, Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView;->snappChargeTransactionsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 59
    iput-object v1, v0, Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView;->emptyStatRl:Landroid/view/View;

    .line 60
    iput-object v1, v0, Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView;->snappLoading:Lcab/snapp/snappuikit/SnappLoading;

    .line 62
    iget-object v0, p0, Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView_ViewBinding;->view7f0a01c3:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iput-object v1, p0, Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView_ViewBinding;->view7f0a01c3:Landroid/view/View;

    return-void

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
