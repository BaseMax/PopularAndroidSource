.class Lcom/ebay/android/widget/CropImageView$2;
.super Ljava/lang/Object;
.source "CropImageView.java"

# interfaces
.implements Lcom/ebay/mobile/photomanager/v2/animation/SimpleAnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/android/widget/CropImageView;->rotateBitmapWithAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/android/widget/CropImageView;

.field final synthetic val$angleDiff:F

.field final synthetic val$currentAngle:F

.field final synthetic val$currentScale:F

.field final synthetic val$newScale:F

.field final synthetic val$rotatedBitmap:Landroid/graphics/Bitmap;

.field final synthetic val$scaleDiff:F


# direct methods
.method constructor <init>(Lcom/ebay/android/widget/CropImageView;FFFFFLandroid/graphics/Bitmap;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/ebay/android/widget/CropImageView$2;->this$0:Lcom/ebay/android/widget/CropImageView;

    iput p2, p0, Lcom/ebay/android/widget/CropImageView$2;->val$currentAngle:F

    iput p3, p0, Lcom/ebay/android/widget/CropImageView$2;->val$angleDiff:F

    iput p4, p0, Lcom/ebay/android/widget/CropImageView$2;->val$currentScale:F

    iput p5, p0, Lcom/ebay/android/widget/CropImageView$2;->val$scaleDiff:F

    iput p6, p0, Lcom/ebay/android/widget/CropImageView$2;->val$newScale:F

    iput-object p7, p0, Lcom/ebay/android/widget/CropImageView$2;->val$rotatedBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationFinished()V
    .locals 3

    .line 260
    iget-object v0, p0, Lcom/ebay/android/widget/CropImageView$2;->this$0:Lcom/ebay/android/widget/CropImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ebay/android/widget/CropImageView;->access$002(Lcom/ebay/android/widget/CropImageView;F)F

    .line 261
    iget-object v0, p0, Lcom/ebay/android/widget/CropImageView$2;->this$0:Lcom/ebay/android/widget/CropImageView;

    iget v1, p0, Lcom/ebay/android/widget/CropImageView$2;->val$newScale:F

    invoke-static {v0, v1}, Lcom/ebay/android/widget/CropImageView;->access$102(Lcom/ebay/android/widget/CropImageView;F)F

    .line 262
    iget-object v0, p0, Lcom/ebay/android/widget/CropImageView$2;->this$0:Lcom/ebay/android/widget/CropImageView;

    iget-object v1, p0, Lcom/ebay/android/widget/CropImageView$2;->val$rotatedBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/ebay/android/widget/CropImageView;->access$300(Lcom/ebay/android/widget/CropImageView;Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public onAnimationUpdated(F)V
    .locals 3

    .line 251
    iget-object v0, p0, Lcom/ebay/android/widget/CropImageView$2;->this$0:Lcom/ebay/android/widget/CropImageView;

    iget v1, p0, Lcom/ebay/android/widget/CropImageView$2;->val$currentAngle:F

    iget v2, p0, Lcom/ebay/android/widget/CropImageView$2;->val$angleDiff:F

    mul-float v2, v2, p1

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/ebay/android/widget/CropImageView;->access$002(Lcom/ebay/android/widget/CropImageView;F)F

    .line 252
    iget-object v0, p0, Lcom/ebay/android/widget/CropImageView$2;->this$0:Lcom/ebay/android/widget/CropImageView;

    iget v1, p0, Lcom/ebay/android/widget/CropImageView$2;->val$currentScale:F

    iget v2, p0, Lcom/ebay/android/widget/CropImageView$2;->val$scaleDiff:F

    mul-float v2, v2, p1

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/ebay/android/widget/CropImageView;->access$102(Lcom/ebay/android/widget/CropImageView;F)F

    .line 253
    iget-object p1, p0, Lcom/ebay/android/widget/CropImageView$2;->this$0:Lcom/ebay/android/widget/CropImageView;

    invoke-static {p1}, Lcom/ebay/android/widget/CropImageView;->access$200(Lcom/ebay/android/widget/CropImageView;)V

    .line 254
    iget-object p1, p0, Lcom/ebay/android/widget/CropImageView$2;->this$0:Lcom/ebay/android/widget/CropImageView;

    invoke-virtual {p1}, Lcom/ebay/android/widget/CropImageView;->invalidate()V

    return-void
.end method
