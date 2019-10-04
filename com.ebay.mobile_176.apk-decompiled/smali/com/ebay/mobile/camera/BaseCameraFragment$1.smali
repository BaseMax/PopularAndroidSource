.class Lcom/ebay/mobile/camera/BaseCameraFragment$1;
.super Lcom/ebay/mobile/widget/cameraview/CameraView$Callback;
.source "BaseCameraFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/mobile/camera/BaseCameraFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/mobile/camera/BaseCameraFragment;


# direct methods
.method constructor <init>(Lcom/ebay/mobile/camera/BaseCameraFragment;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/ebay/mobile/camera/BaseCameraFragment$1;->this$0:Lcom/ebay/mobile/camera/BaseCameraFragment;

    invoke-direct {p0}, Lcom/ebay/mobile/widget/cameraview/CameraView$Callback;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onSensorOrientationChanged$0(Lcom/ebay/mobile/camera/BaseCameraFragment$1;I)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/ebay/mobile/camera/BaseCameraFragment$1;->this$0:Lcom/ebay/mobile/camera/BaseCameraFragment;

    invoke-static {v0, p1}, Lcom/ebay/mobile/camera/BaseCameraFragment;->access$500(Lcom/ebay/mobile/camera/BaseCameraFragment;I)V

    return-void
.end method


# virtual methods
.method public onFatalCameraError()V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/ebay/mobile/camera/BaseCameraFragment$1;->this$0:Lcom/ebay/mobile/camera/BaseCameraFragment;

    invoke-static {v0}, Lcom/ebay/mobile/camera/BaseCameraFragment;->access$300(Lcom/ebay/mobile/camera/BaseCameraFragment;)V

    return-void
.end method

.method public onHardwareSupportUpdate(ZZZ)V
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/ebay/mobile/camera/BaseCameraFragment$1;->this$0:Lcom/ebay/mobile/camera/BaseCameraFragment;

    invoke-static {v0}, Lcom/ebay/mobile/camera/BaseCameraFragment;->access$100(Lcom/ebay/mobile/camera/BaseCameraFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/ebay/mobile/camera/BaseCameraFragment$1;->this$0:Lcom/ebay/mobile/camera/BaseCameraFragment;

    invoke-static {v0}, Lcom/ebay/mobile/camera/BaseCameraFragment;->access$100(Lcom/ebay/mobile/camera/BaseCameraFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 89
    :cond_1
    iget-object p1, p0, Lcom/ebay/mobile/camera/BaseCameraFragment$1;->this$0:Lcom/ebay/mobile/camera/BaseCameraFragment;

    invoke-static {p1}, Lcom/ebay/mobile/camera/BaseCameraFragment;->access$200(Lcom/ebay/mobile/camera/BaseCameraFragment;)Landroid/widget/ImageButton;

    move-result-object p1

    if-eqz p1, :cond_5

    if-eqz p2, :cond_3

    .line 92
    iget-object p1, p0, Lcom/ebay/mobile/camera/BaseCameraFragment$1;->this$0:Lcom/ebay/mobile/camera/BaseCameraFragment;

    invoke-static {p1}, Lcom/ebay/mobile/camera/BaseCameraFragment;->access$200(Lcom/ebay/mobile/camera/BaseCameraFragment;)Landroid/widget/ImageButton;

    move-result-object p1

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x4

    :goto_1
    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_2

    .line 94
    :cond_3
    iget-object p1, p0, Lcom/ebay/mobile/camera/BaseCameraFragment$1;->this$0:Lcom/ebay/mobile/camera/BaseCameraFragment;

    invoke-static {p1}, Lcom/ebay/mobile/camera/BaseCameraFragment;->access$200(Lcom/ebay/mobile/camera/BaseCameraFragment;)Landroid/widget/ImageButton;

    move-result-object p1

    if-eqz p3, :cond_4

    const/4 v1, 0x0

    :cond_4
    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method public onPictureTaken(Lcom/ebay/mobile/widget/cameraview/CameraView;[B)V
    .locals 1

    .line 79
    iget-object p1, p0, Lcom/ebay/mobile/camera/BaseCameraFragment$1;->this$0:Lcom/ebay/mobile/camera/BaseCameraFragment;

    invoke-static {p1}, Lcom/ebay/mobile/camera/BaseCameraFragment;->access$000(Lcom/ebay/mobile/camera/BaseCameraFragment;)Lcom/ebay/mobile/camera/BaseCameraViewModel;

    move-result-object p1

    iget-object v0, p0, Lcom/ebay/mobile/camera/BaseCameraFragment$1;->this$0:Lcom/ebay/mobile/camera/BaseCameraFragment;

    invoke-virtual {v0}, Lcom/ebay/mobile/camera/BaseCameraFragment;->getCustomImageWriteUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/ebay/mobile/camera/BaseCameraViewModel;->processBitmap([BLandroid/net/Uri;)V

    return-void
.end method

.method public onSensorOrientationChanged(I)V
    .locals 4

    .line 109
    iget-object v0, p0, Lcom/ebay/mobile/camera/BaseCameraFragment$1;->this$0:Lcom/ebay/mobile/camera/BaseCameraFragment;

    invoke-static {v0, p1}, Lcom/ebay/mobile/camera/BaseCameraFragment;->access$402(Lcom/ebay/mobile/camera/BaseCameraFragment;I)I

    .line 110
    iget-object v0, p0, Lcom/ebay/mobile/camera/BaseCameraFragment$1;->this$0:Lcom/ebay/mobile/camera/BaseCameraFragment;

    invoke-virtual {v0}, Lcom/ebay/mobile/camera/BaseCameraFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    new-instance v1, Lcom/ebay/mobile/camera/-$$Lambda$BaseCameraFragment$1$i_agAN4y5q1t32Mu28G7Z5L7JCQ;

    invoke-direct {v1, p0, p1}, Lcom/ebay/mobile/camera/-$$Lambda$BaseCameraFragment$1$i_agAN4y5q1t32Mu28G7Z5L7JCQ;-><init>(Lcom/ebay/mobile/camera/BaseCameraFragment$1;I)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
