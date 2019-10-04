.class public Lf/a/a/e/b/y;
.super Lf/a/a/e/b/n;
.source "ListInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/a/a/e/b/y$a;
    }
.end annotation


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

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public g:Z

.field public h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lf/a/a/e/b/y;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lf/a/a/e/b/n;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lf/a/a/e/b/y;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const v0, 0x7fffffff

    .line 4
    iput v0, p0, Lf/a/a/e/b/y;->h:I

    .line 5
    iput-boolean p1, p0, Lf/a/a/e/b/y;->g:Z

    return-void
.end method

.method public static synthetic a(Lf/a/a/e/b/y;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lf/a/a/e/b/y;->e:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic a(Lf/a/a/e/b/y;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lf/a/a/e/b/y;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic b(Lf/a/a/e/b/y;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lf/a/a/e/b/y;->e:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic c(Lf/a/a/e/b/y;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lf/a/a/e/b/y;->c:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic d(Lf/a/a/e/b/y;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lf/a/a/e/b/y;->d:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Lf/a/a/e/g;Landroid/view/View;)Landroid/view/View;
    .locals 10

    .line 4
    sget v0, Lf/a/a/e;->recyclerView:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 6
    new-instance v7, Lf/a/a/g/e/b;

    iget-object v2, p0, Lf/a/a/e/b/y;->c:Ljava/util/List;

    iget v3, p0, Lf/a/a/e/b/y;->h:I

    invoke-direct {v7, p1, v2, v3}, Lf/a/a/g/e/b;-><init>(Lf/a/a/e/g;Ljava/util/List;I)V

    .line 7
    sget v2, Lf/a/a/e;->inlineListTopBorder:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 8
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 9
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-interface {p1}, Lf/a/a/e/g;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 10
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 11
    invoke-virtual {p0, p1}, Lf/a/a/e/b/y;->a(Lf/a/a/e/g;)Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 12
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView$h;)V

    :cond_0
    const/16 v1, 0x8

    .line 13
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    iget-boolean v1, p0, Lf/a/a/e/b/y;->g:Z

    if-eqz v1, :cond_1

    .line 15
    iget-object v1, p0, Lf/a/a/e/b/y;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->k(I)V

    .line 16
    :cond_1
    iget-object v1, p0, Lf/a/a/e/b/y;->e:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 17
    new-instance v5, Lf/a/a/g/e/c;

    invoke-direct {v5}, Lf/a/a/g/e/c;-><init>()V

    .line 18
    new-instance v8, Lf/a/a/e/b/v;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, v7

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lf/a/a/e/b/v;-><init>(Lf/a/a/e/b/y;Lf/a/a/e/g;Lf/a/a/g/e/b;Lf/a/a/g/e/c;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 19
    new-instance v9, Lf/a/a/e/b/x;

    move-object v1, v9

    move-object v3, v7

    move-object v4, v0

    move-object v5, p1

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Lf/a/a/e/b/x;-><init>(Lf/a/a/e/b/y;Lf/a/a/g/e/b;Landroidx/recyclerview/widget/RecyclerView;Lf/a/a/e/g;Lf/a/a/e/b/y$a;)V

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-object p2
.end method

.method public a(Lf/a/a/e/g;)Landroidx/recyclerview/widget/RecyclerView$h;
    .locals 2

    .line 20
    new-instance v0, Lb/y/a/p;

    invoke-interface {p1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lb/y/a/p;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 21
    iput p1, p0, Lf/a/a/e/b/y;->h:I

    return-void
.end method

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

    .line 3
    iput-object p1, p0, Lf/a/a/e/b/y;->c:Ljava/util/List;

    return-void
.end method

.method public b()I
    .locals 1

    .line 2
    sget v0, Lf/a/a/f;->inline_list:I

    return v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lf/a/a/e/b/y;->d:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lf/a/a/e/b/y;->e:Ljava/lang/String;

    return-void
.end method
