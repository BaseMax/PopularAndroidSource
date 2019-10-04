.class final Lcab/snapp/mapmodule/views/GoogleMapView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/mapmodule/views/GoogleMapView;->initScaleGestureDetector()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/mapmodule/views/GoogleMapView;

.field private b:F


# direct methods
.method constructor <init>(Lcab/snapp/mapmodule/views/GoogleMapView;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcab/snapp/mapmodule/views/GoogleMapView$1;->a:Lcab/snapp/mapmodule/views/GoogleMapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, -0x40800000    # -1.0f

    .line 222
    iput p1, p0, Lcab/snapp/mapmodule/views/GoogleMapView$1;->b:F

    return-void
.end method


# virtual methods
.method public final onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    .line 227
    iget v0, p0, Lcab/snapp/mapmodule/views/GoogleMapView$1;->b:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 229
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result p1

    iput p1, p0, Lcab/snapp/mapmodule/views/GoogleMapView$1;->b:F

    goto :goto_0

    .line 233
    :cond_0
    iget-object v1, p0, Lcab/snapp/mapmodule/views/GoogleMapView$1;->a:Lcab/snapp/mapmodule/views/GoogleMapView;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v2

    invoke-static {v0, v2}, Lcab/snapp/mapmodule/views/GoogleMapView;->a(FF)F

    move-result v0

    invoke-virtual {v1, v0}, Lcab/snapp/mapmodule/views/GoogleMapView;->zoom(F)V

    .line 234
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result p1

    iput p1, p0, Lcab/snapp/mapmodule/views/GoogleMapView$1;->b:F

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    const/high16 p1, -0x40800000    # -1.0f

    .line 242
    iput p1, p0, Lcab/snapp/mapmodule/views/GoogleMapView$1;->b:F

    const/4 p1, 0x1

    return p1
.end method

.method public final onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    const/high16 p1, -0x40800000    # -1.0f

    .line 249
    iput p1, p0, Lcab/snapp/mapmodule/views/GoogleMapView$1;->b:F

    return-void
.end method
