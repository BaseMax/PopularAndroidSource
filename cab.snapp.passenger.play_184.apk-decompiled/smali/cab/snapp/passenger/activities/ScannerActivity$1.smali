.class final Lcab/snapp/passenger/activities/ScannerActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/c/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/activities/ScannerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/activities/ScannerActivity;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/activities/ScannerActivity;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcab/snapp/passenger/activities/ScannerActivity$1;->a:Lcab/snapp/passenger/activities/ScannerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPermissionDenied(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final onPermissionGranted()V
    .locals 1

    .line 36
    iget-object v0, p0, Lcab/snapp/passenger/activities/ScannerActivity$1;->a:Lcab/snapp/passenger/activities/ScannerActivity;

    invoke-static {v0}, Lcab/snapp/passenger/activities/ScannerActivity;->a(Lcab/snapp/passenger/activities/ScannerActivity;)Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    move-result-object v0

    invoke-virtual {v0}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->startCamera()V

    return-void
.end method
