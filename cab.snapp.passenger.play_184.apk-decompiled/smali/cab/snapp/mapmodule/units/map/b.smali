.class final Lcab/snapp/mapmodule/units/map/b;
.super Lcab/snapp/arch/protocol/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BasePresenter<",
        "Lcab/snapp/mapmodule/units/map/MapView;",
        "Lcab/snapp/mapmodule/units/map/a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BasePresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public final getChildFrameContainer()Landroid/view/ViewGroup;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/map/b;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/map/b;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/mapmodule/units/map/MapView;

    invoke-virtual {v0}, Lcab/snapp/mapmodule/units/map/MapView;->getChildFrameContainer()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
