.class public Lme/dm7/barcodescanner/core/CameraPreview;
.super Landroid/view/SurfaceView;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field a:Landroid/hardware/Camera$AutoFocusCallback;

.field private b:Lme/dm7/barcodescanner/core/c;

.field private c:Landroid/os/Handler;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Landroid/hardware/Camera$PreviewCallback;

.field private i:F

.field private j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lme/dm7/barcodescanner/core/c;Landroid/hardware/Camera$PreviewCallback;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 25
    iput-boolean p1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->d:Z

    .line 26
    iput-boolean p1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->e:Z

    const/4 p2, 0x0

    .line 27
    iput-boolean p2, p0, Lme/dm7/barcodescanner/core/CameraPreview;->f:Z

    .line 28
    iput-boolean p1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->g:Z

    const p1, 0x3dcccccd    # 0.1f

    .line 30
    iput p1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->i:F

    .line 294
    new-instance p1, Lme/dm7/barcodescanner/core/CameraPreview$1;

    invoke-direct {p1, p0}, Lme/dm7/barcodescanner/core/CameraPreview$1;-><init>(Lme/dm7/barcodescanner/core/CameraPreview;)V

    iput-object p1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->j:Ljava/lang/Runnable;

    .line 303
    new-instance p1, Lme/dm7/barcodescanner/core/CameraPreview$2;

    invoke-direct {p1, p0}, Lme/dm7/barcodescanner/core/CameraPreview$2;-><init>(Lme/dm7/barcodescanner/core/CameraPreview;)V

    iput-object p1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->a:Landroid/hardware/Camera$AutoFocusCallback;

    .line 39
    invoke-virtual {p0, p3, p4}, Lme/dm7/barcodescanner/core/CameraPreview;->init(Lme/dm7/barcodescanner/core/c;Landroid/hardware/Camera$PreviewCallback;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lme/dm7/barcodescanner/core/c;Landroid/hardware/Camera$PreviewCallback;)V
    .locals 1

    .line 33
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 25
    iput-boolean p1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->d:Z

    .line 26
    iput-boolean p1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->e:Z

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->f:Z

    .line 28
    iput-boolean p1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->g:Z

    const p1, 0x3dcccccd    # 0.1f

    .line 30
    iput p1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->i:F

    .line 294
    new-instance p1, Lme/dm7/barcodescanner/core/CameraPreview$1;

    invoke-direct {p1, p0}, Lme/dm7/barcodescanner/core/CameraPreview$1;-><init>(Lme/dm7/barcodescanner/core/CameraPreview;)V

    iput-object p1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->j:Ljava/lang/Runnable;

    .line 303
    new-instance p1, Lme/dm7/barcodescanner/core/CameraPreview$2;

    invoke-direct {p1, p0}, Lme/dm7/barcodescanner/core/CameraPreview$2;-><init>(Lme/dm7/barcodescanner/core/CameraPreview;)V

    iput-object p1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->a:Landroid/hardware/Camera$AutoFocusCallback;

    .line 34
    invoke-virtual {p0, p2, p3}, Lme/dm7/barcodescanner/core/CameraPreview;->init(Lme/dm7/barcodescanner/core/c;Landroid/hardware/Camera$PreviewCallback;)V

    return-void
.end method

.method static synthetic a(Lme/dm7/barcodescanner/core/CameraPreview;)Lme/dm7/barcodescanner/core/c;
    .locals 0

    .line 20
    iget-object p0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->b:Lme/dm7/barcodescanner/core/c;

    return-object p0
.end method

