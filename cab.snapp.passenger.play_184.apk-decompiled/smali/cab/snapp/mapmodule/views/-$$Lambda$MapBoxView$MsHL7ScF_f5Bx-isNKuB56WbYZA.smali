.class public final synthetic Lcab/snapp/mapmodule/views/-$$Lambda$MapBoxView$MsHL7ScF_f5Bx-isNKuB56WbYZA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnMapClickListener;


# instance fields
.field private final synthetic f$0:Lcab/snapp/mapmodule/views/MapBoxView;


# direct methods
.method public synthetic constructor <init>(Lcab/snapp/mapmodule/views/MapBoxView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcab/snapp/mapmodule/views/-$$Lambda$MapBoxView$MsHL7ScF_f5Bx-isNKuB56WbYZA;->f$0:Lcab/snapp/mapmodule/views/MapBoxView;

    return-void
.end method


# virtual methods
.method public final onMapClick(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Z
    .locals 1

    iget-object v0, p0, Lcab/snapp/mapmodule/views/-$$Lambda$MapBoxView$MsHL7ScF_f5Bx-isNKuB56WbYZA;->f$0:Lcab/snapp/mapmodule/views/MapBoxView;

    invoke-static {v0, p1}, Lcab/snapp/mapmodule/views/MapBoxView;->lambda$MsHL7ScF_f5Bx-isNKuB56WbYZA(Lcab/snapp/mapmodule/views/MapBoxView;Lcom/mapbox/mapboxsdk/geometry/LatLng;)Z

    move-result p1

    return p1
.end method
