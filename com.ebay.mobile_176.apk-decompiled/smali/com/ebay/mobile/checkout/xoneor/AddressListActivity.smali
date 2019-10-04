.class public Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;
.super Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;
.source "AddressListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final EXTRA_ADDRESS_ID:Ljava/lang/String; = "addressId"

.field public static final EXTRA_CHANGE_SELECTED_ADDRESS:Ljava/lang/String; = "change_selected_address"


# instance fields
.field private addressQueryMade:Z

.field private isEditAction:Z

.field private result:Lcom/ebay/mobile/activities/ActivityResult;

.field private shippingAddresses:Lcom/ebay/nautilus/domain/data/experience/checkout/address/ShippingAddressesModule;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;Landroid/view/View;Landroid/view/MenuItem;)Z
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->performOverflowMenuAction(Landroid/view/View;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method private getActivityTitleForAction(Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;)Ljava/lang/String;
    .locals 2

    .line 367
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->shippingAddresses:Lcom/ebay/nautilus/domain/data/experience/checkout/address/ShippingAddressesModule;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->shippingAddresses:Lcom/ebay/nautilus/domain/data/experience/checkout/address/ShippingAddressesModule;

    invoke-virtual {v0, p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/address/ShippingAddressesModule;->getAction(Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;)Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 372
    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;->text:Ljava/lang/String;

    :cond_1
    return-object v1
.end method

.method private getAddressById(Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/experience/checkout/address/Address;
    .locals 4

    .line 471
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->shippingAddresses:Lcom/ebay/nautilus/domain/data/experience/checkout/address/ShippingAddressesModule;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->shippingAddresses:Lcom/ebay/nautilus/domain/data/experience/checkout/address/ShippingAddressesModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/ShippingAddressesModule;->addresses:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->shippingAddresses:Lcom/ebay/nautilus/domain/data/experience/checkout/address/ShippingAddressesModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/ShippingAddressesModule;->addresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_4

    .line 473
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 476
    :cond_1
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->shippingAddresses:Lcom/ebay/nautilus/domain/data/experience/checkout/address/ShippingAddressesModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/ShippingAddressesModule;->addresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/domain/data/experience/checkout/address/Address;

    .line 477
    iget-object v3, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/address/Address;->addressId:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v2

    :cond_3
    return-object v1

    :cond_4
    :goto_0
    return-object v1

    :cond_5
    :goto_1
    return-object v1
.end method

.method private handleCreateAddress()V
    .locals 3

    .line 395
    const-class v0, Lcom/ebay/mobile/checkout/xoneor/AddressEditActivity;

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->createCheckoutIntent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 396
    new-instance v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    invoke-direct {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;-><init>()V

    .line 397
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->getUserContext()Lcom/ebay/nautilus/domain/content/dm/UserContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/content/dm/UserContext;->ensureCountry()Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/EbayCountry;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;->country:Ljava/lang/String;

    const-string v2, "addressMeta"

    .line 398
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 400
    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;->ADD_SHIPPING_ADDRESS:Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;

    invoke-direct {p0, v1}, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->getActivityTitleForAction(Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "editTitle"

    .line 402
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/4 v1, 0x1

    .line 404
    invoke-virtual {p0, v0, v1}, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private handleEditAddress(Ljava/lang/String;)V
    .locals 2

    .line 379
    const-class v0, Lcom/ebay/mobile/checkout/xoneor/AddressEditActivity;

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->createCheckoutIntent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "addressId"

    .line 382
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    sget-object p1, Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;->EDIT_SHIPPING_ADDRESS:Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;

    invoke-direct {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->getActivityTitleForAction(Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "editTitle"

    .line 387
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/4 p1, 0x1

    .line 389
    invoke-virtual {p0, v0, p1}, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private handleMakePrimaryAddress(Ljava/lang/String;)V
    .locals 2

    .line 418
    invoke-direct {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->getAddressById(Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/experience/checkout/address/Address;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 423
    :cond_0
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/Address;->value:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    const/4 v0, 0x1

    .line 424
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;->makePrimary:Ljava/lang/Boolean;

    .line 425
    iput-boolean v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->isEditAction:Z

    .line 426
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p0}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->editAddress(Ljava/lang/String;Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    .line 427
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->startProgress()V

    return-void
.end method

.method private handleOverflowMenu(Landroid/view/View;)V
    .locals 4

    .line 433
    new-instance v0, Landroidx/appcompat/widget/PopupMenu;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 434
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const v3, 0x7f0e0001

    invoke-virtual {v1, v3, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 435
    new-instance v1, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity$1;-><init>(Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/PopupMenu;->setOnMenuItemClickListener(Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 444
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 445
    invoke-direct {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->getAddressById(Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/experience/checkout/address/Address;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 446
    iget-boolean p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/Address;->primary:Z

    if-eqz p1, :cond_0

    .line 447
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const v1, 0x7f0a09ca

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 449
    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->show()V

    return-void
.end method

.method private handleSelectAddress(Ljava/lang/String;Z)V
    .locals 2

    .line 409
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "addressId"

    .line 410
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "change_selected_address"

    .line 411
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 412
    invoke-virtual {p0, p1, v0}, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->setResult(ILandroid/content/Intent;)V

    .line 413
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->finish()V

    return-void
.end method

.method private performOverflowMenuAction(Landroid/view/View;Landroid/view/MenuItem;)Z
    .locals 2

    .line 454
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 456
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    const v0, 0x7f0a09bc

    const/4 v1, 0x1

    if-eq p2, v0, :cond_1

    const v0, 0x7f0a09ca

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 459
    :cond_0
    invoke-direct {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->handleMakePrimaryAddress(Ljava/lang/String;)V

    return v1

    .line 462
    :cond_1
    invoke-direct {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->handleEditAddress(Ljava/lang/String;)V

    return v1
.end method

.method private renderScreen(Lcom/ebay/nautilus/domain/data/experience/checkout/address/ShippingAddressesModule;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const v2, 0x7f0a009b

    .line 261
    invoke-virtual {v0, v2}, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 262
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 266
    iget-object v3, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/ShippingAddressesModule;->addresses:Ljava/util/List;

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v3, :cond_6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 269
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_6

    .line 271
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ebay/nautilus/domain/data/experience/checkout/address/Address;

    if-eqz v8, :cond_5

    .line 274
    iget-object v9, v8, Lcom/ebay/nautilus/domain/data/experience/checkout/address/Address;->addressLines:Ljava/util/List;

    if-eqz v9, :cond_5

    iget-object v9, v8, Lcom/ebay/nautilus/domain/data/experience/checkout/address/Address;->addressLines:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_1

    goto/16 :goto_2

    .line 277
    :cond_1
    iget-object v9, v0, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->inflater:Landroid/view/LayoutInflater;

    const v10, 0x7f0d00b7

    .line 278
    invoke-virtual {v9, v10, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    const v10, 0x7f0a00ab

    .line 279
    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    const v11, 0x7f0a0097

    .line 280
    invoke-virtual {v9, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    const v12, 0x7f0a00a8

    .line 281
    invoke-virtual {v9, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/RadioButton;

    const v13, 0x7f0a00a1

    .line 284
    invoke-virtual {v9, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 285
    invoke-virtual {v13, v5}, Landroid/view/View;->setVisibility(I)V

    const v14, 0x7f0a008a

    .line 286
    invoke-virtual {v9, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14, v4}, Landroid/view/View;->setVisibility(I)V

    .line 289
    iget-object v14, v8, Lcom/ebay/nautilus/domain/data/experience/checkout/address/Address;->addressId:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 290
    invoke-virtual {v13, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    iget-object v14, v8, Lcom/ebay/nautilus/domain/data/experience/checkout/address/Address;->addressId:Ljava/lang/String;

    invoke-virtual {v10, v14}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 294
    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    iget-object v14, v8, Lcom/ebay/nautilus/domain/data/experience/checkout/address/Address;->addressId:Ljava/lang/String;

    invoke-virtual {v11, v14}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 298
    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v11, 0x7f0a0090

    .line 301
    invoke-virtual {v9, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 302
    iget-object v14, v8, Lcom/ebay/nautilus/domain/data/experience/checkout/address/Address;->addressLines:Ljava/util/List;

    invoke-static {v14}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->getSpannableFromStringArray(Ljava/util/List;)Landroid/text/Spannable;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v11, 0x7f0a00a9

    .line 304
    invoke-virtual {v9, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 306
    iget-object v14, v8, Lcom/ebay/nautilus/domain/data/experience/checkout/address/Address;->addressLines:Ljava/util/List;

    .line 307
    invoke-static {v14}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->getSpannableFromStringArray(Ljava/util/List;)Landroid/text/Spannable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    const v15, 0x7f0a0c8f

    .line 310
    invoke-virtual {v9, v15}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 311
    iget-boolean v4, v8, Lcom/ebay/nautilus/domain/data/experience/checkout/address/Address;->primary:Z

    if-eqz v4, :cond_2

    .line 313
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v1, 0x7f121104

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual/range {p0 .. p0}, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f1202af

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 315
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v4, 0x0

    .line 317
    invoke-virtual {v15, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 321
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1202af

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v6, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x8

    .line 323
    invoke-virtual {v15, v4}, Landroid/view/View;->setVisibility(I)V

    .line 326
    :goto_1
    invoke-virtual {v11, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 327
    invoke-virtual {v12, v14}, Landroid/widget/RadioButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 328
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual/range {p0 .. p0}, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f120eab

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 328
    invoke-virtual {v13, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 332
    iget-boolean v1, v8, Lcom/ebay/nautilus/domain/data/experience/checkout/address/Address;->selected:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    .line 334
    invoke-virtual {v12, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 335
    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    :cond_3
    add-int/lit8 v7, v7, 0x1

    .line 340
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-ne v7, v1, :cond_4

    const v1, 0x7f0a0094

    .line 341
    invoke-virtual {v9, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 343
    :cond_4
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_5
    :goto_2
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p1

    const/16 v4, 0x8

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_6
    const v1, 0x7f0a009f

    .line 348
    invoke-virtual {v0, v1}, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    .line 349
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 350
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;->ADD_SHIPPING_ADDRESS:Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/address/ShippingAddressesModule;->getAction(Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;)Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    move-result-object v1

    if-eqz v1, :cond_7

    const v3, 0x7f0a00a0

    .line 356
    invoke-virtual {v0, v3}, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 357
    iget-object v4, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;->text:Ljava/lang/String;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;->text:Ljava/lang/String;

    const/16 v5, 0x8

    invoke-static {v3, v4, v1, v5}, Lcom/ebay/mobile/util/Util;->updateFromText(Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 359
    :cond_7
    invoke-virtual/range {p0 .. p1}, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->trackRenderedModuleView(Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;)V

    .line 360
    invoke-virtual/range {p0 .. p0}, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->getTrackingEventName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->sendCheckoutPageImpression(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getTrackingEventName()Ljava/lang/String;
    .locals 1

    const-string v0, "ChangeChangeShippingAddress"

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .line 196
    invoke-super {p0, p1, p2, p3}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 198
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-static {p1, p2, p3, v0}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->validateOnActivityResult(IILandroid/content/Intent;Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;)Lcom/ebay/mobile/activities/ActivityResult;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->result:Lcom/ebay/mobile/activities/ActivityResult;

    .line 199
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->result:Lcom/ebay/mobile/activities/ActivityResult;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, -0x3e7

    if-eq p2, v0, :cond_9

    .line 202
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 214
    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->shippingAddresses:Lcom/ebay/nautilus/domain/data/experience/checkout/address/ShippingAddressesModule;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->shippingAddresses:Lcom/ebay/nautilus/domain/data/experience/checkout/address/ShippingAddressesModule;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/address/ShippingAddressesModule;->addresses:Ljava/util/List;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->shippingAddresses:Lcom/ebay/nautilus/domain/data/experience/checkout/address/ShippingAddressesModule;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/address/ShippingAddressesModule;->addresses:Ljava/util/List;

    .line 215
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 216
    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->shippingAddresses:Lcom/ebay/nautilus/domain/data/experience/checkout/address/ShippingAddressesModule;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/address/ShippingAddressesModule;->addresses:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/nautilus/domain/data/experience/checkout/address/Address;

    if-eqz v3, :cond_3

    .line 217
    iget-boolean v4, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/address/Address;->selected:Z

    if-eqz v4, :cond_3

    .line 219
    iget-object p1, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/address/Address;->addressId:Ljava/lang/String;

    :cond_4
    const/4 v2, 0x0

    if-ne p2, v0, :cond_5

    if-eqz p1, :cond_7

    .line 227
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->startProgress()V

    .line 228
    invoke-direct {p0, p1, v2}, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->handleSelectAddress(Ljava/lang/String;Z)V

    return-void

    :cond_5
    if-ne p2, v1, :cond_7

    if-eqz p3, :cond_7

    const-string v3, "addressId"

    .line 234
    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 235
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->startProgress()V

    if-eqz p3, :cond_6

    .line 236
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 238
    invoke-direct {p0, p3, v1}, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->handleSelectAddress(Ljava/lang/String;Z)V

    return-void

    .line 243
    :cond_6
    invoke-virtual {p0, v2}, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->setResult(I)V

    .line 244
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->finish()V

    :cond_7
    :goto_0
    if-ne p2, v0, :cond_8

    .line 253
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->shippingAddresses:Lcom/ebay/nautilus/domain/data/experience/checkout/address/ShippingAddressesModule;

    invoke-direct {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->renderScreen(Lcom/ebay/nautilus/domain/data/experience/checkout/address/ShippingAddressesModule;)V

    :cond_8
    return-void

    .line 204
    :cond_9
    :goto_1
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->setResult(I)V

    .line 205
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->finish()V

    return-void
.end method

.method public onAddressFieldsSaved(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;Lcom/ebay/nautilus/domain/content/Content;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;",
            ">;Z)V"
        }
    .end annotation

    .line 120
    invoke-super {p0, p1, p2, p3}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->onAddressFieldsSaved(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;Lcom/ebay/nautilus/domain/content/Content;Z)V

    .line 124
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/content/Content;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    .line 125
    invoke-virtual {p0, p1, p2, p3}, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->checkSessionChanged(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;Lcom/ebay/nautilus/domain/content/Content;Z)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->validateXoSession(Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->stopProgress()V

    return-void

    .line 134
    :cond_0
    iget-boolean p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->isEditAction:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 136
    iput-boolean p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->isEditAction:Z

    .line 137
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    invoke-virtual {p1, p0}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->getAddresses(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    return-void

    .line 141
    :cond_1
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class p2, Lcom/ebay/nautilus/domain/data/experience/checkout/address/ShippingAddressesModule;

    invoke-virtual {p1, p2}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/ShippingAddressesModule;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->shippingAddresses:Lcom/ebay/nautilus/domain/data/experience/checkout/address/ShippingAddressesModule;

    return-void
.end method

.method public onAddressesChanged(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;Lcom/ebay/nautilus/domain/content/Content;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;",
            ">;Z)V"
        }
    .end annotation

    .line 147
    invoke-super {p0, p1, p2, p3}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->onAddressesChanged(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;Lcom/ebay/nautilus/domain/content/Content;Z)V

    .line 149
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/content/Content;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    .line 150
    invoke-virtual {p0, p1, p2, p3}, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->checkSessionChanged(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;Lcom/ebay/nautilus/domain/content/Content;Z)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->validateXoSession(Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->stopProgress()V

    return-void

    .line 156
    :cond_0
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class p2, Lcom/ebay/nautilus/domain/data/experience/checkout/address/ShippingAddressesModule;

    invoke-virtual {p1, p2}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/ShippingAddressesModule;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->shippingAddresses:Lcom/ebay/nautilus/domain/data/experience/checkout/address/ShippingAddressesModule;

    .line 157
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->shippingAddresses:Lcom/ebay/nautilus/domain/data/experience/checkout/address/ShippingAddressesModule;

    if-eqz p1, :cond_1

    .line 159
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->stopProgress()V

    .line 160
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->shippingAddresses:Lcom/ebay/nautilus/domain/data/experience/checkout/address/ShippingAddressesModule;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/ShippingAddressesModule;->moduleTitle:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 161
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->shippingAddresses:Lcom/ebay/nautilus/domain/data/experience/checkout/address/ShippingAddressesModule;

    invoke-direct {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->renderScreen(Lcom/ebay/nautilus/domain/data/experience/checkout/address/ShippingAddressesModule;)V

    const/4 p1, 0x1

    .line 162
    iput-boolean p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->addressQueryMade:Z

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 169
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0097

    if-eq v0, v1, :cond_3

    const v1, 0x7f0a009f

    if-eq v0, v1, :cond_2

    const v1, 0x7f0a00a1

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a00ab

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->handleSelectAddress(Ljava/lang/String;Z)V

    goto :goto_0

    .line 188
    :cond_1
    invoke-direct {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->handleOverflowMenu(Landroid/view/View;)V

    goto :goto_0

    .line 173
    :cond_2
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->handleCreateAddress()V

    goto :goto_0

    .line 178
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->handleEditAddress(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 52
    invoke-super {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d00b6

    .line 54
    invoke-virtual {p0, v0, p1}, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->initContentView(ILandroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "addressQueryMade"

    .line 58
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->addressQueryMade:Z

    const-string v0, "isEditAction"

    .line 59
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->isEditAction:Z

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 66
    invoke-super {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "addressQueryMade"

    .line 67
    iget-boolean v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->addressQueryMade:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "isEditAction"

    .line 68
    iget-boolean v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->isEditAction:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onSessionChanged(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;Lcom/ebay/nautilus/domain/content/Content;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;",
            ">;Z)V"
        }
    .end annotation

    .line 80
    invoke-super {p0, p1, p2, p3}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->onSessionChanged(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;Lcom/ebay/nautilus/domain/content/Content;Z)V

    .line 82
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/content/Content;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    .line 83
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/ShippingAddressesModule;

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/ShippingAddressesModule;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->shippingAddresses:Lcom/ebay/nautilus/domain/data/experience/checkout/address/ShippingAddressesModule;

    .line 85
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->result:Lcom/ebay/mobile/activities/ActivityResult;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->result:Lcom/ebay/mobile/activities/ActivityResult;

    iget v0, v0, Lcom/ebay/mobile/activities/ActivityResult;->requestCode:I

    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->result:Lcom/ebay/mobile/activities/ActivityResult;

    iget v1, v1, Lcom/ebay/mobile/activities/ActivityResult;->resultCode:I

    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->result:Lcom/ebay/mobile/activities/ActivityResult;

    iget-object v2, v2, Lcom/ebay/mobile/activities/ActivityResult;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1, v2}, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->result:Lcom/ebay/mobile/activities/ActivityResult;

    if-eqz p1, :cond_0

    .line 89
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->isTaskRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 93
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->checkSessionChanged(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;Lcom/ebay/nautilus/domain/content/Content;Z)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->validateXoSession(Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 95
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->stopProgress()V

    return-void

    .line 100
    :cond_1
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->shippingAddresses:Lcom/ebay/nautilus/domain/data/experience/checkout/address/ShippingAddressesModule;

    if-eqz p1, :cond_2

    .line 101
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->shippingAddresses:Lcom/ebay/nautilus/domain/data/experience/checkout/address/ShippingAddressesModule;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/ShippingAddressesModule;->moduleTitle:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 105
    :cond_2
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    if-eqz p1, :cond_4

    .line 107
    iget-boolean p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->addressQueryMade:Z

    if-nez p1, :cond_3

    .line 109
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    invoke-virtual {p1, p0}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->getAddresses(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    .line 110
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->startProgress()V

    goto :goto_0

    .line 113
    :cond_3
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->shippingAddresses:Lcom/ebay/nautilus/domain/data/experience/checkout/address/ShippingAddressesModule;

    invoke-direct {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->renderScreen(Lcom/ebay/nautilus/domain/data/experience/checkout/address/ShippingAddressesModule;)V

    :cond_4
    :goto_0
    return-void
.end method
