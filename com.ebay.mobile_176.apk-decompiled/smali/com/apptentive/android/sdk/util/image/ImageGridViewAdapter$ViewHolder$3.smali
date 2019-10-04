.class Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder$3;
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

.field final synthetic val$data:Lcom/apptentive/android/sdk/util/image/ImageItem;


# direct methods
.method constructor <init>(Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;Lcom/apptentive/android/sdk/util/image/ImageItem;)V
    .locals 0

    .line 481
    iput-object p1, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder$3;->this$1:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;

    iput-object p2, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder$3;->val$data:Lcom/apptentive/android/sdk/util/image/ImageItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadProgress(I)V
    .locals 4

    .line 516
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder$3;->this$1:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;

    iget-object v0, v0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;->progressBarDownload:Lcom/apptentive/android/sdk/view/ApptentiveMaterialDeterminateProgressBar;

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 518
    iget-object p1, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder$3;->this$1:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;

    iget-object p1, p1, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;->this$0:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;

    invoke-static {p1}, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->access$400(Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder$3;->val$data:Lcom/apptentive/android/sdk/util/image/ImageItem;

    iget-object v0, v0, Lcom/apptentive/android/sdk/util/image/ImageItem;->originalPath:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 519
    iget-object p1, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder$3;->this$1:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;

    iget-object p1, p1, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;->progressBarDownload:Lcom/apptentive/android/sdk/view/ApptentiveMaterialDeterminateProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/view/ApptentiveMaterialDeterminateProgressBar;->setVisibility(I)V

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_1

    .line 521
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder$3;->this$1:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;

    iget-object v0, v0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;->progressBarDownload:Lcom/apptentive/android/sdk/view/ApptentiveMaterialDeterminateProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/view/ApptentiveMaterialDeterminateProgressBar;->setVisibility(I)V

    .line 522
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder$3;->this$1:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;

    iget-object v0, v0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;->progressBarDownload:Lcom/apptentive/android/sdk/view/ApptentiveMaterialDeterminateProgressBar;

    invoke-virtual {v0, p1}, Lcom/apptentive/android/sdk/view/ApptentiveMaterialDeterminateProgressBar;->setProgress(I)V

    .line 523
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->UTIL:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ApptentiveAttachmentLoader progress callback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDownloadStart()V
    .locals 2

    .line 508
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder$3;->this$1:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;

    iget-object v0, v0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;->progressBarDownload:Lcom/apptentive/android/sdk/view/ApptentiveMaterialDeterminateProgressBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder$3;->this$1:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;

    iget-object v0, v0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;->progressBarDownload:Lcom/apptentive/android/sdk/view/ApptentiveMaterialDeterminateProgressBar;

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/view/ApptentiveMaterialDeterminateProgressBar;->setVisibility(I)V

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder$3;->this$1:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;

    iget-object v0, v0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;->progressBarDownload:Lcom/apptentive/android/sdk/view/ApptentiveMaterialDeterminateProgressBar;

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/view/ApptentiveMaterialDeterminateProgressBar;->setProgress(I)V

    return-void
.end method

.method public onLoadTerminated()V
    .locals 2

    .line 497
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder$3;->this$1:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;

    iget-object v0, v0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;->this$0:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;

    invoke-static {v0}, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->access$400(Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder$3;->val$data:Lcom/apptentive/android/sdk/util/image/ImageItem;

    iget-object v1, v1, Lcom/apptentive/android/sdk/util/image/ImageItem;->originalPath:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 498
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder$3;->this$1:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;

    iget-object v0, v0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;->progressBarLoading:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder$3;->this$1:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;

    iget-object v0, v0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;->progressBarLoading:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder$3;->this$1:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;

    iget-object v0, v0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;->progressBarDownload:Lcom/apptentive/android/sdk/view/ApptentiveMaterialDeterminateProgressBar;

    if-eqz v0, :cond_1

    .line 502
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder$3;->this$1:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;

    iget-object v0, v0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;->progressBarDownload:Lcom/apptentive/android/sdk/view/ApptentiveMaterialDeterminateProgressBar;

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/view/ApptentiveMaterialDeterminateProgressBar;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onLoaded(Landroid/widget/ImageView;ILandroid/graphics/Bitmap;)V
    .locals 1

    .line 484
    iget-object p2, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder$3;->this$1:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;

    iget-object p2, p2, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;->progressBarDownload:Lcom/apptentive/android/sdk/view/ApptentiveMaterialDeterminateProgressBar;

    if-eqz p2, :cond_0

    .line 485
    iget-object p2, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder$3;->this$1:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;

    iget-object p2, p2, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;->progressBarDownload:Lcom/apptentive/android/sdk/view/ApptentiveMaterialDeterminateProgressBar;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Lcom/apptentive/android/sdk/view/ApptentiveMaterialDeterminateProgressBar;->setVisibility(I)V

    .line 487
    :cond_0
    iget-object p2, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder$3;->this$1:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;

    iget-object p2, p2, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    sget p3, Lcom/apptentive/android/sdk/R$drawable;->apptentive_generic_file_thumbnail:I

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 488
    iget-object p2, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder$3;->this$1:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;

    iget-object p2, p2, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;->this$0:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;

    invoke-static {p2}, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->access$400(Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;)Ljava/util/List;

    move-result-object p2

    iget-object p3, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder$3;->val$data:Lcom/apptentive/android/sdk/util/image/ImageItem;

    iget-object p3, p3, Lcom/apptentive/android/sdk/util/image/ImageItem;->originalPath:Ljava/lang/String;

    invoke-interface {p2, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 489
    sget-object p2, Lcom/apptentive/android/sdk/ApptentiveLogTag;->UTIL:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string p3, "ApptentiveAttachmentLoader onLoaded callback"

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, p3, v0}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 490
    iget-object p2, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder$3;->this$1:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;

    iget-object p2, p2, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;->this$0:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;

    invoke-static {p2}, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->access$400(Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;)Ljava/util/List;

    move-result-object p2

    iget-object p3, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder$3;->val$data:Lcom/apptentive/android/sdk/util/image/ImageItem;

    iget-object p3, p3, Lcom/apptentive/android/sdk/util/image/ImageItem;->originalPath:Ljava/lang/String;

    invoke-interface {p2, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 491
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder$3;->val$data:Lcom/apptentive/android/sdk/util/image/ImageItem;

    iget-object p2, p2, Lcom/apptentive/android/sdk/util/image/ImageItem;->originalPath:Ljava/lang/String;

    iget-object p3, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder$3;->val$data:Lcom/apptentive/android/sdk/util/image/ImageItem;

    iget-object p3, p3, Lcom/apptentive/android/sdk/util/image/ImageItem;->localCachePath:Ljava/lang/String;

    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder$3;->val$data:Lcom/apptentive/android/sdk/util/image/ImageItem;

    iget-object v0, v0, Lcom/apptentive/android/sdk/util/image/ImageItem;->mimeType:Ljava/lang/String;

    invoke-static {p1, p2, p3, v0}, Lcom/apptentive/android/sdk/util/Util;->openFileAttachment(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    return-void
.end method
