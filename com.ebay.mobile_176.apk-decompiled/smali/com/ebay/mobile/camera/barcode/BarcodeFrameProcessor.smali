.class public Lcom/ebay/mobile/camera/barcode/BarcodeFrameProcessor;
.super Ljava/lang/Object;
.source "BarcodeFrameProcessor.java"

# interfaces
.implements Lcom/ebay/mobile/widget/cameraview/CameraFrameProcessor;


# instance fields
.field private barcodeDetector:Lcom/google/firebase/ml/vision/barcode/FirebaseVisionBarcodeDetector;

.field private final detectionType:I

.field private final logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;


# direct methods
.method constructor <init>(I)V
    .locals 4

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "BarcodeProcessor"

    const-string v2, "Barcode Frame Processor"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/ebay/mobile/camera/barcode/BarcodeFrameProcessor;->logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    .line 40
    iput p1, p0, Lcom/ebay/mobile/camera/barcode/BarcodeFrameProcessor;->detectionType:I

    return-void
.end method

.method private getBarcodeDetector()Lcom/google/firebase/ml/vision/barcode/FirebaseVisionBarcodeDetector;
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/ebay/mobile/camera/barcode/BarcodeFrameProcessor;->barcodeDetector:Lcom/google/firebase/ml/vision/barcode/FirebaseVisionBarcodeDetector;

    if-nez v0, :cond_0

    .line 99
    iget v0, p0, Lcom/ebay/mobile/camera/barcode/BarcodeFrameProcessor;->detectionType:I

    const/16 v1, 0x400

    packed-switch v0, :pswitch_data_0

    .line 119
    new-instance v0, Lcom/google/firebase/ml/vision/barcode/FirebaseVisionBarcodeDetectorOptions$Builder;

    invoke-direct {v0}, Lcom/google/firebase/ml/vision/barcode/FirebaseVisionBarcodeDetectorOptions$Builder;-><init>()V

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    .line 120
    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/ml/vision/barcode/FirebaseVisionBarcodeDetectorOptions$Builder;->setBarcodeFormats(I[I)Lcom/google/firebase/ml/vision/barcode/FirebaseVisionBarcodeDetectorOptions$Builder;

    move-result-object v0

    goto :goto_0

    .line 103
    :pswitch_0
    new-instance v0, Lcom/google/firebase/ml/vision/barcode/FirebaseVisionBarcodeDetectorOptions$Builder;

    invoke-direct {v0}, Lcom/google/firebase/ml/vision/barcode/FirebaseVisionBarcodeDetectorOptions$Builder;-><init>()V

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    .line 104
    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/ml/vision/barcode/FirebaseVisionBarcodeDetectorOptions$Builder;->setBarcodeFormats(I[I)Lcom/google/firebase/ml/vision/barcode/FirebaseVisionBarcodeDetectorOptions$Builder;

    move-result-object v0

    goto :goto_0

    .line 111
    :pswitch_1
    new-instance v0, Lcom/google/firebase/ml/vision/barcode/FirebaseVisionBarcodeDetectorOptions$Builder;

    invoke-direct {v0}, Lcom/google/firebase/ml/vision/barcode/FirebaseVisionBarcodeDetectorOptions$Builder;-><init>()V

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_2

    .line 112
    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/ml/vision/barcode/FirebaseVisionBarcodeDetectorOptions$Builder;->setBarcodeFormats(I[I)Lcom/google/firebase/ml/vision/barcode/FirebaseVisionBarcodeDetectorOptions$Builder;

    move-result-object v0

    .line 125
    :goto_0
    invoke-static {}, Lcom/google/firebase/ml/vision/FirebaseVision;->getInstance()Lcom/google/firebase/ml/vision/FirebaseVision;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/firebase/ml/vision/barcode/FirebaseVisionBarcodeDetectorOptions$Builder;->build()Lcom/google/firebase/ml/vision/barcode/FirebaseVisionBarcodeDetectorOptions;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/firebase/ml/vision/FirebaseVision;->getVisionBarcodeDetector(Lcom/google/firebase/ml/vision/barcode/FirebaseVisionBarcodeDetectorOptions;)Lcom/google/firebase/ml/vision/barcode/FirebaseVisionBarcodeDetector;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/camera/barcode/BarcodeFrameProcessor;->barcodeDetector:Lcom/google/firebase/ml/vision/barcode/FirebaseVisionBarcodeDetector;

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/camera/barcode/BarcodeFrameProcessor;->barcodeDetector:Lcom/google/firebase/ml/vision/barcode/FirebaseVisionBarcodeDetector;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x200
        0x40
        0x20
    .end array-data

    :array_1
    .array-data 4
        0x200
        0x40
        0x20
        0x1
        0x10
    .end array-data

    :array_2
    .array-data 4
        0x200
        0x40
        0x20
        0x100
    .end array-data
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 134
    iget-object v0, p0, Lcom/ebay/mobile/camera/barcode/BarcodeFrameProcessor;->barcodeDetector:Lcom/google/firebase/ml/vision/barcode/FirebaseVisionBarcodeDetector;

    if-eqz v0, :cond_0

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/ebay/mobile/camera/barcode/BarcodeFrameProcessor;->barcodeDetector:Lcom/google/firebase/ml/vision/barcode/FirebaseVisionBarcodeDetector;

    invoke-virtual {v0}, Lcom/google/firebase/ml/vision/barcode/FirebaseVisionBarcodeDetector;->close()V

    const/4 v0, 0x0

    .line 139
    iput-object v0, p0, Lcom/ebay/mobile/camera/barcode/BarcodeFrameProcessor;->barcodeDetector:Lcom/google/firebase/ml/vision/barcode/FirebaseVisionBarcodeDetector;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 143
    iget-object v1, p0, Lcom/ebay/mobile/camera/barcode/BarcodeFrameProcessor;->logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v1, v1, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/ebay/mobile/camera/barcode/BarcodeFrameProcessor;->logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v2, "Couldn\'t close detector"

    invoke-virtual {v1, v2, v0}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->logAsError(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public copyImageData(Landroid/media/Image;)Ljava/lang/Object;
    .locals 2
    .param p1    # Landroid/media/Image;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x0

    .line 52
    :try_start_0
    invoke-static {p1, v0}, Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;->fromMediaImage(Landroid/media/Image;I)Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 56
    iget-object v0, p0, Lcom/ebay/mobile/camera/barcode/BarcodeFrameProcessor;->logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/ebay/mobile/camera/barcode/BarcodeFrameProcessor;->logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "Couldn\'t create firebaseimage"

    invoke-virtual {v0, v1, p1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->logAsError(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public process(Ljava/lang/Object;)Lcom/ebay/mobile/widget/cameraview/CameraFrameDataResult;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 68
    instance-of v0, p1, Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 71
    :cond_0
    check-cast p1, Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;

    .line 72
    invoke-direct {p0}, Lcom/ebay/mobile/camera/barcode/BarcodeFrameProcessor;->getBarcodeDetector()Lcom/google/firebase/ml/vision/barcode/FirebaseVisionBarcodeDetector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/ml/vision/barcode/FirebaseVisionBarcodeDetector;->detectInImage(Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 77
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    .line 78
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 80
    iget-object v0, p0, Lcom/ebay/mobile/camera/barcode/BarcodeFrameProcessor;->logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/ebay/mobile/camera/barcode/BarcodeFrameProcessor;->logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 83
    :cond_1
    new-instance v0, Lcom/ebay/mobile/camera/barcode/BarcodeFrameDataResult;

    invoke-direct {v0, p1}, Lcom/ebay/mobile/camera/barcode/BarcodeFrameDataResult;-><init>(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 89
    iget-object v0, p0, Lcom/ebay/mobile/camera/barcode/BarcodeFrameProcessor;->logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v2, "Unknown error"

    invoke-virtual {v0, v2, p1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->logAsError(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-object v1
.end method
