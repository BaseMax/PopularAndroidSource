.class public final Lb/b/f/a/h;
.super Lb/b/f/a/q;
.source "CascadingMenuPopup.java"

# interfaces
.implements Lb/b/f/a/t;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/b/f/a/h$a;
    }
.end annotation


# static fields
.field public static final b:I


# instance fields
.field public A:Landroid/widget/PopupWindow$OnDismissListener;

.field public B:Z

.field public final c:Landroid/content/Context;

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:Z

.field public final h:Landroid/os/Handler;

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb/b/f/a/k;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb/b/f/a/h$a;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field public final l:Landroid/view/View$OnAttachStateChangeListener;

.field public final m:Lb/b/g/O;

.field public n:I

.field public o:I

.field public p:Landroid/view/View;

.field public q:Landroid/view/View;

.field public r:I

.field public s:Z

.field public t:Z

.field public u:I

.field public v:I

.field public w:Z

.field public x:Z

.field public y:Lb/b/f/a/t$a;

.field public z:Landroid/view/ViewTreeObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lb/b/g;->abc_cascading_menu_item_layout:I

    sput v0, Lb/b/f/a/h;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IIZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lb/b/f/a/q;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/b/f/a/h;->i:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/b/f/a/h;->j:Ljava/util/List;

    .line 4
    new-instance v0, Lb/b/f/a/d;

    invoke-direct {v0, p0}, Lb/b/f/a/d;-><init>(Lb/b/f/a/h;)V

    iput-object v0, p0, Lb/b/f/a/h;->k:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 5
    new-instance v0, Lb/b/f/a/e;

    invoke-direct {v0, p0}, Lb/b/f/a/e;-><init>(Lb/b/f/a/h;)V

    iput-object v0, p0, Lb/b/f/a/h;->l:Landroid/view/View$OnAttachStateChangeListener;

    .line 6
    new-instance v0, Lb/b/f/a/g;

    invoke-direct {v0, p0}, Lb/b/f/a/g;-><init>(Lb/b/f/a/h;)V

    iput-object v0, p0, Lb/b/f/a/h;->m:Lb/b/g/O;

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lb/b/f/a/h;->n:I

    .line 8
    iput v0, p0, Lb/b/f/a/h;->o:I

    .line 9
    iput-object p1, p0, Lb/b/f/a/h;->c:Landroid/content/Context;

    .line 10
    iput-object p2, p0, Lb/b/f/a/h;->p:Landroid/view/View;

    .line 11
    iput p3, p0, Lb/b/f/a/h;->e:I

    .line 12
    iput p4, p0, Lb/b/f/a/h;->f:I

    .line 13
    iput-boolean p5, p0, Lb/b/f/a/h;->g:Z

    .line 14
    iput-boolean v0, p0, Lb/b/f/a/h;->w:Z

    .line 15
    invoke-virtual {p0}, Lb/b/f/a/h;->i()I

    move-result p2

    iput p2, p0, Lb/b/f/a/h;->r:I

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 p2, p2, 0x2

    sget p3, Lb/b/d;->abc_config_prefDialogWidth:I

    .line 18
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 19
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lb/b/f/a/h;->d:I

    .line 20
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lb/b/f/a/h;->h:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a(Lb/b/f/a/k;Lb/b/f/a/k;)Landroid/view/MenuItem;
    .locals 4

    .line 5
    invoke-virtual {p1}, Lb/b/f/a/k;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 6
    invoke-virtual {p1, v1}, Lb/b/f/a/k;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 7
    invoke-interface {v2}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    if-ne p2, v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lb/b/f/a/h$a;Lb/b/f/a/k;)Landroid/view/View;
    .locals 7

    .line 8
    iget-object v0, p1, Lb/b/f/a/h$a;->b:Lb/b/f/a/k;

    invoke-virtual {p0, v0, p2}, Lb/b/f/a/h;->a(Lb/b/f/a/k;Lb/b/f/a/k;)Landroid/view/MenuItem;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lb/b/f/a/h$a;->a()Landroid/widget/ListView;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 11
    instance-of v2, v1, Landroid/widget/HeaderViewListAdapter;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 12
    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    .line 13
    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 14
    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lb/b/f/a/j;

    goto :goto_0

    .line 15
    :cond_1
    check-cast v1, Lb/b/f/a/j;

    const/4 v2, 0x0

    .line 16
    :goto_0
    invoke-virtual {v1}, Lb/b/f/a/j;->getCount()I

    move-result v4

    :goto_1
    const/4 v5, -0x1

    if-ge v3, v4, :cond_3

    .line 17
    invoke-virtual {v1, v3}, Lb/b/f/a/j;->getItem(I)Lb/b/f/a/o;

    move-result-object v6

    if-ne p2, v6, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, -0x1

    :goto_2
    if-ne v3, v5, :cond_4

    return-object v0

    :cond_4
    add-int/2addr v3, v2

    .line 18
    invoke-virtual {p1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result p2

    sub-int/2addr v3, p2

    if-ltz v3, :cond_6

    .line 19
    invoke-virtual {p1}, Landroid/widget/ListView;->getChildCount()I

    move-result p2

    if-lt v3, p2, :cond_5

    goto :goto_3

    .line 20
    :cond_5
    invoke-virtual {p1, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_3
    return-object v0
.end method

.method public a(I)V
    .locals 1

    .line 55
    iget v0, p0, Lb/b/f/a/h;->n:I

    if-eq v0, p1, :cond_0

    .line 56
    iput p1, p0, Lb/b/f/a/h;->n:I

    .line 57
    iget-object v0, p0, Lb/b/f/a/h;->p:Landroid/view/View;

    .line 58
    invoke-static {v0}, Lb/i/k/z;->m(Landroid/view/View;)I

    move-result v0

    .line 59
    invoke-static {p1, v0}, Lb/i/k/c;->a(II)I

    move-result p1

    iput p1, p0, Lb/b/f/a/h;->o:I

    :cond_0
    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lb/b/f/a/h;->p:Landroid/view/View;

    if-eq v0, p1, :cond_0

    .line 61
    iput-object p1, p0, Lb/b/f/a/h;->p:Landroid/view/View;

    .line 62
    iget p1, p0, Lb/b/f/a/h;->n:I

    iget-object v0, p0, Lb/b/f/a/h;->p:Landroid/view/View;

    .line 63
    invoke-static {v0}, Lb/i/k/z;->m(Landroid/view/View;)I

    move-result v0

    .line 64
    invoke-static {p1, v0}, Lb/i/k/c;->a(II)I

    move-result p1

    iput p1, p0, Lb/b/f/a/h;->o:I

    :cond_0
    return-void
.end method

.method public a(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lb/b/f/a/h;->A:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public a(Lb/b/f/a/k;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/f/a/h;->c:Landroid/content/Context;

    invoke-virtual {p1, p0, v0}, Lb/b/f/a/k;->a(Lb/b/f/a/t;Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Lb/b/f/a/h;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lb/b/f/a/h;->d(Lb/b/f/a/k;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lb/b/f/a/h;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public a(Lb/b/f/a/k;Z)V
    .locals 5

    .line 31
    invoke-virtual {p0, p1}, Lb/b/f/a/h;->c(Lb/b/f/a/k;)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v0, 0x1

    .line 32
    iget-object v2, p0, Lb/b/f/a/h;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    .line 33
    iget-object v2, p0, Lb/b/f/a/h;->j:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/f/a/h$a;

    .line 34
    iget-object v1, v1, Lb/b/f/a/h$a;->b:Lb/b/f/a/k;

    invoke-virtual {v1, v3}, Lb/b/f/a/k;->a(Z)V

    .line 35
    :cond_1
    iget-object v1, p0, Lb/b/f/a/h;->j:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/f/a/h$a;

    .line 36
    iget-object v1, v0, Lb/b/f/a/h$a;->b:Lb/b/f/a/k;

    invoke-virtual {v1, p0}, Lb/b/f/a/k;->b(Lb/b/f/a/t;)V

    .line 37
    iget-boolean v1, p0, Lb/b/f/a/h;->B:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 38
    iget-object v1, v0, Lb/b/f/a/h$a;->a:Lb/b/g/P;

    invoke-virtual {v1, v2}, Lb/b/g/P;->b(Ljava/lang/Object;)V

    .line 39
    iget-object v1, v0, Lb/b/f/a/h$a;->a:Lb/b/g/P;

    invoke-virtual {v1, v3}, Lb/b/g/N;->d(I)V

    .line 40
    :cond_2
    iget-object v0, v0, Lb/b/f/a/h$a;->a:Lb/b/g/P;

    invoke-virtual {v0}, Lb/b/g/N;->dismiss()V

    .line 41
    iget-object v0, p0, Lb/b/f/a/h;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 42
    iget-object v1, p0, Lb/b/f/a/h;->j:Ljava/util/List;

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/f/a/h$a;

    iget v1, v1, Lb/b/f/a/h$a;->c:I

    iput v1, p0, Lb/b/f/a/h;->r:I

    goto :goto_0

    .line 43
    :cond_3
    invoke-virtual {p0}, Lb/b/f/a/h;->i()I

    move-result v1

    iput v1, p0, Lb/b/f/a/h;->r:I

    :goto_0
    if-nez v0, :cond_7

    .line 44
    invoke-virtual {p0}, Lb/b/f/a/h;->dismiss()V

    .line 45
    iget-object p2, p0, Lb/b/f/a/h;->y:Lb/b/f/a/t$a;

    if-eqz p2, :cond_4

    const/4 v0, 0x1

    .line 46
    invoke-interface {p2, p1, v0}, Lb/b/f/a/t$a;->a(Lb/b/f/a/k;Z)V

    .line 47
    :cond_4
    iget-object p1, p0, Lb/b/f/a/h;->z:Landroid/view/ViewTreeObserver;

    if-eqz p1, :cond_6

    .line 48
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 49
    iget-object p1, p0, Lb/b/f/a/h;->z:Landroid/view/ViewTreeObserver;

    iget-object p2, p0, Lb/b/f/a/h;->k:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 50
    :cond_5
    iput-object v2, p0, Lb/b/f/a/h;->z:Landroid/view/ViewTreeObserver;

    .line 51
    :cond_6
    iget-object p1, p0, Lb/b/f/a/h;->q:Landroid/view/View;

    iget-object p2, p0, Lb/b/f/a/h;->l:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 52
    iget-object p1, p0, Lb/b/f/a/h;->A:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {p1}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    goto :goto_1

    :cond_7
    if-eqz p2, :cond_8

    .line 53
    iget-object p1, p0, Lb/b/f/a/h;->j:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/b/f/a/h$a;

    .line 54
    iget-object p1, p1, Lb/b/f/a/h$a;->b:Lb/b/f/a/k;

    invoke-virtual {p1, v3}, Lb/b/f/a/k;->a(Z)V

    :cond_8
    :goto_1
    return-void
.end method

.method public a(Lb/b/f/a/t$a;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lb/b/f/a/h;->y:Lb/b/f/a/t$a;

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 21
    iget-object p1, p0, Lb/b/f/a/h;->j:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/f/a/h$a;

    .line 22
    invoke-virtual {v0}, Lb/b/f/a/h$a;->a()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-static {v0}, Lb/b/f/a/q;->a(Landroid/widget/ListAdapter;)Lb/b/f/a/j;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/a/j;->notifyDataSetChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Lb/b/f/a/A;)Z
    .locals 4

    .line 24
    iget-object v0, p0, Lb/b/f/a/h;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/f/a/h$a;

    .line 25
    iget-object v3, v1, Lb/b/f/a/h$a;->b:Lb/b/f/a/k;

    if-ne p1, v3, :cond_0

    .line 26
    invoke-virtual {v1}, Lb/b/f/a/h$a;->a()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->requestFocus()Z

    return v2

    .line 27
    :cond_1
    invoke-virtual {p1}, Lb/b/f/a/k;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 28
    invoke-virtual {p0, p1}, Lb/b/f/a/h;->a(Lb/b/f/a/k;)V

    .line 29
    iget-object v0, p0, Lb/b/f/a/h;->y:Lb/b/f/a/t$a;

    if-eqz v0, :cond_2

    .line 30
    invoke-interface {v0, p1}, Lb/b/f/a/t$a;->a(Lb/b/f/a/k;)Z

    :cond_2
    return v2

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public b()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public b(I)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lb/b/f/a/h;->s:Z

    .line 3
    iput p1, p0, Lb/b/f/a/h;->u:I

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lb/b/f/a/h;->w:Z

    return-void
.end method

.method public final c(Lb/b/f/a/k;)I
    .locals 3

    .line 2
    iget-object v0, p0, Lb/b/f/a/h;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3
    iget-object v2, p0, Lb/b/f/a/h;->j:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/f/a/h$a;

    .line 4
    iget-object v2, v2, Lb/b/f/a/h$a;->b:Lb/b/f/a/k;

    if-ne p1, v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public c(I)V
    .locals 1

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lb/b/f/a/h;->t:Z

    .line 6
    iput p1, p0, Lb/b/f/a/h;->v:I

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 7
    iput-boolean p1, p0, Lb/b/f/a/h;->x:Z

    return-void
.end method

.method public c()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lb/b/f/a/h;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lb/b/f/a/h;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/f/a/h$a;

    iget-object v0, v0, Lb/b/f/a/h$a;->a:Lb/b/g/P;

    invoke-virtual {v0}, Lb/b/g/N;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final d(I)I
    .locals 6

    .line 11
    iget-object v0, p0, Lb/b/f/a/h;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/f/a/h$a;

    invoke-virtual {v0}, Lb/b/f/a/h$a;->a()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x2

    .line 12
    new-array v1, v1, [I

    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getLocationOnScreen([I)V

    .line 14
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 15
    iget-object v4, p0, Lb/b/f/a/h;->q:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 16
    iget v4, p0, Lb/b/f/a/h;->r:I

    const/4 v5, 0x0

    if-ne v4, v2, :cond_1

    .line 17
    aget v1, v1, v5

    invoke-virtual {v0}, Landroid/widget/ListView;->getWidth()I

    move-result v0

    add-int/2addr v1, v0

    add-int/2addr v1, p1

    .line 18
    iget p1, v3, Landroid/graphics/Rect;->right:I

    if-le v1, p1, :cond_0

    return v5

    :cond_0
    return v2

    .line 19
    :cond_1
    aget v0, v1, v5

    sub-int/2addr v0, p1

    if-gez v0, :cond_2

    return v2

    :cond_2
    return v5
.end method

.method public d()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lb/b/f/a/h;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lb/b/f/a/h;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/f/a/k;

    .line 3
    invoke-virtual {p0, v1}, Lb/b/f/a/h;->d(Lb/b/f/a/k;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lb/b/f/a/h;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    iget-object v0, p0, Lb/b/f/a/h;->p:Landroid/view/View;

    iput-object v0, p0, Lb/b/f/a/h;->q:Landroid/view/View;

    .line 6
    iget-object v0, p0, Lb/b/f/a/h;->q:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 7
    iget-object v0, p0, Lb/b/f/a/h;->z:Landroid/view/ViewTreeObserver;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 8
    :goto_1
    iget-object v1, p0, Lb/b/f/a/h;->q:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iput-object v1, p0, Lb/b/f/a/h;->z:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_3

    .line 9
    iget-object v0, p0, Lb/b/f/a/h;->z:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lb/b/f/a/h;->k:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 10
    :cond_3
    iget-object v0, p0, Lb/b/f/a/h;->q:Landroid/view/View;

    iget-object v1, p0, Lb/b/f/a/h;->l:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_4
    return-void
.end method

.method public final d(Lb/b/f/a/k;)V
    .locals 14

    .line 20
    iget-object v0, p0, Lb/b/f/a/h;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 21
    new-instance v1, Lb/b/f/a/j;

    iget-boolean v2, p0, Lb/b/f/a/h;->g:Z

    sget v3, Lb/b/f/a/h;->b:I

    invoke-direct {v1, p1, v0, v2, v3}, Lb/b/f/a/j;-><init>(Lb/b/f/a/k;Landroid/view/LayoutInflater;ZI)V

    .line 22
    invoke-virtual {p0}, Lb/b/f/a/h;->c()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lb/b/f/a/h;->w:Z

    if-eqz v2, :cond_0

    .line 23
    invoke-virtual {v1, v3}, Lb/b/f/a/j;->a(Z)V

    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p0}, Lb/b/f/a/h;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 25
    invoke-static {p1}, Lb/b/f/a/q;->b(Lb/b/f/a/k;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lb/b/f/a/j;->a(Z)V

    .line 26
    :cond_1
    :goto_0
    iget-object v2, p0, Lb/b/f/a/h;->c:Landroid/content/Context;

    iget v4, p0, Lb/b/f/a/h;->d:I

    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v4}, Lb/b/f/a/q;->a(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    move-result v2

    .line 27
    invoke-virtual {p0}, Lb/b/f/a/h;->h()Lb/b/g/P;

    move-result-object v4

    .line 28
    invoke-virtual {v4, v1}, Lb/b/g/N;->a(Landroid/widget/ListAdapter;)V

    .line 29
    invoke-virtual {v4, v2}, Lb/b/g/N;->e(I)V

    .line 30
    iget v1, p0, Lb/b/f/a/h;->o:I

    invoke-virtual {v4, v1}, Lb/b/g/N;->f(I)V

    .line 31
    iget-object v1, p0, Lb/b/f/a/h;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 32
    iget-object v1, p0, Lb/b/f/a/h;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/f/a/h$a;

    .line 33
    invoke-virtual {p0, v1, p1}, Lb/b/f/a/h;->a(Lb/b/f/a/h$a;Lb/b/f/a/k;)Landroid/view/View;

    move-result-object v6

    goto :goto_1

    :cond_2
    move-object v1, v5

    move-object v6, v1

    :goto_1
    const/4 v7, 0x0

    if-eqz v6, :cond_9

    .line 34
    invoke-virtual {v4, v7}, Lb/b/g/P;->d(Z)V

    .line 35
    invoke-virtual {v4, v5}, Lb/b/g/P;->a(Ljava/lang/Object;)V

    .line 36
    invoke-virtual {p0, v2}, Lb/b/f/a/h;->d(I)I

    move-result v8

    if-ne v8, v3, :cond_3

    const/4 v9, 0x1

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    .line 37
    :goto_2
    iput v8, p0, Lb/b/f/a/h;->r:I

    .line 38
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1a

    const/4 v11, 0x5

    if-lt v8, v10, :cond_4

    .line 39
    invoke-virtual {v4, v6}, Lb/b/g/N;->a(Landroid/view/View;)V

    const/4 v8, 0x0

    const/4 v12, 0x0

    goto :goto_3

    :cond_4
    const/4 v8, 0x2

    .line 40
    new-array v10, v8, [I

    .line 41
    iget-object v12, p0, Lb/b/f/a/h;->p:Landroid/view/View;

    invoke-virtual {v12, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 42
    new-array v8, v8, [I

    .line 43
    invoke-virtual {v6, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 44
    iget v12, p0, Lb/b/f/a/h;->o:I

    and-int/lit8 v12, v12, 0x7

    if-ne v12, v11, :cond_5

    .line 45
    aget v12, v10, v7

    iget-object v13, p0, Lb/b/f/a/h;->p:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v13

    add-int/2addr v12, v13

    aput v12, v10, v7

    .line 46
    aget v12, v8, v7

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v13

    add-int/2addr v12, v13

    aput v12, v8, v7

    .line 47
    :cond_5
    aget v12, v8, v7

    aget v13, v10, v7

    sub-int/2addr v12, v13

    .line 48
    aget v8, v8, v3

    aget v10, v10, v3

    sub-int/2addr v8, v10

    .line 49
    :goto_3
    iget v10, p0, Lb/b/f/a/h;->o:I

    and-int/2addr v10, v11

    if-ne v10, v11, :cond_7

    if-eqz v9, :cond_6

    goto :goto_4

    .line 50
    :cond_6
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_5

    :cond_7
    if-eqz v9, :cond_8

    .line 51
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v2

    :goto_4
    add-int/2addr v12, v2

    goto :goto_6

    :cond_8
    :goto_5
    sub-int/2addr v12, v2

    .line 52
    :goto_6
    invoke-virtual {v4, v12}, Lb/b/g/N;->a(I)V

    .line 53
    invoke-virtual {v4, v3}, Lb/b/g/N;->b(Z)V

    .line 54
    invoke-virtual {v4, v8}, Lb/b/g/N;->b(I)V

    goto :goto_7

    .line 55
    :cond_9
    iget-boolean v2, p0, Lb/b/f/a/h;->s:Z

    if-eqz v2, :cond_a

    .line 56
    iget v2, p0, Lb/b/f/a/h;->u:I

    invoke-virtual {v4, v2}, Lb/b/g/N;->a(I)V

    .line 57
    :cond_a
    iget-boolean v2, p0, Lb/b/f/a/h;->t:Z

    if-eqz v2, :cond_b

    .line 58
    iget v2, p0, Lb/b/f/a/h;->v:I

    invoke-virtual {v4, v2}, Lb/b/g/N;->b(I)V

    .line 59
    :cond_b
    invoke-virtual {p0}, Lb/b/f/a/q;->g()Landroid/graphics/Rect;

    move-result-object v2

    .line 60
    invoke-virtual {v4, v2}, Lb/b/g/N;->a(Landroid/graphics/Rect;)V

    .line 61
    :goto_7
    new-instance v2, Lb/b/f/a/h$a;

    iget v3, p0, Lb/b/f/a/h;->r:I

    invoke-direct {v2, v4, p1, v3}, Lb/b/f/a/h$a;-><init>(Lb/b/g/P;Lb/b/f/a/k;I)V

    .line 62
    iget-object v3, p0, Lb/b/f/a/h;->j:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-virtual {v4}, Lb/b/g/N;->d()V

    .line 64
    invoke-virtual {v4}, Lb/b/g/N;->f()Landroid/widget/ListView;

    move-result-object v2

    .line 65
    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    if-nez v1, :cond_c

    .line 66
    iget-boolean v1, p0, Lb/b/f/a/h;->x:Z

    if-eqz v1, :cond_c

    invoke-virtual {p1}, Lb/b/f/a/k;->h()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 67
    sget v1, Lb/b/g;->abc_popup_menu_header_item_layout:I

    invoke-virtual {v0, v1, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const v1, 0x1020016

    .line 68
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 69
    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 70
    invoke-virtual {p1}, Lb/b/f/a/k;->h()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    invoke-virtual {v2, v0, v5, v7}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 72
    invoke-virtual {v4}, Lb/b/g/N;->d()V

    :cond_c
    return-void
.end method

.method public dismiss()V
    .locals 4

    .line 1
    iget-object v0, p0, Lb/b/f/a/h;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    iget-object v1, p0, Lb/b/f/a/h;->j:Ljava/util/List;

    new-array v2, v0, [Lb/b/f/a/h$a;

    .line 3
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lb/b/f/a/h$a;

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 4
    aget-object v2, v1, v0

    .line 5
    iget-object v3, v2, Lb/b/f/a/h$a;->a:Lb/b/g/P;

    invoke-virtual {v3}, Lb/b/g/N;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    iget-object v2, v2, Lb/b/f/a/h$a;->a:Lb/b/g/P;

    invoke-virtual {v2}, Lb/b/g/N;->dismiss()V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f()Landroid/widget/ListView;
    .locals 2

    .line 1
    iget-object v0, p0, Lb/b/f/a/h;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb/b/f/a/h;->j:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/f/a/h$a;

    invoke-virtual {v0}, Lb/b/f/a/h$a;->a()Landroid/widget/ListView;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final h()Lb/b/g/P;
    .locals 5

    .line 1
    new-instance v0, Lb/b/g/P;

    iget-object v1, p0, Lb/b/f/a/h;->c:Landroid/content/Context;

    iget v2, p0, Lb/b/f/a/h;->e:I

    iget v3, p0, Lb/b/f/a/h;->f:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lb/b/g/P;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 2
    iget-object v1, p0, Lb/b/f/a/h;->m:Lb/b/g/O;

    invoke-virtual {v0, v1}, Lb/b/g/P;->a(Lb/b/g/O;)V

    .line 3
    invoke-virtual {v0, p0}, Lb/b/g/N;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 4
    invoke-virtual {v0, p0}, Lb/b/g/N;->a(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 5
    iget-object v1, p0, Lb/b/f/a/h;->p:Landroid/view/View;

    invoke-virtual {v0, v1}, Lb/b/g/N;->a(Landroid/view/View;)V

    .line 6
    iget v1, p0, Lb/b/f/a/h;->o:I

    invoke-virtual {v0, v1}, Lb/b/g/N;->f(I)V

    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lb/b/g/N;->a(Z)V

    const/4 v1, 0x2

    .line 8
    invoke-virtual {v0, v1}, Lb/b/g/N;->g(I)V

    return-object v0
.end method

.method public final i()I
    .locals 2

    .line 1
    iget-object v0, p0, Lb/b/f/a/h;->p:Landroid/view/View;

    invoke-static {v0}, Lb/i/k/z;->m(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    return v1
.end method

.method public onDismiss()V
    .locals 5

    .line 1
    iget-object v0, p0, Lb/b/f/a/h;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    iget-object v3, p0, Lb/b/f/a/h;->j:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/b/f/a/h$a;

    .line 3
    iget-object v4, v3, Lb/b/f/a/h$a;->a:Lb/b/g/P;

    invoke-virtual {v4}, Lb/b/g/N;->c()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    .line 4
    iget-object v0, v3, Lb/b/f/a/h$a;->b:Lb/b/f/a/k;

    invoke-virtual {v0, v1}, Lb/b/f/a/k;->a(Z)V

    :cond_2
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/16 p1, 0x52

    if-ne p2, p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lb/b/f/a/h;->dismiss()V

    return p3

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
