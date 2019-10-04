.class Lcom/ebay/mobile/checkout/xoneor/AddressChoiceActivity$1;
.super Ljava/lang/Object;
.source "AddressChoiceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/mobile/checkout/xoneor/AddressChoiceActivity;->renderScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/mobile/checkout/xoneor/AddressChoiceActivity;


# direct methods
.method constructor <init>(Lcom/ebay/mobile/checkout/xoneor/AddressChoiceActivity;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressChoiceActivity$1;->this$0:Lcom/ebay/mobile/checkout/xoneor/AddressChoiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 121
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressChoiceActivity$1;->this$0:Lcom/ebay/mobile/checkout/xoneor/AddressChoiceActivity;

    invoke-virtual {p1}, Lcom/ebay/mobile/checkout/xoneor/AddressChoiceActivity;->selectAddress()V

    return-void
.end method
