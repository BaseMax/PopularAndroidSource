.class final Lcom/mapbox/android/b/p$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapbox/android/b/p;-><init>(Landroid/content/Context;Lcom/mapbox/android/b/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mapbox/android/b/p;


# direct methods
.method constructor <init>(Lcom/mapbox/android/b/p;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/mapbox/android/b/p$1;->a:Lcom/mapbox/android/b/p;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 57
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/mapbox/android/b/p$1;->a:Lcom/mapbox/android/b/p;

    invoke-static {v0}, Lcom/mapbox/android/b/p;->a(Lcom/mapbox/android/b/p;)Z

    .line 59
    iget-object v0, p0, Lcom/mapbox/android/b/p$1;->a:Lcom/mapbox/android/b/p;

    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {v1, v2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {v0, v1}, Lcom/mapbox/android/b/p;->a(Lcom/mapbox/android/b/p;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
