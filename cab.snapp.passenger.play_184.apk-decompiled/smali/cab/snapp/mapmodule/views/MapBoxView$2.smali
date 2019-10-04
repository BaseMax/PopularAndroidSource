.class final Lcab/snapp/mapmodule/views/MapBoxView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/mapmodule/views/MapBoxView;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/mapmodule/views/MapBoxView;

.field private b:F


# direct methods
.method constructor <init>(Lcab/snapp/mapmodule/views/MapBoxView;)V
    .locals 0

    .line 350
    iput-object p1, p0, Lcab/snapp/mapmodule/views/MapBoxView$2;->a:Lcab/snapp/mapmodule/views/MapBoxView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, -0x40800000    # -1.0f

    .line 352
    iput p1, p0, Lcab/snapp/mapmodule/views/MapBoxView$2;->b:F

    return-void
.end method


# virtual methods
.method public final onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    .line 357
    iget v0, p0, Lcab/snapp/mapmodule/views/MapBoxView$2;->b:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 359
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result p1

    iput p1, p0, Lcab/snapp/mapmodule/views/MapBoxView$2;->b:F

    goto :goto_0

    .line 363
    :cond_0
    iget-object v1, p0, Lcab/snapp/mapmodule/views/MapBoxView$2;->a:Lcab/snapp/mapmodule/views/MapBoxView;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v2

    invoke-static {v0, v2}, Lcab/snapp/mapmodule/views/MapBoxView;->a(FF)F

    move-result v0

    invoke-static {v1, v0}, Lcab/snapp/mapmodule/views/MapBoxView;->a(Lcab/snapp/mapmodule/views/MapBoxView;F)V

    .line 364
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result p1

    iput p1, p0, Lcab/snapp/mapmodule/views/MapBoxView$2;->b:F

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    const/high16 p1, -0x40800000    # -1.0f

    .line 372
    iput p1, p0, Lcab/snapp/mapmodule/views/MapBoxView$2;->b:F

    const/4 p1, 0x1

    return p1
.end method

.method public final onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    const/high16 p1, -0x40800000    # -1.0f

    .line 379
    iput p1, p0, Lcab/snapp/mapmodule/views/MapBoxView$2;->b:F

    return-void
.end method
