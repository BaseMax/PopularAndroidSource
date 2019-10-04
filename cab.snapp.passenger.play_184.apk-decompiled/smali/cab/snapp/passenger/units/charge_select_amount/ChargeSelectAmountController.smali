.class public Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountController;
.super Lcab/snapp/arch/protocol/BaseController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseController<",
        "Lcab/snapp/passenger/units/charge_select_amount/a;",
        "Lcab/snapp/passenger/units/charge_select_amount/c;",
        "Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;",
        "Lcab/snapp/passenger/units/charge_select_amount/d;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseController;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic buildPresenter()Lcab/snapp/arch/protocol/BasePresenter;
    .locals 1

    .line 1030
    new-instance v0, Lcab/snapp/passenger/units/charge_select_amount/c;

    invoke-direct {v0}, Lcab/snapp/passenger/units/charge_select_amount/c;-><init>()V

    return-object v0
.end method

.method public synthetic buildRouter()Lcab/snapp/arch/protocol/BaseRouter;
    .locals 1

    .line 2025
    new-instance v0, Lcab/snapp/passenger/units/charge_select_amount/d;

    invoke-direct {v0}, Lcab/snapp/passenger/units/charge_select_amount/d;-><init>()V

    return-object v0
.end method

.method public getInteractorClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcab/snapp/passenger/units/charge_select_amount/a;",
            ">;"
        }
    .end annotation

    .line 35
    const-class v0, Lcab/snapp/passenger/units/charge_select_amount/a;

    return-object v0
.end method

.method public getLayout()I
    .locals 1

    const v0, 0x7f0d00a5

    return v0
.end method

.method public onViewAttached()V
    .locals 2

    .line 44
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseController;->onViewAttached()V

    .line 45
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountController;->getControllerPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountController;->getControllerPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge_select_amount/c;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountController;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/charge_select_amount/c;->setFragmentManager(Landroidx/fragment/app/FragmentManager;)V

    :cond_0
    return-void
.end method
