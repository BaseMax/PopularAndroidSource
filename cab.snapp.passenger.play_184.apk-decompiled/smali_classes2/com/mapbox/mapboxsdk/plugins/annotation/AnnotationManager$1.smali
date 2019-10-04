.class Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mapbox/mapboxsdk/maps/MapView$OnDidFinishLoadingStyleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/maps/MapboxMap;Lcom/mapbox/mapboxsdk/maps/Style;Lcom/mapbox/mapboxsdk/plugins/annotation/CoreElementProvider;Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController;Ljava/lang/String;Lcom/mapbox/mapboxsdk/style/sources/GeoJsonOptions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;

.field final synthetic val$geoJsonOptions:Lcom/mapbox/mapboxsdk/style/sources/GeoJsonOptions;

.field final synthetic val$mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;Lcom/mapbox/mapboxsdk/maps/MapboxMap;Lcom/mapbox/mapboxsdk/style/sources/GeoJsonOptions;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager$1;->this$0:Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;

    iput-object p2, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager$1;->val$mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    iput-object p3, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager$1;->val$geoJsonOptions:Lcom/mapbox/mapboxsdk/style/sources/GeoJsonOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDidFinishLoadingStyle()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager$1;->val$mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    new-instance v1, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager$1$1;

    invoke-direct {v1, p0}, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager$1$1;-><init>(Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager$1;)V

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle(Lcom/mapbox/mapboxsdk/maps/Style$OnStyleLoaded;)V

    return-void
.end method
