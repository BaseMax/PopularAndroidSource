.class final Lcab/snapp/mapmodule/units/googlemap/GoogleMapView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/maps/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/mapmodule/units/googlemap/GoogleMapView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/mapmodule/units/googlemap/GoogleMapView;


# direct methods
.method constructor <init>(Lcab/snapp/mapmodule/units/googlemap/GoogleMapView;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcab/snapp/mapmodule/units/googlemap/GoogleMapView$1;->a:Lcab/snapp/mapmodule/units/googlemap/GoogleMapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMapReady(Lcom/google/android/gms/maps/c;)V
    .locals 2

    .line 64
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/mapmodule/a;->getGoogleMapStyle()I

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcab/snapp/mapmodule/units/googlemap/GoogleMapView$1;->a:Lcab/snapp/mapmodule/units/googlemap/GoogleMapView;

    invoke-virtual {v0}, Lcab/snapp/mapmodule/units/googlemap/GoogleMapView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/mapmodule/a;->getGoogleMapStyle()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/maps/model/MapStyleOptions;->loadRawResourceStyle(Landroid/content/Context;I)Lcom/google/android/gms/maps/model/MapStyleOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/c;->setMapStyle(Lcom/google/android/gms/maps/model/MapStyleOptions;)Z

    .line 68
    :cond_0
    iget-object v0, p0, Lcab/snapp/mapmodule/units/googlemap/GoogleMapView$1;->a:Lcab/snapp/mapmodule/units/googlemap/GoogleMapView;

    invoke-static {v0}, Lcab/snapp/mapmodule/units/googlemap/GoogleMapView;->a(Lcab/snapp/mapmodule/units/googlemap/GoogleMapView;)Lcab/snapp/mapmodule/units/googlemap/b;

    move-result-object v0

    iget-object v1, p0, Lcab/snapp/mapmodule/units/googlemap/GoogleMapView$1;->a:Lcab/snapp/mapmodule/units/googlemap/GoogleMapView;

    invoke-virtual {v1}, Lcab/snapp/mapmodule/units/googlemap/GoogleMapView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/mapmodule/units/googlemap/b;->initScaleGestureDetector(Landroid/content/Context;)V

    .line 69
    iget-object v0, p0, Lcab/snapp/mapmodule/units/googlemap/GoogleMapView$1;->a:Lcab/snapp/mapmodule/units/googlemap/GoogleMapView;

    invoke-static {v0}, Lcab/snapp/mapmodule/units/googlemap/GoogleMapView;->a(Lcab/snapp/mapmodule/units/googlemap/GoogleMapView;)Lcab/snapp/mapmodule/units/googlemap/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcab/snapp/mapmodule/units/googlemap/b;->onMapReady(Lcom/google/android/gms/maps/c;)V

    return-void
.end method
