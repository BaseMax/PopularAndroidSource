.class public Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingController;
.super Lcab/snapp/arch/protocol/BaseController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseController<",
        "Lcab/snapp/passenger/units/request_ride_waiting/a;",
        "Lcab/snapp/passenger/units/request_ride_waiting/c;",
        "Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;",
        "Lcab/snapp/passenger/units/request_ride_waiting/e;",
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

    .line 1041
    new-instance v0, Lcab/snapp/passenger/units/request_ride_waiting/c;

    invoke-direct {v0}, Lcab/snapp/passenger/units/request_ride_waiting/c;-><init>()V

    return-object v0
.end method

.method public synthetic buildRouter()Lcab/snapp/arch/protocol/BaseRouter;
    .locals 1

    .line 2035
    new-instance v0, Lcab/snapp/passenger/units/request_ride_waiting/e;

    invoke-direct {v0}, Lcab/snapp/passenger/units/request_ride_waiting/e;-><init>()V

    return-object v0
.end method

.method public getInteractorClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcab/snapp/passenger/units/request_ride_waiting/a;",
            ">;"
        }
    .end annotation

    .line 47
    const-class v0, Lcab/snapp/passenger/units/request_ride_waiting/a;

    return-object v0
.end method

.method public getLayout()I
    .locals 1

    const v0, 0x7f0d00c2

    return v0
.end method
