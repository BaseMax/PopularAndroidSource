.class final Lcom/getkeepsafe/taptargetview/TapTargetView$7;
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

    .line 285
    iput-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$7;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUpdate(F)V
    .locals 5

    const/high16 v0, 0x3f000000    # 0.5f

    .line 288
    invoke-static {p1, v0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->a(FF)F

    move-result v0

    .line 289
    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$7;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    const/high16 v2, 0x3f800000    # 1.0f

    add-float v3, v0, v2

    iget v4, v1, Lcom/getkeepsafe/taptargetview/TapTargetView;->b:I

    int-to-float v4, v4

    mul-float v3, v3, v4

    iput v3, v1, Lcom/getkeepsafe/taptargetview/TapTargetView;->Q:F

    .line 290
    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$7;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    sub-float/2addr v2, v0

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float v2, v2, v0

    float-to-int v0, v2

    iput v0, v1, Lcom/getkeepsafe/taptargetview/TapTargetView;->R:I

    .line 291
    iget v0, v1, Lcom/getkeepsafe/taptargetview/TapTargetView;->b:I

    int-to-float v0, v0

    invoke-static {p1}, Lcom/getkeepsafe/taptargetview/TapTargetView;->a(F)F

    move-result p1

    iget-object v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$7;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget v2, v2, Lcom/getkeepsafe/taptargetview/TapTargetView;->c:I

    int-to-float v2, v2

    mul-float p1, p1, v2

    add-float/2addr v0, p1

    iput v0, v1, Lcom/getkeepsafe/taptargetview/TapTargetView;->S:F

    .line 293
    iget-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$7;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget p1, p1, Lcom/getkeepsafe/taptargetview/TapTargetView;->M:F

    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$7;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget v0, v0, Lcom/getkeepsafe/taptargetview/TapTargetView;->N:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    .line 294
    iget-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$7;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget v0, p1, Lcom/getkeepsafe/taptargetview/TapTargetView;->N:I

    int-to-float v0, v0

    iput v0, p1, Lcom/getkeepsafe/taptargetview/TapTargetView;->M:F

    .line 297
    :cond_0
    iget-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$7;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    invoke-virtual {p1}, Lcom/getkeepsafe/taptargetview/TapTargetView;->a()V

    .line 298
    iget-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$7;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget-object v0, p1, Lcom/getkeepsafe/taptargetview/TapTargetView;->J:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->a(Landroid/graphics/Rect;)V

    return-void
.end method
