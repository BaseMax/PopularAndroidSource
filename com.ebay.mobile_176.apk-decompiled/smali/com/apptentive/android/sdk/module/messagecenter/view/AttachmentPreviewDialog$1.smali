.class Lcom/apptentive/android/sdk/module/messagecenter/view/AttachmentPreviewDialog$1;
.super Ljava/lang/Object;
.source "AttachmentPreviewDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/module/messagecenter/view/AttachmentPreviewDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apptentive/android/sdk/module/messagecenter/view/AttachmentPreviewDialog;


# direct methods
.method constructor <init>(Lcom/apptentive/android/sdk/module/messagecenter/view/AttachmentPreviewDialog;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/AttachmentPreviewDialog$1;->this$0:Lcom/apptentive/android/sdk/module/messagecenter/view/AttachmentPreviewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 85
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/AttachmentPreviewDialog$1;->this$0:Lcom/apptentive/android/sdk/module/messagecenter/view/AttachmentPreviewDialog;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/module/messagecenter/view/AttachmentPreviewDialog;->dismiss()V

    return-void
.end method
