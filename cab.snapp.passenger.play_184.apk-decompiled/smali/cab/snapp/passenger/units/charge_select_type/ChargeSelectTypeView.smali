.class public Lcab/snapp/passenger/units/charge_select_type/ChargeSelectTypeView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/arch/protocol/BaseView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/LinearLayout;",
        "Lcab/snapp/arch/protocol/BaseView<",
        "Lcab/snapp/passenger/units/charge_select_type/b;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcab/snapp/passenger/units/charge_select_type/b;

.field protected b:Lbutterknife/Unbinder;

.field private c:Lcab/snapp/passenger/units/charge_select_type/SelectChargeTypeBottomSheetDialogFragment;

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a025f
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 99
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_select_type/ChargeSelectTypeView;->c:Lcab/snapp/passenger/units/charge_select_type/SelectChargeTypeBottomSheetDialogFragment;

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge_select_type/SelectChargeTypeBottomSheetDialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method public onCloseClicked()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a01ba
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_select_type/ChargeSelectTypeView;->a:Lcab/snapp/passenger/units/charge_select_type/b;

    if-eqz v0, :cond_0

    .line 1037
    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge_select_type/b;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1038
    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge_select_type/b;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    invoke-static {}, Lcab/snapp/passenger/units/charge_select_type/a;->a()V

    .line 48
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_select_type/ChargeSelectTypeView;->c:Lcab/snapp/passenger/units/charge_select_type/SelectChargeTypeBottomSheetDialogFragment;

    if-eqz v0, :cond_1

    .line 49
    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge_select_type/SelectChargeTypeBottomSheetDialogFragment;->dismiss()V

    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 68
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 69
    invoke-static {p0, p0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/units/charge_select_type/ChargeSelectTypeView;->b:Lbutterknife/Unbinder;

    return-void
.end method

.method public setAdapter(Lcab/snapp/passenger/a/e;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_select_type/ChargeSelectTypeView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public setController(Lcab/snapp/passenger/units/charge_select_type/SelectChargeTypeBottomSheetDialogFragment;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcab/snapp/passenger/units/charge_select_type/ChargeSelectTypeView;->c:Lcab/snapp/passenger/units/charge_select_type/SelectChargeTypeBottomSheetDialogFragment;

    return-void
.end method

.method public bridge synthetic setPresenter(Lcab/snapp/arch/protocol/BasePresenter;)V
    .locals 0

    .line 25
    check-cast p1, Lcab/snapp/passenger/units/charge_select_type/b;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/charge_select_type/ChargeSelectTypeView;->setPresenter(Lcab/snapp/passenger/units/charge_select_type/b;)V

    return-void
.end method

.method public setPresenter(Lcab/snapp/passenger/units/charge_select_type/b;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcab/snapp/passenger/units/charge_select_type/ChargeSelectTypeView;->a:Lcab/snapp/passenger/units/charge_select_type/b;

    return-void
.end method
