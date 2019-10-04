.class public Lcab/snapp/passenger/units/referral/ReferralController;
.super Lcab/snapp/arch/protocol/BaseController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseController<",
        "Lcab/snapp/passenger/units/referral/a;",
        "Lcab/snapp/passenger/units/referral/c;",
        "Lcab/snapp/passenger/units/referral/ReferralView;",
        "Lcab/snapp/passenger/units/referral/d;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseController;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic buildPresenter()Lcab/snapp/arch/protocol/BasePresenter;
    .locals 1

    .line 1046
    new-instance v0, Lcab/snapp/passenger/units/referral/c;

    invoke-direct {v0}, Lcab/snapp/passenger/units/referral/c;-><init>()V

    return-object v0
.end method

.method public synthetic buildRouter()Lcab/snapp/arch/protocol/BaseRouter;
    .locals 1

    .line 2040
    new-instance v0, Lcab/snapp/passenger/units/referral/d;

    invoke-direct {v0}, Lcab/snapp/passenger/units/referral/d;-><init>()V

    return-object v0
.end method

.method public getInteractorClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcab/snapp/passenger/units/referral/a;",
            ">;"
        }
    .end annotation

    .line 52
    const-class v0, Lcab/snapp/passenger/units/referral/a;

    return-object v0
.end method

.method public getLayout()I
    .locals 1

    const v0, 0x7f0d00c1

    return v0
.end method

.method public getNavigationController()Landroidx/navigation/NavController;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcab/snapp/passenger/units/referral/ReferralController;->getOvertheMapNavigationController()Landroidx/navigation/NavController;

    move-result-object v0

    return-object v0
.end method
