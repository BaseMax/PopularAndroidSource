.class final Lcab/snapp/mapmodule/units/googlemap/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/mapmodule/units/googlemap/b;->initScaleGestureDetector(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/mapmodule/units/googlemap/b;

.field private b:F


# direct methods
.method constructor <init>(Lcab/snapp/mapmodule/units/googlemap/b;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcab/snapp/mapmodule/units/googlemap/b$1;->a:Lcab/snapp/mapmodule/units/googlemap/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, -0x40800000    # -1.0f

    .line 33
    iput p1, p0, Lcab/snapp/mapmodule/units/googlemap/b$1;->b:F

    return-void
.end method


# virtual methods
.method public final onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    .line 38
    iget v0, p0, Lcab/snapp/mapmodule/units/googlemap/b$1;->b:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 40
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result p1

    iput p1, p0, Lcab/snapp/mapmodule/units/googlemap/b$1;->b:F

    goto :goto_0

    .line 42
    :cond_0
    iget-object v0, p0, Lcab/snapp/mapmodule/units/googlemap/b$1;->a:Lcab/snapp/mapmodule/units/googlemap/b;

    invoke-static {v0}, Lcab/snapp/mapmodule/units/googlemap/b;->a(Lcab/snapp/mapmodule/units/googlemap/b;)Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lcab/snapp/mapmodule/units/googlemap/b$1;->a:Lcab/snapp/mapmodule/units/googlemap/b;

    invoke-static {v0}, Lcab/snapp/mapmodule/units/googlemap/b;->b(Lcab/snapp/mapmodule/units/googlemap/b;)Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/mapmodule/units/googlemap/a;

    iget v1, p0, Lcab/snapp/mapmodule/units/googlemap/b$1;->b:F

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v2

    invoke-static {v1, v2}, Lcab/snapp/mapmodule/units/googlemap/b;->a(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Lcab/snapp/mapmodule/units/googlemap/a;->zoom(F)V

    .line 45
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result p1

    iput p1, p0, Lcab/snapp/mapmodule/units/googlemap/b$1;->b:F

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    const/high16 p1, -0x40800000    # -1.0f

    .line 53
    iput p1, p0, Lcab/snapp/mapmodule/units/googlemap/b$1;->b:F

    const/4 p1, 0x1

    return p1
.end method

.method public final onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    const/high16 p1, -0x40800000    # -1.0f

    .line 60
    iput p1, p0, Lcab/snapp/mapmodule/units/googlemap/b$1;->b:F

    return-void
.end method