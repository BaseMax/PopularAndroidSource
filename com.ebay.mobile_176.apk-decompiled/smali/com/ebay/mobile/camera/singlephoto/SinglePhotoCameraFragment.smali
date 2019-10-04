.class public Lcom/ebay/mobile/camera/singlephoto/SinglePhotoCameraFragment;
.super Lcom/ebay/mobile/camera/BaseCameraFragment;
.source "SinglePhotoCameraFragment.java"


# static fields
.field public static final EXTRA_CUSTOM_WRITE_URI:Ljava/lang/String; = "custom_write_uri"


# instance fields
.field private customWriteUri:Landroid/net/Uri;


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

    .line 67
    iget-object v0, p0, Lcom/ebay/mobile/camera/singlephoto/SinglePhotoCameraFragment;->customWriteUri:Landroid/net/Uri;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 29
    invoke-super {p0, p1}, Lcom/ebay/mobile/camera/BaseCameraFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lcom/ebay/mobile/camera/singlephoto/SinglePhotoCameraFragment;->customWriteUri:Landroid/net/Uri;

    .line 32
    invoke-virtual {p0}, Lcom/ebay/mobile/camera/singlephoto/SinglePhotoCameraFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "custom_write_uri"

    .line 34
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lcom/ebay/mobile/camera/singlephoto/SinglePhotoCameraFragment;->customWriteUri:Landroid/net/Uri;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 40
    invoke-super {p0, p1, p2, p3}, Lcom/ebay/mobile/camera/BaseCameraFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 42
    invoke-static {p1}, Lcom/ebay/mobile/databinding/CameraSinglePhotoLayoutBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/ebay/mobile/databinding/CameraSinglePhotoLayoutBinding;

    move-result-object p1

    .line 43
    new-instance p2, Lcom/ebay/mobile/camera/singlephoto/SinglePhotoCameraViewModel;

    iget-object p3, p0, Lcom/ebay/mobile/camera/singlephoto/SinglePhotoCameraFragment;->currentRotation:Landroidx/databinding/ObservableInt;

    invoke-direct {p2, p3}, Lcom/ebay/mobile/camera/singlephoto/SinglePhotoCameraViewModel;-><init>(Landroidx/databinding/ObservableInt;)V

    invoke-virtual {p1, p2}, Lcom/ebay/mobile/databinding/CameraSinglePhotoLayoutBinding;->setCamera(Lcom/ebay/mobile/camera/singlephoto/SinglePhotoCameraViewModel;)V

    .line 45
    invoke-virtual {p1}, Lcom/ebay/mobile/databinding/CameraSinglePhotoLayoutBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onUriReady(Landroid/net/Uri;)V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/ebay/mobile/camera/singlephoto/SinglePhotoCameraFragment;->resultListener:Lcom/ebay/mobile/camera/CameraResultListener;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/ebay/mobile/camera/singlephoto/SinglePhotoCameraFragment;->resultListener:Lcom/ebay/mobile/camera/CameraResultListener;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Lcom/ebay/mobile/camera/CameraResultListener;->onResult(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method
