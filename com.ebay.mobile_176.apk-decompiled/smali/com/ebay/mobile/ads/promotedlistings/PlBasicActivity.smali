.class public Lcom/ebay/mobile/ads/promotedlistings/PlBasicActivity;
.super Lcom/ebay/mobile/activities/CoreActivity;
.source "PlBasicActivity.java"


# static fields
.field public static final EXTRA_LISTING_ID:Ljava/lang/String; = "listing_id"

.field public static final EXTRA_SUCCESS_MESSAGE:Ljava/lang/String; = "successMessage"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/ebay/mobile/activities/CoreActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public finishWithSuccess(Ljava/lang/String;)V
    .locals 3

    .line 70
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "successMessage"

    .line 71
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "listing_id"

    .line 72
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/promotedlistings/PlBasicActivity;->getListingId()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 73
    invoke-virtual {p0, p1, v0}, Lcom/ebay/mobile/ads/promotedlistings/PlBasicActivity;->setResult(ILandroid/content/Intent;)V

    .line 74
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/promotedlistings/PlBasicActivity;->finish()V

    return-void
.end method

.method getListingId()J
    .locals 4

    .line 44
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/promotedlistings/PlBasicActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "listing_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public loadRiver(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 49
    new-instance v0, Lcom/ebay/mobile/ads/promotedlistings/PlBasicRecyclerFragment;

    invoke-direct {v0}, Lcom/ebay/mobile/ads/promotedlistings/PlBasicRecyclerFragment;-><init>()V

    .line 50
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "river"

    .line 51
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "page_title"

    .line 52
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/promotedlistings/PlBasicActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 56
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const p2, 0x7f0a06bc

    .line 57
    invoke-virtual {p1, p2, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const/16 p2, 0x1001

    .line 58
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentTransaction;->setTransition(I)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const/4 p2, 0x0

    .line 59
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 60
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 80
    invoke-super {p0}, Lcom/ebay/mobile/activities/CoreActivity;->onBackPressed()V

    .line 83
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/promotedlistings/PlBasicActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "input_method"

    .line 86
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/ads/promotedlistings/PlBasicActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 26
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d01a0

    .line 28
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/ads/promotedlistings/PlBasicActivity;->setContentView(I)V

    const/4 v0, 0x1

    .line 29
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/ads/promotedlistings/PlBasicActivity;->setToolbarFlags(I)V

    if-nez p1, :cond_0

    .line 33
    new-instance p1, Lcom/ebay/mobile/ads/promotedlistings/PlBasicRecyclerFragment;

    invoke-direct {p1}, Lcom/ebay/mobile/ads/promotedlistings/PlBasicRecyclerFragment;-><init>()V

    .line 35
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/promotedlistings/PlBasicActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0a06bc

    .line 36
    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 37
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method

.method public unloadRiver()V
    .locals 1

    .line 65
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/promotedlistings/PlBasicActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    return-void
.end method
