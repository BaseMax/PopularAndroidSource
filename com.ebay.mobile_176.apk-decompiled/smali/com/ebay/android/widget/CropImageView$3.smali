.class Lcom/ebay/android/widget/CropImageView$3;
.super Ljava/lang/Object;
.source "CropImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/android/widget/CropImageView;->zoomAnimated(FFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/android/widget/CropImageView;

.field final synthetic val$centerX:F

.field final synthetic val$centerY:F

.field final synthetic val$incrementPerMs:F

.field final synthetic val$oldScale:F

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lcom/ebay/android/widget/CropImageView;JFFFF)V
    .locals 0

    .line 740
    iput-object p1, p0, Lcom/ebay/android/widget/CropImageView$3;->this$0:Lcom/ebay/android/widget/CropImageView;

    iput-wide p2, p0, Lcom/ebay/android/widget/CropImageView$3;->val$startTime:J

    iput p4, p0, Lcom/ebay/android/widget/CropImageView$3;->val$oldScale:F

    iput p5, p0, Lcom/ebay/android/widget/CropImageView$3;->val$incrementPerMs:F

    iput p6, p0, Lcom/ebay/android/widget/CropImageView$3;->val$centerX:F

    iput p7, p0, Lcom/ebay/android/widget/CropImageView$3;->val$centerY:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 744
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 745
    iget-wide v2, p0, Lcom/ebay/android/widget/CropImageView$3;->val$startTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x43960000    # 300.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 746
    iget v2, p0, Lcom/ebay/android/widget/CropImageView$3;->val$oldScale:F

    iget v3, p0, Lcom/ebay/android/widget/CropImageView$3;->val$incrementPerMs:F

    mul-float v3, v3, v0

    add-float/2addr v2, v3

    .line 748
    iget-object v3, p0, Lcom/ebay/android/widget/CropImageView$3;->this$0:Lcom/ebay/android/widget/CropImageView;

    invoke-static {v3}, Lcom/ebay/android/widget/CropImageView;->access$400(Lcom/ebay/android/widget/CropImageView;)F

    move-result v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    .line 749
    iget-object v2, p0, Lcom/ebay/android/widget/CropImageView$3;->this$0:Lcom/ebay/android/widget/CropImageView;

    invoke-static {v2}, Lcom/ebay/android/widget/CropImageView;->access$400(Lcom/ebay/android/widget/CropImageView;)F

    move-result v2

    .line 751
    :cond_0
    iget-object v3, p0, Lcom/ebay/android/widget/CropImageView$3;->this$0:Lcom/ebay/android/widget/CropImageView;

    invoke-static {v3}, Lcom/ebay/android/widget/CropImageView;->access$500(Lcom/ebay/android/widget/CropImageView;)F

    move-result v3

    div-float/2addr v2, v3

    .line 754
    iget-object v3, p0, Lcom/ebay/android/widget/CropImageView$3;->this$0:Lcom/ebay/android/widget/CropImageView;

    invoke-static {v3}, Lcom/ebay/android/widget/CropImageView;->access$600(Lcom/ebay/android/widget/CropImageView;)Landroid/graphics/Matrix;

    move-result-object v3

    iget v4, p0, Lcom/ebay/android/widget/CropImageView$3;->val$centerX:F

    iget v5, p0, Lcom/ebay/android/widget/CropImageView$3;->val$centerY:F

    invoke-virtual {v3, v2, v2, v4, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 755
    iget-object v2, p0, Lcom/ebay/android/widget/CropImageView$3;->this$0:Lcom/ebay/android/widget/CropImageView;

    iget-object v3, p0, Lcom/ebay/android/widget/CropImageView$3;->this$0:Lcom/ebay/android/widget/CropImageView;

    invoke-static {v3}, Lcom/ebay/android/widget/CropImageView;->access$700(Lcom/ebay/android/widget/CropImageView;)Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ebay/android/widget/CropImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 756
    iget-object v2, p0, Lcom/ebay/android/widget/CropImageView$3;->this$0:Lcom/ebay/android/widget/CropImageView;

    invoke-static {v2}, Lcom/ebay/android/widget/CropImageView;->access$800(Lcom/ebay/android/widget/CropImageView;)V

    .line 758
    iget-object v2, p0, Lcom/ebay/android/widget/CropImageView$3;->this$0:Lcom/ebay/android/widget/CropImageView;

    invoke-static {v2}, Lcom/ebay/android/widget/CropImageView;->access$900(Lcom/ebay/android/widget/CropImageView;)Lcom/ebay/android/widget/HighlightView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 760
    iget-object v2, p0, Lcom/ebay/android/widget/CropImageView$3;->this$0:Lcom/ebay/android/widget/CropImageView;

    invoke-static {v2}, Lcom/ebay/android/widget/CropImageView;->access$900(Lcom/ebay/android/widget/CropImageView;)Lcom/ebay/android/widget/HighlightView;

    move-result-object v2

    iget-object v2, v2, Lcom/ebay/android/widget/HighlightView;->matrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/ebay/android/widget/CropImageView$3;->this$0:Lcom/ebay/android/widget/CropImageView;

    invoke-virtual {v3}, Lcom/ebay/android/widget/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 761
    iget-object v2, p0, Lcom/ebay/android/widget/CropImageView$3;->this$0:Lcom/ebay/android/widget/CropImageView;

    invoke-static {v2}, Lcom/ebay/android/widget/CropImageView;->access$900(Lcom/ebay/android/widget/CropImageView;)Lcom/ebay/android/widget/HighlightView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ebay/android/widget/HighlightView;->invalidate()V

    :cond_1
    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 766
    iget-object v0, p0, Lcom/ebay/android/widget/CropImageView$3;->this$0:Lcom/ebay/android/widget/CropImageView;

    invoke-static {v0}, Lcom/ebay/android/widget/CropImageView;->access$1000(Lcom/ebay/android/widget/CropImageView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method
