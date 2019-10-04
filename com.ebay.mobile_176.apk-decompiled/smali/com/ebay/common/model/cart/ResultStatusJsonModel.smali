.class public final Lcom/ebay/common/model/cart/ResultStatusJsonModel;
.super Lcom/ebay/common/model/cart/JsonModel;
.source "ResultStatusJsonModel.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/kernel/content/ResultStatus;)V
    .locals 3

    .line 23
    invoke-direct {p0}, Lcom/ebay/common/model/cart/JsonModel;-><init>()V

    .line 24
    invoke-virtual {p2}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->hasError()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->hasWarning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/model/cart/ResultStatusJsonModel;->errors:Ljava/util/List;

    .line 27
    invoke-virtual {p2}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->hasMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    invoke-virtual {p2}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->getMessages()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;

    .line 31
    iget-object v1, p0, Lcom/ebay/common/model/cart/ResultStatusJsonModel;->errors:Ljava/util/List;

    new-instance v2, Lcom/ebay/common/model/cart/JsonModel$OperationError;

    invoke-direct {v2, p1, v0}, Lcom/ebay/common/model/cart/JsonModel$OperationError;-><init>(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method
