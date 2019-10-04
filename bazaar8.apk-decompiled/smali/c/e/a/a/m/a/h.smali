.class public final Lc/e/a/a/m/a/h;
.super Landroid/opengl/GLSurfaceView;
.source "SphericalSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/a/m/a/h$a;,
        Lc/e/a/a/m/a/h$b;
    }
.end annotation


# instance fields
.field public final a:Landroid/hardware/SensorManager;

.field public final b:Landroid/hardware/Sensor;

.field public final c:Lc/e/a/a/m/a/d;

.field public final d:Lc/e/a/a/m/a/h$a;

.field public final e:Landroid/os/Handler;

.field public final f:Lc/e/a/a/m/a/i;

.field public final g:Lc/e/a/a/m/a/f;

.field public h:Lc/e/a/a/m/a/h$b;

.field public i:Landroid/graphics/SurfaceTexture;

.field public j:Landroid/view/Surface;

.field public k:Lc/e/a/a/M$e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lc/e/a/a/m/a/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lc/e/a/a/m/a/h;->e:Landroid/os/Handler;

    const-string p2, "sensor"

    .line 4
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lc/e/a/a/o/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Landroid/hardware/SensorManager;

    iput-object p2, p0, Lc/e/a/a/m/a/h;->a:Landroid/hardware/SensorManager;

    .line 5
    sget p2, Lc/e/a/a/o/I;->a:I

    const/16 v0, 0x12

    if-lt p2, v0, :cond_0

    .line 6
    iget-object p2, p0, Lc/e/a/a/m/a/h;->a:Landroid/hardware/SensorManager;

    const/16 v0, 0xf

    invoke-virtual {p2, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    .line 7
    iget-object p2, p0, Lc/e/a/a/m/a/h;->a:Landroid/hardware/SensorManager;

    const/16 v0, 0xb

    invoke-virtual {p2, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p2

    .line 8
    :cond_1
    iput-object p2, p0, Lc/e/a/a/m/a/h;->b:Landroid/hardware/Sensor;

    .line 9
    new-instance p2, Lc/e/a/a/m/a/f;

    invoke-direct {p2}, Lc/e/a/a/m/a/f;-><init>()V

    iput-object p2, p0, Lc/e/a/a/m/a/h;->g:Lc/e/a/a/m/a/f;

    .line 10
    new-instance p2, Lc/e/a/a/m/a/h$a;

    iget-object v0, p0, Lc/e/a/a/m/a/h;->g:Lc/e/a/a/m/a/f;

    invoke-direct {p2, p0, v0}, Lc/e/a/a/m/a/h$a;-><init>(Lc/e/a/a/m/a/h;Lc/e/a/a/m/a/f;)V

    iput-object p2, p0, Lc/e/a/a/m/a/h;->d:Lc/e/a/a/m/a/h$a;

    .line 11
    new-instance p2, Lc/e/a/a/m/a/i;

    iget-object v0, p0, Lc/e/a/a/m/a/h;->d:Lc/e/a/a/m/a/h$a;

    const/high16 v1, 0x41c80000    # 25.0f

    invoke-direct {p2, p1, v0, v1}, Lc/e/a/a/m/a/i;-><init>(Landroid/content/Context;Lc/e/a/a/m/a/i$a;F)V

    iput-object p2, p0, Lc/e/a/a/m/a/h;->f:Lc/e/a/a/m/a/i;

    const-string p2, "window"

    .line 12
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 13
    invoke-static {p1}, Lc/e/a/a/o/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 14
    new-instance p2, Lc/e/a/a/m/a/d;

    const/4 v0, 0x2

    new-array v1, v0, [Lc/e/a/a/m/a/d$a;

    const/4 v2, 0x0

    iget-object v3, p0, Lc/e/a/a/m/a/h;->f:Lc/e/a/a/m/a/i;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lc/e/a/a/m/a/h;->d:Lc/e/a/a/m/a/h$a;

    aput-object v3, v1, v2

    invoke-direct {p2, p1, v1}, Lc/e/a/a/m/a/d;-><init>(Landroid/view/Display;[Lc/e/a/a/m/a/d$a;)V

    iput-object p2, p0, Lc/e/a/a/m/a/h;->c:Lc/e/a/a/m/a/d;

    .line 15
    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 16
    iget-object p1, p0, Lc/e/a/a/m/a/h;->d:Lc/e/a/a/m/a/h$a;

    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 17
    iget-object p1, p0, Lc/e/a/a/m/a/h;->f:Lc/e/a/a/m/a/i;

    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public static a(Landroid/graphics/SurfaceTexture;Landroid/view/Surface;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 15
    invoke-virtual {p0}, Landroid/graphics/SurfaceTexture;->release()V

    :cond_0
    if-eqz p1, :cond_1

    .line 16
    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    :cond_1
    return-void
.end method

.method public static synthetic a(Lc/e/a/a/m/a/h;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc/e/a/a/m/a/h;->b(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method


# virtual methods
.method public synthetic a()V
    .locals 3

    .line 2
    iget-object v0, p0, Lc/e/a/a/m/a/h;->j:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lc/e/a/a/m/a/h;->h:Lc/e/a/a/m/a/h$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, v1}, Lc/e/a/a/m/a/h$b;->a(Landroid/view/Surface;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lc/e/a/a/m/a/h;->i:Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lc/e/a/a/m/a/h;->j:Landroid/view/Surface;

    invoke-static {v0, v2}, Lc/e/a/a/m/a/h;->a(Landroid/graphics/SurfaceTexture;Landroid/view/Surface;)V

    .line 6
    iput-object v1, p0, Lc/e/a/a/m/a/h;->i:Landroid/graphics/SurfaceTexture;

    .line 7
    iput-object v1, p0, Lc/e/a/a/m/a/h;->j:Landroid/view/Surface;

    :cond_1
    return-void
.end method

.method public synthetic a(Landroid/graphics/SurfaceTexture;)V
    .locals 3

    .line 8
    iget-object v0, p0, Lc/e/a/a/m/a/h;->i:Landroid/graphics/SurfaceTexture;

    .line 9
    iget-object v1, p0, Lc/e/a/a/m/a/h;->j:Landroid/view/Surface;

    .line 10
    iput-object p1, p0, Lc/e/a/a/m/a/h;->i:Landroid/graphics/SurfaceTexture;

    .line 11
    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v2, p0, Lc/e/a/a/m/a/h;->j:Landroid/view/Surface;

    .line 12
    iget-object p1, p0, Lc/e/a/a/m/a/h;->h:Lc/e/a/a/m/a/h$b;

    if-eqz p1, :cond_0

    .line 13
    iget-object v2, p0, Lc/e/a/a/m/a/h;->j:Landroid/view/Surface;

    invoke-interface {p1, v2}, Lc/e/a/a/m/a/h$b;->a(Landroid/view/Surface;)V

    .line 14
    :cond_0
    invoke-static {v0, v1}, Lc/e/a/a/m/a/h;->a(Landroid/graphics/SurfaceTexture;Landroid/view/Surface;)V

    return-void
.end method

.method public final b(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/a/m/a/h;->e:Landroid/os/Handler;

    new-instance v1, Lc/e/a/a/m/a/b;

    invoke-direct {v1, p0, p1}, Lc/e/a/a/m/a/b;-><init>(Lc/e/a/a/m/a/h;Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lc/e/a/a/m/a/h;->e:Landroid/os/Handler;

    new-instance v1, Lc/e/a/a/m/a/c;

    invoke-direct {v1, p0}, Lc/e/a/a/m/a/c;-><init>(Lc/e/a/a/m/a/h;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/a/m/a/h;->b:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/e/a/a/m/a/h;->a:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lc/e/a/a/m/a/h;->c:Lc/e/a/a/m/a/d;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 2
    iget-object v0, p0, Lc/e/a/a/m/a/h;->b:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lc/e/a/a/m/a/h;->a:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lc/e/a/a/m/a/h;->c:Lc/e/a/a/m/a/d;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_0
    return-void
.end method

.method public setDefaultStereoMode(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/m/a/h;->g:Lc/e/a/a/m/a/f;

    invoke-virtual {v0, p1}, Lc/e/a/a/m/a/f;->a(I)V

    return-void
.end method

.method public setSingleTapListener(Lc/e/a/a/m/a/g;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/m/a/h;->f:Lc/e/a/a/m/a/i;

    invoke-virtual {v0, p1}, Lc/e/a/a/m/a/i;->a(Lc/e/a/a/m/a/g;)V

    return-void
.end method

.method public setSurfaceListener(Lc/e/a/a/m/a/h$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/a/m/a/h;->h:Lc/e/a/a/m/a/h$b;

    return-void
.end method

.method public setVideoComponent(Lc/e/a/a/M$e;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/a/m/a/h;->k:Lc/e/a/a/M$e;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_2

    .line 2
    iget-object v1, p0, Lc/e/a/a/m/a/h;->j:Landroid/view/Surface;

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0, v1}, Lc/e/a/a/M$e;->b(Landroid/view/Surface;)V

    .line 4
    :cond_1
    iget-object v0, p0, Lc/e/a/a/m/a/h;->k:Lc/e/a/a/M$e;

    iget-object v1, p0, Lc/e/a/a/m/a/h;->g:Lc/e/a/a/m/a/f;

    invoke-interface {v0, v1}, Lc/e/a/a/M$e;->b(Lc/e/a/a/p/o;)V

    .line 5
    iget-object v0, p0, Lc/e/a/a/m/a/h;->k:Lc/e/a/a/M$e;

    iget-object v1, p0, Lc/e/a/a/m/a/h;->g:Lc/e/a/a/m/a/f;

    invoke-interface {v0, v1}, Lc/e/a/a/M$e;->b(Lc/e/a/a/p/a/a;)V

    .line 6
    :cond_2
    iput-object p1, p0, Lc/e/a/a/m/a/h;->k:Lc/e/a/a/M$e;

    .line 7
    iget-object p1, p0, Lc/e/a/a/m/a/h;->k:Lc/e/a/a/M$e;

    if-eqz p1, :cond_3

    .line 8
    iget-object v0, p0, Lc/e/a/a/m/a/h;->g:Lc/e/a/a/m/a/f;

    invoke-interface {p1, v0}, Lc/e/a/a/M$e;->a(Lc/e/a/a/p/o;)V

    .line 9
    iget-object p1, p0, Lc/e/a/a/m/a/h;->k:Lc/e/a/a/M$e;

    iget-object v0, p0, Lc/e/a/a/m/a/h;->g:Lc/e/a/a/m/a/f;

    invoke-interface {p1, v0}, Lc/e/a/a/M$e;->a(Lc/e/a/a/p/a/a;)V

    .line 10
    iget-object p1, p0, Lc/e/a/a/m/a/h;->k:Lc/e/a/a/M$e;

    iget-object v0, p0, Lc/e/a/a/m/a/h;->j:Landroid/view/Surface;

    invoke-interface {p1, v0}, Lc/e/a/a/M$e;->a(Landroid/view/Surface;)V

    :cond_3
    return-void
.end method
