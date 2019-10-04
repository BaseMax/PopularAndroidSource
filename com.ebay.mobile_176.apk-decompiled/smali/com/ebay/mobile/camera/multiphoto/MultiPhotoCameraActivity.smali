.class public Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraActivity;
.super Lcom/ebay/mobile/activities/CoreActivity;
.source "MultiPhotoCameraActivity.java"

# interfaces
.implements Lcom/ebay/mobile/camera/CameraResultListener;


# static fields
.field public static final RESULT_EXTRAS_URIS:Ljava/lang/String; = "uris"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/ebay/mobile/activities/CoreActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 22
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {p0}, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    .line 25
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const/16 v0, 0x9

    .line 26
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraActivity;->requestWindowFeature(I)Z

    const/4 v0, 0x0

    .line 28
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraActivity;->setToolbarFlags(I)V

    const v0, 0x7f0d00a2

    .line 29
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraActivity;->setContentView(I)V

    const v0, 0x7f0a0308

    if-nez p1, :cond_0

    .line 33
    new-instance p1, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraFragment;

    invoke-direct {p1}, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraFragment;-><init>()V

    .line 34
    invoke-virtual {p0}, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraFragment;->setArguments(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p1, p0}, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraFragment;->setResultListener(Lcom/ebay/mobile/camera/CameraResultListener;)V

    .line 37
    invoke-virtual {p0}, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 38
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 39
    invoke-virtual {v1, v0, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 40
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraFragment;

    if-eqz p1, :cond_1

    .line 47
    invoke-virtual {p1, p0}, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraFragment;->setResultListener(Lcom/ebay/mobile/camera/CameraResultListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResult(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 54
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "uris"

    .line 55
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 57
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 58
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 60
    invoke-virtual {p0, v0, p1}, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraActivity;->setResult(ILandroid/content/Intent;)V

    .line 61
    invoke-virtual {p0}, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraActivity;->finish()V

    return-void
.end method
