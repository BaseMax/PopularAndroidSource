.class final Lcab/snapp/mapmodule/units/mapbox/a$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/mapmodule/units/mapbox/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

.field final synthetic b:Lcab/snapp/mapmodule/a/a/l;

.field final synthetic c:Lcab/snapp/mapmodule/units/mapbox/a;


# direct methods
.method constructor <init>(Lcab/snapp/mapmodule/units/mapbox/a;Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;Lcab/snapp/mapmodule/a/a/l;)V
    .locals 0

    .line 827
    iput-object p1, p0, Lcab/snapp/mapmodule/units/mapbox/a$6;->c:Lcab/snapp/mapmodule/units/mapbox/a;

    iput-object p2, p0, Lcab/snapp/mapmodule/units/mapbox/a$6;->a:Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    iput-object p3, p0, Lcab/snapp/mapmodule/units/mapbox/a$6;->b:Lcab/snapp/mapmodule/a/a/l;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 831
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 832
    iget-object p1, p0, Lcab/snapp/mapmodule/units/mapbox/a$6;->c:Lcab/snapp/mapmodule/units/mapbox/a;

    invoke-static {p1}, Lcab/snapp/mapmodule/units/mapbox/a;->b(Lcab/snapp/mapmodule/units/mapbox/a;)Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object p1

    iget-object v0, p0, Lcab/snapp/mapmodule/units/mapbox/a$6;->a:Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/maps/Style;->removeLayer(Lcom/mapbox/mapboxsdk/style/layers/Layer;)Z

    .line 833
    iget-object p1, p0, Lcab/snapp/mapmodule/units/mapbox/a$6;->c:Lcab/snapp/mapmodule/units/mapbox/a;

    invoke-static {p1}, Lcab/snapp/mapmodule/units/mapbox/a;->c(Lcab/snapp/mapmodule/units/mapbox/a;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcab/snapp/mapmodule/units/mapbox/a$6;->b:Lcab/snapp/mapmodule/a/a/l;

    iget-object v0, v0, Lcab/snapp/mapmodule/a/a/l;->markerTag:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
