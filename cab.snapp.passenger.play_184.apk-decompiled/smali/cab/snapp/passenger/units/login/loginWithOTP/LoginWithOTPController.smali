.class public Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPController;
.super Lcab/snapp/arch/protocol/BaseController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseController<",
        "Lcab/snapp/passenger/units/login/loginWithOTP/a;",
        "Lcab/snapp/passenger/units/login/loginWithOTP/c;",
        "Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;",
        "Lcab/snapp/passenger/units/login/loginWithOTP/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final ARGS_PHONE_NUMBER:Ljava/lang/String; = "ARGS_PHONE_NUMBER"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseController;-><init>()V

    return-void
.end method

.method public static newDataBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .line 42
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ARGS_PHONE_NUMBER"

    .line 43
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public synthetic buildPresenter()Lcab/snapp/arch/protocol/BasePresenter;
    .locals 1

    .line 1064
    new-instance v0, Lcab/snapp/passenger/units/login/loginWithOTP/c;

    invoke-direct {v0}, Lcab/snapp/passenger/units/login/loginWithOTP/c;-><init>()V

    return-object v0
.end method

.method public synthetic buildRouter()Lcab/snapp/arch/protocol/BaseRouter;
    .locals 1

    .line 2058
    new-instance v0, Lcab/snapp/passenger/units/login/loginWithOTP/d;

    invoke-direct {v0}, Lcab/snapp/passenger/units/login/loginWithOTP/d;-><init>()V

    return-object v0
.end method

.method public getInteractorClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcab/snapp/passenger/units/login/loginWithOTP/a;",
            ">;"
        }
    .end annotation

    .line 70
    const-class v0, Lcab/snapp/passenger/units/login/loginWithOTP/a;

    return-object v0
.end method

.method public getLayout()I
    .locals 1

    const v0, 0x7f0d00b3

    return v0
.end method
