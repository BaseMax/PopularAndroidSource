.class Lcom/ebay/common/view/util/DialogManager$DynamicTextAlertDialogBuilder;
.super Ljava/lang/Object;
.source "DialogManager.java"

# interfaces
.implements Lcom/ebay/common/view/util/DialogManager$DynamicDialogBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/view/util/DialogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DynamicTextAlertDialogBuilder"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ebay/common/view/util/DialogManager$DynamicTextAlertDialogBuilder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final cancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private final clickListener:Landroid/content/DialogInterface$OnClickListener;

.field private final message:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 442
    new-instance v0, Lcom/ebay/common/view/util/DialogManager$DynamicTextAlertDialogBuilder$1;

    invoke-direct {v0}, Lcom/ebay/common/view/util/DialogManager$DynamicTextAlertDialogBuilder$1;-><init>()V

    sput-object v0, Lcom/ebay/common/view/util/DialogManager$DynamicTextAlertDialogBuilder;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    iput-object p1, p0, Lcom/ebay/common/view/util/DialogManager$DynamicTextAlertDialogBuilder;->title:Ljava/lang/String;

    .line 381
    iput-object p2, p0, Lcom/ebay/common/view/util/DialogManager$DynamicTextAlertDialogBuilder;->message:Ljava/lang/String;

    .line 382
    iput-object p3, p0, Lcom/ebay/common/view/util/DialogManager$DynamicTextAlertDialogBuilder;->clickListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 p1, 0x0

    .line 383
    iput-object p1, p0, Lcom/ebay/common/view/util/DialogManager$DynamicTextAlertDialogBuilder;->cancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    iput-object p1, p0, Lcom/ebay/common/view/util/DialogManager$DynamicTextAlertDialogBuilder;->title:Ljava/lang/String;

    .line 389
    iput-object p2, p0, Lcom/ebay/common/view/util/DialogManager$DynamicTextAlertDialogBuilder;->message:Ljava/lang/String;

    .line 390
    iput-object p3, p0, Lcom/ebay/common/view/util/DialogManager$DynamicTextAlertDialogBuilder;->clickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 391
    iput-object p4, p0, Lcom/ebay/common/view/util/DialogManager$DynamicTextAlertDialogBuilder;->cancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method


# virtual methods
.method public create(Lcom/ebay/common/view/util/DialogManager;Landroid/app/Activity;)Landroid/app/Dialog;
    .locals 8

    .line 403
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 406
    iget-object v1, p0, Lcom/ebay/common/view/util/DialogManager$DynamicTextAlertDialogBuilder;->message:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ebay/common/view/util/DialogManager$DynamicTextAlertDialogBuilder;->message:Ljava/lang/String;

    const-string v2, "</"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 408
    new-instance v1, Lcom/ebay/android/widget/AplsTrackingWebView;

    invoke-direct {v1, p2}, Lcom/ebay/android/widget/AplsTrackingWebView;-><init>(Landroid/content/Context;)V

    const-string v3, "http://"

    .line 410
    iget-object v4, p0, Lcom/ebay/common/view/util/DialogManager$DynamicTextAlertDialogBuilder;->message:Ljava/lang/String;

    const-string/jumbo v5, "text/html"

    const-string/jumbo v6, "utf-8"

    const-string v7, "about:blank"

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_0

    .line 414
    :cond_0
    iget-object p2, p0, Lcom/ebay/common/view/util/DialogManager$DynamicTextAlertDialogBuilder;->message:Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    :goto_0
    const p2, 0x104000a

    .line 416
    iget-object v1, p0, Lcom/ebay/common/view/util/DialogManager$DynamicTextAlertDialogBuilder;->clickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, p2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 417
    iget-object p2, p0, Lcom/ebay/common/view/util/DialogManager$DynamicTextAlertDialogBuilder;->cancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/ebay/common/view/util/DialogManager$DynamicTextAlertDialogBuilder;->cancelListener:Landroid/content/DialogInterface$OnCancelListener;

    goto :goto_1

    :cond_1
    move-object p2, p1

    :goto_1
    invoke-virtual {p0, p1, p2, v0}, Lcom/ebay/common/view/util/DialogManager$DynamicTextAlertDialogBuilder;->setOnCancelListener(Lcom/ebay/common/view/util/DialogManager;Landroid/content/DialogInterface$OnCancelListener;Landroidx/appcompat/app/AlertDialog$Builder;)V

    .line 419
    iget-object p1, p0, Lcom/ebay/common/view/util/DialogManager$DynamicTextAlertDialogBuilder;->title:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 420
    iget-object p1, p0, Lcom/ebay/common/view/util/DialogManager$DynamicTextAlertDialogBuilder;->title:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 421
    :cond_2
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected setOnCancelListener(Lcom/ebay/common/view/util/DialogManager;Landroid/content/DialogInterface$OnCancelListener;Landroidx/appcompat/app/AlertDialog$Builder;)V
    .locals 0

    .line 397
    invoke-virtual {p3, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 434
    iget-object p2, p0, Lcom/ebay/common/view/util/DialogManager$DynamicTextAlertDialogBuilder;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 435
    iget-object p2, p0, Lcom/ebay/common/view/util/DialogManager$DynamicTextAlertDialogBuilder;->message:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
