.class public Lcom/apptentive/android/sdk/view/ApptentiveAlertDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "ApptentiveAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apptentive/android/sdk/view/ApptentiveAlertDialog$OnDismissListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;I)Lcom/apptentive/android/sdk/view/ApptentiveAlertDialog;
    .locals 1

    .line 38
    new-instance v0, Lcom/apptentive/android/sdk/view/ApptentiveAlertDialog;

    invoke-direct {v0}, Lcom/apptentive/android/sdk/view/ApptentiveAlertDialog;-><init>()V

    .line 39
    invoke-virtual {v0, p1}, Lcom/apptentive/android/sdk/view/ApptentiveAlertDialog;->setArguments(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {v0, p0, p2}, Lcom/apptentive/android/sdk/view/ApptentiveAlertDialog;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    return-object v0
.end method

.method public static show(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;I)V
    .locals 3

    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "apptentiveAlertDialog"

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 28
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :cond_0
    const/4 v1, 0x0

    .line 30
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 33
    invoke-static {p0, p1, p2}, Lcom/apptentive/android/sdk/view/ApptentiveAlertDialog;->newInstance(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;I)Lcom/apptentive/android/sdk/view/ApptentiveAlertDialog;

    move-result-object p0

    const-string p1, "apptentiveAlertDialog"

    .line 34
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentTransaction;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .line 53
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveAlertDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 57
    :try_start_0
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveAlertDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/apptentive/android/sdk/R$layout;->apptentive_dialog_alert:I

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 58
    :try_start_1
    sget v1, Lcom/apptentive/android/sdk/R$id;->text_title:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string/jumbo v3, "title"

    .line 59
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 60
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 61
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 62
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    :cond_0
    sget v1, Lcom/apptentive/android/sdk/R$id;->text_message:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v3, "message"

    .line 66
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    sget v1, Lcom/apptentive/android/sdk/R$id;->button_positive:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const-string v3, "positive"

    .line 69
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 70
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/16 v5, 0x8

    if-eqz v4, :cond_1

    .line 71
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 74
    new-instance v3, Lcom/apptentive/android/sdk/view/ApptentiveAlertDialog$1;

    invoke-direct {v3, p0}, Lcom/apptentive/android/sdk/view/ApptentiveAlertDialog$1;-><init>(Lcom/apptentive/android/sdk/view/ApptentiveAlertDialog;)V

    invoke-static {v3}, Lcom/apptentive/android/sdk/util/Util;->guarded(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    :goto_0
    sget v1, Lcom/apptentive/android/sdk/R$id;->button_negative:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const-string v3, "negative"

    .line 85
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 86
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 87
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 89
    :cond_2
    invoke-virtual {v1, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 90
    new-instance p1, Lcom/apptentive/android/sdk/view/ApptentiveAlertDialog$2;

    invoke-direct {p1, p0}, Lcom/apptentive/android/sdk/view/ApptentiveAlertDialog$2;-><init>(Lcom/apptentive/android/sdk/view/ApptentiveAlertDialog;)V

    invoke-static {p1}, Lcom/apptentive/android/sdk/util/Util;->guarded(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v2, v1

    :goto_1
    const-string v1, "Error:"

    .line 99
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    invoke-static {p1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    .line 102
    :goto_2
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveAlertDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz v2, :cond_3

    .line 104
    invoke-virtual {p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 106
    :cond_3
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 111
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 112
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveAlertDialog;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 113
    instance-of v0, p1, Lcom/apptentive/android/sdk/view/ApptentiveAlertDialog$OnDismissListener;

    if-eqz v0, :cond_0

    .line 114
    check-cast p1, Lcom/apptentive/android/sdk/view/ApptentiveAlertDialog$OnDismissListener;

    invoke-interface {p1}, Lcom/apptentive/android/sdk/view/ApptentiveAlertDialog$OnDismissListener;->onDismissAlert()V

    :cond_0
    return-void
.end method
