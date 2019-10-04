.class public Lcom/ebay/mobile/activities/AddEditTrackingInfoActivity;
.super Lcom/ebay/mobile/activities/CoreActivity;
.source "AddEditTrackingInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/mobile/activities/AddEditTrackingInfoActivity$ButtonEnabler;
    }
.end annotation


# static fields
.field public static final EXTRA_CARRIER:Ljava/lang/String; = "carrier"

.field public static final EXTRA_ENTER_VS_EDIT:Ljava/lang/String; = "enter_vs_edit"

.field public static final EXTRA_INDEX:Ljava/lang/String; = "index"

.field public static final EXTRA_NUMBER:Ljava/lang/String; = "number"

.field public static final EXTRA_SHOW_REMOVE_WARNING:Ljava/lang/String; = "showRemoveWarning"

.field public static final EXTRA_STATE:Ljava/lang/String; = "state"

.field public static final STATE_REMOVE:I = 0x0

.field public static final STATE_SAVE:I = 0x2

.field public static final STATE_UPDATE:I = 0x1


# instance fields
.field private carrierField:Landroid/widget/EditText;

.field private numberField:Landroid/widget/EditText;

.field private removable:Z

.field private showRemoveWarning:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/ebay/mobile/activities/CoreActivity;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/ebay/mobile/activities/AddEditTrackingInfoActivity;->removable:Z

    .line 39
    iput-boolean v0, p0, Lcom/ebay/mobile/activities/AddEditTrackingInfoActivity;->showRemoveWarning:Z

    return-void
.end method

