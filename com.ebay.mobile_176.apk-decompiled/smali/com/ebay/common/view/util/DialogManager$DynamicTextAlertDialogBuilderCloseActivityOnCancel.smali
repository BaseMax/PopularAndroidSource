.class final Lcom/ebay/common/view/util/DialogManager$DynamicTextAlertDialogBuilderCloseActivityOnCancel;
.super Lcom/ebay/common/view/util/DialogManager$DynamicTextAlertDialogBuilder;
.source "DialogManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/view/util/DialogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DynamicTextAlertDialogBuilderCloseActivityOnCancel"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ebay/common/view/util/DialogManager$DynamicTextAlertDialogBuilderCloseActivityOnCancel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private activity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private dialogManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ebay/common/view/util/DialogManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 516
    new-instance v0, Lcom/ebay/common/view/util/DialogManager$DynamicTextAlertDialogBuilderCloseActivityOnCancel$1;

    invoke-direct {v0}, Lcom/ebay/common/view/util/DialogManager$DynamicTextAlertDialogBuilderCloseActivityOnCancel$1;-><init>()V

    sput-object v0, Lcom/ebay/common/view/util/DialogManager$DynamicTextAlertDialogBuilderCloseActivityOnCancel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 474
    sget-object v0, Lcom/ebay/common/view/util/DialogManager;->closeListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0, p1, p2, v0}, Lcom/ebay/common/view/util/DialogManager$DynamicTextAlertDialogBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 p1, 0x0

    .line 469
    iput-object p1, p0, Lcom/ebay/common/view/util/DialogManager$DynamicTextAlertDialogBuilderCloseActivityOnCancel;->activity:Ljava/lang/ref/WeakReference;

    .line 470
    iput-object p1, p0, Lcom/ebay/common/view/util/DialogManager$DynamicTextAlertDialogBuilderCloseActivityOnCancel;->dialogManager:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public create(Lcom/ebay/common/view/util/DialogManager;Landroid/app/Activity;)Landroid/app/Dialog;
    .locals 1

    .line 488
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ebay/common/view/util/DialogManager$DynamicTextAlertDialogBuilderCloseActivityOnCancel;->activity:Ljava/lang/ref/WeakReference;

    .line 489
    invoke-super {p0, p1, p2}, Lcom/ebay/common/view/util/DialogManager$DynamicTextAlertDialogBuilder;->create(Lcom/ebay/common/view/util/DialogManager;Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/ebay/common/view/util/DialogManager$DynamicTextAlertDialogBuilderCloseActivityOnCancel;->dialogManager:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/ebay/common/view/util/DialogManager$DynamicTextAlertDialogBuilderCloseActivityOnCancel;->dialogManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/view/util/DialogManager;

    if-eqz v0, :cond_0

    .line 499
    invoke-virtual {v0, p1}, Lcom/ebay/common/view/util/DialogManager;->removeDynamicDialog(Landroid/content/DialogInterface;)V

    .line 502
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 504
    iget-object p1, p0, Lcom/ebay/common/view/util/DialogManager$DynamicTextAlertDialogBuilderCloseActivityOnCancel;->activity:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    .line 506
    iget-object p1, p0, Lcom/ebay/common/view/util/DialogManager$DynamicTextAlertDialogBuilderCloseActivityOnCancel;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    if-eqz p1, :cond_1

    .line 508
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method protected setOnCancelListener(Lcom/ebay/common/view/util/DialogManager;Landroid/content/DialogInterface$OnCancelListener;Landroidx/appcompat/app/AlertDialog$Builder;)V
    .locals 0

    .line 481
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/ebay/common/view/util/DialogManager$DynamicTextAlertDialogBuilderCloseActivityOnCancel;->dialogManager:Ljava/lang/ref/WeakReference;

    .line 482
    invoke-virtual {p3, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-void
.end method
