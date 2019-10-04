.class public abstract Lcom/ebay/mobile/camera/BaseCameraFragment;
.super Lcom/ebay/nautilus/shell/app/BaseFragment;
.source "BaseCameraFragment.java"

# interfaces
.implements Lcom/ebay/app/DialogFragmentCallback;


# instance fields
.field private final CAMERA_ERROR_DIALOG:I

.field private cameraView:Lcom/ebay/mobile/widget/cameraview/CameraView;

.field protected final currentRotation:Landroidx/databinding/ObservableInt;

.field private facingButton:Landroid/widget/ImageButton;

.field private flashButton:Landroid/widget/ImageButton;

.field private newSensorOrientation:I

.field protected resultListener:Lcom/ebay/mobile/camera/CameraResultListener;

.field private rotationCalculator:Lcom/ebay/mobile/camera/RotationCalculator;

.field private viewModel:Lcom/ebay/mobile/camera/BaseCameraViewModel;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Lcom/ebay/nautilus/shell/app/BaseFragment;-><init>()V

    const/4 v0, 0x1

    .line 34
    iput v0, p0, Lcom/ebay/mobile/camera/BaseCameraFragment;->CAMERA_ERROR_DIALOG:I

    .line 39
    new-instance v0, Landroidx/databinding/ObservableInt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableInt;-><init>(I)V

    iput-object v0, p0, Lcom/ebay/mobile/camera/BaseCameraFragment;->currentRotation:Landroidx/databinding/ObservableInt;

    .line 40
    new-instance v0, Lcom/ebay/mobile/camera/RotationCalculator;

    invoke-direct {v0}, Lcom/ebay/mobile/camera/RotationCalculator;-><init>()V

    iput-object v0, p0, Lcom/ebay/mobile/camera/BaseCameraFragment;->rotationCalculator:Lcom/ebay/mobile/camera/RotationCalculator;

    .line 41
    iput v1, p0, Lcom/ebay/mobile/camera/BaseCameraFragment;->newSensorOrientation:I

    return-void
.end method

.method static synthetic access$000(Lcom/ebay/mobile/camera/BaseCameraFragment;)Lcom/ebay/mobile/camera/BaseCameraViewModel;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/ebay/mobile/camera/BaseCameraFragment;->viewModel:Lcom/ebay/mobile/camera/BaseCameraViewModel;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ebay/mobile/camera/BaseCameraFragment;)Landroid/widget/ImageButton;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/ebay/mobile/camera/BaseCameraFragment;->facingButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ebay/mobile/camera/BaseCameraFragment;)Landroid/widget/ImageButton;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/ebay/mobile/camera/BaseCameraFragment;->flashButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ebay/mobile/camera/BaseCameraFragment;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/ebay/mobile/camera/BaseCameraFragment;->showFatalErrorDialog()V

    return-void
.end method

.method static synthetic access$402(Lcom/ebay/mobile/camera/BaseCameraFragment;I)I
    .locals 0

    .line 31
    iput p1, p0, Lcom/ebay/mobile/camera/BaseCameraFragment;->newSensorOrientation:I

    return p1
.end method

