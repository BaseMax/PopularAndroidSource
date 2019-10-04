.class public Lcom/ebay/mobile/camera/barcode/BarcodeScannerActivity;
.super Lcom/ebay/mobile/activities/CoreActivity;
.source "BarcodeScannerActivity.java"


# static fields
.field public static final DETECT_PACKAGE_TRACKING:I = 0x2

.field public static final DETECT_PRODUCT:I = 0x0

.field public static final DETECT_PRODUCT_PLUS_QR_CODE:I = 0x1

.field public static final EXTRA_PRODUCTID:Ljava/lang/String; = "productid"

.field public static final EXTRA_PRODUCTID_TYPE:Ljava/lang/String; = "productidtype"

.field private static deviceHasCamera:Ljava/lang/Boolean;


# instance fields
.field private isReturningResult:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/ebay/mobile/activities/CoreActivity;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/ebay/mobile/camera/barcode/BarcodeScannerActivity;->isReturningResult:Z

    return-void
.end method

.method static synthetic access$000(Lcom/ebay/mobile/camera/barcode/BarcodeScannerActivity;Lcom/ebay/mobile/camera/barcode/BarcodeFrameDataResult;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/ebay/mobile/camera/barcode/BarcodeScannerActivity;->onBarcodeFrameDataResult(Lcom/ebay/mobile/camera/barcode/BarcodeFrameDataResult;)V

    return-void
.end method

.method static synthetic access$100(Lcom/ebay/mobile/camera/barcode/BarcodeScannerActivity;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/ebay/mobile/camera/barcode/BarcodeScannerActivity;->showFatalErrorDialog()V

    return-void
.end method

.method private onBarcodeFrameDataResult(Lcom/ebay/mobile/camera/barcode/BarcodeFrameDataResult;)V
    .locals 3

    .line 186
    invoke-virtual {p1}, Lcom/ebay/mobile/camera/barcode/BarcodeFrameDataResult;->getBarcodes()Ljava/util/List;

    move-result-object p1

    .line 187
    invoke-static {p1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/ml/vision/barcode/FirebaseVisionBarcode;

    :goto_0
    if-eqz p1, :cond_2

    .line 188
    iget-boolean v0, p0, Lcom/ebay/mobile/camera/barcode/BarcodeScannerActivity;->isReturningResult:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    .line 191
    iput-boolean v0, p0, Lcom/ebay/mobile/camera/barcode/BarcodeScannerActivity;->isReturningResult:Z

    const v0, 0x7f110001

    .line 194
    invoke-static {p0, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 197
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 198
    new-instance v1, Lcom/ebay/mobile/camera/barcode/Barcode;

    invoke-direct {v1, p1}, Lcom/ebay/mobile/camera/barcode/Barcode;-><init>(Lcom/google/firebase/ml/vision/barcode/FirebaseVisionBarcode;)V

    const-string p1, "productid"

    .line 199
    invoke-virtual {v1}, Lcom/ebay/mobile/camera/barcode/Barcode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "productidtype"

    .line 200
    invoke-virtual {v1}, Lcom/ebay/mobile/camera/barcode/Barcode;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 201
    invoke-virtual {p0, p1, v0}, Lcom/ebay/mobile/camera/barcode/BarcodeScannerActivity;->setResult(ILandroid/content/Intent;)V

    .line 202
    invoke-virtual {p0}, Lcom/ebay/mobile/camera/barcode/BarcodeScannerActivity;->finish()V

    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public static shouldDisplayScanButton(Landroid/content/Context;)Z
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 55
    sget-object v0, Lcom/ebay/mobile/camera/barcode/BarcodeScannerActivity;->deviceHasCamera:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 56
    sget-object p0, Lcom/ebay/mobile/camera/barcode/BarcodeScannerActivity;->deviceHasCamera:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 58
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.camera"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/ebay/mobile/camera/barcode/BarcodeScannerActivity;->deviceHasCamera:Ljava/lang/Boolean;

    .line 59
    sget-object p0, Lcom/ebay/mobile/camera/barcode/BarcodeScannerActivity;->deviceHasCamera:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private showFatalErrorDialog()V
    .locals 3

    .line 172
    invoke-virtual {p0}, Lcom/ebay/mobile/camera/barcode/BarcodeScannerActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 176
    :cond_0
    new-instance v1, Lcom/ebay/app/AlertDialogFragment$Builder;

    invoke-direct {v1}, Lcom/ebay/app/AlertDialogFragment$Builder;-><init>()V

    const v2, 0x7f1202e3

    .line 177
    invoke-virtual {v1, v2}, Lcom/ebay/app/AlertDialogFragment$Builder;->setTitle(I)Lcom/ebay/app/AlertDialogFragment$Builder;

    move-result-object v1

    const v2, 0x7f1202e2

    .line 178
    invoke-virtual {v1, v2}, Lcom/ebay/app/AlertDialogFragment$Builder;->setMessage(I)Lcom/ebay/app/AlertDialogFragment$Builder;

    move-result-object v1

    const v2, 0x7f1208ab

    .line 179
    invoke-virtual {v1, v2}, Lcom/ebay/app/AlertDialogFragment$Builder;->setPositiveButton(I)Lcom/ebay/app/AlertDialogFragment$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 180
    invoke-virtual {v1, v2}, Lcom/ebay/app/AlertDialogFragment$Builder;->createFromActivity(I)Lcom/ebay/app/AlertDialogFragment;

    move-result-object v1

    const-string v2, "cameraErrorDialog"

    .line 181
    invoke-virtual {v1, v0, v2}, Lcom/ebay/app/AlertDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static startForResult(Landroidx/fragment/app/FragmentActivity;II)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = -0x1L
            to = 0x8000L
        .end annotation
    .end param

    .line 65
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ebay/mobile/camera/barcode/BarcodeScannerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "detection_type"

    .line 66
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 67
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 73
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcom/ebay/mobile/camera/barcode/BarcodeScannerActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    .line 76
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const/16 p1, 0x9

    .line 77
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/camera/barcode/BarcodeScannerActivity;->requestWindowFeature(I)Z

    const/4 p1, 0x0

    .line 79
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/camera/barcode/BarcodeScannerActivity;->setToolbarFlags(I)V

    const v0, 0x7f0d00a1

    .line 80
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/camera/barcode/BarcodeScannerActivity;->setContentView(I)V

    const-string/jumbo v0, "window"

    .line 83
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/camera/barcode/BarcodeScannerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 84
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 85
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 86
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    const/high16 v3, 0x3f400000    # 0.75f

    mul-float v2, v2, v3

    float-to-int v2, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    const v3, 0x3ea8f5c3    # 0.33f

    mul-float v1, v1, v3

    float-to-int v1, v1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    .line 88
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const v1, 0x7f0a141a

    .line 90
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/camera/barcode/BarcodeScannerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 91
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    new-instance v0, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    const-string v1, "BarcodeScanningPage"

    invoke-direct {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/ebay/nautilus/domain/analytics/TrackingType;->PAGE_IMPRESSION:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    .line 94
    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->trackingType(Lcom/ebay/nautilus/domain/analytics/TrackingType;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->build()Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    move-result-object v0

    .line 95
    invoke-virtual {p0}, Lcom/ebay/mobile/camera/barcode/BarcodeScannerActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    .line 98
    invoke-virtual {p0}, Lcom/ebay/mobile/camera/barcode/BarcodeScannerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "detection_type"

    .line 103
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    :cond_0
    const v0, 0x7f0a030a

    .line 106
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/camera/barcode/BarcodeScannerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ebay/mobile/widget/cameraview/CameraView;

    .line 107
    new-instance v1, Lcom/ebay/mobile/camera/barcode/BarcodeFrameProcessor;

    invoke-direct {v1, p1}, Lcom/ebay/mobile/camera/barcode/BarcodeFrameProcessor;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/ebay/mobile/widget/cameraview/CameraView;->setFrameProcessor(Lcom/ebay/mobile/widget/cameraview/CameraFrameProcessor;)V

    .line 108
    new-instance p1, Lcom/ebay/mobile/camera/barcode/BarcodeScannerActivity$1;

    invoke-direct {p1, p0}, Lcom/ebay/mobile/camera/barcode/BarcodeScannerActivity$1;-><init>(Lcom/ebay/mobile/camera/barcode/BarcodeScannerActivity;)V

    invoke-virtual {v0, p1}, Lcom/ebay/mobile/widget/cameraview/CameraView;->addCallback(Lcom/ebay/mobile/widget/cameraview/CameraView$Callback;)V

    .line 124
    invoke-virtual {p0}, Lcom/ebay/mobile/camera/barcode/BarcodeScannerActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    new-instance v1, Lcom/ebay/mobile/camera/barcode/BarcodeScannerActivity$2;

    invoke-direct {v1, p0, v0}, Lcom/ebay/mobile/camera/barcode/BarcodeScannerActivity$2;-><init>(Lcom/ebay/mobile/camera/barcode/BarcodeScannerActivity;Lcom/ebay/mobile/widget/cameraview/CameraView;)V

    invoke-virtual {p1, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 164
    invoke-super {p0, p1, p2, p3}, Lcom/ebay/mobile/activities/CoreActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 166
    invoke-static {p0, p1, p2, p3}, Lcom/ebay/mobile/util/PermissionUtil;->verifyPermissionGranted(Landroid/app/Activity;I[Ljava/lang/String;[I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/ebay/mobile/camera/barcode/BarcodeScannerActivity;->finish()V

    :cond_0
    return-void
.end method
