.class Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity$1;
.super Ljava/lang/Object;
.source "IncentivesActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;


# direct methods
.method constructor <init>(Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity$1;->this$0:Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity$1;->this$0:Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->access$000(Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;Ljava/lang/String;)V

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
