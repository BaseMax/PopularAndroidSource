.class public Lcab/snapp/mapmodule/units/mapbox/MapBoxController;
.super Lcab/snapp/arch/protocol/BaseController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseController<",
        "Lcab/snapp/mapmodule/units/mapbox/a;",
        "Lcab/snapp/mapmodule/units/mapbox/b;",
        "Lcab/snapp/mapmodule/units/mapbox/MapBoxView;",
        "Lcab/snapp/mapmodule/units/mapbox/c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseController;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic buildPresenter()Lcab/snapp/arch/protocol/BasePresenter;
    .locals 1

    .line 1099
    new-instance v0, Lcab/snapp/mapmodule/units/mapbox/b;

    invoke-direct {v0}, Lcab/snapp/mapmodule/units/mapbox/b;-><init>()V

    return-object v0
.end method

.method public synthetic buildRouter()Lcab/snapp/arch/protocol/BaseRouter;
    .locals 1

    .line 2093
    new-instance v0, Lcab/snapp/mapmodule/units/mapbox/c;

    invoke-direct {v0}, Lcab/snapp/mapmodule/units/mapbox/c;-><init>()V

    return-object v0
.end method

.method public getInteractorClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcab/snapp/mapmodule/units/mapbox/a;",
            ">;"
        }
    .end annotation

    .line 105
    const-class v0, Lcab/snapp/mapmodule/units/mapbox/a;

    return-object v0
.end method

.method public getLayout()I
    .locals 1

    .line 86
    sget v0, Lcab/snapp/mapmodule/b$b;->view_map_box:I

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 23
    invoke-super {p0, p1}, Lcab/snapp/arch/protocol/BaseController;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/mapbox/MapBoxController;->getControllerView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/mapbox/MapBoxController;->getControllerView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/mapmodule/units/mapbox/MapBoxView;

    invoke-virtual {v0}, Lcab/snapp/mapmodule/units/mapbox/MapBoxView;->getMapView()Lcom/mapbox/mapboxsdk/maps/MapView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/mapbox/MapBoxController;->getControllerView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/mapmodule/units/mapbox/MapBoxView;

    invoke-virtual {v0}, Lcab/snapp/mapmodule/units/mapbox/MapBoxView;->getMapView()Lcom/mapbox/mapboxsdk/maps/MapView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/MapView;->onCreate(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 76
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseController;->onDestroy()V

    .line 77
    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/mapbox/MapBoxController;->getControllerView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/mapbox/MapBoxController;->getControllerView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/mapmodule/units/mapbox/MapBoxView;

    invoke-virtual {v0}, Lcab/snapp/mapmodule/units/mapbox/MapBoxView;->getMapView()Lcom/mapbox/mapboxsdk/maps/MapView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/mapbox/MapBoxController;->getControllerView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/mapmodule/units/mapbox/MapBoxView;

    invoke-virtual {v0}, Lcab/snapp/mapmodule/units/mapbox/MapBoxView;->getMapView()Lcom/mapbox/mapboxsdk/maps/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapView;->onDestroy()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 55
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseController;->onPause()V

    .line 57
    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/mapbox/MapBoxController;->getControllerView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/mapbox/MapBoxController;->getControllerView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/mapmodule/units/mapbox/MapBoxView;

    invoke-virtual {v0}, Lcab/snapp/mapmodule/units/mapbox/MapBoxView;->getMapView()Lcom/mapbox/mapboxsdk/maps/MapView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/mapbox/MapBoxController;->getControllerView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/mapmodule/units/mapbox/MapBoxView;

    invoke-virtual {v0}, Lcab/snapp/mapmodule/units/mapbox/MapBoxView;->getMapView()Lcom/mapbox/mapboxsdk/maps/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapView;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 44
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseController;->onResume()V

    .line 45
    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/mapbox/MapBoxController;->getControllerView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/mapbox/MapBoxController;->getControllerView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/mapmodule/units/mapbox/MapBoxView;

    invoke-virtual {v0}, Lcab/snapp/mapmodule/units/mapbox/MapBoxView;->getMapView()Lcom/mapbox/mapboxsdk/maps/MapView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/mapbox/MapBoxController;->getControllerView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/mapmodule/units/mapbox/MapBoxView;

    invoke-virtual {v0}, Lcab/snapp/mapmodule/units/mapbox/MapBoxView;->getMapView()Lcom/mapbox/mapboxsdk/maps/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapView;->onResume()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 33
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseController;->onStart()V

    .line 34
    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/mapbox/MapBoxController;->getControllerView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/mapbox/MapBoxController;->getControllerView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/mapmodule/units/mapbox/MapBoxView;

    invoke-virtual {v0}, Lcab/snapp/mapmodule/units/mapbox/MapBoxView;->getMapView()Lcom/mapbox/mapboxsdk/maps/MapView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/mapbox/MapBoxController;->getControllerView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/mapmodule/units/mapbox/MapBoxView;

    invoke-virtual {v0}, Lcab/snapp/mapmodule/units/mapbox/MapBoxView;->getMapView()Lcom/mapbox/mapboxsdk/maps/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapView;->onStart()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 66
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseController;->onStop()V

    .line 67
    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/mapbox/MapBoxController;->getControllerView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/mapbox/MapBoxController;->getControllerView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/mapmodule/units/mapbox/MapBoxView;

    invoke-virtual {v0}, Lcab/snapp/mapmodule/units/mapbox/MapBoxView;->getMapView()Lcom/mapbox/mapboxsdk/maps/MapView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/mapbox/MapBoxController;->getControllerView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/mapmodule/units/mapbox/MapBoxView;

    invoke-virtual {v0}, Lcab/snapp/mapmodule/units/mapbox/MapBoxView;->getMapView()Lcom/mapbox/mapboxsdk/maps/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapView;->onStop()V

    :cond_0
    return-void
.end method
