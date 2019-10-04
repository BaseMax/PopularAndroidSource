.class Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mapbox/mapboxsdk/maps/Style$OnStyleLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager$1;->onDidFinishLoadingStyle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager$1;


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager$1;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager$1$1;->this$1:Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStyleLoaded(Lcom/mapbox/mapboxsdk/maps/Style;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager$1$1;->this$1:Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager$1;

    iget-object v0, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager$1;->this$0:Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;

    invoke-static {v0, p1}, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->access$102(Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;Lcom/mapbox/mapboxsdk/maps/Style;)Lcom/mapbox/mapboxsdk/maps/Style;

    .line 97
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager$1$1;->this$1:Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager$1;

    iget-object p1, p1, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager$1;->this$0:Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;

    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager$1$1;->this$1:Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager$1;

    iget-object v0, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager$1;->val$geoJsonOptions:Lcom/mapbox/mapboxsdk/style/sources/GeoJsonOptions;

    invoke-static {p1, v0}, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->access$200(Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;Lcom/mapbox/mapboxsdk/style/sources/GeoJsonOptions;)V

    return-void
.end method
