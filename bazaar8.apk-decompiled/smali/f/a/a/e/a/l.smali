.class public Lf/a/a/e/a/l;
.super Lf/a/a/e/a/d;
.source "ListChanger.java"


# instance fields
.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/a/a/e/b/n;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/a/a/e/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lf/a/a/e/b/n;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lf/a/a/e/a/l;->c:Ljava/util/List;

    return-void
.end method

.method public b(Landroid/view/View;Lf/a/a/e/g;)V
    .locals 2

    .line 1
    instance-of p2, p1, Landroid/widget/LinearLayout;

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 2
    :goto_0
    move-object v0, p1

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 3
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4
    instance-of v1, v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_0

    move-object p1, v0

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 5
    :cond_1
    :goto_1
    instance-of p2, p1, Landroidx/recyclerview/widget/RecyclerView;

    if-nez p2, :cond_2

    return-void

    .line 6
    :cond_2
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    .line 8
    :cond_3
    instance-of p2, p1, Lf/a/a/g/e/b;

    if-eqz p2, :cond_4

    .line 9
    check-cast p1, Lf/a/a/g/e/b;

    .line 10
    iget-object p2, p0, Lf/a/a/e/a/l;->c:Ljava/util/List;

    invoke-virtual {p1, p2}, Lf/a/a/g/e/b;->a(Ljava/util/List;)V

    return-void

    .line 11
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Adapter must be is InlineListAdapter"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/e/a/l;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
