.class public final Lc/c/a/n/t/c/b;
.super Ljava/lang/Object;
.source "TransactionsFragment.kt"

# interfaces
.implements Lcom/farsitel/bazaar/common/model/transaction/TransactionItemCommunicator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/profile/transactions/TransactionsFragment;->tb()Lc/c/a/n/t/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/profile/transactions/TransactionsFragment;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/profile/transactions/TransactionsFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/c/a/n/t/c/b;->a:Lcom/farsitel/bazaar/ui/profile/transactions/TransactionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTokenItemLongClicked(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "text"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lc/c/a/n/t/c/b;->a:Lcom/farsitel/bazaar/ui/profile/transactions/TransactionsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext()"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lc/c/a/d/b/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lc/c/a/n/t/c/b;->a:Lcom/farsitel/bazaar/ui/profile/transactions/TransactionsFragment;

    invoke-static {p1}, Lcom/farsitel/bazaar/ui/profile/transactions/TransactionsFragment;->a(Lcom/farsitel/bazaar/ui/profile/transactions/TransactionsFragment;)Lc/c/a/d/d/c;

    move-result-object p1

    iget-object v0, p0, Lc/c/a/n/t/c/b;->a:Lcom/farsitel/bazaar/ui/profile/transactions/TransactionsFragment;

    const v1, 0x7f100075

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/c/a/d/d/c;->a(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
