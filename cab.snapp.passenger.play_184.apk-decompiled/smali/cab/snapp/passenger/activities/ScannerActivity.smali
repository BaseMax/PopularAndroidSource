.class public Lcab/snapp/passenger/activities/ScannerActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lme/dm7/barcodescanner/zxing/ZXingScannerView$a;


# instance fields
.field private a:Lme/dm7/barcodescanner/zxing/ZXingScannerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcab/snapp/passenger/activities/ScannerActivity;)Lme/dm7/barcodescanner/zxing/ZXingScannerView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcab/snapp/passenger/activities/ScannerActivity;->a:Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    return-object p0
.end method


# virtual methods
.method public handleResult(Lcom/google/zxing/l;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 69
    invoke-virtual {p1}, Lcom/google/zxing/l;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/a/c;->getInstance()Lcab/snapp/passenger/data_access_layer/a/c;

    move-result-object v0

    invoke-static {}, Lcab/snapp/passenger/data_access_layer/a/c;->getInstance()Lcab/snapp/passenger/data_access_layer/a/c;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "PRIVATE_CHANNEL_FOR_SCANNER"

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcab/snapp/passenger/data_access_layer/a/c;->getPrivateChannelId([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/zxing/l;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcab/snapp/passenger/data_access_layer/a/c;->emitToPrivateChannel(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/activities/ScannerActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d001d

    .line 27
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/activities/ScannerActivity;->setContentView(I)V

    const p1, 0x7f0a008d

    .line 28
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/activities/ScannerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 29
    new-instance v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    invoke-direct {v0, p0}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcab/snapp/passenger/activities/ScannerActivity;->a:Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    .line 30
    iget-object v0, p0, Lcab/snapp/passenger/activities/ScannerActivity;->a:Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "android.permission.CAMERA"

    aput-object v1, p1, v0

    .line 32
    new-instance v1, Lcab/snapp/passenger/activities/ScannerActivity$1;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/activities/ScannerActivity$1;-><init>(Lcab/snapp/passenger/activities/ScannerActivity;)V

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, p1, v1, v0}, Lcab/snapp/c/g;->getPermission(Landroid/app/Activity;[Ljava/lang/String;Lcab/snapp/c/g$a;[Ljava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 62
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 63
    iget-object v0, p0, Lcab/snapp/passenger/activities/ScannerActivity;->a:Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    invoke-virtual {v0}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->stopCamera()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 50
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 51
    iget-object v0, p0, Lcab/snapp/passenger/activities/ScannerActivity;->a:Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    invoke-virtual {v0, p0}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->setResultHandler(Lme/dm7/barcodescanner/zxing/ZXingScannerView$a;)V

    const-string v0, "android.permission.CAMERA"

    .line 52
    invoke-static {p0, v0}, Lcab/snapp/c/g;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcab/snapp/passenger/activities/ScannerActivity;->a:Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    invoke-virtual {v0}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->startCamera()V

    :cond_0
    return-void
.end method
