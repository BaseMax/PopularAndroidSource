.class public Lcab/snapp/passenger/units/charge_select_type/ChargeSelectTypeView_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcab/snapp/passenger/units/charge_select_type/ChargeSelectTypeView;

.field private view7f0a01ba:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcab/snapp/passenger/units/charge_select_type/ChargeSelectTypeView;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p1}, Lcab/snapp/passenger/units/charge_select_type/ChargeSelectTypeView_ViewBinding;-><init>(Lcab/snapp/passenger/units/charge_select_type/ChargeSelectTypeView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcab/snapp/passenger/units/charge_select_type/ChargeSelectTypeView;Landroid/view/View;)V
    .locals 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcab/snapp/passenger/units/charge_select_type/ChargeSelectTypeView_ViewBinding;->target:Lcab/snapp/passenger/units/charge_select_type/ChargeSelectTypeView;

    .line 30
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0a025f

    const-string v2, "field \'recyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcab/snapp/passenger/units/charge_select_type/ChargeSelectTypeView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0a01ba

    const-string v1, "method \'onCloseClicked\'"

    .line 31
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 32
    iput-object p2, p0, Lcab/snapp/passenger/units/charge_select_type/ChargeSelectTypeView_ViewBinding;->view7f0a01ba:Landroid/view/View;

    .line 33
    new-instance v0, Lcab/snapp/passenger/units/charge_select_type/ChargeSelectTypeView_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/charge_select_type/ChargeSelectTypeView_ViewBinding$1;-><init>(Lcab/snapp/passenger/units/charge_select_type/ChargeSelectTypeView_ViewBinding;Lcab/snapp/passenger/units/charge_select_type/ChargeSelectTypeView;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_select_type/ChargeSelectTypeView_ViewBinding;->target:Lcab/snapp/passenger/units/charge_select_type/ChargeSelectTypeView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 46
    iput-object v1, p0, Lcab/snapp/passenger/units/charge_select_type/ChargeSelectTypeView_ViewBinding;->target:Lcab/snapp/passenger/units/charge_select_type/ChargeSelectTypeView;

    .line 48
    iput-object v1, v0, Lcab/snapp/passenger/units/charge_select_type/ChargeSelectTypeView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 50
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_select_type/ChargeSelectTypeView_ViewBinding;->view7f0a01ba:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iput-object v1, p0, Lcab/snapp/passenger/units/charge_select_type/ChargeSelectTypeView_ViewBinding;->view7f0a01ba:Landroid/view/View;

    return-void

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
