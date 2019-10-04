.class public Lb/b/f/a/i;
.super Ljava/lang/Object;
.source "ListMenuPresenter.java"

# interfaces
.implements Lb/b/f/a/t;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/b/f/a/i$a;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/view/LayoutInflater;

.field public c:Lb/b/f/a/k;

.field public d:Landroidx/appcompat/view/menu/ExpandedMenuView;

.field public e:I

.field public f:I

.field public g:I

.field public h:Lb/b/f/a/t$a;

.field public i:Lb/b/f/a/i$a;

.field public j:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Lb/b/f/a/i;->g:I

    .line 6
    iput p2, p0, Lb/b/f/a/i;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p2, v0}, Lb/b/f/a/i;-><init>(II)V

    .line 2
    iput-object p1, p0, Lb/b/f/a/i;->a:Landroid/content/Context;

    .line 3
    iget-object p1, p0, Lb/b/f/a/i;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lb/b/f/a/i;->b:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)Lb/b/f/a/u;
    .locals 3

    .line 11
    iget-object v0, p0, Lb/b/f/a/i;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    if-nez v0, :cond_1

    .line 12
    iget-object v0, p0, Lb/b/f/a/i;->b:Landroid/view/LayoutInflater;

    sget v1, Lb/b/g;->abc_expanded_menu_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/ExpandedMenuView;

    iput-object p1, p0, Lb/b/f/a/i;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 13
    iget-object p1, p0, Lb/b/f/a/i;->i:Lb/b/f/a/i$a;

    if-nez p1, :cond_0

    .line 14
    new-instance p1, Lb/b/f/a/i$a;

    invoke-direct {p1, p0}, Lb/b/f/a/i$a;-><init>(Lb/b/f/a/i;)V

    iput-object p1, p0, Lb/b/f/a/i;->i:Lb/b/f/a/i$a;

    .line 15
    :cond_0
    iget-object p1, p0, Lb/b/f/a/i;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    iget-object v0, p0, Lb/b/f/a/i;->i:Lb/b/f/a/i$a;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 16
    iget-object p1, p0, Lb/b/f/a/i;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 17
    :cond_1
    iget-object p1, p0, Lb/b/f/a/i;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    return-object p1
.end method

.method public a(Landroid/content/Context;Lb/b/f/a/k;)V
    .locals 2

    .line 1
    iget v0, p0, Lb/b/f/a/i;->f:I

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, p1, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lb/b/f/a/i;->a:Landroid/content/Context;

    .line 3
    iget-object p1, p0, Lb/b/f/a/i;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lb/b/f/a/i;->b:Landroid/view/LayoutInflater;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lb/b/f/a/i;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 5
    iput-object p1, p0, Lb/b/f/a/i;->a:Landroid/content/Context;

    .line 6
    iget-object p1, p0, Lb/b/f/a/i;->b:Landroid/view/LayoutInflater;

    if-nez p1, :cond_1

    .line 7
    iget-object p1, p0, Lb/b/f/a/i;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lb/b/f/a/i;->b:Landroid/view/LayoutInflater;

    .line 8
    :cond_1
    :goto_0
    iput-object p2, p0, Lb/b/f/a/i;->c:Lb/b/f/a/k;

    .line 9
    iget-object p1, p0, Lb/b/f/a/i;->i:Lb/b/f/a/i$a;

    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {p1}, Lb/b/f/a/i$a;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "android:menu:list"

    .line 26
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 27
    iget-object v0, p0, Lb/b/f/a/i;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    invoke-virtual {v0, p1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 0

    .line 28
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lb/b/f/a/i;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Lb/b/f/a/k;Z)V
    .locals 1

    .line 24
    iget-object v0, p0, Lb/b/f/a/i;->h:Lb/b/f/a/t$a;

    if-eqz v0, :cond_0

    .line 25
    invoke-interface {v0, p1, p2}, Lb/b/f/a/t$a;->a(Lb/b/f/a/k;Z)V

    :cond_0
    return-void
.end method

.method public a(Lb/b/f/a/t$a;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lb/b/f/a/i;->h:Lb/b/f/a/t$a;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 18
    iget-object p1, p0, Lb/b/f/a/i;->i:Lb/b/f/a/i$a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lb/b/f/a/i$a;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Lb/b/f/a/A;)Z
    .locals 2

    .line 20
    invoke-virtual {p1}, Lb/b/f/a/k;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 21
    :cond_0
    new-instance v0, Lb/b/f/a/l;

    invoke-direct {v0, p1}, Lb/b/f/a/l;-><init>(Lb/b/f/a/k;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb/b/f/a/l;->a(Landroid/os/IBinder;)V

    .line 22
    iget-object v0, p0, Lb/b/f/a/i;->h:Lb/b/f/a/t$a;

    if-eqz v0, :cond_1

    .line 23
    invoke-interface {v0, p1}, Lb/b/f/a/t$a;->a(Lb/b/f/a/k;)Z

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public a(Lb/b/f/a/k;Lb/b/f/a/o;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b()Landroid/os/Parcelable;
    .locals 1

    .line 5
    iget-object v0, p0, Lb/b/f/a/i;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 7
    invoke-virtual {p0, v0}, Lb/b/f/a/i;->b(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 2
    iget-object v1, p0, Lb/b/f/a/i;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    :cond_0
    const-string v1, "android:menu:list"

    .line 4
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    return-void
.end method

.method public b(Lb/b/f/a/k;Lb/b/f/a/o;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public c()Landroid/widget/ListAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/f/a/i;->i:Lb/b/f/a/i$a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lb/b/f/a/i$a;

    invoke-direct {v0, p0}, Lb/b/f/a/i$a;-><init>(Lb/b/f/a/i;)V

    iput-object v0, p0, Lb/b/f/a/i;->i:Lb/b/f/a/i$a;

    .line 3
    :cond_0
    iget-object v0, p0, Lb/b/f/a/i;->i:Lb/b/f/a/i$a;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lb/b/f/a/i;->j:I

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lb/b/f/a/i;->c:Lb/b/f/a/k;

    iget-object p2, p0, Lb/b/f/a/i;->i:Lb/b/f/a/i$a;

    invoke-virtual {p2, p3}, Lb/b/f/a/i$a;->getItem(I)Lb/b/f/a/o;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p0, p3}, Lb/b/f/a/k;->a(Landroid/view/MenuItem;Lb/b/f/a/t;I)Z

    return-void
.end method
