.class public final Lcom/farsitel/bazaar/common/model/transaction/TransactionItem;
.super Ljava/lang/Object;
.source "TransactionItem.kt"

# interfaces
.implements Lcom/farsitel/bazaar/common/model/RecyclerData;


# instance fields
.field public final amountString:Ljava/lang/String;

.field public final dateTimeStamp:J

.field public final dateTimeString:Ljava/lang/String;

.field public final description:Ljava/lang/String;

.field public final isIncome:Z

.field public final isRefunded:Z

.field public final token:Ljava/lang/String;

.field public final viewType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1

    const-string v0, "dateTimeString"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amountString"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p5, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    invoke-static {p6, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/common/model/transaction/TransactionItem;->dateTimeString:Ljava/lang/String;

    iput-wide p2, p0, Lcom/farsitel/bazaar/common/model/transaction/TransactionItem;->dateTimeStamp:J

    iput-object p4, p0, Lcom/farsitel/bazaar/common/model/transaction/TransactionItem;->amountString:Ljava/lang/String;

    iput-object p5, p0, Lcom/farsitel/bazaar/common/model/transaction/TransactionItem;->description:Ljava/lang/String;

    iput-object p6, p0, Lcom/farsitel/bazaar/common/model/transaction/TransactionItem;->token:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/farsitel/bazaar/common/model/transaction/TransactionItem;->isIncome:Z

    iput-boolean p8, p0, Lcom/farsitel/bazaar/common/model/transaction/TransactionItem;->isRefunded:Z

    .line 2
    sget-object p1, Lcom/farsitel/bazaar/common/model/transaction/TransactionItemViewType;->TRANSACTION_ITEM:Lcom/farsitel/bazaar/common/model/transaction/TransactionItemViewType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/farsitel/bazaar/common/model/transaction/TransactionItem;->viewType:I

    return-void
.end method


# virtual methods
.method public final getAmountString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/transaction/TransactionItem;->amountString:Ljava/lang/String;

    return-object v0
.end method

.method public final getDateTimeStamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/farsitel/bazaar/common/model/transaction/TransactionItem;->dateTimeStamp:J

    return-wide v0
.end method

.method public final getDateTimeString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/transaction/TransactionItem;->dateTimeString:Ljava/lang/String;

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/transaction/TransactionItem;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/transaction/TransactionItem;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/common/model/transaction/TransactionItem;->viewType:I

    return v0
.end method

.method public final isIncome()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/transaction/TransactionItem;->isIncome:Z

    return v0
.end method

.method public final isRefunded()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/transaction/TransactionItem;->isRefunded:Z

    return v0
.end method
