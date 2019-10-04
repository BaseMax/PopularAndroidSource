.class public Lc/c/a/f/vb;
.super Lc/c/a/f/ub;
.source "ItemScrollableBindingImpl.java"

# interfaces
.implements Lc/c/a/j/a/a$a;


# static fields
.field public static final H:Landroidx/databinding/ViewDataBinding$b;

.field public static final I:Landroid/util/SparseIntArray;


# instance fields
.field public final J:Landroid/widget/LinearLayout;

.field public final K:Landroid/view/View$OnClickListener;

.field public final L:Landroid/view/View$OnClickListener;

.field public final M:Landroid/view/View$OnClickListener;

.field public N:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lc/c/a/f/vb;->I:Landroid/util/SparseIntArray;

    .line 2
    sget-object v0, Lc/c/a/f/vb;->I:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0300

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3
    sget-object v0, Lc/c/a/f/vb;->I:Landroid/util/SparseIntArray;

    const v1, 0x7f0a02ff

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Lb/l/f;Landroid/view/View;)V
    .locals 3

    .line 1
    sget-object v0, Lc/c/a/f/vb;->H:Landroidx/databinding/ViewDataBinding$b;

    sget-object v1, Lc/c/a/f/vb;->I:Landroid/util/SparseIntArray;

    const/4 v2, 0x6

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->a(Lb/l/f;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$b;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lc/c/a/f/vb;-><init>(Lb/l/f;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lb/l/f;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 12

    const/4 v0, 0x2

    .line 2
    aget-object v1, p3, v0

    move-object v6, v1

    check-cast v6, Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, 0x3

    aget-object v2, p3, v1

    move-object v7, v2

    check-cast v7, Lcom/farsitel/bazaar/widget/RTLImageView;

    const/4 v11, 0x1

    aget-object v2, p3, v11

    move-object v8, v2

    check-cast v8, Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    const/4 v2, 0x5

    aget-object v2, p3, v2

    move-object v9, v2

    check-cast v9, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x4

    aget-object v2, p3, v2

    move-object v10, v2

    check-cast v10, Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v10}, Lc/c/a/f/ub;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/appcompat/widget/AppCompatTextView;Lcom/farsitel/bazaar/widget/RTLImageView;Lcom/farsitel/bazaar/widget/LocalAwareTextView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/LinearLayout;)V

    const-wide/16 v2, -0x1

    .line 3
    iput-wide v2, p0, Lc/c/a/f/vb;->N:J

    const/4 p1, 0x0

    .line 4
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lc/c/a/f/vb;->J:Landroid/widget/LinearLayout;

    .line 5
    iget-object p1, p0, Lc/c/a/f/vb;->J:Landroid/widget/LinearLayout;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lc/c/a/f/ub;->A:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lc/c/a/f/ub;->B:Lcom/farsitel/bazaar/widget/RTLImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lc/c/a/f/ub;->C:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->b(Landroid/view/View;)V

    .line 10
    new-instance p1, Lc/c/a/j/a/a;

    invoke-direct {p1, p0, v0}, Lc/c/a/j/a/a;-><init>(Lc/c/a/j/a/a$a;I)V

    iput-object p1, p0, Lc/c/a/f/vb;->K:Landroid/view/View$OnClickListener;

    .line 11
    new-instance p1, Lc/c/a/j/a/a;

    invoke-direct {p1, p0, v1}, Lc/c/a/j/a/a;-><init>(Lc/c/a/j/a/a$a;I)V

    iput-object p1, p0, Lc/c/a/f/vb;->L:Landroid/view/View$OnClickListener;

    .line 12
    new-instance p1, Lc/c/a/j/a/a;

    invoke-direct {p1, p0, v11}, Lc/c/a/j/a/a;-><init>(Lc/c/a/j/a/a$a;I)V

    iput-object p1, p0, Lc/c/a/f/vb;->M:Landroid/view/View$OnClickListener;

    .line 13
    invoke-virtual {p0}, Lc/c/a/f/vb;->l()V

    return-void
.end method


