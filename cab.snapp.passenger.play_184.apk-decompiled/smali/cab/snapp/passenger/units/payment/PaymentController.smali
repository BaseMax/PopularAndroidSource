.class public Lcab/snapp/passenger/units/payment/PaymentController;
.super Lcab/snapp/arch/protocol/BaseController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseController<",
        "Lcab/snapp/passenger/units/payment/a;",
        "Lcab/snapp/passenger/units/payment/c;",
        "Lcab/snapp/passenger/units/payment/PaymentView;",
        "Lcab/snapp/passenger/units/payment/e;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseController;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic buildPresenter()Lcab/snapp/arch/protocol/BasePresenter;
    .locals 1

    .line 1034
    new-instance v0, Lcab/snapp/passenger/units/payment/c;

    invoke-direct {v0}, Lcab/snapp/passenger/units/payment/c;-><init>()V

    return-object v0
.end method

.method public synthetic buildRouter()Lcab/snapp/arch/protocol/BaseRouter;
    .locals 1

    .line 2028
    new-instance v0, Lcab/snapp/passenger/units/payment/e;

    invoke-direct {v0}, Lcab/snapp/passenger/units/payment/e;-><init>()V

    return-object v0
.end method

.method public getInteractorClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcab/snapp/passenger/units/payment/a;",
            ">;"
        }
    .end annotation

    .line 40
    const-class v0, Lcab/snapp/passenger/units/payment/a;

    return-object v0
.end method

.method public getLayout()I
    .locals 1

    const v0, 0x7f0d00be

    return v0
.end method
