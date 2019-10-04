.class public final Lc/c/a/n/j/h/f;
.super Lc/c/a/n/c/d/n;
.source "SeasonPickerItemViewHolder.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/n/c/d/n<",
        "Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;",
        ">;"
    }
.end annotation


# instance fields
.field public final v:Lc/c/a/f/Wb;

.field public final w:I


# direct methods
.method public constructor <init>(Lc/c/a/f/Wb;I)V
    .locals 1

    const-string v0, "viewBinding"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lc/c/a/n/c/d/n;-><init>(Landroidx/databinding/ViewDataBinding;)V

    iput-object p1, p0, Lc/c/a/n/j/h/f;->v:Lc/c/a/f/Wb;

    iput p2, p0, Lc/c/a/n/j/h/f;->w:I

    return-void
.end method


# virtual methods
.method public a(Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;)V
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lc/c/a/n/j/h/f;->v:Lc/c/a/f/Wb;

    iget v0, p0, Lc/c/a/n/j/h/f;->w:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-virtual {p1, v1, v0}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic b(Lcom/farsitel/bazaar/common/model/RecyclerData;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;

    invoke-virtual {p0, p1}, Lc/c/a/n/j/h/f;->a(Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;)V

    return-void
.end method
