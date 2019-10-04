.class public final Lme/dm7/barcodescanner/core/a;
.super Landroid/os/HandlerThread;
.source "SourceFile"


# instance fields
.field private a:Lme/dm7/barcodescanner/core/BarcodeScannerView;


# direct methods
.method public constructor <init>(Lme/dm7/barcodescanner/core/BarcodeScannerView;)V
    .locals 1

    const-string v0, "CameraHandlerThread"

    .line 16
    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 17
    iput-object p1, p0, Lme/dm7/barcodescanner/core/a;->a:Lme/dm7/barcodescanner/core/BarcodeScannerView;

    .line 18
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/a;->start()V

    return-void
.end method

.method static synthetic a(Lme/dm7/barcodescanner/core/a;)Lme/dm7/barcodescanner/core/BarcodeScannerView;
    .locals 0

    .line 10
    iget-object p0, p0, Lme/dm7/barcodescanner/core/a;->a:Lme/dm7/barcodescanner/core/BarcodeScannerView;

    return-object p0
.end method


# virtual methods
.method public final startCamera(I)V
    .locals 2

    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/a;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 23
    new-instance v1, Lme/dm7/barcodescanner/core/a$1;

    invoke-direct {v1, p0, p1}, Lme/dm7/barcodescanner/core/a$1;-><init>(Lme/dm7/barcodescanner/core/a;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
