.class public Lcom/ebay/mobile/camera/barcode/BarcodeFrameDataResult;
.super Ljava/lang/Object;
.source "BarcodeFrameDataResult.java"

# interfaces
.implements Lcom/ebay/mobile/widget/cameraview/CameraFrameDataResult;


# instance fields
.field private final barcodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/ml/vision/barcode/FirebaseVisionBarcode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/ml/vision/barcode/FirebaseVisionBarcode;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/ebay/mobile/camera/barcode/BarcodeFrameDataResult;->barcodes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method getBarcodes()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/ml/vision/barcode/FirebaseVisionBarcode;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/ebay/mobile/camera/barcode/BarcodeFrameDataResult;->barcodes:Ljava/util/List;

    return-object v0
.end method