.method static synthetic access$000(Lcom/ebay/mobile/activities/AddEditTrackingInfoActivity;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/ebay/mobile/activities/AddEditTrackingInfoActivity;->remove()V

    return-void
.end method

.method private barcodeToCarrier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "1Z"

    .line 199
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "128"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p1, "UPS"

    return-object p1

    :cond_1
    const-string p2, "91"

    .line 202
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_6

    const-string p2, "94"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    const-string p2, "C1"

    .line 205
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    const/16 v1, 0xf

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-ne p2, v1, :cond_3

    const-string p1, "OnTrac"

    return-object p1

    .line 210
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-eq p2, v1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v1, 0xc

    if-eq p2, v1, :cond_5

    const-string p2, "3"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p2, 0x20

    if-ne p1, p2, :cond_4

    goto :goto_0

    :cond_4
    return-object v0

    :cond_5
    :goto_0
    const-string p1, "FedEx"

    return-object p1

    :cond_6
    :goto_1
    const-string p1, "USPS"

    return-object p1
.end method

.method private remove()V
    .locals 5

    .line 151
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "state"

    const/4 v2, 0x0

    .line 152
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "index"

    .line 153
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/AddEditTrackingInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "index"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 154
    invoke-virtual {p0, v1, v0}, Lcom/ebay/mobile/activities/AddEditTrackingInfoActivity;->setResult(ILandroid/content/Intent;)V

    .line 155
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/AddEditTrackingInfoActivity;->finish()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 161
    invoke-super {p0, p1, p2, p3}, Lcom/ebay/mobile/activities/CoreActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    const-string/jumbo p1, "productid"

    .line 169
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "productidtype"

    .line 170
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 172
    new-instance p3, Lcom/ebay/mobile/camera/barcode/Barcode;

    invoke-direct {p3, p1, p2}, Lcom/ebay/mobile/camera/barcode/Barcode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {p3}, Lcom/ebay/mobile/camera/barcode/Barcode;->getTrackingNumber()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 177
    iget-object v0, p0, Lcom/ebay/mobile/activities/AddEditTrackingInfoActivity;->numberField:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 179
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/AddEditTrackingInfoActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v0

    const-class v1, Lcom/ebay/nautilus/domain/dagger/DomainComponent;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/kernel/content/EbayContext;->as(Ljava/lang/Class;)Lcom/ebay/nautilus/kernel/dagger/KernelComponent;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/dagger/DomainComponent;

    invoke-interface {v0}, Lcom/ebay/nautilus/domain/dagger/DomainComponent;->getUserContext()Lcom/ebay/nautilus/domain/content/dm/UserContext;

    move-result-object v0

    .line 180
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/content/dm/UserContext;->getCurrentCountry()Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/EbayCountry;->getSite()Lcom/ebay/nautilus/domain/EbaySite;

    move-result-object v0

    .line 181
    sget-object v1, Lcom/ebay/nautilus/domain/EbaySite;->US:Lcom/ebay/nautilus/domain/EbaySite;

    invoke-virtual {v1, v0}, Lcom/ebay/nautilus/domain/EbaySite;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 182
    iget-object p3, p0, Lcom/ebay/mobile/activities/AddEditTrackingInfoActivity;->carrierField:Landroid/widget/EditText;

    invoke-direct {p0, p1, p2}, Lcom/ebay/mobile/activities/AddEditTrackingInfoActivity;->barcodeToCarrier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 183
    :cond_1
    sget-object p1, Lcom/ebay/nautilus/domain/EbaySite;->AU:Lcom/ebay/nautilus/domain/EbaySite;

    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/domain/EbaySite;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p3}, Lcom/ebay/mobile/camera/barcode/Barcode;->isCarrierAuPost()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 185
    iget-object p1, p0, Lcom/ebay/mobile/activities/AddEditTrackingInfoActivity;->numberField:Landroid/widget/EditText;

    invoke-virtual {p3}, Lcom/ebay/mobile/camera/barcode/Barcode;->getTrackingNumberAuPost()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object p1, p0, Lcom/ebay/mobile/activities/AddEditTrackingInfoActivity;->carrierField:Landroid/widget/EditText;

    const-string p2, "AustraliaPost"

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a02bc

    const/4 v1, 0x2

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 108
    :pswitch_0
    iget-object p1, p0, Lcom/ebay/mobile/activities/AddEditTrackingInfoActivity;->numberField:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 109
    iget-object v0, p0, Lcom/ebay/mobile/activities/AddEditTrackingInfoActivity;->carrierField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "number"

    .line 112
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "carrier"

    .line 113
    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "index"

    .line 114
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/AddEditTrackingInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "index"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo p1, "state"

    .line 115
    iget-boolean v0, p0, Lcom/ebay/mobile/activities/AddEditTrackingInfoActivity;->removable:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v2, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 116
    invoke-virtual {p0, p1, v2}, Lcom/ebay/mobile/activities/AddEditTrackingInfoActivity;->setResult(ILandroid/content/Intent;)V

    .line 117
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/AddEditTrackingInfoActivity;->finish()V

    goto :goto_0

    .line 121
    :pswitch_1
    iget-boolean p1, p0, Lcom/ebay/mobile/activities/AddEditTrackingInfoActivity;->showRemoveWarning:Z

    if-eqz p1, :cond_1

    .line 123
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x1080027

    .line 124
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setIcon(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120fc4

    .line 125
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/activities/AddEditTrackingInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120fc3

    .line 126
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/activities/AddEditTrackingInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f121110

    new-instance v2, Lcom/ebay/mobile/activities/AddEditTrackingInfoActivity$1;

    invoke-direct {v2, p0}, Lcom/ebay/mobile/activities/AddEditTrackingInfoActivity$1;-><init>(Lcom/ebay/mobile/activities/AddEditTrackingInfoActivity;)V

    .line 127
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1207ee

    const/4 v2, 0x0

    .line 135
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    .line 136
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_0

    .line 139
    :cond_1
    invoke-direct {p0}, Lcom/ebay/mobile/activities/AddEditTrackingInfoActivity;->remove()V

    goto :goto_0

    .line 105
    :pswitch_2
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/AddEditTrackingInfoActivity;->finish()V

    goto :goto_0

    :cond_2
    const/16 p1, 0x3a

    .line 143
    invoke-static {p0, p1, v1}, Lcom/ebay/mobile/camera/barcode/BarcodeScannerActivity;->startForResult(Landroidx/fragment/app/FragmentActivity;II)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0a1353
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 47
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 48
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/AddEditTrackingInfoActivity;->setToolbarFlags(I)V

    const v0, 0x7f0d0031

    .line 49
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/AddEditTrackingInfoActivity;->setContentView(I)V

    .line 51
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/AddEditTrackingInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "enter_vs_edit"

    .line 53
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f120467

    goto :goto_0

    :cond_0
    const v1, 0x7f120439

    .line 54
    :goto_0
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/activities/AddEditTrackingInfoActivity;->setTitle(I)V

    const-string v1, "number"

    .line 56
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "carrier"

    .line 57
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "showRemoveWarning"

    .line 59
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ebay/mobile/activities/AddEditTrackingInfoActivity;->showRemoveWarning:Z

    const v0, 0x7f0a1356

    .line 61
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/AddEditTrackingInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ebay/mobile/activities/AddEditTrackingInfoActivity;->numberField:Landroid/widget/EditText;

    .line 62
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/ebay/mobile/activities/AddEditTrackingInfoActivity;->numberField:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iput-boolean v3, p0, Lcom/ebay/mobile/activities/AddEditTrackingInfoActivity;->removable:Z

    :cond_1
    const v0, 0x7f0a1352

    .line 68
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/AddEditTrackingInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ebay/mobile/activities/AddEditTrackingInfoActivity;->carrierField:Landroid/widget/EditText;

    .line 69
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 71
    iget-object v0, p0, Lcom/ebay/mobile/activities/AddEditTrackingInfoActivity;->carrierField:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iput-boolean v3, p0, Lcom/ebay/mobile/activities/AddEditTrackingInfoActivity;->removable:Z

    :cond_2
    const v0, 0x7f0a1354

    .line 75
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/AddEditTrackingInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-boolean v2, p0, Lcom/ebay/mobile/activities/AddEditTrackingInfoActivity;->removable:Z

    const/16 v3, 0x8

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const/16 p1, 0x8

    :goto_1
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f0a1353

    .line 77
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/AddEditTrackingInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a1355

    .line 78
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/AddEditTrackingInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/AddEditTrackingInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02bc

    .line 81
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/AddEditTrackingInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ebay/mobile/sell/widget/TextImageButton;

    .line 82
    invoke-static {p0}, Lcom/ebay/mobile/camera/barcode/BarcodeScannerActivity;->shouldDisplayScanButton(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 84
    invoke-virtual {v0, p0}, Lcom/ebay/mobile/sell/widget/TextImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f080396

    .line 85
    invoke-virtual {v0, v1}, Lcom/ebay/mobile/sell/widget/TextImageButton;->setButtonDrawable(I)V

    goto :goto_2

    .line 89
    :cond_4
    invoke-virtual {v0, v3}, Lcom/ebay/mobile/sell/widget/TextImageButton;->setVisibility(I)V

    const v0, 0x7f0a0911

    .line 90
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/AddEditTrackingInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 93
    :goto_2
    new-instance v0, Lcom/ebay/mobile/activities/AddEditTrackingInfoActivity$ButtonEnabler;

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/AddEditTrackingInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lcom/ebay/mobile/activities/AddEditTrackingInfoActivity;->numberField:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/ebay/mobile/activities/AddEditTrackingInfoActivity;->carrierField:Landroid/widget/EditText;

    invoke-direct {v0, p1, v1, v2}, Lcom/ebay/mobile/activities/AddEditTrackingInfoActivity$ButtonEnabler;-><init>(Landroid/view/View;Landroid/widget/EditText;Landroid/widget/EditText;)V

    .line 95
    iget-object p1, p0, Lcom/ebay/mobile/activities/AddEditTrackingInfoActivity;->numberField:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 96
    iget-object p1, p0, Lcom/ebay/mobile/activities/AddEditTrackingInfoActivity;->carrierField:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method
