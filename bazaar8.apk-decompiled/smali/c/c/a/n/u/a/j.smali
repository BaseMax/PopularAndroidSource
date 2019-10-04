.class public final Lc/c/a/n/u/a/j;
.super Lc/c/a/n/c/d/g;
.source "DeveloperReplyViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/n/c/d/g<",
        "Lcom/farsitel/bazaar/common/model/RecyclerData;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final j:Lb/r/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/r/t<",
            "Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Landroid/content/Context;

.field public final l:Lc/c/a/e/d/r/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc/c/a/e/d/r/e;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reviewRepository"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lc/c/a/n/c/d/g;-><init>()V

    iput-object p1, p0, Lc/c/a/n/u/a/j;->k:Landroid/content/Context;

    iput-object p2, p0, Lc/c/a/n/u/a/j;->l:Lc/c/a/e/d/r/e;

    .line 2
    new-instance p1, Lb/r/t;

    invoke-direct {p1}, Lb/r/t;-><init>()V

    iput-object p1, p0, Lc/c/a/n/u/a/j;->j:Lb/r/t;

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/u/a/j;)Lc/c/a/e/d/r/e;
    .locals 0

    .line 2
    iget-object p0, p0, Lc/c/a/n/u/a/j;->l:Lc/c/a/e/d/r/e;

    return-object p0
.end method

.method public static final synthetic a(Lc/c/a/n/u/a/j;Lc/c/a/e/g/a;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lc/c/a/n/u/a/j;->a(Lc/c/a/e/g/a;)V

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/u/a/j;Lcom/farsitel/bazaar/data/entity/ErrorModel;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc/c/a/n/c/d/g;->a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    return-void
.end method


# virtual methods
.method public final a(Lc/c/a/e/g/a;)V
    .locals 5

    .line 4
    invoke-virtual {p1}, Lc/c/a/e/g/a;->c()Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;

    move-result-object v0

    invoke-static {v0}, Lh/a/k;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/c/a/n/c/d/g;->a(Ljava/util/List;)V

    .line 5
    iget-object v0, p0, Lc/c/a/n/u/a/j;->j:Lb/r/t;

    new-instance v1, Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;

    .line 6
    invoke-virtual {p1}, Lc/c/a/e/g/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lc/c/a/e/g/a;->a()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lc/c/a/n/u/a/j;->k:Landroid/content/Context;

    const v4, 0x7f100081

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "context.getString(\n     \u2026loper_reply\n            )"

    invoke-static {v3, v4}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {v1, v2, p1, v3}, Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lb/r/t;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public c(I)V
    .locals 6

    .line 1
    new-instance v3, Lcom/farsitel/bazaar/ui/reviews/developer/DeveloperReplyViewModel$makeData$1;

    const/4 v0, 0x0

    invoke-direct {v3, p0, p1, v0}, Lcom/farsitel/bazaar/ui/reviews/developer/DeveloperReplyViewModel$makeData$1;-><init>(Lc/c/a/n/u/a/j;ILh/c/b;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lc/c/a/n/u/a/j;->c(I)V

    return-void
.end method

.method public final j()Lb/r/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/r/t<",
            "Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/n/u/a/j;->j:Lb/r/t;

    return-object v0
.end method
