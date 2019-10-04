.class Lcom/mapbox/mapboxsdk/maps/widgets/CompassView$1;
.super Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView$1;->this$0:Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;

    invoke-direct {p0}, Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2

    .line 165
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView$1;->this$0:Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 166
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView$1;->this$0:Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;->setVisibility(I)V

    .line 167
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView$1;->this$0:Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;->resetAnimation()V

    return-void
.end method
