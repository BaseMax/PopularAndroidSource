.class Lcom/apptentive/android/sdk/view/ApptentiveAlertDialog$2;
.super Ljava/lang/Object;
.source "ApptentiveAlertDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/view/ApptentiveAlertDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apptentive/android/sdk/view/ApptentiveAlertDialog;


# direct methods
.method constructor <init>(Lcom/apptentive/android/sdk/view/ApptentiveAlertDialog;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/apptentive/android/sdk/view/ApptentiveAlertDialog$2;->this$0:Lcom/apptentive/android/sdk/view/ApptentiveAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 93
    iget-object p1, p0, Lcom/apptentive/android/sdk/view/ApptentiveAlertDialog$2;->this$0:Lcom/apptentive/android/sdk/view/ApptentiveAlertDialog;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/view/ApptentiveAlertDialog;->dismiss()V

    .line 94
    iget-object p1, p0, Lcom/apptentive/android/sdk/view/ApptentiveAlertDialog$2;->this$0:Lcom/apptentive/android/sdk/view/ApptentiveAlertDialog;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/view/ApptentiveAlertDialog;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    iget-object v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveAlertDialog$2;->this$0:Lcom/apptentive/android/sdk/view/ApptentiveAlertDialog;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/view/ApptentiveAlertDialog;->getTargetRequestCode()I

    move-result v0

    iget-object v1, p0, Lcom/apptentive/android/sdk/view/ApptentiveAlertDialog$2;->this$0:Lcom/apptentive/android/sdk/view/ApptentiveAlertDialog;

    invoke-virtual {v1}, Lcom/apptentive/android/sdk/view/ApptentiveAlertDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method
