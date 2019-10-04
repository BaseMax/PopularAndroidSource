.class Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder$4;
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

    .line 529
    iput-object p1, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder$4;->this$1:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadProgress(I)V
    .locals 0

    return-void
.end method

.method public onDownloadStart()V
    .locals 0

    return-void
.end method

.method public onLoadTerminated()V
    .locals 0

    return-void
.end method

.method public onLoaded(Landroid/widget/ImageView;ILandroid/graphics/Bitmap;)V
    .locals 0

    .line 532
    iget-object p1, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder$4;->this$1:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;

    iget-object p1, p1, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;->progressBarDownload:Lcom/apptentive/android/sdk/view/ApptentiveMaterialDeterminateProgressBar;

    if-eqz p1, :cond_0

    .line 533
    iget-object p1, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder$4;->this$1:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;

    iget-object p1, p1, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;->progressBarDownload:Lcom/apptentive/android/sdk/view/ApptentiveMaterialDeterminateProgressBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/apptentive/android/sdk/view/ApptentiveMaterialDeterminateProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method
