.class public interface abstract Lcom/ebay/mobile/checkout/xoneor/XoneorInterface;
.super Ljava/lang/Object;
.source "XoneorInterface.java"

# interfaces
.implements Lcom/ebay/mobile/checkout/xoneor/CheckoutProgressStatus;


# virtual methods
.method public abstract checkSessionChanged(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;Lcom/ebay/nautilus/domain/content/Content;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;",
            ">;Z)Z"
        }
    .end annotation
.end method

.method public abstract renderDisabledCell(Landroid/view/ViewGroup;)V
.end method

.method public abstract renderErrors(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract validateXoSession(Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;)Z
.end method
