.class final Lme/dm7/barcodescanner/zxing/ZXingScannerView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/dm7/barcodescanner/zxing/ZXingScannerView;->onPreviewFrame([BLandroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/zxing/l;

.field final synthetic b:Lme/dm7/barcodescanner/zxing/ZXingScannerView;


# direct methods
.method constructor <init>(Lme/dm7/barcodescanner/zxing/ZXingScannerView;Lcom/google/zxing/l;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lme/dm7/barcodescanner/zxing/ZXingScannerView$1;->b:Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    iput-object p2, p0, Lme/dm7/barcodescanner/zxing/ZXingScannerView$1;->a:Lcom/google/zxing/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 159
    iget-object v0, p0, Lme/dm7/barcodescanner/zxing/ZXingScannerView$1;->b:Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    invoke-static {v0}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->a(Lme/dm7/barcodescanner/zxing/ZXingScannerView;)Lme/dm7/barcodescanner/zxing/ZXingScannerView$a;

    move-result-object v0

    .line 160
    iget-object v1, p0, Lme/dm7/barcodescanner/zxing/ZXingScannerView$1;->b:Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    invoke-static {v1}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->b(Lme/dm7/barcodescanner/zxing/ZXingScannerView;)Lme/dm7/barcodescanner/zxing/ZXingScannerView$a;

    .line 162
    iget-object v1, p0, Lme/dm7/barcodescanner/zxing/ZXingScannerView$1;->b:Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    invoke-virtual {v1}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->stopCameraPreview()V

    if-eqz v0, :cond_0

    .line 164
    iget-object v1, p0, Lme/dm7/barcodescanner/zxing/ZXingScannerView$1;->a:Lcom/google/zxing/l;

    invoke-interface {v0, v1}, Lme/dm7/barcodescanner/zxing/ZXingScannerView$a;->handleResult(Lcom/google/zxing/l;)V

    :cond_0
    return-void
.end method
