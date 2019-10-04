.class Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity$1;
.super Ljava/lang/Object;
.source "MessageToSellerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity;->setRemainingCharacters(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity;

.field final synthetic val$remainingCharactersText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity;Ljava/lang/String;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity$1;->this$0:Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity;

    iput-object p2, p0, Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity$1;->val$remainingCharactersText:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity$1;->this$0:Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity;

    invoke-static {v0}, Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity;->access$000(Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity$1;->val$remainingCharactersText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method
