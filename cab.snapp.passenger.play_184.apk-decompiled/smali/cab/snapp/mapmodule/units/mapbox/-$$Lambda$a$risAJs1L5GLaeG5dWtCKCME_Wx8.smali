.class public final synthetic Lcab/snapp/mapmodule/units/mapbox/-$$Lambda$a$risAJs1L5GLaeG5dWtCKCME_Wx8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnMapClickListener;


# instance fields
.field private final synthetic f$0:Lcab/snapp/mapmodule/units/mapbox/a;


# direct methods
.method public synthetic constructor <init>(Lcab/snapp/mapmodule/units/mapbox/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcab/snapp/mapmodule/units/mapbox/-$$Lambda$a$risAJs1L5GLaeG5dWtCKCME_Wx8;->f$0:Lcab/snapp/mapmodule/units/mapbox/a;

    return-void
.end method


# virtual methods
.method public final onMapClick(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Z
    .locals 1

    iget-object v0, p0, Lcab/snapp/mapmodule/units/mapbox/-$$Lambda$a$risAJs1L5GLaeG5dWtCKCME_Wx8;->f$0:Lcab/snapp/mapmodule/units/mapbox/a;

    invoke-static {v0, p1}, Lcab/snapp/mapmodule/units/mapbox/a;->lambda$risAJs1L5GLaeG5dWtCKCME_Wx8(Lcab/snapp/mapmodule/units/mapbox/a;Lcom/mapbox/mapboxsdk/geometry/LatLng;)Z

    move-result p1

    return p1
.end method
