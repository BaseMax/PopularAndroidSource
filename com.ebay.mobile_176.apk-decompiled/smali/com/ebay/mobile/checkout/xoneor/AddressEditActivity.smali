.class public Lcom/ebay/mobile/checkout/xoneor/AddressEditActivity;
.super Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;
.source "AddressEditActivity.java"


# static fields
.field public static final EXTRA_EDIT_TITLE:Ljava/lang/String; = "editTitle"


# instance fields
.field private addressEditFragment:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getTrackingEventName()Ljava/lang/String;
    .locals 1

    const-string v0, "CheckoutNewShippingAddress"

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 51
    invoke-super {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d00b4

    .line 52
    invoke-virtual {p0, v0, p1}, Lcom/ebay/mobile/checkout/xoneor/AddressEditActivity;->initContentView(ILandroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "addressId"

    .line 56
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "addressType"

    .line 57
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "addressMeta"

    .line 58
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    const-string v3, "addressFieldsModule"

    .line 59
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    const-string v4, "editTitle"

    .line 60
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 63
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressEditActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    const-class v5, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;

    .line 64
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;

    iput-object v4, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditActivity;->addressEditFragment:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;

    .line 65
    iget-object v4, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditActivity;->addressEditFragment:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;

    if-nez v4, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressEditActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v4

    .line 68
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 70
    new-instance v6, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;

    invoke-direct {v6}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;-><init>()V

    iput-object v6, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditActivity;->addressEditFragment:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;

    const-string v6, "addressId"

    .line 71
    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "addressMeta"

    .line 72
    invoke-virtual {v5, v6, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "addressType"

    .line 73
    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "xoParams"

    .line 74
    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditActivity;->xoParams:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "addressFieldsModule"

    .line 75
    invoke-virtual {v5, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 76
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditActivity;->addressEditFragment:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;

    invoke-virtual {v1, v5}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->setArguments(Landroid/os/Bundle;)V

    const v1, 0x7f0a0096

    .line 77
    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditActivity;->addressEditFragment:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;

    iget-object v3, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditActivity;->addressEditFragment:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v1, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 78
    invoke-virtual {v4}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 81
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 82
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/AddressEditActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 84
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const p1, 0x7f1210da

    goto :goto_0

    :cond_2
    const p1, 0x7f1210c3

    :goto_0
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/AddressEditActivity;->setTitle(I)V

    :goto_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    const v0, 0x7f0a03ba

    const v1, 0x7f12040f

    .line 100
    invoke-virtual {p0, p1, v0, v1}, Lcom/ebay/mobile/checkout/xoneor/AddressEditActivity;->addMenuItem(Landroid/view/Menu;II)Z

    move-result p1

    return p1
.end method

.method public onMenuDoneClicked(Landroid/view/MenuItem;)Z
    .locals 0
    .param p1    # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const p1, 0x1020002

    .line 106
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/AddressEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ebay/mobile/util/Util;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)V

    .line 107
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditActivity;->addressEditFragment:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;

    invoke-virtual {p1}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->validateAndSaveAddress()V

    const/4 p1, 0x1

    return p1
.end method

.method public onStart()V
    .locals 3

    .line 90
    invoke-super {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->onStart()V

    .line 91
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 92
    new-instance v1, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressEditActivity;->getTrackingEventName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/ebay/nautilus/domain/analytics/TrackingType;->PAGE_IMPRESSION:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    invoke-virtual {v1, v2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->trackingType(Lcom/ebay/nautilus/domain/analytics/TrackingType;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v1

    .line 93
    invoke-virtual {v1, v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->setSourceIdentification(Landroid/content/Intent;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->build()Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressEditActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    return-void
.end method
