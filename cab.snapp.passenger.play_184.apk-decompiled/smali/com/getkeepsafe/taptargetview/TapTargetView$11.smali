.class final Lcom/getkeepsafe/taptargetview/TapTargetView$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/getkeepsafe/taptargetview/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/getkeepsafe/taptargetview/TapTargetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/getkeepsafe/taptargetview/TapTargetView;


# direct methods
.method constructor <init>(Lcom/getkeepsafe/taptargetview/TapTargetView;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$11;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUpdate(F)V
    .locals 8

    const/high16 v0, 0x40000000    # 2.0f

    mul-float v0, v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 326
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 327
    iget-object v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$11;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget v3, v2, Lcom/getkeepsafe/taptargetview/TapTargetView;->N:I

    int-to-float v3, v3

    const v4, 0x3e4ccccd    # 0.2f

    mul-float v4, v4, v0

    add-float/2addr v4, v1

    mul-float v3, v3, v4

    iput v3, v2, Lcom/getkeepsafe/taptargetview/TapTargetView;->M:F

    .line 328
    iget-object v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$11;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    sub-float v0, v1, v0

    iget-object v3, v2, Lcom/getkeepsafe/taptargetview/TapTargetView;->n:Lcom/getkeepsafe/taptargetview/c;

    iget v3, v3, Lcom/getkeepsafe/taptargetview/c;->c:F

    mul-float v3, v3, v0

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    iput v3, v2, Lcom/getkeepsafe/taptargetview/TapTargetView;->P:I

    .line 329
    iget-object v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$11;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget-object v2, v2, Lcom/getkeepsafe/taptargetview/TapTargetView;->L:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 330
    iget-object v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$11;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget-object v2, v2, Lcom/getkeepsafe/taptargetview/TapTargetView;->L:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$11;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget-object v3, v3, Lcom/getkeepsafe/taptargetview/TapTargetView;->O:[I

    const/4 v5, 0x0

    aget v3, v3, v5

    int-to-float v3, v3

    iget-object v5, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$11;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget-object v5, v5, Lcom/getkeepsafe/taptargetview/TapTargetView;->O:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$11;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget v6, v6, Lcom/getkeepsafe/taptargetview/TapTargetView;->M:F

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v5, v6, v7}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 331
    iget-object v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$11;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    sub-float v3, v1, p1

    iget v5, v2, Lcom/getkeepsafe/taptargetview/TapTargetView;->b:I

    int-to-float v5, v5

    mul-float v5, v5, v3

    iput v5, v2, Lcom/getkeepsafe/taptargetview/TapTargetView;->S:F

    .line 332
    iget-object v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$11;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    mul-float v5, v3, v4

    float-to-int v5, v5

    iput v5, v2, Lcom/getkeepsafe/taptargetview/TapTargetView;->T:I

    add-float/2addr p1, v1

    .line 333
    iget v1, v2, Lcom/getkeepsafe/taptargetview/TapTargetView;->b:I

    int-to-float v1, v1

    mul-float p1, p1, v1

    iput p1, v2, Lcom/getkeepsafe/taptargetview/TapTargetView;->Q:F

    .line 334
    iget-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$11;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget v1, p1, Lcom/getkeepsafe/taptargetview/TapTargetView;->R:I

    int-to-float v1, v1

    mul-float v3, v3, v1

    float-to-int v1, v3

    iput v1, p1, Lcom/getkeepsafe/taptargetview/TapTargetView;->R:I

    .line 335
    iget-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$11;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    mul-float v0, v0, v4

    float-to-int v0, v0

    iput v0, p1, Lcom/getkeepsafe/taptargetview/TapTargetView;->U:I

    .line 336
    invoke-virtual {p1}, Lcom/getkeepsafe/taptargetview/TapTargetView;->a()V

    .line 337
    iget-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$11;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget-object v0, p1, Lcom/getkeepsafe/taptargetview/TapTargetView;->J:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->a(Landroid/graphics/Rect;)V

    return-void
.end method
