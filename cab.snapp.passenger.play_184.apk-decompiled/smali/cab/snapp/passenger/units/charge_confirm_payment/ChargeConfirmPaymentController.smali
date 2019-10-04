.class public Lcab/snapp/passenger/units/charge_confirm_payment/ChargeConfirmPaymentController;
.super Lcab/snapp/arch/protocol/BaseController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseController<",
        "Lcab/snapp/passenger/units/charge_confirm_payment/a;",
        "Lcab/snapp/passenger/units/charge_confirm_payment/c;",
        "Lcab/snapp/passenger/units/charge_confirm_payment/ChargeConfirmPaymentView;",
        "Lcab/snapp/passenger/units/charge_confirm_payment/d;",
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
    new-instance v0, Lcab/snapp/passenger/units/charge_confirm_payment/c;

    invoke-direct {v0}, Lcab/snapp/passenger/units/charge_confirm_payment/c;-><init>()V

    return-object v0
.end method

.method public synthetic buildRouter()Lcab/snapp/arch/protocol/BaseRouter;
    .locals 1

    .line 2025
    new-instance v0, Lcab/snapp/passenger/units/charge_confirm_payment/d;

    invoke-direct {v0}, Lcab/snapp/passenger/units/charge_confirm_payment/d;-><init>()V

    return-object v0
.end method

.method public getInteractorClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcab/snapp/passenger/units/charge_confirm_payment/a;",
            ">;"
        }
    .end annotation

    .line 35
    const-class v0, Lcab/snapp/passenger/units/charge_confirm_payment/a;

    return-object v0
.end method

.method public getLayout()I
    .locals 1

    const v0, 0x7f0d00a3

    return v0
.end method
