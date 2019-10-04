.class public Lcab/snapp/mapmodule/units/googlemap/GoogleMapView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/arch/protocol/BaseView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/RelativeLayout;",
        "Lcab/snapp/arch/protocol/BaseView<",
        "Lcab/snapp/mapmodule/units/googlemap/b;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcab/snapp/mapmodule/units/googlemap/b;

.field private b:Lcom/google/android/gms/maps/MapView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic a(Lcab/snapp/mapmodule/units/googlemap/GoogleMapView;)Lcab/snapp/mapmodule/units/googlemap/b;
    .locals 0

    .line 23
    iget-object p0, p0, Lcab/snapp/mapmodule/units/googlemap/GoogleMapView;->a:Lcab/snapp/mapmodule/units/googlemap/b;

    return-object p0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 91
    iget-object v0, p0, Lcab/snapp/mapmodule/units/googlemap/GoogleMapView;->a:Lcab/snapp/mapmodule/units/googlemap/b;

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0, p1}, Lcab/snapp/mapmodule/units/googlemap/b;->dispatchTouchEvent(Landroid/view/MotionEvent;)V

    .line 96
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getMapView()Lcom/google/android/gms/maps/MapView;
    .locals 1

    .line 80
    iget-object v0, p0, Lcab/snapp/mapmodule/units/googlemap/GoogleMapView;->b:Lcom/google/android/gms/maps/MapView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 58
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 59
    sget v0, Lcab/snapp/mapmodule/b$a;->view_google_map_map_view:I

    invoke-virtual {p0, v0}, Lcab/snapp/mapmodule/units/googlemap/GoogleMapView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/MapView;

    iput-object v0, p0, Lcab/snapp/mapmodule/units/googlemap/GoogleMapView;->b:Lcom/google/android/gms/maps/MapView;

    .line 60
    iget-object v0, p0, Lcab/snapp/mapmodule/units/googlemap/GoogleMapView;->b:Lcom/google/android/gms/maps/MapView;

    new-instance v1, Lcab/snapp/mapmodule/units/googlemap/GoogleMapView$1;

    invoke-direct {v1, p0}, Lcab/snapp/mapmodule/units/googlemap/GoogleMapView$1;-><init>(Lcab/snapp/mapmodule/units/googlemap/GoogleMapView;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/MapView;->getMapAsync(Lcom/google/android/gms/maps/f;)V

    return-void
.end method

.method public bridge synthetic setPresenter(Lcab/snapp/arch/protocol/BasePresenter;)V
    .locals 0

    .line 23
    check-cast p1, Lcab/snapp/mapmodule/units/googlemap/b;

    invoke-virtual {p0, p1}, Lcab/snapp/mapmodule/units/googlemap/GoogleMapView;->setPresenter(Lcab/snapp/mapmodule/units/googlemap/b;)V

    return-void
.end method

.method public setPresenter(Lcab/snapp/mapmodule/units/googlemap/b;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcab/snapp/mapmodule/units/googlemap/GoogleMapView;->a:Lcab/snapp/mapmodule/units/googlemap/b;

    return-void
.end method
