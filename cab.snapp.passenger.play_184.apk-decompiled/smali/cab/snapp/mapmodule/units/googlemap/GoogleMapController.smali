.class public Lcab/snapp/mapmodule/units/googlemap/GoogleMapController;
.super Lcab/snapp/arch/protocol/BaseController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseController<",
        "Lcab/snapp/mapmodule/units/googlemap/a;",
        "Lcab/snapp/mapmodule/units/googlemap/b;",
        "Lcab/snapp/mapmodule/units/googlemap/GoogleMapView;",
        "Lcab/snapp/mapmodule/units/googlemap/c;",
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

    .line 1098
    new-instance v0, Lcab/snapp/mapmodule/units/googlemap/b;

    invoke-direct {v0}, Lcab/snapp/mapmodule/units/googlemap/b;-><init>()V

    return-object v0
.end method

.method public synthetic buildRouter()Lcab/snapp/arch/protocol/BaseRouter;
    .locals 1

    .line 2092
    new-instance v0, Lcab/snapp/mapmodule/units/googlemap/c;

    invoke-direct {v0}, Lcab/snapp/mapmodule/units/googlemap/c;-><init>()V

    return-object v0
.end method

.method public getInteractorClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcab/snapp/mapmodule/units/googlemap/a;",
            ">;"
        }
    .end annotation

    .line 104
    const-class v0, Lcab/snapp/mapmodule/units/googlemap/a;

    return-object v0
.end method

.method public getLayout()I
    .locals 1

    .line 85
    sget v0, Lcab/snapp/mapmodule/b$b;->view_google_map:I

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 24
    invoke-super {p0, p1}, Lcab/snapp/arch/protocol/BaseController;->onActivityCreated(Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/googlemap/GoogleMapController;->getControllerView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/googlemap/GoogleMapController;->getControllerView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/mapmodule/units/googlemap/GoogleMapView;

    invoke-virtual {v0}, Lcab/snapp/mapmodule/units/googlemap/GoogleMapView;->getMapView()Lcom/google/android/gms/maps/MapView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/googlemap/GoogleMapController;->getControllerView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/mapmodule/units/googlemap/GoogleMapView;

    invoke-virtual {v0}, Lcab/snapp/mapmodule/units/googlemap/GoogleMapView;->getMapView()Lcom/google/android/gms/maps/MapView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/MapView;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/googlemap/GoogleMapController;->getControllerView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/mapmodule/units/googlemap/GoogleMapView;

    invoke-virtual {p1}, Lcab/snapp/mapmodule/units/googlemap/GoogleMapView;->getMapView()Lcom/google/android/gms/maps/MapView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/maps/MapView;->onStart()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 75
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseController;->onDestroy()V

    .line 76
    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/googlemap/GoogleMapController;->getControllerView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/googlemap/GoogleMapController;->getControllerView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/mapmodule/units/googlemap/GoogleMapView;

    invoke-virtual {v0}, Lcab/snapp/mapmodule/units/googlemap/GoogleMapView;->getMapView()Lcom/google/android/gms/maps/MapView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/googlemap/GoogleMapController;->getControllerView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/mapmodule/units/googlemap/GoogleMapView;

    invoke-virtual {v0}, Lcab/snapp/mapmodule/units/googlemap/GoogleMapView;->getMapView()Lcom/google/android/gms/maps/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onDestroy()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 45
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseController;->onPause()V

    .line 46
    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/googlemap/GoogleMapController;->getControllerView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/googlemap/GoogleMapController;->getControllerView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/mapmodule/units/googlemap/GoogleMapView;

    invoke-virtual {v0}, Lcab/snapp/mapmodule/units/googlemap/GoogleMapView;->getMapView()Lcom/google/android/gms/maps/MapView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/googlemap/GoogleMapController;->getControllerView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/mapmodule/units/googlemap/GoogleMapView;

    invoke-virtual {v0}, Lcab/snapp/mapmodule/units/googlemap/GoogleMapView;->getMapView()Lcom/google/android/gms/maps/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 35
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseController;->onResume()V

    .line 36
    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/googlemap/GoogleMapController;->getControllerView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/googlemap/GoogleMapController;->getControllerView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/mapmodule/units/googlemap/GoogleMapView;

    invoke-virtual {v0}, Lcab/snapp/mapmodule/units/googlemap/GoogleMapView;->getMapView()Lcom/google/android/gms/maps/MapView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/googlemap/GoogleMapController;->getControllerView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/mapmodule/units/googlemap/GoogleMapView;

    invoke-virtual {v0}, Lcab/snapp/mapmodule/units/googlemap/GoogleMapView;->getMapView()Lcom/google/android/gms/maps/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onResume()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 65
    invoke-super {p0, p1}, Lcab/snapp/arch/protocol/BaseController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/googlemap/GoogleMapController;->getControllerView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/googlemap/GoogleMapController;->getControllerView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/mapmodule/units/googlemap/GoogleMapView;

    invoke-virtual {v0}, Lcab/snapp/mapmodule/units/googlemap/GoogleMapView;->getMapView()Lcom/google/android/gms/maps/MapView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/googlemap/GoogleMapController;->getControllerView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/mapmodule/units/googlemap/GoogleMapView;

    invoke-virtual {v0}, Lcab/snapp/mapmodule/units/googlemap/GoogleMapView;->getMapView()Lcom/google/android/gms/maps/MapView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/MapView;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 55
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseController;->onStop()V

    .line 56
    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/googlemap/GoogleMapController;->getControllerView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/googlemap/GoogleMapController;->getControllerView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/mapmodule/units/googlemap/GoogleMapView;

    invoke-virtual {v0}, Lcab/snapp/mapmodule/units/googlemap/GoogleMapView;->getMapView()Lcom/google/android/gms/maps/MapView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/googlemap/GoogleMapController;->getControllerView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/mapmodule/units/googlemap/GoogleMapView;

    invoke-virtual {v0}, Lcab/snapp/mapmodule/units/googlemap/GoogleMapView;->getMapView()Lcom/google/android/gms/maps/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onStop()V

    :cond_0
    return-void
.end method
