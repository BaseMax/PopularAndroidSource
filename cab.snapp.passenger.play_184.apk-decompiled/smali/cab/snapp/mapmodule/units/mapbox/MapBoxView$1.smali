.class final Lcab/snapp/mapmodule/units/mapbox/MapBoxView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mapbox/mapboxsdk/maps/Style$OnStyleLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/mapmodule/units/mapbox/MapBoxView;->b(Lcom/mapbox/mapboxsdk/maps/MapboxMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

.field final synthetic b:Lcab/snapp/mapmodule/units/mapbox/MapBoxView;


# direct methods
.method constructor <init>(Lcab/snapp/mapmodule/units/mapbox/MapBoxView;Lcom/mapbox/mapboxsdk/maps/MapboxMap;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcab/snapp/mapmodule/units/mapbox/MapBoxView$1;->b:Lcab/snapp/mapmodule/units/mapbox/MapBoxView;

    iput-object p2, p0, Lcab/snapp/mapmodule/units/mapbox/MapBoxView$1;->a:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStyleLoaded(Lcom/mapbox/mapboxsdk/maps/Style;)V
    .locals 1

    .line 84
    iget-object p1, p0, Lcab/snapp/mapmodule/units/mapbox/MapBoxView$1;->b:Lcab/snapp/mapmodule/units/mapbox/MapBoxView;

    invoke-static {p1}, Lcab/snapp/mapmodule/units/mapbox/MapBoxView;->a(Lcab/snapp/mapmodule/units/mapbox/MapBoxView;)Lcab/snapp/mapmodule/units/mapbox/b;

    move-result-object p1

    iget-object v0, p0, Lcab/snapp/mapmodule/units/mapbox/MapBoxView$1;->b:Lcab/snapp/mapmodule/units/mapbox/MapBoxView;

    invoke-virtual {v0}, Lcab/snapp/mapmodule/units/mapbox/MapBoxView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcab/snapp/mapmodule/units/mapbox/b;->initScaleGestureDetector(Landroid/content/Context;)V

    .line 85
    iget-object p1, p0, Lcab/snapp/mapmodule/units/mapbox/MapBoxView$1;->b:Lcab/snapp/mapmodule/units/mapbox/MapBoxView;

    invoke-static {p1}, Lcab/snapp/mapmodule/units/mapbox/MapBoxView;->a(Lcab/snapp/mapmodule/units/mapbox/MapBoxView;)Lcab/snapp/mapmodule/units/mapbox/b;

    move-result-object p1

    iget-object v0, p0, Lcab/snapp/mapmodule/units/mapbox/MapBoxView$1;->a:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {p1, v0}, Lcab/snapp/mapmodule/units/mapbox/b;->onMapReady(Lcom/mapbox/mapboxsdk/maps/MapboxMap;)V

    .line 86
    iget-object p1, p0, Lcab/snapp/mapmodule/units/mapbox/MapBoxView$1;->b:Lcab/snapp/mapmodule/units/mapbox/MapBoxView;

    iget-object v0, p0, Lcab/snapp/mapmodule/units/mapbox/MapBoxView$1;->a:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-static {p1, v0}, Lcab/snapp/mapmodule/units/mapbox/MapBoxView;->a(Lcab/snapp/mapmodule/units/mapbox/MapBoxView;Lcom/mapbox/mapboxsdk/maps/MapboxMap;)V

    return-void
.end method
