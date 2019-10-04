.class public Lcab/snapp/mapmodule/units/map/MapController;
.super Lcab/snapp/arch/protocol/BaseController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseController<",
        "Lcab/snapp/mapmodule/units/map/a;",
        "Lcab/snapp/mapmodule/units/map/b;",
        "Lcab/snapp/mapmodule/units/map/MapView;",
        "Lcab/snapp/mapmodule/units/map/c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseController;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic buildPresenter()Lcab/snapp/arch/protocol/BasePresenter;
    .locals 1

    .line 1044
    new-instance v0, Lcab/snapp/mapmodule/units/map/b;

    invoke-direct {v0}, Lcab/snapp/mapmodule/units/map/b;-><init>()V

    return-object v0
.end method

.method public synthetic buildRouter()Lcab/snapp/arch/protocol/BaseRouter;
    .locals 1

    .line 2038
    new-instance v0, Lcab/snapp/mapmodule/units/map/c;

    invoke-direct {v0}, Lcab/snapp/mapmodule/units/map/c;-><init>()V

    return-object v0
.end method

.method public getInteractorClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcab/snapp/mapmodule/units/map/a;",
            ">;"
        }
    .end annotation

    .line 50
    const-class v0, Lcab/snapp/mapmodule/units/map/a;

    return-object v0
.end method

.method public getLayout()I
    .locals 1

    .line 31
    sget v0, Lcab/snapp/mapmodule/b$b;->view_map:I

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
