.class Lcom/ebay/mobile/camera/barcode/BarcodeScannerActivity$2;
.super Ljava/lang/Object;
.source "BarcodeScannerActivity.java"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


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

.field final synthetic val$cameraView:Lcom/ebay/mobile/widget/cameraview/CameraView;


# direct methods
.method constructor <init>(Lcom/ebay/mobile/camera/barcode/BarcodeScannerActivity;Lcom/ebay/mobile/widget/cameraview/CameraView;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/ebay/mobile/camera/barcode/BarcodeScannerActivity$2;->this$0:Lcom/ebay/mobile/camera/barcode/BarcodeScannerActivity;

    iput-object p2, p0, Lcom/ebay/mobile/camera/barcode/BarcodeScannerActivity$2;->val$cameraView:Lcom/ebay/mobile/widget/cameraview/CameraView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onCreate(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public synthetic onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onDestroy(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 156
    iget-object p1, p0, Lcom/ebay/mobile/camera/barcode/BarcodeScannerActivity$2;->val$cameraView:Lcom/ebay/mobile/widget/cameraview/CameraView;

    invoke-virtual {p1}, Lcom/ebay/mobile/widget/cameraview/CameraView;->stop()V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 5
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 130
    iget-object p1, p0, Lcom/ebay/mobile/camera/barcode/BarcodeScannerActivity$2;->this$0:Lcom/ebay/mobile/camera/barcode/BarcodeScannerActivity;

    sget-object v0, Lcom/ebay/mobile/util/PermissionUtil;->PERMISSION_CAMERA:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/ebay/mobile/util/PermissionUtil;->checkPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 132
    iget-object p1, p0, Lcom/ebay/mobile/camera/barcode/BarcodeScannerActivity$2;->val$cameraView:Lcom/ebay/mobile/widget/cameraview/CameraView;

    invoke-virtual {p1}, Lcom/ebay/mobile/widget/cameraview/CameraView;->start()V

    .line 134
    iget-object p1, p0, Lcom/ebay/mobile/camera/barcode/BarcodeScannerActivity$2;->this$0:Lcom/ebay/mobile/camera/barcode/BarcodeScannerActivity;

    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Lcom/ebay/mobile/camera/barcode/BarcodeScannerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    if-eqz p1, :cond_1

    .line 137
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    const/16 v1, 0x4000

    .line 140
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 141
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ebay/mobile/camera/barcode/BarcodeScannerActivity$2;->this$0:Lcom/ebay/mobile/camera/barcode/BarcodeScannerActivity;

    const v4, 0x7f120bd1

    invoke-virtual {v3, v4}, Lcom/ebay/mobile/camera/barcode/BarcodeScannerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ebay/mobile/camera/barcode/BarcodeScannerActivity$2;->this$0:Lcom/ebay/mobile/camera/barcode/BarcodeScannerActivity;

    const v4, 0x7f12033f

    .line 142
    invoke-virtual {v3, v4}, Lcom/ebay/mobile/camera/barcode/BarcodeScannerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 141
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0

    .line 148
    :cond_0
    iget-object p1, p0, Lcom/ebay/mobile/camera/barcode/BarcodeScannerActivity$2;->this$0:Lcom/ebay/mobile/camera/barcode/BarcodeScannerActivity;

    sget-object v0, Lcom/ebay/mobile/util/PermissionUtil;->PERMISSION_CAMERA:[Ljava/lang/String;

    const/4 v1, 0x3

    const v2, 0x7f120905

    const v3, 0x7f12090c

    invoke-static {p1, v0, v1, v2, v3}, Lcom/ebay/mobile/util/PermissionUtil;->requestPermissions(Landroidx/fragment/app/FragmentActivity;[Ljava/lang/String;III)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onStart(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public synthetic onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onStop(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method
