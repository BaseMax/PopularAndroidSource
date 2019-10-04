.class public Lcab/snapp/passenger/units/credit/CreditController;
.super Lcab/snapp/arch/protocol/BaseController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseController<",
        "Lcab/snapp/passenger/units/credit/a;",
        "Lcab/snapp/passenger/units/credit/c;",
        "Lcab/snapp/passenger/units/credit/CreditView;",
        "Lcab/snapp/passenger/units/credit/e;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseController;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic buildPresenter()Lcab/snapp/arch/protocol/BasePresenter;
    .locals 1

    .line 1050
    new-instance v0, Lcab/snapp/passenger/units/credit/c;

    invoke-direct {v0}, Lcab/snapp/passenger/units/credit/c;-><init>()V

    return-object v0
.end method

.method public synthetic buildRouter()Lcab/snapp/arch/protocol/BaseRouter;
    .locals 1

    .line 2044
    new-instance v0, Lcab/snapp/passenger/units/credit/e;

    invoke-direct {v0}, Lcab/snapp/passenger/units/credit/e;-><init>()V

    return-object v0
.end method

.method public getInteractorClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcab/snapp/passenger/units/credit/a;",
            ">;"
        }
    .end annotation

    .line 56
    const-class v0, Lcab/snapp/passenger/units/credit/a;

    return-object v0
.end method

.method public getLayout()I
    .locals 1

    const v0, 0x7f0d00a7

    return v0
.end method

.method public getNavigationController()Landroidx/navigation/NavController;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcab/snapp/passenger/units/credit/CreditController;->getOvertheMapNavigationController()Landroidx/navigation/NavController;

    move-result-object v0

    return-object v0
.end method

.method public onViewAttached()V
    .locals 2

    .line 28
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseController;->onViewAttached()V

    .line 29
    invoke-virtual {p0}, Lcab/snapp/passenger/units/credit/CreditController;->getControllerPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lcab/snapp/passenger/units/credit/CreditController;->getControllerPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/credit/c;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/credit/CreditController;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/credit/c;->setFragmentManager(Landroidx/fragment/app/FragmentManager;)V

    :cond_0
    return-void
.end method
