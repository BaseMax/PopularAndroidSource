.class public Lcom/ebay/app/ProgressDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "ProgressDialogFragment.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public message:Ljava/lang/CharSequence;

.field public title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .line 26
    invoke-virtual {p0}, Lcom/ebay/app/ProgressDialogFragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    const/4 v0, 0x3

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/ebay/app/ProgressDialogFragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/ebay/app/DialogFragmentCallback;

    if-eqz p1, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/ebay/app/ProgressDialogFragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/ebay/app/DialogFragmentCallback;

    invoke-virtual {p0}, Lcom/ebay/app/ProgressDialogFragment;->getTargetRequestCode()I

    move-result v1

    invoke-interface {p1, p0, v1, v0}, Lcom/ebay/app/DialogFragmentCallback;->onDialogFragmentResult(Landroidx/fragment/app/DialogFragment;II)V

    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/app/ProgressDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/ebay/app/DialogFragmentCallback;

    if-eqz p1, :cond_1

    .line 30
    invoke-virtual {p0}, Lcom/ebay/app/ProgressDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/ebay/app/DialogFragmentCallback;

    invoke-virtual {p0}, Lcom/ebay/app/ProgressDialogFragment;->getTargetRequestCode()I

    move-result v1

    invoke-interface {p1, p0, v1, v0}, Lcom/ebay/app/DialogFragmentCallback;->onDialogFragmentResult(Landroidx/fragment/app/DialogFragment;II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 38
    new-instance p1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/ebay/app/ProgressDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 39
    iget-object v0, p0, Lcom/ebay/app/ProgressDialogFragment;->title:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v0, p0, Lcom/ebay/app/ProgressDialogFragment;->message:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 41
    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 42
    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    return-object p1
.end method
