.class final Lcom/mapbox/android/b/o$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mapbox/android/b/o$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapbox/android/b/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mapbox/android/b/o;


# direct methods
.method constructor <init>(Lcom/mapbox/android/b/o;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/mapbox/android/b/o$1;->a:Lcom/mapbox/android/b/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/mapbox/android/b/o$1;->a:Lcom/mapbox/android/b/o;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/mapbox/android/b/o;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mapbox/android/b/o$1;->a:Lcom/mapbox/android/b/o;

    iget-object v0, v0, Lcom/mapbox/android/b/o;->c:Ljava/lang/Object;

    check-cast v0, Lcom/mapbox/android/b/o$b;

    invoke-interface {v0, p1}, Lcom/mapbox/android/b/o$b;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/mapbox/android/b/o$1;->a:Lcom/mapbox/android/b/o;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/mapbox/android/b/o;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mapbox/android/b/o$1;->a:Lcom/mapbox/android/b/o;

    iget-object v0, v0, Lcom/mapbox/android/b/o;->c:Ljava/lang/Object;

    check-cast v0, Lcom/mapbox/android/b/o$b;

    invoke-interface {v0, p1}, Lcom/mapbox/android/b/o$b;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/mapbox/android/b/o$1;->a:Lcom/mapbox/android/b/o;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/mapbox/android/b/o;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mapbox/android/b/o$1;->a:Lcom/mapbox/android/b/o;

    iget-object v0, v0, Lcom/mapbox/android/b/o;->c:Ljava/lang/Object;

    check-cast v0, Lcom/mapbox/android/b/o$b;

    invoke-interface {v0, p1}, Lcom/mapbox/android/b/o$b;->onDown(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/mapbox/android/b/o$1;->a:Lcom/mapbox/android/b/o;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/mapbox/android/b/o;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mapbox/android/b/o$1;->a:Lcom/mapbox/android/b/o;

    iget-object v0, v0, Lcom/mapbox/android/b/o;->c:Ljava/lang/Object;

    check-cast v0, Lcom/mapbox/android/b/o$b;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/mapbox/android/b/o$b;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/mapbox/android/b/o$1;->a:Lcom/mapbox/android/b/o;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/mapbox/android/b/o;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/mapbox/android/b/o$1;->a:Lcom/mapbox/android/b/o;

    iget-object v0, v0, Lcom/mapbox/android/b/o;->c:Ljava/lang/Object;

    check-cast v0, Lcom/mapbox/android/b/o$b;

    invoke-interface {v0, p1}, Lcom/mapbox/android/b/o$b;->onLongPress(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/mapbox/android/b/o$1;->a:Lcom/mapbox/android/b/o;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mapbox/android/b/o;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mapbox/android/b/o$1;->a:Lcom/mapbox/android/b/o;

    iget-object v0, v0, Lcom/mapbox/android/b/o;->c:Ljava/lang/Object;

    check-cast v0, Lcom/mapbox/android/b/o$b;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/mapbox/android/b/o$b;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final onShowPress(Landroid/view/MotionEvent;)V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/mapbox/android/b/o$1;->a:Lcom/mapbox/android/b/o;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/mapbox/android/b/o;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/mapbox/android/b/o$1;->a:Lcom/mapbox/android/b/o;

    iget-object v0, v0, Lcom/mapbox/android/b/o;->c:Ljava/lang/Object;

    check-cast v0, Lcom/mapbox/android/b/o$b;

    invoke-interface {v0, p1}, Lcom/mapbox/android/b/o$b;->onShowPress(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/mapbox/android/b/o$1;->a:Lcom/mapbox/android/b/o;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/mapbox/android/b/o;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mapbox/android/b/o$1;->a:Lcom/mapbox/android/b/o;

    iget-object v0, v0, Lcom/mapbox/android/b/o;->c:Ljava/lang/Object;

    check-cast v0, Lcom/mapbox/android/b/o$b;

    invoke-interface {v0, p1}, Lcom/mapbox/android/b/o$b;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/mapbox/android/b/o$1;->a:Lcom/mapbox/android/b/o;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/mapbox/android/b/o;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mapbox/android/b/o$1;->a:Lcom/mapbox/android/b/o;

    iget-object v0, v0, Lcom/mapbox/android/b/o;->c:Ljava/lang/Object;

    check-cast v0, Lcom/mapbox/android/b/o$b;

    invoke-interface {v0, p1}, Lcom/mapbox/android/b/o$b;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
