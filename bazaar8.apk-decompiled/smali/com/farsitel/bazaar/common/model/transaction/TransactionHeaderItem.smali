.class public final Lcom/farsitel/bazaar/common/model/transaction/TransactionHeaderItem;
.super Ljava/lang/Object;
.source "TransactionItem.kt"

# interfaces
.implements Lcom/farsitel/bazaar/common/model/RecyclerData;


# instance fields
.field public final viewType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/farsitel/bazaar/common/model/transaction/TransactionItemViewType;->TRANSACTION_HEADER_ITEM:Lcom/farsitel/bazaar/common/model/transaction/TransactionItemViewType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/farsitel/bazaar/common/model/transaction/TransactionHeaderItem;->viewType:I

    return-void
.end method


# virtual methods
.method public getViewType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/common/model/transaction/TransactionHeaderItem;->viewType:I

    return v0
.end method