.class public final Lc/c/a/e/a/a/a;
.super Ljava/lang/Object;
.source "LegacyDataImporterRepository.kt"


# instance fields
.field public final a:Lc/c/a/e/a/a/d;


# direct methods
.method public constructor <init>(Lc/c/a/e/a/a/d;)V
    .locals 1

    const-string v0, "legacyLocalDataSource"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/a/a/a;->a:Lc/c/a/e/a/a/d;

    return-void
.end method


# virtual methods
.method public final a(Lh/c/b;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/c/b<",
            "-",
            "Lh/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/farsitel/bazaar/data/db/legacy/LegacyDataImporterRepository$importLegacyDataAndRemove$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/farsitel/bazaar/data/db/legacy/LegacyDataImporterRepository$importLegacyDataAndRemove$1;

    iget v1, v0, Lcom/farsitel/bazaar/data/db/legacy/LegacyDataImporterRepository$importLegacyDataAndRemove$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/farsitel/bazaar/data/db/legacy/LegacyDataImporterRepository$importLegacyDataAndRemove$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/farsitel/bazaar/data/db/legacy/LegacyDataImporterRepository$importLegacyDataAndRemove$1;

    invoke-direct {v0, p0, p1}, Lcom/farsitel/bazaar/data/db/legacy/LegacyDataImporterRepository$importLegacyDataAndRemove$1;-><init>(Lc/c/a/e/a/a/a;Lh/c/b;)V

    :goto_0
    iget-object p1, v0, Lcom/farsitel/bazaar/data/db/legacy/LegacyDataImporterRepository$importLegacyDataAndRemove$1;->result:Ljava/lang/Object;

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/farsitel/bazaar/data/db/legacy/LegacyDataImporterRepository$importLegacyDataAndRemove$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/farsitel/bazaar/data/db/legacy/LegacyDataImporterRepository$importLegacyDataAndRemove$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lc/c/a/e/a/a/a;

    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Lcom/farsitel/bazaar/data/db/legacy/LegacyDataImporterRepository$importLegacyDataAndRemove$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lc/c/a/e/a/a/a;

    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lc/c/a/e/a/a/a;->a:Lc/c/a/e/a/a/d;

    iput-object p0, v0, Lcom/farsitel/bazaar/data/db/legacy/LegacyDataImporterRepository$importLegacyDataAndRemove$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/farsitel/bazaar/data/db/legacy/LegacyDataImporterRepository$importLegacyDataAndRemove$1;->label:I

    invoke-virtual {p1, v0}, Lc/c/a/e/a/a/d;->c(Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    .line 3
    :goto_1
    iget-object p1, v2, Lc/c/a/e/a/a/a;->a:Lc/c/a/e/a/a/d;

    iput-object v2, v0, Lcom/farsitel/bazaar/data/db/legacy/LegacyDataImporterRepository$importLegacyDataAndRemove$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/farsitel/bazaar/data/db/legacy/LegacyDataImporterRepository$importLegacyDataAndRemove$1;->label:I

    invoke-virtual {p1, v0}, Lc/c/a/e/a/a/d;->a(Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    return-object p1
.end method
