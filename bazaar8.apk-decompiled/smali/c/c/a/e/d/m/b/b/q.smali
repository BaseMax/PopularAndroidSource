.class public final Lc/c/a/e/d/m/b/b/q;
.super Ljava/lang/Object;
.source "GetTransactionsResponseDto.kt"


# instance fields
.field public final amountString:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "amountString"
    .end annotation
.end field

.field public final dateString:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "dateString"
    .end annotation
.end field

.field public final dateTimeStamp:J
    .annotation runtime Lc/e/d/a/c;
        value = "dateTimeStamp"
    .end annotation
.end field

.field public final description:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "description"
    .end annotation
.end field

.field public final isIncome:Z
    .annotation runtime Lc/e/d/a/c;
        value = "isIncome"
    .end annotation
.end field

.field public final isRefunded:Z
    .annotation runtime Lc/e/d/a/c;
        value = "isRefunded"
    .end annotation
.end field

.field public final timeString:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "timeString"
    .end annotation
.end field

.field public final token:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "token"
    .end annotation
.end field


# virtual methods
.method public final a()Lcom/farsitel/bazaar/common/model/transaction/TransactionItem;
    .locals 10

    .line 1
    new-instance v9, Lcom/farsitel/bazaar/common/model/transaction/TransactionItem;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lc/c/a/e/d/m/b/b/q;->dateString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/m/b/b/q;->timeString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-wide v2, p0, Lc/c/a/e/d/m/b/b/q;->dateTimeStamp:J

    .line 4
    iget-object v4, p0, Lc/c/a/e/d/m/b/b/q;->amountString:Ljava/lang/String;

    .line 5
    iget-object v5, p0, Lc/c/a/e/d/m/b/b/q;->description:Ljava/lang/String;

    .line 6
    iget-object v6, p0, Lc/c/a/e/d/m/b/b/q;->token:Ljava/lang/String;

    .line 7
    iget-boolean v7, p0, Lc/c/a/e/d/m/b/b/q;->isIncome:Z

    .line 8
    iget-boolean v8, p0, Lc/c/a/e/d/m/b/b/q;->isRefunded:Z

    move-object v0, v9

    .line 9
    invoke-direct/range {v0 .. v8}, Lcom/farsitel/bazaar/common/model/transaction/TransactionItem;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-object v9
.end method
