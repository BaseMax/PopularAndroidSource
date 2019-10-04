.class public Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraFragment;
.super Lcom/ebay/mobile/camera/BaseCameraFragment;
.source "MultiPhotoCameraFragment.java"

# interfaces
.implements Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;


# static fields
.field public static final EXTRA_SELECTION_LIMIT:Ljava/lang/String; = "selection_limit"

.field public static final EXTRA_TRACKING_IMPORT:Ljava/lang/String; = "tracking_data_import"

.field public static final EXTRA_TRACKING_VIEW:Ljava/lang/String; = "tracking_data_view"

.field public static final TAG:Ljava/lang/String; = "multiphotocamera"


# instance fields
.field private cameraLayoutBinding:Lcom/ebay/mobile/databinding/CameraMultiPhotoLayoutBinding;

.field private cameraViewModel:Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraViewModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/ebay/mobile/camera/BaseCameraFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getCameraButton()I
    .locals 1
    .annotation build Landroidx/annotation/IdRes;
    .end annotation

    const v0, 0x7f0a0306

    return v0
.end method

.method public getCameraView()I
    .locals 1
    .annotation build Landroidx/annotation/IdRes;
    .end annotation

    const v0, 0x7f0a030a

    return v0
.end method

.method public getCustomImageWriteUri()Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 33
    invoke-super {p0, p1}, Lcom/ebay/mobile/camera/BaseCameraFragment;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string/jumbo v0, "selection_limit"

    .line 36
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "selection_limit"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    return-void

    .line 37
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Selection limit is required"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 43
    invoke-super {p0, p1, p2, p3}, Lcom/ebay/mobile/camera/BaseCameraFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 45
    invoke-static {p1}, Lcom/ebay/mobile/databinding/CameraMultiPhotoLayoutBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/ebay/mobile/databinding/CameraMultiPhotoLayoutBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraFragment;->cameraLayoutBinding:Lcom/ebay/mobile/databinding/CameraMultiPhotoLayoutBinding;

    .line 47
    new-instance p1, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraViewModel;

    iget-object p2, p0, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraFragment;->currentRotation:Landroidx/databinding/ObservableInt;

    .line 49
    invoke-virtual {p0}, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "selection_limit"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 50
    invoke-virtual {p0}, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x106000b

    invoke-static {v1, v3, v2}, Landroidx/core/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 51
    invoke-virtual {p0}, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x7f06001d

    invoke-static {v2, v4, v3}, Landroidx/core/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-direct {p1, p2, v0, v1, v2}, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraViewModel;-><init>(Landroidx/databinding/ObservableInt;III)V

    iput-object p1, p0, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraFragment;->cameraViewModel:Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraViewModel;

    .line 52
    iget-object p1, p0, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraFragment;->cameraViewModel:Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraViewModel;

    invoke-virtual {p1, p3}, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraViewModel;->restoreState(Landroid/os/Bundle;)V

    .line 54
    iget-object p1, p0, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraFragment;->cameraLayoutBinding:Lcom/ebay/mobile/databinding/CameraMultiPhotoLayoutBinding;

    iget-object p2, p0, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraFragment;->cameraViewModel:Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraViewModel;

    invoke-virtual {p1, p2}, Lcom/ebay/mobile/databinding/CameraMultiPhotoLayoutBinding;->setCamera(Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraViewModel;)V

    .line 55
    iget-object p1, p0, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraFragment;->cameraLayoutBinding:Lcom/ebay/mobile/databinding/CameraMultiPhotoLayoutBinding;

    invoke-virtual {p1, p0}, Lcom/ebay/mobile/databinding/CameraMultiPhotoLayoutBinding;->setUxItemClickListener(Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;)V

    .line 57
    iget-object p1, p0, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraFragment;->cameraLayoutBinding:Lcom/ebay/mobile/databinding/CameraMultiPhotoLayoutBinding;

    invoke-virtual {p1}, Lcom/ebay/mobile/databinding/CameraMultiPhotoLayoutBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    .line 60
    invoke-static {p0}, Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo$-CC;->builder(Landroidx/fragment/app/Fragment;)Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo$Builder;

    move-result-object p2

    .line 61
    invoke-interface {p2, p0}, Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo$Builder;->setItemClickListener(Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;)Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo$Builder;

    move-result-object p2

    .line 62
    invoke-interface {p2}, Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo$Builder;->build()Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo;

    move-result-object p2

    .line 63
    invoke-interface {p2, p1}, Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo;->set(Landroid/view/View;)V

    return-object p1
