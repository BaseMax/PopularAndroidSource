.class final Lcab/snapp/mapmodule/views/MapBoxView$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/mapmodule/views/MapBoxView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

.field final synthetic b:Lcab/snapp/mapmodule/a/a/l;

.field final synthetic c:Lcab/snapp/mapmodule/views/MapBoxView;


# direct methods
.method constructor <init>(Lcab/snapp/mapmodule/views/MapBoxView;Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;Lcab/snapp/mapmodule/a/a/l;)V
    .locals 0

    .line 1005
    iput-object p1, p0, Lcab/snapp/mapmodule/views/MapBoxView$8;->c:Lcab/snapp/mapmodule/views/MapBoxView;

    iput-object p2, p0, Lcab/snapp/mapmodule/views/MapBoxView$8;->a:Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    iput-object p3, p0, Lcab/snapp/mapmodule/views/MapBoxView$8;->b:Lcab/snapp/mapmodule/a/a/l;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1009
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1010
    iget-object p1, p0, Lcab/snapp/mapmodule/views/MapBoxView$8;->c:Lcab/snapp/mapmodule/views/MapBoxView;

    invoke-static {p1}, Lcab/snapp/mapmodule/views/MapBoxView;->a(Lcab/snapp/mapmodule/views/MapBoxView;)Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object p1

    iget-object v0, p0, Lcab/snapp/mapmodule/views/MapBoxView$8;->a:Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/maps/Style;->removeLayer(Lcom/mapbox/mapboxsdk/style/layers/Layer;)Z

    .line 1011
    iget-object p1, p0, Lcab/snapp/mapmodule/views/MapBoxView$8;->c:Lcab/snapp/mapmodule/views/MapBoxView;

    invoke-static {p1}, Lcab/snapp/mapmodule/views/MapBoxView;->b(Lcab/snapp/mapmodule/views/MapBoxView;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcab/snapp/mapmodule/views/MapBoxView$8;->b:Lcab/snapp/mapmodule/a/a/l;

    iget-object v0, v0, Lcab/snapp/mapmodule/a/a/l;->markerTag:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
