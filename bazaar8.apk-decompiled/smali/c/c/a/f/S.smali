.class public Lc/c/a/f/S;
.super Lc/c/a/f/Q;
.source "ItemAppdetailMyRateBindingImpl.java"

# interfaces
.implements Lc/c/a/j/a/c$a;
.implements Lc/c/a/j/a/a$a;


# static fields
.field public static final G:Landroidx/databinding/ViewDataBinding$b;

.field public static final H:Landroid/util/SparseIntArray;


# instance fields
.field public final I:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final J:Landroid/widget/RatingBar$OnRatingBarChangeListener;

.field public final K:Landroid/view/View$OnClickListener;

.field public L:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lc/c/a/f/S;->H:Landroid/util/SparseIntArray;

    .line 2
    sget-object v0, Lc/c/a/f/S;->H:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0234

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Lb/l/f;Landroid/view/View;)V
    .locals 3

    .line 1
    sget-object v0, Lc/c/a/f/S;->G:Landroidx/databinding/ViewDataBinding$b;

    sget-object v1, Lc/c/a/f/S;->H:Landroid/util/SparseIntArray;

    const/4 v2, 0x4

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->a(Lb/l/f;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$b;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lc/c/a/f/S;-><init>(Lb/l/f;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lb/l/f;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 9

    const/4 v0, 0x2

    .line 2
    aget-object v1, p3, v0

    move-object v6, v1

    check-cast v6, Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, 0x3

    aget-object v1, p3, v1

    move-object v7, v1

    check-cast v7, Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, 0x1

    aget-object v2, p3, v1

    move-object v8, v2

    check-cast v8, Landroid/widget/RatingBar;

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v8}, Lc/c/a/f/Q;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/RatingBar;)V

    const-wide/16 v2, -0x1

    .line 3
    iput-wide v2, p0, Lc/c/a/f/S;->L:J

    .line 4
    iget-object p1, p0, Lc/c/a/f/Q;->A:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 5
    aget-object p1, p3, p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lc/c/a/f/S;->I:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 6
    iget-object p1, p0, Lc/c/a/f/S;->I:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lc/c/a/f/Q;->C:Landroid/widget/RatingBar;

    invoke-virtual {p1, v2}, Landroid/widget/RatingBar;->setTag(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->b(Landroid/view/View;)V

    .line 9
    new-instance p1, Lc/c/a/j/a/c;

    invoke-direct {p1, p0, v1}, Lc/c/a/j/a/c;-><init>(Lc/c/a/j/a/c$a;I)V

    iput-object p1, p0, Lc/c/a/f/S;->J:Landroid/widget/RatingBar$OnRatingBarChangeListener;

    .line 10
    new-instance p1, Lc/c/a/j/a/a;

    invoke-direct {p1, p0, v0}, Lc/c/a/j/a/a;-><init>(Lc/c/a/j/a/a$a;I)V

    iput-object p1, p0, Lc/c/a/f/S;->K:Landroid/view/View$OnClickListener;

    .line 11
    invoke-virtual {p0}, Lc/c/a/f/S;->l()V

    return-void
.end method


# virtual methods
.method public final a(ILandroid/widget/RatingBar;FZ)V
    .locals 0

    .line 25
    iget-object p1, p0, Lc/c/a/f/Q;->F:Lc/c/a/n/b/d/i;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 26
    invoke-interface {p1, p3, p4}, Lc/c/a/n/b/d/i;->a(FZ)V

    :cond_1
    return-void
.end method

.method public a(Lc/c/a/n/b/d/i;)V
    .locals 4

    .line 11
    iput-object p1, p0, Lc/c/a/f/Q;->F:Lc/c/a/n/b/d/i;

    .line 12
    monitor-enter p0

    .line 13
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/S;->L:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lc/c/a/f/S;->L:J

    .line 14
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x12

    .line 15
    invoke-virtual {p0, p1}, Lb/l/a;->a(I)V

    .line 16
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->k()V

    return-void

    :catchall_0
    move-exception p1

    .line 17
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Lc/c/a/n/c/d/m;)V
    .locals 4

    .line 18
    iput-object p1, p0, Lc/c/a/f/Q;->E:Lc/c/a/n/c/d/m;

    .line 19
    monitor-enter p0

    .line 20
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/S;->L:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lc/c/a/f/S;->L:J

    .line 21
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x29

    .line 22
    invoke-virtual {p0, p1}, Lb/l/a;->a(I)V

    .line 23
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->k()V

    return-void

    :catchall_0
    move-exception p1

    .line 24
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Lcom/farsitel/bazaar/common/model/appdetail/AppMyRateItem;)V
    .locals 4

    .line 4
    iput-object p1, p0, Lc/c/a/f/Q;->D:Lcom/farsitel/bazaar/common/model/appdetail/AppMyRateItem;

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/S;->L:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lc/c/a/f/S;->L:J

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x2d

    .line 8
    invoke-virtual {p0, p1}, Lb/l/a;->a(I)V

    .line 9
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->k()V

    return-void

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x2d

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Lcom/farsitel/bazaar/common/model/appdetail/AppMyRateItem;

    invoke-virtual {p0, p2}, Lc/c/a/f/S;->a(Lcom/farsitel/bazaar/common/model/appdetail/AppMyRateItem;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x12

    if-ne v0, p1, :cond_1

    .line 2
    check-cast p2, Lc/c/a/n/b/d/i;

    invoke-virtual {p0, p2}, Lc/c/a/f/S;->a(Lc/c/a/n/b/d/i;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x29

    if-ne v0, p1, :cond_2

    .line 3
    check-cast p2, Lc/c/a/n/c/d/m;

    invoke-virtual {p0, p2}, Lc/c/a/f/S;->a(Lc/c/a/n/c/d/m;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public final b(ILandroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lc/c/a/f/Q;->D:Lcom/farsitel/bazaar/common/model/appdetail/AppMyRateItem;

    .line 2
    iget-object p2, p0, Lc/c/a/f/Q;->E:Lc/c/a/n/c/d/m;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    invoke-interface {p2, p1}, Lc/c/a/n/c/d/m;->a(Lcom/farsitel/bazaar/common/model/RecyclerData;)V

    :cond_1
    return-void
.end method

.method public b(ILjava/lang/Object;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public e()V
    .locals 10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/S;->L:J

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, p0, Lc/c/a/f/S;->L:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v4, p0, Lc/c/a/f/Q;->D:Lcom/farsitel/bazaar/common/model/appdetail/AppMyRateItem;

    .line 6
    iget-object v5, p0, Lc/c/a/f/Q;->F:Lc/c/a/n/b/d/i;

    const/4 v5, 0x0

    .line 7
    iget-object v6, p0, Lc/c/a/f/Q;->E:Lc/c/a/n/c/d/m;

    const-wide/16 v6, 0x9

    and-long/2addr v6, v0

    cmp-long v8, v6, v2

    if-eqz v8, :cond_0

    if-eqz v4, :cond_0

    .line 8
    invoke-virtual {v4}, Lcom/farsitel/bazaar/common/model/appdetail/AppMyRateItem;->getMyRate()I

    move-result v5

    :cond_0
    const-wide/16 v8, 0x8

    and-long/2addr v0, v8

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 9
    iget-object v0, p0, Lc/c/a/f/Q;->A:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p0, Lc/c/a/f/S;->K:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v0, p0, Lc/c/a/f/Q;->C:Landroid/widget/RatingBar;

    iget-object v1, p0, Lc/c/a/f/S;->J:Landroid/widget/RatingBar$OnRatingBarChangeListener;

    const/4 v4, 0x0

    invoke-static {v0, v1, v4}, Lb/l/a/e;->a(Landroid/widget/RatingBar;Landroid/widget/RatingBar$OnRatingBarChangeListener;Lb/l/h;)V

    :cond_1
    cmp-long v0, v6, v2

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p0, Lc/c/a/f/Q;->C:Landroid/widget/RatingBar;

    int-to-float v1, v5

    invoke-static {v0, v1}, Lb/l/a/e;->a(Landroid/widget/RatingBar;F)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 12
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public i()Z
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/S;->L:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 3
    monitor-exit p0

    return v0

    .line 4
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public l()V
    .locals 2

    .line 1
    monitor-enter p0

    const-wide/16 v0, 0x8

    .line 2
    :try_start_0
    iput-wide v0, p0, Lc/c/a/f/S;->L:J

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->k()V

    return-void

    :catchall_0
    move-exception v0

    .line 5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
