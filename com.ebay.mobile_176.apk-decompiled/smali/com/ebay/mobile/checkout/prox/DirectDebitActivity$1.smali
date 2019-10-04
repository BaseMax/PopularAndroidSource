.class Lcom/ebay/mobile/checkout/prox/DirectDebitActivity$1;
.super Ljava/lang/Object;
.source "DirectDebitActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;


# direct methods
.method constructor <init>(Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity$1;->this$0:Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity$1;->this$0:Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;

    invoke-static {v0}, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->access$000(Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0a123f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->getWebViewIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 209
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity$1;->this$0:Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;

    invoke-virtual {v0, p1}, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
