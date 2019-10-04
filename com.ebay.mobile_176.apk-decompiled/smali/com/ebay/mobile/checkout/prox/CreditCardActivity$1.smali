.class Lcom/ebay/mobile/checkout/prox/CreditCardActivity$1;
.super Ljava/lang/Object;
.source "CreditCardActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->onPostCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/mobile/checkout/prox/CreditCardActivity;


# direct methods
.method constructor <init>(Lcom/ebay/mobile/checkout/prox/CreditCardActivity;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity$1;->this$0:Lcom/ebay/mobile/checkout/prox/CreditCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 237
    iget-object p2, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity$1;->this$0:Lcom/ebay/mobile/checkout/prox/CreditCardActivity;

    invoke-virtual {p2, p1}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->clearBulletedFieldsToNullOnFocus(Landroid/view/View;)V

    :cond_0
    return-void
.end method
