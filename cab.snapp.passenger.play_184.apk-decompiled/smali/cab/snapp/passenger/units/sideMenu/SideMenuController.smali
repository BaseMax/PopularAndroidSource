.class public Lcab/snapp/passenger/units/sideMenu/SideMenuController;
.super Lcab/snapp/arch/protocol/BaseController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseController<",
        "Lcab/snapp/passenger/units/sideMenu/a;",
        "Lcab/snapp/passenger/units/sideMenu/c;",
        "Lcab/snapp/passenger/units/sideMenu/SideMenuView;",
        "Lcab/snapp/passenger/units/sideMenu/e;",
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

    .line 1052
    new-instance v0, Lcab/snapp/passenger/units/sideMenu/c;

    invoke-direct {v0}, Lcab/snapp/passenger/units/sideMenu/c;-><init>()V

    return-object v0
.end method

.method public synthetic buildRouter()Lcab/snapp/arch/protocol/BaseRouter;
    .locals 1

    .line 2046
    new-instance v0, Lcab/snapp/passenger/units/sideMenu/e;

    invoke-direct {v0}, Lcab/snapp/passenger/units/sideMenu/e;-><init>()V

    return-object v0
.end method

.method public getInteractorClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcab/snapp/passenger/units/sideMenu/a;",
            ">;"
        }
    .end annotation

    .line 58
    const-class v0, Lcab/snapp/passenger/units/sideMenu/a;

    return-object v0
.end method

.method public getLayout()I
    .locals 1

    const v0, 0x7f0d00d0

    return v0
.end method

.method public onViewAttached()V
    .locals 0

    return-void
.end method

.method public onViewDetached()V
    .locals 0

    return-void
.end method
