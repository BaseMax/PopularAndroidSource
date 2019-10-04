.class public final Lc/c/a/n/t/c/a;
.super Lc/c/a/n/c/d/a;
.source "TransactionsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/n/t/c/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/n/c/d/a<",
        "Lcom/farsitel/bazaar/common/model/RecyclerData;",
        ">;"
    }
.end annotation


# instance fields
.field public final f:Lcom/farsitel/bazaar/common/model/transaction/TransactionItemCommunicator;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/common/model/transaction/TransactionItemCommunicator;)V
    .locals 1

    const-string v0, "transactionItemCommunicator"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lc/c/a/n/c/d/a;-><init>()V

    iput-object p1, p0, Lc/c/a/n/t/c/a;->f:Lcom/farsitel/bazaar/common/model/transaction/TransactionItemCommunicator;

    return-void
.end method


# virtual methods
.method public c(Landroid/view/ViewGroup;I)Lc/c/a/n/c/d/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lc/c/a/n/c/d/n<",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;"
        }
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/farsitel/bazaar/common/model/transaction/TransactionItemViewType;->TRANSACTION_ITEM:Lcom/farsitel/bazaar/common/model/transaction/TransactionItemViewType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 2
    new-instance p2, Lc/c/a/n/t/c/a$a;

    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0, p1, v1}, Lc/c/a/f/Ab;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/Ab;

    move-result-object p1

    const-string v0, "ItemTransactionBinding.i\u2026.context), parent, false)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lc/c/a/n/t/c/a;->f:Lcom/farsitel/bazaar/common/model/transaction/TransactionItemCommunicator;

    .line 5
    invoke-direct {p2, p1, v0}, Lc/c/a/n/t/c/a$a;-><init>(Landroidx/databinding/ViewDataBinding;Lcom/farsitel/bazaar/common/model/transaction/TransactionItemCommunicator;)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lcom/farsitel/bazaar/common/model/transaction/TransactionItemViewType;->TRANSACTION_HEADER_ITEM:Lcom/farsitel/bazaar/common/model/transaction/TransactionItemViewType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 7
    new-instance p2, Lc/c/a/n/c/d/n;

    .line 8
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0, p1, v1}, Lc/c/a/f/Cb;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/Cb;

    move-result-object p1

    const-string v0, "ItemTransactionHeaderBin\u2026.context), parent, false)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p2, p1}, Lc/c/a/n/c/d/n;-><init>(Landroidx/databinding/ViewDataBinding;)V

    :goto_0
    return-object p2

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string p2, "Invalid viewType in TransactionsAdapter"

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method
