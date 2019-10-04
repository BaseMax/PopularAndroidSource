.class public Lcab/snapp/passenger/units/tour/TourController;
.super Lcab/snapp/arch/protocol/BaseController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseController<",
        "Lcab/snapp/passenger/units/tour/b;",
        "Lcab/snapp/passenger/units/tour/e;",
        "Lcab/snapp/passenger/units/tour/TourView;",
        "Lcab/snapp/passenger/units/tour/g;",
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

    .line 1039
    new-instance v0, Lcab/snapp/passenger/units/tour/e;

    invoke-direct {v0}, Lcab/snapp/passenger/units/tour/e;-><init>()V

    return-object v0
.end method

.method public synthetic buildRouter()Lcab/snapp/arch/protocol/BaseRouter;
    .locals 1

    .line 2033
    new-instance v0, Lcab/snapp/passenger/units/tour/g;

    invoke-direct {v0}, Lcab/snapp/passenger/units/tour/g;-><init>()V

    return-object v0
.end method

.method public getInteractorClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcab/snapp/passenger/units/tour/b;",
            ">;"
        }
    .end annotation

    .line 45
    const-class v0, Lcab/snapp/passenger/units/tour/b;

    return-object v0
.end method

.method public getLayout()I
    .locals 1

    const v0, 0x7f0d00dd

    return v0
.end method

.method public handleBack()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