# virtual methods
.method public a(Lc/c/a/n/c/d/o$a;)V
    .locals 4

    .line 10
    iput-object p1, p0, Lc/c/a/f/ub;->F:Lc/c/a/n/c/d/o$a;

    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/vb;->N:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lc/c/a/f/vb;->N:J

    .line 13
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x7

    .line 14
    invoke-virtual {p0, p1}, Lb/l/a;->a(I)V

    .line 15
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->k()V

    return-void

    :catchall_0
    move-exception p1

    .line 16
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Lcom/farsitel/bazaar/common/model/recycler/AbstractSectionRowData;)V
    .locals 4

    .line 3
    iput-object p1, p0, Lc/c/a/f/ub;->G:Lcom/farsitel/bazaar/common/model/recycler/AbstractSectionRowData;

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/vb;->N:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lc/c/a/f/vb;->N:J

    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x2d

    .line 7
    invoke-virtual {p0, p1}, Lb/l/a;->a(I)V

    .line 8
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->k()V

    return-void

    :catchall_0
    move-exception p1

    .line 9
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
    check-cast p2, Lcom/farsitel/bazaar/common/model/recycler/AbstractSectionRowData;

    invoke-virtual {p0, p2}, Lc/c/a/f/vb;->a(Lcom/farsitel/bazaar/common/model/recycler/AbstractSectionRowData;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    if-ne v0, p1, :cond_1

    .line 2
    check-cast p2, Lc/c/a/n/c/d/o$a;

    invoke-virtual {p0, p2}, Lc/c/a/f/vb;->a(Lc/c/a/n/c/d/o$a;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public final b(ILandroid/view/View;)V
    .locals 2

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lc/c/a/f/ub;->G:Lcom/farsitel/bazaar/common/model/recycler/AbstractSectionRowData;

    .line 2
    iget-object v1, p0, Lc/c/a/f/ub;->F:Lc/c/a/n/c/d/o$a;

    if-eqz v1, :cond_1

    const/4 p2, 0x1

    :cond_1
    if-eqz p2, :cond_6

    .line 3
    invoke-interface {v1, p1}, Lc/c/a/n/c/d/o$a;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object p1, p0, Lc/c/a/f/ub;->G:Lcom/farsitel/bazaar/common/model/recycler/AbstractSectionRowData;

    .line 5
    iget-object v1, p0, Lc/c/a/f/ub;->F:Lc/c/a/n/c/d/o$a;

    if-eqz v1, :cond_3

    const/4 p2, 0x1

    :cond_3
    if-eqz p2, :cond_6

    .line 6
    invoke-interface {v1, p1}, Lc/c/a/n/c/d/o$a;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_4
    iget-object p1, p0, Lc/c/a/f/ub;->G:Lcom/farsitel/bazaar/common/model/recycler/AbstractSectionRowData;

    .line 8
    iget-object v1, p0, Lc/c/a/f/ub;->F:Lc/c/a/n/c/d/o$a;

    if-eqz v1, :cond_5

    const/4 p2, 0x1

    :cond_5
    if-eqz p2, :cond_6

    .line 9
    invoke-interface {v1, p1}, Lc/c/a/n/c/d/o$a;->b(Ljava/lang/Object;)V

    :cond_6
    :goto_0
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
    iget-wide v0, p0, Lc/c/a/f/vb;->N:J

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, p0, Lc/c/a/f/vb;->N:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v4, p0, Lc/c/a/f/ub;->G:Lcom/farsitel/bazaar/common/model/recycler/AbstractSectionRowData;

    .line 6
    iget-object v5, p0, Lc/c/a/f/ub;->F:Lc/c/a/n/c/d/o$a;

    const-wide/16 v5, 0x5

    and-long/2addr v5, v0

    const/4 v7, 0x0

    cmp-long v8, v5, v2

    if-eqz v8, :cond_0

    if-eqz v4, :cond_0

    .line 7
    invoke-interface {v4}, Lcom/farsitel/bazaar/common/model/recycler/AbstractSectionRowData;->getActionLabel()Ljava/lang/String;

    move-result-object v7

    .line 8
    invoke-interface {v4}, Lcom/farsitel/bazaar/common/model/recycler/AbstractSectionRowData;->getTitle()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v7

    :goto_0
    const-wide/16 v8, 0x4

    and-long/2addr v0, v8

    cmp-long v8, v0, v2

    if-eqz v8, :cond_1

    .line 9
    iget-object v0, p0, Lc/c/a/f/ub;->A:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p0, Lc/c/a/f/vb;->K:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v0, p0, Lc/c/a/f/ub;->B:Lcom/farsitel/bazaar/widget/RTLImageView;

    iget-object v1, p0, Lc/c/a/f/vb;->L:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v0, p0, Lc/c/a/f/ub;->C:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    iget-object v1, p0, Lc/c/a/f/vb;->M:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    cmp-long v0, v5, v2

    if-eqz v0, :cond_2

    .line 12
    iget-object v0, p0, Lc/c/a/f/ub;->A:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v7}, Lc/c/a/d/a/b;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 13
    iget-object v0, p0, Lc/c/a/f/ub;->B:Lcom/farsitel/bazaar/widget/RTLImageView;

    invoke-static {v0, v7}, Lc/c/a/d/a/b;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 14
    iget-object v0, p0, Lc/c/a/f/ub;->C:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    invoke-static {v0, v4}, Lb/l/a/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 15
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
    iget-wide v0, p0, Lc/c/a/f/vb;->N:J

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

    const-wide/16 v0, 0x4

    .line 2
    :try_start_0
    iput-wide v0, p0, Lc/c/a/f/vb;->N:J

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
