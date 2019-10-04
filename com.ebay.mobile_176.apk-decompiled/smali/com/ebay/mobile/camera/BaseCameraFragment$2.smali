.class Lcom/ebay/mobile/camera/BaseCameraFragment$2;
.super Ljava/lang/Object;
.source "BaseCameraFragment.java"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


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

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/ebay/mobile/camera/BaseCameraFragment;Landroid/view/View;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/ebay/mobile/camera/BaseCameraFragment$2;->this$0:Lcom/ebay/mobile/camera/BaseCameraFragment;

    iput-object p2, p0, Lcom/ebay/mobile/camera/BaseCameraFragment$2;->val$view:Landroid/view/View;

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

    .line 153
    iget-object p1, p0, Lcom/ebay/mobile/camera/BaseCameraFragment$2;->this$0:Lcom/ebay/mobile/camera/BaseCameraFragment;

    invoke-static {p1}, Lcom/ebay/mobile/camera/BaseCameraFragment;->access$600(Lcom/ebay/mobile/camera/BaseCameraFragment;)Lcom/ebay/mobile/widget/cameraview/CameraView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ebay/mobile/widget/cameraview/CameraView;->stop()V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 4
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 142
    iget-object p1, p0, Lcom/ebay/mobile/camera/BaseCameraFragment$2;->val$view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/ebay/mobile/util/PermissionUtil;->PERMISSION_PHOTO:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/ebay/mobile/util/PermissionUtil;->checkPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 143
    iget-object p1, p0, Lcom/ebay/mobile/camera/BaseCameraFragment$2;->this$0:Lcom/ebay/mobile/camera/BaseCameraFragment;

    invoke-static {p1}, Lcom/ebay/mobile/camera/BaseCameraFragment;->access$600(Lcom/ebay/mobile/camera/BaseCameraFragment;)Lcom/ebay/mobile/widget/cameraview/CameraView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ebay/mobile/widget/cameraview/CameraView;->start()V

    goto :goto_0

    .line 145
    :cond_0
    iget-object p1, p0, Lcom/ebay/mobile/camera/BaseCameraFragment$2;->this$0:Lcom/ebay/mobile/camera/BaseCameraFragment;

    sget-object v0, Lcom/ebay/mobile/util/PermissionUtil;->PERMISSION_PHOTO:[Ljava/lang/String;

    const/4 v1, 0x5

    const v2, 0x7f120908

    const v3, 0x7f12090f

    invoke-static {p1, v0, v1, v2, v3}, Lcom/ebay/mobile/util/PermissionUtil;->requestPermissions(Landroidx/fragment/app/Fragment;[Ljava/lang/String;III)Z

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
