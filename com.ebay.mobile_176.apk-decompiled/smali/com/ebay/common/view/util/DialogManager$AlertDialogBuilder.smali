.class public final Lcom/ebay/common/view/util/DialogManager$AlertDialogBuilder;
.super Landroidx/appcompat/app/AlertDialog$Builder;
.source "DialogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/view/util/DialogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AlertDialogBuilder"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 546
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 547
    iput-object p1, p0, Lcom/ebay/common/view/util/DialogManager$AlertDialogBuilder;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 4

    .line 554
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/ebay/common/view/util/DialogManager$AlertDialogBuilder;->context:Landroid/content/Context;

    const v2, 0x7f0d042e

    const v3, 0x1020014

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 556
    invoke-super {p0, v0, p2, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    return-object p1
.end method
