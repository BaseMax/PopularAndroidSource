.class public final Lc/c/a/l/a/b;
.super Landroidx/recyclerview/widget/RecyclerView$a;
.source "TrackAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$a<",
        "Lc/c/a/l/a/g;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/c/a/l/a/c;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lh/f/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/f/a/b<",
            "Ljava/lang/Integer;",
            "Lh/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lh/f/a/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/c/a/l/a/c;",
            ">;",
            "Lh/f/a/b<",
            "-",
            "Ljava/lang/Integer;",
            "Lh/h;",
            ">;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "click"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$a;-><init>()V

    iput-object p1, p0, Lc/c/a/l/a/b;->c:Ljava/util/List;

    iput-object p2, p0, Lc/c/a/l/a/b;->d:Lh/f/a/b;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 2
    iget-object v0, p0, Lc/c/a/l/a/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public a(Lc/c/a/l/a/g;I)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lc/c/a/l/a/b;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/a/l/a/c;

    iget-object v1, p0, Lc/c/a/l/a/b;->d:Lh/f/a/b;

    invoke-virtual {p1, v0, p2, v1}, Lc/c/a/l/a/g;->a(Lc/c/a/l/a/c;ILh/f/a/b;)V

    return-void
.end method

.method public bridge synthetic b(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$w;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lc/c/a/l/a/b;->b(Landroid/view/ViewGroup;I)Lc/c/a/l/a/g;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/view/ViewGroup;I)Lc/c/a/l/a/g;
    .locals 3

    const-string p2, "parent"

    invoke-static {p1, p2}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance p2, Lc/c/a/l/a/g;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lc/c/a/l/l;->item_bottom_sheet_row:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "from(parent.context).inf\u2026sheet_row, parent, false)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lc/c/a/l/a/g;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic b(Landroidx/recyclerview/widget/RecyclerView$w;I)V
    .locals 0

    .line 1
    check-cast p1, Lc/c/a/l/a/g;

    invoke-virtual {p0, p1, p2}, Lc/c/a/l/a/b;->a(Lc/c/a/l/a/g;I)V

    return-void
.end method