.end method

.method public onItemClick(Landroid/view/View;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;)Z
    .locals 2

    .line 79
    instance-of v0, p2, Lcom/ebay/mobile/camera/multiphoto/PhotoViewModel;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 81
    iget-object p1, p0, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraFragment;->cameraViewModel:Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraViewModel;

    check-cast p2, Lcom/ebay/mobile/camera/multiphoto/PhotoViewModel;

    invoke-virtual {p1, p2}, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraViewModel;->toggleSelection(Lcom/ebay/mobile/camera/multiphoto/PhotoViewModel;)V

    return v1

    .line 85
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const p2, 0x7f0a0278

    const/4 v0, 0x0

    if-eq p1, p2, :cond_1

    return v0

    .line 88
    :cond_1
    iget-object p1, p0, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraFragment;->resultListener:Lcom/ebay/mobile/camera/CameraResultListener;

    if-eqz p1, :cond_2

    .line 90
    iget-object p1, p0, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraFragment;->resultListener:Lcom/ebay/mobile/camera/CameraResultListener;

    iget-object p2, p0, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraFragment;->cameraViewModel:Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraViewModel;

    invoke-virtual {p2}, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraViewModel;->getSelectedUris()Ljava/util/ArrayList;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ebay/mobile/camera/CameraResultListener;->onResult(Ljava/util/ArrayList;)V

    .line 93
    :goto_0
    iget-object p1, p0, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraFragment;->cameraViewModel:Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraViewModel;

    invoke-virtual {p1}, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraViewModel;->getSelectedUris()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    const-string/jumbo p1, "tracking_data_import"

    .line 94
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraFragment;->sendTracking(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public onResume()V
    .locals 1

    .line 125
    invoke-super {p0}, Lcom/ebay/mobile/camera/BaseCameraFragment;->onResume()V

    const-string/jumbo v0, "tracking_data_view"

    .line 126
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraFragment;->sendTracking(Ljava/lang/String;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 71
    invoke-super {p0, p1}, Lcom/ebay/mobile/camera/BaseCameraFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 73
    iget-object v0, p0, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraFragment;->cameraViewModel:Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraViewModel;

    invoke-virtual {v0, p1}, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraViewModel;->saveState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onUriReady(Landroid/net/Uri;)V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 133
    new-instance v0, Lcom/ebay/mobile/camera/multiphoto/PhotoViewModel;

    iget-object v1, p0, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraFragment;->currentRotation:Landroidx/databinding/ObservableInt;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/ebay/mobile/camera/multiphoto/PhotoViewModel;-><init>(Landroid/net/Uri;Landroidx/databinding/ObservableInt;Ljava/lang/String;)V

    .line 134
    iget-object p1, p0, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraFragment;->cameraViewModel:Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraViewModel;

    invoke-virtual {p1, v0}, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraViewModel;->addNewPhoto(Lcom/ebay/mobile/camera/multiphoto/PhotoViewModel;)V

    .line 135
    iget-object p1, p0, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraFragment;->cameraLayoutBinding:Lcom/ebay/mobile/databinding/CameraMultiPhotoLayoutBinding;

    iget-object p1, p1, Lcom/ebay/mobile/databinding/CameraMultiPhotoLayoutBinding;->scrollContainer:Lcom/ebay/nautilus/shell/uxcomponents/widget/ScrollingContainerView;

    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/shell/uxcomponents/widget/ScrollingContainerView;->scrollToView(Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;)V

    return-void
.end method
