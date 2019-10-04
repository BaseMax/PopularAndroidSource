.class public final Lcab/snapp/mapmodule/units/map/c;
.super Lcab/snapp/arch/protocol/BaseRouter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseRouter<",
        "Lcab/snapp/mapmodule/units/map/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseRouter;-><init>()V

    return-void
.end method


# virtual methods
.method public final loadGoogleMapController(Landroid/view/ViewGroup;)V
    .locals 1

    .line 26
    invoke-static {p1}, Landroidx/navigation/Navigation;->findNavController(Landroid/view/View;)Landroidx/navigation/NavController;

    move-result-object p1

    .line 27
    sget v0, Lcab/snapp/mapmodule/b$c;->googlemap_navigation:I

    invoke-virtual {p1, v0}, Landroidx/navigation/NavController;->setGraph(I)V

    .line 28
    invoke-virtual {p1}, Landroidx/navigation/NavController;->popBackStack()Z

    return-void
.end method

.method public final loadMapBoxController(Landroid/view/ViewGroup;)V
    .locals 1

    .line 20
    invoke-static {p1}, Landroidx/navigation/Navigation;->findNavController(Landroid/view/View;)Landroidx/navigation/NavController;

    move-result-object p1

    .line 21
    sget v0, Lcab/snapp/mapmodule/b$c;->mapbox_navigation:I

    invoke-virtual {p1, v0}, Landroidx/navigation/NavController;->setGraph(I)V

    .line 22
    invoke-virtual {p1}, Landroidx/navigation/NavController;->popBackStack()Z

    return-void
.end method
