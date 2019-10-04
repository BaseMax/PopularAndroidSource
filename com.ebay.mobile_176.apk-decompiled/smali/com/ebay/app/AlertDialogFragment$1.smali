.class Lcom/ebay/app/AlertDialogFragment$1;
.super Landroid/webkit/WebViewClient;
.source "AlertDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/app/AlertDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/app/AlertDialogFragment;


# direct methods
.method constructor <init>(Lcom/ebay/app/AlertDialogFragment;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/ebay/app/AlertDialogFragment$1;->this$0:Lcom/ebay/app/AlertDialogFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .line 172
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 174
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 175
    iget-object p2, p0, Lcom/ebay/app/AlertDialogFragment$1;->this$0:Lcom/ebay/app/AlertDialogFragment;

    invoke-virtual {p2, p1}, Lcom/ebay/app/AlertDialogFragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