.method private a()V
    .locals 4

    .line 310
    iget-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->c:Landroid/os/Handler;

    iget-object v1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->j:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private a(II)V
    .locals 5

    .line 160
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 163
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->getDisplayOrientation()I

    move-result v1

    rem-int/lit16 v1, v1, 0xb4

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v4, p2

    move p2, p1

    move p1, v4

    .line 171
    :goto_0
    iget-boolean v1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->g:Z

    if-eqz v1, :cond_2

    .line 172
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 173
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v1, v1

    int-to-float p1, p1

    div-float/2addr v1, p1

    int-to-float v2, v2

    int-to-float p2, p2

    div-float/2addr v2, p2

    cmpl-float v3, v1, v2

    if-gtz v3, :cond_1

    move v1, v2

    :cond_1
    mul-float p1, p1, v1

    .line 185
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-float p2, p2, v1

    .line 186
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 189
    :cond_2
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 190
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 191
    invoke-virtual {p0, v0}, Lme/dm7/barcodescanner/core/CameraPreview;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic b(Lme/dm7/barcodescanner/core/CameraPreview;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->d:Z

    return p0
.end method

.method static synthetic c(Lme/dm7/barcodescanner/core/CameraPreview;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->e:Z

    return p0
.end method

.method static synthetic d(Lme/dm7/barcodescanner/core/CameraPreview;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->f:Z

    return p0
.end method

.method static synthetic e(Lme/dm7/barcodescanner/core/CameraPreview;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->a()V

    return-void
.end method

.method private getOptimalPreviewSize()Landroid/hardware/Camera$Size;
    .locals 18

    move-object/from16 v0, p0

    .line 230
    iget-object v1, v0, Lme/dm7/barcodescanner/core/CameraPreview;->b:Lme/dm7/barcodescanner/core/c;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 234
    :cond_0
    iget-object v1, v1, Lme/dm7/barcodescanner/core/c;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    .line 235
    invoke-virtual/range {p0 .. p0}, Lme/dm7/barcodescanner/core/CameraPreview;->getWidth()I

    move-result v3

    .line 236
    invoke-virtual/range {p0 .. p0}, Lme/dm7/barcodescanner/core/CameraPreview;->getHeight()I

    move-result v4

    .line 237
    invoke-virtual/range {p0 .. p0}, Lme/dm7/barcodescanner/core/CameraPreview;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lme/dm7/barcodescanner/core/d;->getScreenOrientation(Landroid/content/Context;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    move/from16 v17, v4

    move v4, v3

    move/from16 v3, v17

    :cond_1
    int-to-double v5, v3

    int-to-double v7, v4

    .line 243
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v7

    if-nez v1, :cond_2

    return-object v2

    .line 252
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const-wide v7, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-wide v9, v7

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/Camera$Size;

    .line 253
    iget v12, v11, Landroid/hardware/Camera$Size;->width:I

    int-to-double v12, v12

    iget v14, v11, Landroid/hardware/Camera$Size;->height:I

    int-to-double v14, v14

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v12, v14

    sub-double/2addr v12, v5

    .line 254
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    iget v14, v0, Lme/dm7/barcodescanner/core/CameraPreview;->i:F

    float-to-double v14, v14

    cmpl-double v16, v12, v14

    if-gtz v16, :cond_3

    .line 255
    iget v12, v11, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v12, v4

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    int-to-double v12, v12

    cmpg-double v14, v12, v9

    if-gez v14, :cond_3

    .line 257
    iget v2, v11, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-double v9, v2

    move-object v2, v11

    goto :goto_0

    :cond_4
    if-nez v2, :cond_6

    .line 264
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    .line 265
    iget v5, v3, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-double v5, v5

    cmpg-double v9, v5, v7

    if-gez v9, :cond_5

    .line 267
    iget v2, v3, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-double v5, v2

    move-object v2, v3

    move-wide v7, v5

    goto :goto_1

    :cond_6
    return-object v2
.end method


# virtual methods
.method public getDisplayOrientation()I
    .locals 5

    .line 195
    iget-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->b:Lme/dm7/barcodescanner/core/c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 200
    :cond_0
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 201
    iget-object v2, p0, Lme/dm7/barcodescanner/core/CameraPreview;->b:Lme/dm7/barcodescanner/core/c;

    iget v2, v2, Lme/dm7/barcodescanner/core/c;->mCameraId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 202
    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    goto :goto_0

    .line 204
    :cond_1
    iget-object v2, p0, Lme/dm7/barcodescanner/core/CameraPreview;->b:Lme/dm7/barcodescanner/core/c;

    iget v2, v2, Lme/dm7/barcodescanner/core/c;->mCameraId:I

    invoke-static {v2, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 207
    :goto_0
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 208
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 210
    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    if-eq v2, v3, :cond_4

    const/4 v4, 0x2

    if-eq v2, v4, :cond_3

    const/4 v4, 0x3

    if-eq v2, v4, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x10e

    goto :goto_1

    :cond_3
    const/16 v1, 0xb4

    goto :goto_1

    :cond_4
    const/16 v1, 0x5a

    .line 220
    :cond_5
    :goto_1
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v2, v3, :cond_6

    .line 221
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    rsub-int v0, v0, 0x168

    .line 222
    rem-int/lit16 v0, v0, 0x168

    goto :goto_2

    .line 224
    :cond_6
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    :goto_2
    return v0
.end method

.method public init(Lme/dm7/barcodescanner/core/c;Landroid/hardware/Camera$PreviewCallback;)V
    .locals 0

    .line 43
    invoke-virtual {p0, p1, p2}, Lme/dm7/barcodescanner/core/CameraPreview;->setCamera(Lme/dm7/barcodescanner/core/c;Landroid/hardware/Camera$PreviewCallback;)V

    .line 44
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->c:Landroid/os/Handler;

    .line 45
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 46
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    const/4 p2, 0x3

    invoke-interface {p1, p2}, Landroid/view/SurfaceHolder;->setType(I)V

    return-void
.end method

.method public safeAutoFocus()V
    .locals 2

    .line 107
    :try_start_0
    iget-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->b:Lme/dm7/barcodescanner/core/c;

    iget-object v0, v0, Lme/dm7/barcodescanner/core/c;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->a:Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 111
    :catch_0
    invoke-direct {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->a()V

    return-void
.end method

.method public setAspectTolerance(F)V
    .locals 0

    .line 59
    iput p1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->i:F

    return-void
.end method

.method public setAutoFocus(Z)V
    .locals 2

    .line 275
    iget-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->b:Lme/dm7/barcodescanner/core/c;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->d:Z

    if-eqz v1, :cond_3

    .line 276
    iget-boolean v1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->e:Z

    if-ne p1, v1, :cond_0

    return-void

    .line 279
    :cond_0
    iput-boolean p1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->e:Z

    .line 280
    iget-boolean p1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->e:Z

    if-eqz p1, :cond_2

    .line 281
    iget-boolean p1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->f:Z

    if-eqz p1, :cond_1

    .line 283
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->safeAutoFocus()V

    return-void

    .line 285
    :cond_1
    invoke-direct {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->a()V

    return-void

    .line 289
    :cond_2
    iget-object p1, v0, Lme/dm7/barcodescanner/core/c;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->cancelAutoFocus()V

    :cond_3
    return-void
.end method

.method public setCamera(Lme/dm7/barcodescanner/core/c;Landroid/hardware/Camera$PreviewCallback;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->b:Lme/dm7/barcodescanner/core/c;

    .line 51
    iput-object p2, p0, Lme/dm7/barcodescanner/core/CameraPreview;->h:Landroid/hardware/Camera$PreviewCallback;

    return-void
.end method

.method public setShouldScaleToFill(Z)V
    .locals 0

    .line 55
    iput-boolean p1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->g:Z

    return-void
.end method

.method public setupCameraParameters()V
    .locals 4

    .line 130
    invoke-direct {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->getOptimalPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 131
    iget-object v1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->b:Lme/dm7/barcodescanner/core/c;

    iget-object v1, v1, Lme/dm7/barcodescanner/core/c;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 132
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 133
    iget-object v2, p0, Lme/dm7/barcodescanner/core/CameraPreview;->b:Lme/dm7/barcodescanner/core/c;

    iget-object v2, v2, Lme/dm7/barcodescanner/core/c;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1138
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 1151
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->getDisplayOrientation()I

    move-result v2

    rem-int/lit16 v2, v2, 0xb4

    if-nez v2, :cond_0

    goto :goto_0

    .line 1154
    :cond_0
    new-instance v2, Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Point;->y:I

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-direct {v2, v3, v1}, Landroid/graphics/Point;-><init>(II)V

    move-object v1, v2

    .line 1139
    :goto_0
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-float v2, v2

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 1140
    iget v0, v1, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v3, v1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 1143
    iget v0, v1, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    mul-float v0, v0, v2

    float-to-int v0, v0

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v0, v1}, Lme/dm7/barcodescanner/core/CameraPreview;->a(II)V

    return-void

    .line 1145
    :cond_1
    iget v0, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lme/dm7/barcodescanner/core/CameraPreview;->a(II)V

    return-void
.end method

.method public showCameraPreview()V
    .locals 2

    .line 83
    iget-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->b:Lme/dm7/barcodescanner/core/c;

    if-eqz v0, :cond_1

    .line 85
    :try_start_0
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->d:Z

    .line 87
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->setupCameraParameters()V

    .line 88
    iget-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->b:Lme/dm7/barcodescanner/core/c;

    iget-object v0, v0, Lme/dm7/barcodescanner/core/c;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 89
    iget-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->b:Lme/dm7/barcodescanner/core/c;

    iget-object v0, v0, Lme/dm7/barcodescanner/core/c;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->getDisplayOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 90
    iget-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->b:Lme/dm7/barcodescanner/core/c;

    iget-object v0, v0, Lme/dm7/barcodescanner/core/c;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->h:Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 91
    iget-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->b:Lme/dm7/barcodescanner/core/c;

    iget-object v0, v0, Lme/dm7/barcodescanner/core/c;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 92
    iget-boolean v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->e:Z

    if-eqz v0, :cond_1

    .line 93
    iget-boolean v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->f:Z

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->safeAutoFocus()V

    return-void

    .line 96
    :cond_0
    invoke-direct {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public stopCameraPreview()V
    .locals 2

    .line 116
    iget-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->b:Lme/dm7/barcodescanner/core/c;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 118
    :try_start_0
    iput-boolean v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->d:Z

    .line 119
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 120
    iget-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->b:Lme/dm7/barcodescanner/core/c;

    iget-object v0, v0, Lme/dm7/barcodescanner/core/c;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 121
    iget-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->b:Lme/dm7/barcodescanner/core/c;

    iget-object v0, v0, Lme/dm7/barcodescanner/core/c;->mCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 122
    iget-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->b:Lme/dm7/barcodescanner/core/c;

    iget-object v0, v0, Lme/dm7/barcodescanner/core/c;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 69
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 72
    :cond_0
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->stopCameraPreview()V

    .line 73
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->showCameraPreview()V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    const/4 p1, 0x1

    .line 64
    iput-boolean p1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->f:Z

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    const/4 p1, 0x0

    .line 78
    iput-boolean p1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->f:Z

    .line 79
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->stopCameraPreview()V

    return-void
.end method
