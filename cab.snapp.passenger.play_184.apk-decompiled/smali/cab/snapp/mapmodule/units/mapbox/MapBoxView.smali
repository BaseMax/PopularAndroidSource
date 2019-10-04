.class public Lcab/snapp/mapmodule/units/mapbox/MapBoxView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/arch/protocol/BaseView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/RelativeLayout;",
        "Lcab/snapp/arch/protocol/BaseView<",
        "Lcab/snapp/mapmodule/units/mapbox/b;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcab/snapp/mapmodule/units/mapbox/b;

.field private b:Lcom/mapbox/mapboxsdk/location/LocationComponent;

.field private c:Lcom/mapbox/mapboxsdk/maps/MapView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic a(Lcab/snapp/mapmodule/units/mapbox/MapBoxView;)Lcab/snapp/mapmodule/units/mapbox/b;
    .locals 0

    .line 26
    iget-object p0, p0, Lcab/snapp/mapmodule/units/mapbox/MapBoxView;->a:Lcab/snapp/mapmodule/units/mapbox/b;

    return-object p0
.end method

.method static synthetic a(Lcab/snapp/mapmodule/units/mapbox/MapBoxView;Lcom/mapbox/mapboxsdk/maps/MapboxMap;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcab/snapp/mapmodule/units/mapbox/MapBoxView;->a(Lcom/mapbox/mapboxsdk/maps/MapboxMap;)V

    return-void
.end method

.method private a(Lcom/mapbox/mapboxsdk/maps/MapboxMap;)V
    .locals 2

    .line 114
    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/mapbox/MapBoxView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mapbox/android/a/c/b;->areLocationPermissionsGranted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getLocationComponent()Lcom/mapbox/mapboxsdk/location/LocationComponent;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/mapmodule/units/mapbox/MapBoxView;->b:Lcom/mapbox/mapboxsdk/location/LocationComponent;

    .line 118
    new-instance v0, Lcom/mapbox/mapboxsdk/location/LocationComponentActivationOptions$Builder;

    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/mapbox/MapBoxView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentActivationOptions$Builder;-><init>(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/Style;)V

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/LocationComponentActivationOptions$Builder;->build()Lcom/mapbox/mapboxsdk/location/LocationComponentActivationOptions;

    move-result-object p1

    .line 120
    iget-object v0, p0, Lcab/snapp/mapmodule/units/mapbox/MapBoxView;->b:Lcom/mapbox/mapboxsdk/location/LocationComponent;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->activateLocationComponent(Lcom/mapbox/mapboxsdk/location/LocationComponentActivationOptions;)V

    .line 121
    iget-object p1, p0, Lcab/snapp/mapmodule/units/mapbox/MapBoxView;->b:Lcom/mapbox/mapboxsdk/location/LocationComponent;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->setLocationComponentEnabled(Z)V

    .line 123
    iget-object p1, p0, Lcab/snapp/mapmodule/units/mapbox/MapBoxView;->b:Lcom/mapbox/mapboxsdk/location/LocationComponent;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->setRenderMode(I)V

    :cond_0
    return-void
.end method

.method private synthetic b(Lcom/mapbox/mapboxsdk/maps/MapboxMap;)V
    .locals 2

    .line 78
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/mapmodule/a;->getMapStyleUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    new-instance v0, Lcom/mapbox/mapboxsdk/maps/Style$Builder;

    invoke-direct {v0}, Lcom/mapbox/mapboxsdk/maps/Style$Builder;-><init>()V

    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/mapmodule/a;->getMapStyleUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/Style$Builder;->fromUrl(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/maps/Style$Builder;

    move-result-object v0

    new-instance v1, Lcab/snapp/mapmodule/units/mapbox/MapBoxView$1;

    invoke-direct {v1, p0, p1}, Lcab/snapp/mapmodule/units/mapbox/MapBoxView$1;-><init>(Lcab/snapp/mapmodule/units/mapbox/MapBoxView;Lcom/mapbox/mapboxsdk/maps/MapboxMap;)V

    invoke-virtual {p1, v0, v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->setStyle(Lcom/mapbox/mapboxsdk/maps/Style$Builder;Lcom/mapbox/mapboxsdk/maps/Style$OnStyleLoaded;)V

    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcab/snapp/mapmodule/units/mapbox/MapBoxView;->a:Lcab/snapp/mapmodule/units/mapbox/b;

    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/mapbox/MapBoxView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/mapmodule/units/mapbox/b;->initScaleGestureDetector(Landroid/content/Context;)V

    .line 93
    iget-object v0, p0, Lcab/snapp/mapmodule/units/mapbox/MapBoxView;->a:Lcab/snapp/mapmodule/units/mapbox/b;

    invoke-virtual {v0, p1}, Lcab/snapp/mapmodule/units/mapbox/b;->onMapReady(Lcom/mapbox/mapboxsdk/maps/MapboxMap;)V

    .line 94
    invoke-direct {p0, p1}, Lcab/snapp/mapmodule/units/mapbox/MapBoxView;->a(Lcom/mapbox/mapboxsdk/maps/MapboxMap;)V

    return-void
.end method

.method public static synthetic lambda$i3oAP75-sXKhfRkmhsErFF7H384(Lcab/snapp/mapmodule/units/mapbox/MapBoxView;Lcom/mapbox/mapboxsdk/maps/MapboxMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/mapmodule/units/mapbox/MapBoxView;->b(Lcom/mapbox/mapboxsdk/maps/MapboxMap;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 152
    iget-object v0, p0, Lcab/snapp/mapmodule/units/mapbox/MapBoxView;->a:Lcab/snapp/mapmodule/units/mapbox/b;

    if-eqz v0, :cond_1

    .line 154
    invoke-virtual {v0, p1}, Lcab/snapp/mapmodule/units/mapbox/b;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 166
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getLocationComponent()Lcom/mapbox/mapboxsdk/location/LocationComponent;
    .locals 1

    .line 136
    iget-object v0, p0, Lcab/snapp/mapmodule/units/mapbox/MapBoxView;->b:Lcom/mapbox/mapboxsdk/location/LocationComponent;

    return-object v0
.end method

.method public getMapView()Lcom/mapbox/mapboxsdk/maps/MapView;
    .locals 1

    .line 131
    iget-object v0, p0, Lcab/snapp/mapmodule/units/mapbox/MapBoxView;->c:Lcom/mapbox/mapboxsdk/maps/MapView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 63
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 64
    sget v0, Lcab/snapp/mapmodule/b$a;->view_map_box_map_view:I

    invoke-virtual {p0, v0}, Lcab/snapp/mapmodule/units/mapbox/MapBoxView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mapbox/mapboxsdk/maps/MapView;

    iput-object v0, p0, Lcab/snapp/mapmodule/units/mapbox/MapBoxView;->c:Lcom/mapbox/mapboxsdk/maps/MapView;

    .line 69
    :try_start_0
    iget-object v0, p0, Lcab/snapp/mapmodule/units/mapbox/MapBoxView;->c:Lcom/mapbox/mapboxsdk/maps/MapView;

    new-instance v1, Lcab/snapp/mapmodule/units/mapbox/-$$Lambda$MapBoxView$i3oAP75-sXKhfRkmhsErFF7H384;

    invoke-direct {v1, p0}, Lcab/snapp/mapmodule/units/mapbox/-$$Lambda$MapBoxView$i3oAP75-sXKhfRkmhsErFF7H384;-><init>(Lcab/snapp/mapmodule/units/mapbox/MapBoxView;)V

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/MapView;->getMapAsync(Lcom/mapbox/mapboxsdk/maps/OnMapReadyCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 103
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public bridge synthetic setPresenter(Lcab/snapp/arch/protocol/BasePresenter;)V
    .locals 0

    .line 26
    check-cast p1, Lcab/snapp/mapmodule/units/mapbox/b;

    invoke-virtual {p0, p1}, Lcab/snapp/mapmodule/units/mapbox/MapBoxView;->setPresenter(Lcab/snapp/mapmodule/units/mapbox/b;)V

    return-void
.end method

.method public setPresenter(Lcab/snapp/mapmodule/units/mapbox/b;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcab/snapp/mapmodule/units/mapbox/MapBoxView;->a:Lcab/snapp/mapmodule/units/mapbox/b;

    return-void
.end method