.method static synthetic access$500(Lcom/ebay/mobile/camera/BaseCameraFragment;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/ebay/mobile/camera/BaseCameraFragment;->updateRotation(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/ebay/mobile/camera/BaseCameraFragment;)Lcom/ebay/mobile/widget/cameraview/CameraView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/ebay/mobile/camera/BaseCameraFragment;->cameraView:Lcom/ebay/mobile/widget/cameraview/CameraView;

    return-object p0
.end method

.method public static synthetic lambda$433i4O63MkaN54A88MNVt-u5jnE(Lcom/ebay/mobile/camera/BaseCameraFragment;Lcom/ebay/mobile/camera/Event;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ebay/mobile/camera/BaseCameraFragment;->onBitmapProcessed(Lcom/ebay/mobile/camera/Event;)V

    return-void
.end method

.method public static synthetic lambda$onViewCreated$0(Lcom/ebay/mobile/camera/BaseCameraFragment;Landroid/view/View;)V
    .locals 0

    .line 121
    iget-object p1, p0, Lcom/ebay/mobile/camera/BaseCameraFragment;->cameraView:Lcom/ebay/mobile/widget/cameraview/CameraView;

    invoke-virtual {p1}, Lcom/ebay/mobile/widget/cameraview/CameraView;->takePicture()V

    return-void
.end method

.method public static synthetic lambda$onViewCreated$1(Lcom/ebay/mobile/camera/BaseCameraFragment;Landroid/view/View;)V
    .locals 0

    .line 126
    invoke-direct {p0}, Lcom/ebay/mobile/camera/BaseCameraFragment;->switchToNextFlash()V

    return-void
.end method

.method public static synthetic lambda$onViewCreated$2(Lcom/ebay/mobile/camera/BaseCameraFragment;Landroid/view/View;)V
    .locals 0

    .line 132
    invoke-direct {p0}, Lcom/ebay/mobile/camera/BaseCameraFragment;->switchCameraFacing()V

    return-void
.end method

.method public static synthetic lambda$war4W6ZZZWI7s-IXHml6PWs0gn0(Lcom/ebay/mobile/camera/BaseCameraFragment;Lcom/ebay/mobile/camera/Event;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ebay/mobile/camera/BaseCameraFragment;->onStorageStatusEvent(Lcom/ebay/mobile/camera/Event;)V

    return-void
.end method

.method private onBitmapProcessed(Lcom/ebay/mobile/camera/Event;)V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/mobile/camera/Event<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 192
    invoke-virtual {p1}, Lcom/ebay/mobile/camera/Event;->getIfNotHandled()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    if-eqz p1, :cond_0

    .line 195
    iget-object v0, p0, Lcom/ebay/mobile/camera/BaseCameraFragment;->cameraView:Lcom/ebay/mobile/widget/cameraview/CameraView;

    const v1, 0x7f120912

    invoke-virtual {p0, v1}, Lcom/ebay/mobile/camera/BaseCameraFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/mobile/widget/cameraview/CameraView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 196
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/camera/BaseCameraFragment;->onUriReady(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method private onStorageStatusEvent(Lcom/ebay/mobile/camera/Event;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/mobile/camera/Event<",
            "Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;",
            ">;)V"
        }
    .end annotation

    .line 215
    invoke-virtual {p1}, Lcom/ebay/mobile/camera/Event;->getIfNotHandled()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 220
    sget-object v1, Lcom/ebay/mobile/camera/BaseCameraFragment$3;->$SwitchMap$com$ebay$mobile$camera$StorageIssueAssessor$Cause:[I

    invoke-virtual {p1}, Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;->ordinal()I

    move-result p1

    aget p1, v1, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const p1, 0x7f120bbd

    .line 232
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/camera/BaseCameraFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const p1, 0x7f120bbc

    .line 229
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/camera/BaseCameraFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const p1, 0x7f120bba

    .line 226
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/camera/BaseCameraFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const p1, 0x7f120bbb

    .line 223
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/camera/BaseCameraFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 236
    :goto_0
    invoke-virtual {p0}, Lcom/ebay/mobile/camera/BaseCameraFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showFatalErrorDialog()V
    .locals 4

    .line 242
    invoke-virtual {p0}, Lcom/ebay/mobile/camera/BaseCameraFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 243
    iget-object v1, p0, Lcom/ebay/mobile/camera/BaseCameraFragment;->viewModel:Lcom/ebay/mobile/camera/BaseCameraViewModel;

    iget-boolean v1, v1, Lcom/ebay/mobile/camera/BaseCameraViewModel;->fatalErrorShown:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 246
    :cond_0
    iget-object v1, p0, Lcom/ebay/mobile/camera/BaseCameraFragment;->viewModel:Lcom/ebay/mobile/camera/BaseCameraViewModel;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/ebay/mobile/camera/BaseCameraViewModel;->fatalErrorShown:Z

    .line 248
    new-instance v1, Lcom/ebay/app/AlertDialogFragment$Builder;

    invoke-direct {v1}, Lcom/ebay/app/AlertDialogFragment$Builder;-><init>()V

    const v3, 0x7f1202e3

    .line 249
    invoke-virtual {v1, v3}, Lcom/ebay/app/AlertDialogFragment$Builder;->setTitle(I)Lcom/ebay/app/AlertDialogFragment$Builder;

    move-result-object v1

    const v3, 0x7f1202e2

    .line 250
    invoke-virtual {v1, v3}, Lcom/ebay/app/AlertDialogFragment$Builder;->setMessage(I)Lcom/ebay/app/AlertDialogFragment$Builder;

    move-result-object v1

    const v3, 0x7f1208ab

    .line 251
    invoke-virtual {v1, v3}, Lcom/ebay/app/AlertDialogFragment$Builder;->setPositiveButton(I)Lcom/ebay/app/AlertDialogFragment$Builder;

    move-result-object v1

    .line 252
    invoke-virtual {v1, v2, p0}, Lcom/ebay/app/AlertDialogFragment$Builder;->createFromFragment(ILandroidx/fragment/app/Fragment;)Lcom/ebay/app/AlertDialogFragment;

    move-result-object v1

    const-string v2, "cameraErrorDialog"

    .line 253
    invoke-virtual {v1, v0, v2}, Lcom/ebay/app/AlertDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private switchCameraFacing()V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/ebay/mobile/camera/BaseCameraFragment;->cameraView:Lcom/ebay/mobile/widget/cameraview/CameraView;

    invoke-virtual {v0}, Lcom/ebay/mobile/widget/cameraview/CameraView;->switchToNextFacing()V

    .line 179
    invoke-direct {p0}, Lcom/ebay/mobile/camera/BaseCameraFragment;->updateSwitchFacingButton()V

    return-void
.end method

.method private switchToNextFlash()V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/ebay/mobile/camera/BaseCameraFragment;->cameraView:Lcom/ebay/mobile/widget/cameraview/CameraView;

    invoke-virtual {v0}, Lcom/ebay/mobile/widget/cameraview/CameraView;->switchToNextFlashMode()V

    .line 166
    invoke-direct {p0}, Lcom/ebay/mobile/camera/BaseCameraFragment;->updateFlashButton()V

    return-void
.end method

.method private updateFlashButton()V
    .locals 3

    .line 171
    iget-object v0, p0, Lcom/ebay/mobile/camera/BaseCameraFragment;->flashButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/ebay/mobile/camera/BaseCameraFragment;->cameraView:Lcom/ebay/mobile/widget/cameraview/CameraView;

    invoke-virtual {v1}, Lcom/ebay/mobile/widget/cameraview/CameraView;->getFlashStrRes()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ebay/mobile/camera/BaseCameraFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, Lcom/ebay/mobile/camera/BaseCameraFragment;->flashButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/ebay/mobile/camera/BaseCameraFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/ebay/mobile/camera/BaseCameraFragment;->cameraView:Lcom/ebay/mobile/widget/cameraview/CameraView;

    invoke-virtual {v2}, Lcom/ebay/mobile/widget/cameraview/CameraView;->getFlashIconRes()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 173
    iget-object v0, p0, Lcom/ebay/mobile/camera/BaseCameraFragment;->flashButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/ebay/mobile/camera/BaseCameraFragment;->flashButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/appcompat/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateRotation(I)V
    .locals 2

    .line 270
    iget v0, p0, Lcom/ebay/mobile/camera/BaseCameraFragment;->newSensorOrientation:I

    if-ne v0, p1, :cond_0

    .line 271
    iget-object v0, p0, Lcom/ebay/mobile/camera/BaseCameraFragment;->currentRotation:Landroidx/databinding/ObservableInt;

    iget-object v1, p0, Lcom/ebay/mobile/camera/BaseCameraFragment;->rotationCalculator:Lcom/ebay/mobile/camera/RotationCalculator;

    invoke-virtual {v1, p1}, Lcom/ebay/mobile/camera/RotationCalculator;->rotate(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/databinding/ObservableInt;->set(I)V

    :cond_0
    return-void
.end method

.method private updateSwitchFacingButton()V
    .locals 3

    .line 184
    iget-object v0, p0, Lcom/ebay/mobile/camera/BaseCameraFragment;->facingButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/ebay/mobile/camera/BaseCameraFragment;->cameraView:Lcom/ebay/mobile/widget/cameraview/CameraView;

    invoke-virtual {v1}, Lcom/ebay/mobile/widget/cameraview/CameraView;->getFacingStrRes()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ebay/mobile/camera/BaseCameraFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v0, p0, Lcom/ebay/mobile/camera/BaseCameraFragment;->facingButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/ebay/mobile/camera/BaseCameraFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/ebay/mobile/camera/BaseCameraFragment;->cameraView:Lcom/ebay/mobile/widget/cameraview/CameraView;

    invoke-virtual {v2}, Lcom/ebay/mobile/widget/cameraview/CameraView;->getFacingIconRes()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 186
    iget-object v0, p0, Lcom/ebay/mobile/camera/BaseCameraFragment;->facingButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/ebay/mobile/camera/BaseCameraFragment;->facingButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/appcompat/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public abstract getCameraButton()I
    .annotation build Landroidx/annotation/IdRes;
    .end annotation
.end method

.method public abstract getCameraView()I
    .annotation build Landroidx/annotation/IdRes;
    .end annotation
.end method

.method public abstract getCustomImageWriteUri()Landroid/net/Uri;
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 57
    invoke-super {p0, p1}, Lcom/ebay/nautilus/shell/app/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lcom/ebay/mobile/camera/BaseCameraViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/ebay/mobile/camera/BaseCameraViewModel;

    iput-object p1, p0, Lcom/ebay/mobile/camera/BaseCameraFragment;->viewModel:Lcom/ebay/mobile/camera/BaseCameraViewModel;

    .line 60
    iget-object p1, p0, Lcom/ebay/mobile/camera/BaseCameraFragment;->viewModel:Lcom/ebay/mobile/camera/BaseCameraViewModel;

    invoke-virtual {p1}, Lcom/ebay/mobile/camera/BaseCameraViewModel;->processedBitmapUri()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lcom/ebay/mobile/camera/-$$Lambda$BaseCameraFragment$433i4O63MkaN54A88MNVt-u5jnE;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/camera/-$$Lambda$BaseCameraFragment$433i4O63MkaN54A88MNVt-u5jnE;-><init>(Lcom/ebay/mobile/camera/BaseCameraFragment;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 61
    iget-object p1, p0, Lcom/ebay/mobile/camera/BaseCameraFragment;->viewModel:Lcom/ebay/mobile/camera/BaseCameraViewModel;

    invoke-virtual {p1}, Lcom/ebay/mobile/camera/BaseCameraViewModel;->storageError()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lcom/ebay/mobile/camera/-$$Lambda$BaseCameraFragment$war4W6ZZZWI7s-IXHml6PWs0gn0;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/camera/-$$Lambda$BaseCameraFragment$war4W6ZZZWI7s-IXHml6PWs0gn0;-><init>(Lcom/ebay/mobile/camera/BaseCameraFragment;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public onDialogFragmentResult(Landroidx/fragment/app/DialogFragment;II)V
    .locals 0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 262
    invoke-virtual {p0}, Lcom/ebay/mobile/camera/BaseCameraFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 264
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
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

    .line 203
    invoke-super {p0, p1, p2, p3}, Lcom/ebay/nautilus/shell/app/BaseFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 205
    invoke-static {p0, p1, p2, p3}, Lcom/ebay/mobile/util/PermissionUtil;->verifyPermissionGranted(Landroidx/fragment/app/Fragment;I[Ljava/lang/String;[I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/ebay/mobile/camera/BaseCameraFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 209
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public abstract onUriReady(Landroid/net/Uri;)V
    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 67
    invoke-super {p0, p1, p2}, Lcom/ebay/nautilus/shell/app/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lcom/ebay/mobile/camera/BaseCameraFragment;->getCameraView()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/ebay/mobile/widget/cameraview/CameraView;

    iput-object p2, p0, Lcom/ebay/mobile/camera/BaseCameraFragment;->cameraView:Lcom/ebay/mobile/widget/cameraview/CameraView;

    .line 71
    iget-object p2, p0, Lcom/ebay/mobile/camera/BaseCameraFragment;->cameraView:Lcom/ebay/mobile/widget/cameraview/CameraView;

    if-eqz p2, :cond_3

    .line 74
    iget-object p2, p0, Lcom/ebay/mobile/camera/BaseCameraFragment;->cameraView:Lcom/ebay/mobile/widget/cameraview/CameraView;

    new-instance v0, Lcom/ebay/mobile/camera/BaseCameraFragment$1;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/camera/BaseCameraFragment$1;-><init>(Lcom/ebay/mobile/camera/BaseCameraFragment;)V

    invoke-virtual {p2, v0}, Lcom/ebay/mobile/widget/cameraview/CameraView;->addCallback(Lcom/ebay/mobile/widget/cameraview/CameraView$Callback;)V

    .line 116
    invoke-virtual {p0}, Lcom/ebay/mobile/camera/BaseCameraFragment;->getCameraButton()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 120
    invoke-virtual {p2}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p2, v0}, Landroidx/appcompat/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 121
    new-instance v0, Lcom/ebay/mobile/camera/-$$Lambda$BaseCameraFragment$V0Lu8WGmrr1jBukjUgnJm4IwXow;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/camera/-$$Lambda$BaseCameraFragment$V0Lu8WGmrr1jBukjUgnJm4IwXow;-><init>(Lcom/ebay/mobile/camera/BaseCameraFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a0690

    .line 123
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/ebay/mobile/camera/BaseCameraFragment;->flashButton:Landroid/widget/ImageButton;

    .line 124
    iget-object p2, p0, Lcom/ebay/mobile/camera/BaseCameraFragment;->flashButton:Landroid/widget/ImageButton;

    if-eqz p2, :cond_0

    .line 126
    iget-object p2, p0, Lcom/ebay/mobile/camera/BaseCameraFragment;->flashButton:Landroid/widget/ImageButton;

    new-instance v0, Lcom/ebay/mobile/camera/-$$Lambda$BaseCameraFragment$CRubvsY6hm4S-gqhhhE64mCNJQU;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/camera/-$$Lambda$BaseCameraFragment$CRubvsY6hm4S-gqhhhE64mCNJQU;-><init>(Lcom/ebay/mobile/camera/BaseCameraFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    invoke-direct {p0}, Lcom/ebay/mobile/camera/BaseCameraFragment;->updateFlashButton()V

    :cond_0
    const p2, 0x7f0a0641

    .line 129
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/ebay/mobile/camera/BaseCameraFragment;->facingButton:Landroid/widget/ImageButton;

    .line 130
    iget-object p2, p0, Lcom/ebay/mobile/camera/BaseCameraFragment;->facingButton:Landroid/widget/ImageButton;

    if-eqz p2, :cond_1

    .line 132
    iget-object p2, p0, Lcom/ebay/mobile/camera/BaseCameraFragment;->facingButton:Landroid/widget/ImageButton;

    new-instance v0, Lcom/ebay/mobile/camera/-$$Lambda$BaseCameraFragment$kd0Z3z7dBveqNwFTApAa4DtduNQ;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/camera/-$$Lambda$BaseCameraFragment$kd0Z3z7dBveqNwFTApAa4DtduNQ;-><init>(Lcom/ebay/mobile/camera/BaseCameraFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    invoke-direct {p0}, Lcom/ebay/mobile/camera/BaseCameraFragment;->updateSwitchFacingButton()V

    .line 136
    :cond_1
    invoke-virtual {p0}, Lcom/ebay/mobile/camera/BaseCameraFragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p2

    new-instance v0, Lcom/ebay/mobile/camera/BaseCameraFragment$2;

    invoke-direct {v0, p0, p1}, Lcom/ebay/mobile/camera/BaseCameraFragment$2;-><init>(Lcom/ebay/mobile/camera/BaseCameraFragment;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void

    .line 118
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Camera button view is required"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 72
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "CameraView is required"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected sendTracking(Ljava/lang/String;)V
    .locals 1

    .line 280
    invoke-virtual {p0}, Lcom/ebay/mobile/camera/BaseCameraFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 284
    :goto_0
    invoke-virtual {p0}, Lcom/ebay/mobile/camera/BaseCameraFragment;->getFwActivity()Lcom/ebay/nautilus/shell/app/FwActivity;

    move-result-object v0

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 286
    invoke-interface {v0}, Lcom/ebay/nautilus/shell/app/FwActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    :cond_1
    return-void
.end method

.method public setResultListener(Lcom/ebay/mobile/camera/CameraResultListener;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/ebay/mobile/camera/BaseCameraFragment;->resultListener:Lcom/ebay/mobile/camera/CameraResultListener;

    return-void
.end method
