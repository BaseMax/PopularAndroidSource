.class final Lcom/getkeepsafe/taptargetview/TapTargetView$4;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


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

    .line 551
    iput-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$4;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 5

    .line 555
    iget-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$4;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget-object p1, p1, Lcom/getkeepsafe/taptargetview/TapTargetView;->O:[I

    if-nez p1, :cond_0

    return-void

    .line 556
    :cond_0
    iget-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$4;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget-object p1, p1, Lcom/getkeepsafe/taptargetview/TapTargetView;->O:[I

    const/4 v0, 0x0

    aget p1, p1, v0

    int-to-float p1, p1

    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$4;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget v1, v1, Lcom/getkeepsafe/taptargetview/TapTargetView;->M:F

    sub-float/2addr p1, v1

    float-to-int p1, p1

    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$4;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget-object v1, v1, Lcom/getkeepsafe/taptargetview/TapTargetView;->O:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    iget-object v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$4;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget v3, v3, Lcom/getkeepsafe/taptargetview/TapTargetView;->M:F

    sub-float/2addr v1, v3

    float-to-int v1, v1

    iget-object v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$4;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget-object v3, v3, Lcom/getkeepsafe/taptargetview/TapTargetView;->O:[I

    aget v3, v3, v0

    int-to-float v3, v3

    iget-object v4, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$4;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget v4, v4, Lcom/getkeepsafe/taptargetview/TapTargetView;->M:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$4;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget-object v4, v4, Lcom/getkeepsafe/taptargetview/TapTargetView;->O:[I

    aget v2, v4, v2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$4;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget v4, v4, Lcom/getkeepsafe/taptargetview/TapTargetView;->M:F

    add-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {p2, p1, v1, v3, v2}, Landroid/graphics/Outline;->setOval(IIII)V

    .line 559
    iget-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$4;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget p1, p1, Lcom/getkeepsafe/taptargetview/TapTargetView;->P:I

    int-to-float p1, p1

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr p1, v1

    invoke-virtual {p2, p1}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 560
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt p1, v1, :cond_1

    .line 561
    iget-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$4;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget p1, p1, Lcom/getkeepsafe/taptargetview/TapTargetView;->j:I

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Outline;->offset(II)V

    :cond_1
    return-void
.end method
