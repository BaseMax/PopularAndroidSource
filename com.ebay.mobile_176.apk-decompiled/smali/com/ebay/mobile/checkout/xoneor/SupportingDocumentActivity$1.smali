.class Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity$1;
.super Ljava/lang/Object;
.source "SupportingDocumentActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;


# direct methods
.method constructor <init>(Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity$1;->this$0:Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity$1;->this$0:Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->access$000(Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;Ljava/lang/String;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
