.class public Lcab/snapp/passenger/units/login/loginWithPhoneNumber/LoginWithPhoneNumberController;
.super Lcab/snapp/arch/protocol/BaseController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseController<",
        "Lcab/snapp/passenger/units/login/loginWithPhoneNumber/a;",
        "Lcab/snapp/passenger/units/login/loginWithPhoneNumber/c;",
        "Lcab/snapp/passenger/units/login/loginWithPhoneNumber/LoginWithPhoneNumberView;",
        "Lcab/snapp/passenger/units/login/loginWithPhoneNumber/d;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseController;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic buildPresenter()Lcab/snapp/arch/protocol/BasePresenter;
    .locals 1

    .line 1038
    new-instance v0, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/c;

    invoke-direct {v0}, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/c;-><init>()V

    return-object v0
.end method

.method public synthetic buildRouter()Lcab/snapp/arch/protocol/BaseRouter;
    .locals 1

    .line 2032
    new-instance v0, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/d;

    invoke-direct {v0}, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/d;-><init>()V

    return-object v0
.end method

.method public getInteractorClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcab/snapp/passenger/units/login/loginWithPhoneNumber/a;",
            ">;"
        }
    .end annotation

    .line 44
    const-class v0, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/a;

    return-object v0
.end method

.method public getLayout()I
    .locals 1

    const v0, 0x7f0d00b4

    return v0
.end method
