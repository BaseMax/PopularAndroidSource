.class public Lcom/ebay/mobile/camera/singlephoto/SinglePhotoCameraActivity;
.super Lcom/ebay/mobile/activities/CoreActivity;
.source "SinglePhotoCameraActivity.java"

# interfaces
.implements Lcom/ebay/mobile/camera/CameraResultListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/ebay/mobile/activities/CoreActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 21
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-virtual {p0}, Lcom/ebay/mobile/camera/singlephoto/SinglePhotoCameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const/16 v0, 0x9

    .line 25
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/camera/singlephoto/SinglePhotoCameraActivity;->requestWindowFeature(I)Z

    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/camera/singlephoto/SinglePhotoCameraActivity;->setToolbarFlags(I)V

    const v0, 0x7f0d00a2

    .line 28
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/camera/singlephoto/SinglePhotoCameraActivity;->setContentView(I)V

    const v0, 0x7f0a0308

    if-nez p1, :cond_0

    .line 32
    new-instance p1, Lcom/ebay/mobile/camera/singlephoto/SinglePhotoCameraFragment;

    invoke-direct {p1}, Lcom/ebay/mobile/camera/singlephoto/SinglePhotoCameraFragment;-><init>()V

    .line 33
    invoke-virtual {p0}, Lcom/ebay/mobile/camera/singlephoto/SinglePhotoCameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ebay/mobile/camera/singlephoto/SinglePhotoCameraFragment;->setArguments(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p1, p0}, Lcom/ebay/mobile/camera/singlephoto/SinglePhotoCameraFragment;->setResultListener(Lcom/ebay/mobile/camera/CameraResultListener;)V

    .line 36
    invoke-virtual {p0}, Lcom/ebay/mobile/camera/singlephoto/SinglePhotoCameraActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 37
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 38
    invoke-virtual {v1, v0, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 39
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/camera/singlephoto/SinglePhotoCameraActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/ebay/mobile/camera/singlephoto/SinglePhotoCameraFragment;

    if-eqz p1, :cond_1

    .line 46
    invoke-virtual {p1, p0}, Lcom/ebay/mobile/camera/singlephoto/SinglePhotoCameraFragment;->setResultListener(Lcom/ebay/mobile/camera/CameraResultListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResult(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 53
    invoke-static {p1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 54
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 55
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 56
    invoke-virtual {p0, p1, v0}, Lcom/ebay/mobile/camera/singlephoto/SinglePhotoCameraActivity;->setResult(ILandroid/content/Intent;)V

    .line 57
    invoke-virtual {p0}, Lcom/ebay/mobile/camera/singlephoto/SinglePhotoCameraActivity;->finish()V

    return-void
.end method
