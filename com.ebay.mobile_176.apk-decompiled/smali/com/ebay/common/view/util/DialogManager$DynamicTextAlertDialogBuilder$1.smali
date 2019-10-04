.class final Lcom/ebay/common/view/util/DialogManager$DynamicTextAlertDialogBuilder$1;
.super Ljava/lang/Object;
.source "DialogManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/view/util/DialogManager$DynamicTextAlertDialogBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/ebay/common/view/util/DialogManager$DynamicTextAlertDialogBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ebay/common/view/util/DialogManager$DynamicTextAlertDialogBuilder;
    .locals 3

    .line 453
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 454
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 455
    new-instance v1, Lcom/ebay/common/view/util/DialogManager$DynamicTextAlertDialogBuilder;

    sget-object v2, Lcom/ebay/common/view/util/DialogManager;->closeListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {v1, v0, p1, v2}, Lcom/ebay/common/view/util/DialogManager$DynamicTextAlertDialogBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 443
    invoke-virtual {p0, p1}, Lcom/ebay/common/view/util/DialogManager$DynamicTextAlertDialogBuilder$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ebay/common/view/util/DialogManager$DynamicTextAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/ebay/common/view/util/DialogManager$DynamicTextAlertDialogBuilder;
    .locals 0

    .line 447
    new-array p1, p1, [Lcom/ebay/common/view/util/DialogManager$DynamicTextAlertDialogBuilder;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 443
    invoke-virtual {p0, p1}, Lcom/ebay/common/view/util/DialogManager$DynamicTextAlertDialogBuilder$1;->newArray(I)[Lcom/ebay/common/view/util/DialogManager$DynamicTextAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method
