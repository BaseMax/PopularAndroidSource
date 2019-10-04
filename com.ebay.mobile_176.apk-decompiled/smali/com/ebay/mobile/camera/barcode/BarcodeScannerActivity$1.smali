.class Lcom/ebay/mobile/camera/barcode/BarcodeScannerActivity$1;
.super Lcom/ebay/mobile/widget/cameraview/CameraView$Callback;
.source "BarcodeScannerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/mobile/camera/barcode/BarcodeScannerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/mobile/camera/barcode/BarcodeScannerActivity;


# direct methods
.method constructor <init>(Lcom/ebay/mobile/camera/barcode/BarcodeScannerActivity;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/ebay/mobile/camera/barcode/BarcodeScannerActivity$1;->this$0:Lcom/ebay/mobile/camera/barcode/BarcodeScannerActivity;

    invoke-direct {p0}, Lcom/ebay/mobile/widget/cameraview/CameraView$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFatalCameraError()V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/ebay/mobile/camera/barcode/BarcodeScannerActivity$1;->this$0:Lcom/ebay/mobile/camera/barcode/BarcodeScannerActivity;

    invoke-static {v0}, Lcom/ebay/mobile/camera/barcode/BarcodeScannerActivity;->access$100(Lcom/ebay/mobile/camera/barcode/BarcodeScannerActivity;)V

    return-void
.end method

.method public onFrameDataResult(Lcom/ebay/mobile/widget/cameraview/CameraFrameDataResult;)V
    .locals 1

    .line 113
    instance-of v0, p1, Lcom/ebay/mobile/camera/barcode/BarcodeFrameDataResult;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/ebay/mobile/camera/barcode/BarcodeScannerActivity$1;->this$0:Lcom/ebay/mobile/camera/barcode/BarcodeScannerActivity;

    check-cast p1, Lcom/ebay/mobile/camera/barcode/BarcodeFrameDataResult;

    invoke-static {v0, p1}, Lcom/ebay/mobile/camera/barcode/BarcodeScannerActivity;->access$000(Lcom/ebay/mobile/camera/barcode/BarcodeScannerActivity;Lcom/ebay/mobile/camera/barcode/BarcodeFrameDataResult;)V

    :cond_0
    return-void
.end method
