.class public final Lb/b/f/a/z;
.super Lb/b/f/a/q;
.source "StandardMenuPopup.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lb/b/f/a/t;
.implements Landroid/view/View$OnKeyListener;


# static fields
.field public static final b:I


# instance fields
.field public final c:Landroid/content/Context;

.field public final d:Lb/b/f/a/k;

.field public final e:Lb/b/f/a/j;

.field public final f:Z

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:Lb/b/g/P;

.field public final k:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field public final l:Landroid/view/View$OnAttachStateChangeListener;

.field public m:Landroid/widget/PopupWindow$OnDismissListener;

.field public n:Landroid/view/View;

.field public o:Landroid/view/View;

.field public p:Lb/b/f/a/t$a;

.field public q:Landroid/view/ViewTreeObserver;

.field public r:Z

.field public s:Z

.field public t:I

.field public u:I

.field public v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lb/b/g;->abc_popup_menu_item_layout:I

    sput v0, Lb/b/f/a/z;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lb/b/f/a/k;Landroid/view/View;IIZ)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lb/b/f/a/q;-><init>()V

    .line 2
    new-instance v0, Lb/b/f/a/x;

    invoke-direct {v0, p0}, Lb/b/f/a/x;-><init>(Lb/b/f/a/z;)V

    iput-object v0, p0, Lb/b/f/a/z;->k:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 3
    new-instance v0, Lb/b/f/a/y;

    invoke-direct {v0, p0}, Lb/b/f/a/y;-><init>(Lb/b/f/a/z;)V

    iput-object v0, p0, Lb/b/f/a/z;->l:Landroid/view/View$OnAttachStateChangeListener;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lb/b/f/a/z;->u:I

    .line 5
    iput-object p1, p0, Lb/b/f/a/z;->c:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lb/b/f/a/z;->d:Lb/b/f/a/k;

    .line 7
    iput-boolean p6, p0, Lb/b/f/a/z;->f:Z

    .line 8
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p6

    .line 9
    new-instance v0, Lb/b/f/a/j;

    iget-boolean v1, p0, Lb/b/f/a/z;->f:Z

    sget v2, Lb/b/f/a/z;->b:I

    invoke-direct {v0, p2, p6, v1, v2}, Lb/b/f/a/j;-><init>(Lb/b/f/a/k;Landroid/view/LayoutInflater;ZI)V

    iput-object v0, p0, Lb/b/f/a/z;->e:Lb/b/f/a/j;

    .line 10
    iput p4, p0, Lb/b/f/a/z;->h:I

    .line 11
    iput p5, p0, Lb/b/f/a/z;->i:I

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    .line 13
    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p5

    iget p5, p5, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 p5, p5, 0x2

    sget p6, Lb/b/d;->abc_config_prefDialogWidth:I

    .line 14
    invoke-virtual {p4, p6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    .line 15
    invoke-static {p5, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    iput p4, p0, Lb/b/f/a/z;->g:I

    .line 16
    iput-object p3, p0, Lb/b/f/a/z;->n:Landroid/view/View;

    .line 17
    new-instance p3, Lb/b/g/P;

    iget-object p4, p0, Lb/b/f/a/z;->c:Landroid/content/Context;

    iget p5, p0, Lb/b/f/a/z;->h:I

    iget p6, p0, Lb/b/f/a/z;->i:I

    const/4 v0, 0x0

    invoke-direct {p3, p4, v0, p5, p6}, Lb/b/g/P;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object p3, p0, Lb/b/f/a/z;->j:Lb/b/g/P;

    .line 18
    invoke-virtual {p2, p0, p1}, Lb/b/f/a/k;->a(Lb/b/f/a/t;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 1
    iput p1, p0, Lb/b/f/a/z;->u:I

    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lb/b/f/a/z;->n:Landroid/view/View;

    return-void
.end method

.method public a(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lb/b/f/a/z;->m:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public a(Lb/b/f/a/k;)V
    .locals 0

    return-void
.end method

.method public a(Lb/b/f/a/k;Z)V
    .locals 1

    .line 22
    iget-object v0, p0, Lb/b/f/a/z;->d:Lb/b/f/a/k;

    if-eq p1, v0, :cond_0

    return-void

    .line 23
    :cond_0
    invoke-virtual {p0}, Lb/b/f/a/z;->dismiss()V

    .line 24
    iget-object v0, p0, Lb/b/f/a/z;->p:Lb/b/f/a/t$a;

    if-eqz v0, :cond_1

    .line 25
    invoke-interface {v0, p1, p2}, Lb/b/f/a/t$a;->a(Lb/b/f/a/k;Z)V

    :cond_1
    return-void
.end method

.method public a(Lb/b/f/a/t$a;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lb/b/f/a/z;->p:Lb/b/f/a/t$a;

    return-void
.end method

.method public a(Z)V
    .locals 0

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lb/b/f/a/z;->s:Z

    .line 3
    iget-object p1, p0, Lb/b/f/a/z;->e:Lb/b/f/a/j;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lb/b/f/a/j;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Lb/b/f/a/A;)Z
    .locals 9

    .line 6
    invoke-virtual {p1}, Lb/b/f/a/k;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 7
    new-instance v0, Lb/b/f/a/s;

    iget-object v3, p0, Lb/b/f/a/z;->c:Landroid/content/Context;

    iget-object v5, p0, Lb/b/f/a/z;->o:Landroid/view/View;

    iget-boolean v6, p0, Lb/b/f/a/z;->f:Z

    iget v7, p0, Lb/b/f/a/z;->h:I

    iget v8, p0, Lb/b/f/a/z;->i:I

    move-object v2, v0

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Lb/b/f/a/s;-><init>(Landroid/content/Context;Lb/b/f/a/k;Landroid/view/View;ZII)V

    .line 8
    iget-object v2, p0, Lb/b/f/a/z;->p:Lb/b/f/a/t$a;

    invoke-virtual {v0, v2}, Lb/b/f/a/s;->a(Lb/b/f/a/t$a;)V

    .line 9
    invoke-static {p1}, Lb/b/f/a/q;->b(Lb/b/f/a/k;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lb/b/f/a/s;->a(Z)V

    .line 10
    iget-object v2, p0, Lb/b/f/a/z;->m:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v0, v2}, Lb/b/f/a/s;->a(Landroid/widget/PopupWindow$OnDismissListener;)V

    const/4 v2, 0x0

    .line 11
    iput-object v2, p0, Lb/b/f/a/z;->m:Landroid/widget/PopupWindow$OnDismissListener;

    .line 12
    iget-object v2, p0, Lb/b/f/a/z;->d:Lb/b/f/a/k;

    invoke-virtual {v2, v1}, Lb/b/f/a/k;->a(Z)V

    .line 13
    iget-object v2, p0, Lb/b/f/a/z;->j:Lb/b/g/P;

    invoke-virtual {v2}, Lb/b/g/N;->a()I

    move-result v2

    .line 14
    iget-object v3, p0, Lb/b/f/a/z;->j:Lb/b/g/P;

    invoke-virtual {v3}, Lb/b/g/N;->g()I

    move-result v3

    .line 15
    iget v4, p0, Lb/b/f/a/z;->u:I

    iget-object v5, p0, Lb/b/f/a/z;->n:Landroid/view/View;

    .line 16
    invoke-static {v5}, Lb/i/k/z;->m(Landroid/view/View;)I

    move-result v5

    .line 17
    invoke-static {v4, v5}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v4

    and-int/lit8 v4, v4, 0x7

    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    .line 18
    iget-object v4, p0, Lb/b/f/a/z;->n:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v2, v4

    .line 19
    :cond_0
    invoke-virtual {v0, v2, v3}, Lb/b/f/a/s;->a(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20
    iget-object v0, p0, Lb/b/f/a/z;->p:Lb/b/f/a/t$a;

    if-eqz v0, :cond_1

    .line 21
    invoke-interface {v0, p1}, Lb/b/f/a/t$a;->a(Lb/b/f/a/k;)Z

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public b()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public b(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lb/b/f/a/z;->j:Lb/b/g/P;

    invoke-virtual {v0, p1}, Lb/b/g/N;->a(I)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/f/a/z;->e:Lb/b/f/a/j;

    invoke-virtual {v0, p1}, Lb/b/f/a/j;->a(Z)V

    return-void
.end method

.method public c(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lb/b/f/a/z;->j:Lb/b/g/P;

    invoke-virtual {v0, p1}, Lb/b/g/N;->b(I)V

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lb/b/f/a/z;->v:Z

    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lb/b/f/a/z;->r:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/b/f/a/z;->j:Lb/b/g/P;

    invoke-virtual {v0}, Lb/b/g/N;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lb/b/f/a/z;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "StandardMenuPopup cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dismiss()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/b/f/a/z;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lb/b/f/a/z;->j:Lb/b/g/P;

    invoke-virtual {v0}, Lb/b/g/N;->dismiss()V

    :cond_0
    return-void
.end method

.method public f()Landroid/widget/ListView;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/f/a/z;->j:Lb/b/g/P;

    invoke-virtual {v0}, Lb/b/g/N;->f()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public final h()Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Lb/b/f/a/z;->c()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean v0, p0, Lb/b/f/a/z;->r:Z

    const/4 v2, 0x0

    if-nez v0, :cond_7

    iget-object v0, p0, Lb/b/f/a/z;->n:Landroid/view/View;

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 3
    :cond_1
    iput-object v0, p0, Lb/b/f/a/z;->o:Landroid/view/View;

    .line 4
    iget-object v0, p0, Lb/b/f/a/z;->j:Lb/b/g/P;

    invoke-virtual {v0, p0}, Lb/b/g/N;->a(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 5
    iget-object v0, p0, Lb/b/f/a/z;->j:Lb/b/g/P;

    invoke-virtual {v0, p0}, Lb/b/g/N;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 6
    iget-object v0, p0, Lb/b/f/a/z;->j:Lb/b/g/P;

    invoke-virtual {v0, v1}, Lb/b/g/N;->a(Z)V

    .line 7
    iget-object v0, p0, Lb/b/f/a/z;->o:Landroid/view/View;

    .line 8
    iget-object v3, p0, Lb/b/f/a/z;->q:Landroid/view/ViewTreeObserver;

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 9
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    iput-object v4, p0, Lb/b/f/a/z;->q:Landroid/view/ViewTreeObserver;

    if-eqz v3, :cond_3

    .line 10
    iget-object v3, p0, Lb/b/f/a/z;->q:Landroid/view/ViewTreeObserver;

    iget-object v4, p0, Lb/b/f/a/z;->k:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 11
    :cond_3
    iget-object v3, p0, Lb/b/f/a/z;->l:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 12
    iget-object v3, p0, Lb/b/f/a/z;->j:Lb/b/g/P;

    invoke-virtual {v3, v0}, Lb/b/g/N;->a(Landroid/view/View;)V

    .line 13
    iget-object v0, p0, Lb/b/f/a/z;->j:Lb/b/g/P;

    iget v3, p0, Lb/b/f/a/z;->u:I

    invoke-virtual {v0, v3}, Lb/b/g/N;->f(I)V

    .line 14
    iget-boolean v0, p0, Lb/b/f/a/z;->s:Z

    const/4 v3, 0x0

    if-nez v0, :cond_4

    .line 15
    iget-object v0, p0, Lb/b/f/a/z;->e:Lb/b/f/a/j;

    iget-object v4, p0, Lb/b/f/a/z;->c:Landroid/content/Context;

    iget v5, p0, Lb/b/f/a/z;->g:I

    invoke-static {v0, v3, v4, v5}, Lb/b/f/a/q;->a(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lb/b/f/a/z;->t:I

    .line 16
    iput-boolean v1, p0, Lb/b/f/a/z;->s:Z

    .line 17
    :cond_4
    iget-object v0, p0, Lb/b/f/a/z;->j:Lb/b/g/P;

    iget v4, p0, Lb/b/f/a/z;->t:I

    invoke-virtual {v0, v4}, Lb/b/g/N;->e(I)V

    .line 18
    iget-object v0, p0, Lb/b/f/a/z;->j:Lb/b/g/P;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lb/b/g/N;->g(I)V

    .line 19
    iget-object v0, p0, Lb/b/f/a/z;->j:Lb/b/g/P;

    invoke-virtual {p0}, Lb/b/f/a/q;->g()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v0, v4}, Lb/b/g/N;->a(Landroid/graphics/Rect;)V

    .line 20
    iget-object v0, p0, Lb/b/f/a/z;->j:Lb/b/g/P;

    invoke-virtual {v0}, Lb/b/g/N;->d()V

    .line 21
    iget-object v0, p0, Lb/b/f/a/z;->j:Lb/b/g/P;

    invoke-virtual {v0}, Lb/b/g/N;->f()Landroid/widget/ListView;

    move-result-object v0

    .line 22
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 23
    iget-boolean v4, p0, Lb/b/f/a/z;->v:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lb/b/f/a/z;->d:Lb/b/f/a/k;

    invoke-virtual {v4}, Lb/b/f/a/k;->h()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 24
    iget-object v4, p0, Lb/b/f/a/z;->c:Landroid/content/Context;

    .line 25
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lb/b/g;->abc_popup_menu_header_item_layout:I

    invoke-virtual {v4, v5, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    const v5, 0x1020016

    .line 26
    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_5

    .line 27
    iget-object v6, p0, Lb/b/f/a/z;->d:Lb/b/f/a/k;

    invoke-virtual {v6}, Lb/b/f/a/k;->h()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    :cond_5
    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 29
    invoke-virtual {v0, v4, v3, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 30
    :cond_6
    iget-object v0, p0, Lb/b/f/a/z;->j:Lb/b/g/P;

    iget-object v2, p0, Lb/b/f/a/z;->e:Lb/b/f/a/j;

    invoke-virtual {v0, v2}, Lb/b/g/N;->a(Landroid/widget/ListAdapter;)V

    .line 31
    iget-object v0, p0, Lb/b/f/a/z;->j:Lb/b/g/P;

    invoke-virtual {v0}, Lb/b/g/N;->d()V

    return v1

    :cond_7
    :goto_1
    return v2
.end method

.method public onDismiss()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lb/b/f/a/z;->r:Z

    .line 2
    iget-object v0, p0, Lb/b/f/a/z;->d:Lb/b/f/a/k;

    invoke-virtual {v0}, Lb/b/f/a/k;->close()V

    .line 3
    iget-object v0, p0, Lb/b/f/a/z;->q:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/b/f/a/z;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lb/b/f/a/z;->q:Landroid/view/ViewTreeObserver;

    .line 5
    :cond_0
    iget-object v0, p0, Lb/b/f/a/z;->q:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lb/b/f/a/z;->k:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lb/b/f/a/z;->q:Landroid/view/ViewTreeObserver;

    .line 7
    :cond_1
    iget-object v0, p0, Lb/b/f/a/z;->o:Landroid/view/View;

    iget-object v1, p0, Lb/b/f/a/z;->l:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 8
    iget-object v0, p0, Lb/b/f/a/z;->m:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_2

    .line 9
    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

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
    invoke-virtual {p0}, Lb/b/f/a/z;->dismiss()V

    return p3

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
