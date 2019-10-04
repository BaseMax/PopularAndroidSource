.class Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder$2;
.super Ljava/lang/Object;
.source "ImageGridViewAdapter.java"

# interfaces
.implements Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;->bindData(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;)V
    .locals 0

    .line 417
    iput-object p1, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder$2;->this$1:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadProgress(I)V
    .locals 4

    .line 460
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder$2;->this$1:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;

    iget-object v0, v0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;->progressBarDownload:Lcom/apptentive/android/sdk/view/ApptentiveMaterialDeterminateProgressBar;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    const/16 v1, 0x64

    if-eq p1, v1, :cond_0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_2

    .line 463
    :cond_0
    iget-object v2, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder$2;->this$1:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;

    iget-object v2, v2, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;->progressBarDownload:Lcom/apptentive/android/sdk/view/ApptentiveMaterialDeterminateProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/apptentive/android/sdk/view/ApptentiveMaterialDeterminateProgressBar;->setVisibility(I)V

    .line 464
    iget-object v2, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder$2;->this$1:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;

    iget-object v2, v2, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;->progressBarLoading:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_2

    if-ne p1, v1, :cond_1

    .line 466
    iget-object v1, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder$2;->this$1:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;

    iget-object v1, v1, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;->progressBarLoading:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 468
    :cond_1
    iget-object v1, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder$2;->this$1:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;

    iget-object v1, v1, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;->progressBarLoading:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_2
    :goto_0
    if-ltz p1, :cond_3

    .line 473
    iget-object v1, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder$2;->this$1:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;

    iget-object v1, v1, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;->progressBarDownload:Lcom/apptentive/android/sdk/view/ApptentiveMaterialDeterminateProgressBar;

    invoke-virtual {v1, v0}, Lcom/apptentive/android/sdk/view/ApptentiveMaterialDeterminateProgressBar;->setVisibility(I)V

    .line 474
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder$2;->this$1:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;

    iget-object v0, v0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;->progressBarDownload:Lcom/apptentive/android/sdk/view/ApptentiveMaterialDeterminateProgressBar;

    invoke-virtual {v0, p1}, Lcom/apptentive/android/sdk/view/ApptentiveMaterialDeterminateProgressBar;->setProgress(I)V

    :cond_3
    return-void
.end method

.method public onDownloadStart()V
    .locals 3

    .line 447
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder$2;->this$1:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;

    iget-object v0, v0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;->progressBarLoading:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder$2;->this$1:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;

    iget-object v0, v0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;->progressBarLoading:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 449
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder$2;->this$1:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;

    iget-object v0, v0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;->imagePlaceholder:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder$2;->this$1:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;

    iget-object v0, v0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;->progressBarDownload:Lcom/apptentive/android/sdk/view/ApptentiveMaterialDeterminateProgressBar;

    if-eqz v0, :cond_1

    .line 452
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder$2;->this$1:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;

    iget-object v0, v0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;->imagePlaceholder:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    .line 453
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder$2;->this$1:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;

    iget-object v0, v0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;->progressBarDownload:Lcom/apptentive/android/sdk/view/ApptentiveMaterialDeterminateProgressBar;

    invoke-virtual {v0, v2}, Lcom/apptentive/android/sdk/view/ApptentiveMaterialDeterminateProgressBar;->setVisibility(I)V

    .line 454
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder$2;->this$1:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;

    iget-object v0, v0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;->progressBarDownload:Lcom/apptentive/android/sdk/view/ApptentiveMaterialDeterminateProgressBar;

    invoke-virtual {v0, v2}, Lcom/apptentive/android/sdk/view/ApptentiveMaterialDeterminateProgressBar;->setProgress(I)V

    :cond_1
    return-void
.end method

.method public onLoadTerminated()V
    .locals 3

    .line 435
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder$2;->this$1:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;

    iget-object v0, v0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;->progressBarLoading:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder$2;->this$1:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;

    iget-object v0, v0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;->progressBarLoading:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 437
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder$2;->this$1:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;

    iget-object v0, v0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;->imagePlaceholder:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder$2;->this$1:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;

    iget-object v0, v0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;->progressBarDownload:Lcom/apptentive/android/sdk/view/ApptentiveMaterialDeterminateProgressBar;

    if-eqz v0, :cond_1

    .line 440
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder$2;->this$1:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;

    iget-object v0, v0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;->progressBarDownload:Lcom/apptentive/android/sdk/view/ApptentiveMaterialDeterminateProgressBar;

    invoke-virtual {v0, v2}, Lcom/apptentive/android/sdk/view/ApptentiveMaterialDeterminateProgressBar;->setVisibility(I)V

    .line 441
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder$2;->this$1:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;

    iget-object v0, v0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;->imagePlaceholder:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onLoaded(Landroid/widget/ImageView;ILandroid/graphics/Bitmap;)V
    .locals 2

    .line 420
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder$2;->this$1:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;

    iget-object v0, v0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;->progressBarLoading:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder$2;->this$1:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;

    iget-object v0, v0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;->progressBarLoading:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 422
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder$2;->this$1:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;

    iget-object v0, v0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;->imagePlaceholder:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder$2;->this$1:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;

    iget-object v0, v0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;->progressBarDownload:Lcom/apptentive/android/sdk/view/ApptentiveMaterialDeterminateProgressBar;

    if-eqz v0, :cond_1

    .line 425
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder$2;->this$1:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;

    iget-object v0, v0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;->progressBarDownload:Lcom/apptentive/android/sdk/view/ApptentiveMaterialDeterminateProgressBar;

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/view/ApptentiveMaterialDeterminateProgressBar;->setVisibility(I)V

    .line 426
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder$2;->this$1:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;

    iget-object v0, v0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;->imagePlaceholder:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    .line 428
    :cond_1
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder$2;->this$1:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;

    iget v0, v0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;->pos:I

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder$2;->this$1:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;

    iget-object p2, p2, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    if-ne p2, p1, :cond_2

    .line 429
    iget-object p1, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder$2;->this$1:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;

    iget-object p1, p1, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    return-void
.end method
