.class public Lcom/ebay/app/DatePickerDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "DatePickerDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/app/DatePickerDialogFragment$Builder;
    }
.end annotation


# instance fields
.field private day:I

.field private month:I

.field private year:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 27
    invoke-virtual {p0}, Lcom/ebay/app/DatePickerDialogFragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Landroid/app/DatePickerDialog$OnDateSetListener;

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/ebay/app/DatePickerDialogFragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DatePickerDialog$OnDateSetListener;

    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/app/DatePickerDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Landroid/app/DatePickerDialog$OnDateSetListener;

    if-eqz v0, :cond_1

    .line 30
    invoke-virtual {p0}, Lcom/ebay/app/DatePickerDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/app/DatePickerDialog$OnDateSetListener;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 32
    :goto_0
    invoke-virtual {p0}, Lcom/ebay/app/DatePickerDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    const-string/jumbo v1, "year"

    .line 35
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/ebay/app/DatePickerDialogFragment;->year:I

    const-string v1, "month"

    .line 36
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/ebay/app/DatePickerDialogFragment;->month:I

    const-string v1, "day"

    .line 37
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ebay/app/DatePickerDialogFragment;->day:I

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    const-string/jumbo p1, "year"

    .line 41
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ebay/app/DatePickerDialogFragment;->year:I

    const-string p1, "month"

    .line 42
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ebay/app/DatePickerDialogFragment;->month:I

    const-string p1, "day"

    .line 43
    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ebay/app/DatePickerDialogFragment;->day:I

    .line 46
    :cond_3
    :goto_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne p1, v1, :cond_4

    .line 53
    new-instance p1, Landroid/app/DatePickerDialog;

    invoke-virtual {p0}, Lcom/ebay/app/DatePickerDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x1030225

    iget v5, p0, Lcom/ebay/app/DatePickerDialogFragment;->year:I

    iget v6, p0, Lcom/ebay/app/DatePickerDialogFragment;->month:I

    iget v7, p0, Lcom/ebay/app/DatePickerDialogFragment;->day:I

    move-object v1, p1

    move-object v4, v0

    invoke-direct/range {v1 .. v7}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V

    return-object p1

    .line 57
    :cond_4
    new-instance p1, Landroid/app/DatePickerDialog;

    invoke-virtual {p0}, Lcom/ebay/app/DatePickerDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget v4, p0, Lcom/ebay/app/DatePickerDialogFragment;->year:I

    iget v5, p0, Lcom/ebay/app/DatePickerDialogFragment;->month:I

    iget v6, p0, Lcom/ebay/app/DatePickerDialogFragment;->day:I

    move-object v1, p1

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 73
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 74
    invoke-virtual {p0}, Lcom/ebay/app/DatePickerDialogFragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 75
    instance-of v1, v0, Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v1, :cond_0

    .line 76
    check-cast v0, Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 63
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "year"

    .line 65
    iget v1, p0, Lcom/ebay/app/DatePickerDialogFragment;->year:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "month"

    .line 66
    iget v1, p0, Lcom/ebay/app/DatePickerDialogFragment;->month:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "day"

    .line 67
    iget v1, p0, Lcom/ebay/app/DatePickerDialogFragment;->day:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
