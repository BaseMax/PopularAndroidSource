.class public final Lcom/ebay/common/view/util/DialogManager;
.super Lcom/ebay/nautilus/shell/app/ActivityShim;
.source "DialogManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/view/util/DialogManager$AlertDialogBuilder;,
        Lcom/ebay/common/view/util/DialogManager$DynamicTextAlertDialogBuilderCloseActivityOnCancel;,
        Lcom/ebay/common/view/util/DialogManager$DynamicTextAlertDialogBuilder;,
        Lcom/ebay/common/view/util/DialogManager$DynamicDialogBuilder;
    }
.end annotation


# static fields
.field public static final closeListener:Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private dialogs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/DialogInterface;",
            "Lcom/ebay/common/view/util/DialogManager$DynamicDialogBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lcom/ebay/common/view/util/DialogManager$1;

    invoke-direct {v0}, Lcom/ebay/common/view/util/DialogManager$1;-><init>()V

    sput-object v0, Lcom/ebay/common/view/util/DialogManager;->closeListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/ebay/nautilus/shell/app/ActivityShim;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/ebay/common/view/util/DialogManager;->dialogs:Ljava/util/HashMap;

    return-void
.end method

.method private static final createAlert(Landroid/content/Context;I)Landroid/app/Dialog;
    .locals 1

    .line 164
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 165
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget-object p1, Lcom/ebay/common/view/util/DialogManager;->closeListener:Landroid/content/DialogInterface$OnClickListener;

    const v0, 0x104000a

    .line 166
    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 167
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method private static final createAlert(Landroid/content/Context;II)Landroid/app/Dialog;
    .locals 1

    .line 155
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 156
    invoke-virtual {v0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 157
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget-object p1, Lcom/ebay/common/view/util/DialogManager;->closeListener:Landroid/content/DialogInterface$OnClickListener;

    const p2, 0x104000a

    .line 158
    invoke-virtual {p0, p2, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 159
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method private static final createAlert(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 1

    .line 172
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 173
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget-object p1, Lcom/ebay/common/view/util/DialogManager;->closeListener:Landroid/content/DialogInterface$OnClickListener;

    const v0, 0x104000a

    .line 174
    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 175
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public static final createAlertDialog(Landroid/content/Context;I)Landroid/app/Dialog;
    .locals 2

    const/4 v0, -0x1

    packed-switch p1, :pswitch_data_0

    const/4 v1, -0x1

    goto :goto_0

    :pswitch_0
    const v1, 0x7f12020e

    :goto_0
    if-ne v1, v0, :cond_0

    .line 249
    invoke-static {p0, p1}, Lcom/ebay/common/view/util/DialogManager;->createAlert(Landroid/content/Context;I)Landroid/app/Dialog;

    move-result-object p0

    return-object p0

    .line 250
    :cond_0
    invoke-static {p0, v1, p1}, Lcom/ebay/common/view/util/DialogManager;->createAlert(Landroid/content/Context;II)Landroid/app/Dialog;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x7f12020c
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static final createAlertDialog(Landroid/content/Context;II)Landroid/app/Dialog;
    .locals 0

    .line 263
    invoke-static {p0, p1, p2}, Lcom/ebay/common/view/util/DialogManager;->createAlert(Landroid/content/Context;II)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method public static final createAlertDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 0

    .line 268
    invoke-static {p0, p1}, Lcom/ebay/common/view/util/DialogManager;->createAlert(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method public static createAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 1

    .line 273
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 274
    invoke-virtual {v0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 275
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x104000a

    .line 276
    invoke-virtual {p0, p1, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 277
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method private static final createProgress(Landroid/content/Context;IILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 0

    .line 215
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2, p3}, Lcom/ebay/common/view/util/DialogManager;->createProgress(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method private static final createProgress(Landroid/content/Context;IIZ)Landroid/app/Dialog;
    .locals 0

    .line 198
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2, p3}, Lcom/ebay/common/view/util/DialogManager;->createProgress(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method private static final createProgress(Landroid/content/Context;ILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 1

    const-string v0, ""

    .line 221
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1, p2}, Lcom/ebay/common/view/util/DialogManager;->createProgress(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method private static final createProgress(Landroid/content/Context;IZ)Landroid/app/Dialog;
    .locals 1

    const-string v0, ""

    .line 203
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1, p2}, Lcom/ebay/common/view/util/DialogManager;->createProgress(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method private static final createProgress(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 1

    const/4 v0, 0x1

    .line 209
    invoke-static {p0, p1, p2, v0, p3}, Lcom/ebay/common/view/util/DialogManager;->createProgress(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method private static final createProgress(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/Dialog;
    .locals 1

    const/4 v0, 0x0

    .line 193
    invoke-static {p0, p1, p2, p3, v0}, Lcom/ebay/common/view/util/DialogManager;->createProgress(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method private static final createProgress(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 1

    .line 181
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 182
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 183
    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 p0, 0x1

    .line 184
    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 185
    invoke-virtual {v0, p3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 186
    invoke-virtual {v0, p4}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-object v0
.end method

.method public static final createProgressDialog(Landroid/content/Context;I)Landroid/app/Dialog;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 336
    invoke-static {p0, p1, v0, v1}, Lcom/ebay/common/view/util/DialogManager;->createProgressDialog(Landroid/content/Context;IZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method public static final createProgressDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 1

    const/4 v0, 0x1

    .line 350
    invoke-static {p0, p1, v0, p2}, Lcom/ebay/common/view/util/DialogManager;->createProgressDialog(Landroid/content/Context;IZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method public static final createProgressDialog(Landroid/content/Context;IZ)Landroid/app/Dialog;
    .locals 1

    const/4 v0, 0x0

    .line 324
    invoke-static {p0, p1, p2, v0}, Lcom/ebay/common/view/util/DialogManager;->createProgressDialog(Landroid/content/Context;IZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method private static final createProgressDialog(Landroid/content/Context;IZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 306
    invoke-static {p0, p1, p3}, Lcom/ebay/common/view/util/DialogManager;->createProgress(Landroid/content/Context;ILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0

    .line 310
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/ebay/common/view/util/DialogManager;->createProgress(Landroid/content/Context;IZ)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/ebay/common/view/util/DialogManager;->removeDynamicDialog(Landroid/content/DialogInterface;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 144
    invoke-super {p0}, Lcom/ebay/nautilus/shell/app/ActivityShim;->onDestroy()V

    .line 145
    iget-object v0, p0, Lcom/ebay/common/view/util/DialogManager;->dialogs:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 148
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 149
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/DialogInterface;

    invoke-interface {v1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 132
    invoke-super {p0, p1}, Lcom/ebay/nautilus/shell/app/ActivityShim;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "dynamic_dialog_interfaces"

    .line 133
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 136
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/view/util/DialogManager$DynamicDialogBuilder;

    .line 137
    invoke-virtual {p0, v0}, Lcom/ebay/common/view/util/DialogManager;->showDynamicDialog(Lcom/ebay/common/view/util/DialogManager$DynamicDialogBuilder;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 117
    invoke-super {p0, p1}, Lcom/ebay/nautilus/shell/app/ActivityShim;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 118
    iget-object v0, p0, Lcom/ebay/common/view/util/DialogManager;->dialogs:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 119
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 121
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 122
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 123
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v0, "dynamic_dialog_interfaces"

    .line 125
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method

.method public final removeDynamicDialog(Landroid/content/DialogInterface;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/ebay/common/view/util/DialogManager;->dialogs:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final showDynamicAlertDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 1

    .line 98
    new-instance v0, Lcom/ebay/common/view/util/DialogManager$DynamicTextAlertDialogBuilder;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/ebay/common/view/util/DialogManager$DynamicTextAlertDialogBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    .line 99
    invoke-virtual {p0, v0}, Lcom/ebay/common/view/util/DialogManager;->showDynamicDialog(Lcom/ebay/common/view/util/DialogManager$DynamicDialogBuilder;)V

    return-void
.end method

.method public final showDynamicAlertDialog(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    if-eqz p3, :cond_0

    .line 82
    new-instance p3, Lcom/ebay/common/view/util/DialogManager$DynamicTextAlertDialogBuilderCloseActivityOnCancel;

    invoke-direct {p3, p1, p2}, Lcom/ebay/common/view/util/DialogManager$DynamicTextAlertDialogBuilderCloseActivityOnCancel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p3, Lcom/ebay/common/view/util/DialogManager$DynamicTextAlertDialogBuilder;

    sget-object v0, Lcom/ebay/common/view/util/DialogManager;->closeListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p3, p1, p2, v0}, Lcom/ebay/common/view/util/DialogManager$DynamicTextAlertDialogBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 85
    :goto_0
    invoke-virtual {p0, p3}, Lcom/ebay/common/view/util/DialogManager;->showDynamicDialog(Lcom/ebay/common/view/util/DialogManager$DynamicDialogBuilder;)V

    return-void
.end method

.method public final showDynamicDialog(Lcom/ebay/common/view/util/DialogManager$DynamicDialogBuilder;)V
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/ebay/common/view/util/DialogManager;->dialogs:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/view/util/DialogManager;->dialogs:Ljava/util/HashMap;

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/common/view/util/DialogManager;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 67
    :cond_1
    invoke-virtual {p0}, Lcom/ebay/common/view/util/DialogManager;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-interface {p1, p0, v1}, Lcom/ebay/common/view/util/DialogManager$DynamicDialogBuilder;->create(Lcom/ebay/common/view/util/DialogManager;Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    .line 68
    invoke-virtual {p0}, Lcom/ebay/common/view/util/DialogManager;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 69
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 70
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
