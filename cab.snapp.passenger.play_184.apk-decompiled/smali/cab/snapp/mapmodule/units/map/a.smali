.class public Lcab/snapp/mapmodule/units/map/a;
.super Lcab/snapp/arch/protocol/BaseInteractor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseInteractor<",
        "Lcab/snapp/mapmodule/units/map/c;",
        "Lcab/snapp/mapmodule/units/map/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final ANIMATION_DURATION:I = 0xfa


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseInteractor;-><init>()V

    return-void
.end method


# virtual methods
.method public onUnitCreated()V
    .locals 2

    .line 24
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitCreated()V

    .line 1034
    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/map/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/map/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/map/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/map/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1036
    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/map/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/mapmodule/units/map/b;

    invoke-virtual {v0}, Lcab/snapp/mapmodule/units/map/b;->getChildFrameContainer()Landroid/view/ViewGroup;

    move-result-object v0

    .line 1039
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/mapmodule/a;->getMapType()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1045
    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/map/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v1

    check-cast v1, Lcab/snapp/mapmodule/units/map/c;

    invoke-virtual {v1, v0}, Lcab/snapp/mapmodule/units/map/c;->loadMapBoxController(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 1042
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/map/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v1

    check-cast v1, Lcab/snapp/mapmodule/units/map/c;

    invoke-virtual {v1, v0}, Lcab/snapp/mapmodule/units/map/c;->loadGoogleMapController(Landroid/view/ViewGroup;)V

    :cond_1
    :goto_0
    return-void
.end method
