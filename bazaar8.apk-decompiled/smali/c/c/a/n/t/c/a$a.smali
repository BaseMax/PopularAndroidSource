.class public final Lc/c/a/n/t/c/a$a;
.super Lc/c/a/n/c/d/n;
.source "TransactionsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/n/t/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/n/c/d/n<",
        "Lcom/farsitel/bazaar/common/model/RecyclerData;",
        ">;"
    }
.end annotation


# instance fields
.field public final v:Landroidx/databinding/ViewDataBinding;

.field public final w:Lcom/farsitel/bazaar/common/model/transaction/TransactionItemCommunicator;


# direct methods
.method public constructor <init>(Landroidx/databinding/ViewDataBinding;Lcom/farsitel/bazaar/common/model/transaction/TransactionItemCommunicator;)V
    .locals 1

    const-string v0, "viewDataBinding"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionItemCommunicator"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lc/c/a/n/c/d/n;-><init>(Landroidx/databinding/ViewDataBinding;)V

    iput-object p1, p0, Lc/c/a/n/t/c/a$a;->v:Landroidx/databinding/ViewDataBinding;

    iput-object p2, p0, Lc/c/a/n/t/c/a$a;->w:Lcom/farsitel/bazaar/common/model/transaction/TransactionItemCommunicator;

    return-void
.end method


# virtual methods
.method public b(Lcom/farsitel/bazaar/common/model/RecyclerData;)V
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lc/c/a/n/t/c/a$a;->v:Landroidx/databinding/ViewDataBinding;

    iget-object v0, p0, Lc/c/a/n/t/c/a$a;->w:Lcom/farsitel/bazaar/common/model/transaction/TransactionItemCommunicator;

    const/16 v1, 0x9

    invoke-virtual {p1, v1, v0}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;)Z

    return-void
.end method
