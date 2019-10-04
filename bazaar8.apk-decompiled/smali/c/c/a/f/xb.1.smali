.class public Lc/c/a/f/xb;
.super Lc/c/a/f/wb;
.source "ItemSearchHistoryBindingImpl.java"

# interfaces
.implements Lc/c/a/j/a/a$a;


# static fields
.field public static final J:Landroidx/databinding/ViewDataBinding$b;

.field public static final K:Landroid/util/SparseIntArray;


# instance fields
.field public final L:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final M:Landroid/view/View$OnClickListener;

.field public final N:Landroid/view/View$OnClickListener;

.field public O:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lc/c/a/f/xb;->K:Landroid/util/SparseIntArray;

    .line 2
    sget-object v0, Lc/c/a/f/xb;->K:Landroid/util/SparseIntArray;

    const v1, 0x7f0a03f6

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Lb/l/f;Landroid/view/View;)V
    .locals 3

    .line 1
    sget-object v0, Lc/c/a/f/xb;->J:Landroidx/databinding/ViewDataBinding$b;

    sget-object v1, Lc/c/a/f/xb;->K:Landroid/util/SparseIntArray;

    const/4 v2, 0x5

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->a(Lb/l/f;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$b;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lc/c/a/f/xb;-><init>(Lb/l/f;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lb/l/f;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 10

    const/4 v0, 0x2

    .line 2
    aget-object v1, p3, v0

    move-object v6, v1

    check-cast v6, Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    const/4 v1, 0x3

    aget-object v1, p3, v1

    move-object v7, v1

    check-cast v7, Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v1, 0x1

    aget-object v2, p3, v1

    move-object v8, v2

    check-cast v8, Lcom/farsitel/bazaar/widget/RTLImageView;

    const/4 v2, 0x4

    aget-object v2, p3, v2

    move-object v9, v2

    check-cast v9, Landroid/view/View;

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v9}, Lc/c/a/f/wb;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/farsitel/bazaar/widget/LocalAwareTextView;Landroidx/appcompat/widget/AppCompatImageView;Lcom/farsitel/bazaar/widget/RTLImageView;Landroid/view/View;)V

    const-wide/16 v2, -0x1

    .line 3
    iput-wide v2, p0, Lc/c/a/f/xb;->O:J

    const/4 p1, 0x0

    .line 4
    aget-object p1, p3, p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lc/c/a/f/xb;->L:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 5
    iget-object p1, p0, Lc/c/a/f/xb;->L:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lc/c/a/f/wb;->A:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lc/c/a/f/wb;->B:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lc/c/a/f/wb;->C:Lcom/farsitel/bazaar/widget/RTLImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->b(Landroid/view/View;)V

    .line 10
    new-instance p1, Lc/c/a/j/a/a;

    invoke-direct {p1, p0, v1}, Lc/c/a/j/a/a;-><init>(Lc/c/a/j/a/a$a;I)V

    iput-object p1, p0, Lc/c/a/f/xb;->M:Landroid/view/View$OnClickListener;

    .line 11
    new-instance p1, Lc/c/a/j/a/a;

    invoke-direct {p1, p0, v0}, Lc/c/a/j/a/a;-><init>(Lc/c/a/j/a/a$a;I)V

    iput-object p1, p0, Lc/c/a/f/xb;->N:Landroid/view/View$OnClickListener;

    .line 12
    invoke-virtual {p0}, Lc/c/a/f/xb;->l()V

    return-void
.end method


# virtual methods
.method public a(Lc/c/a/n/w/a;)V
    .locals 4

    .line 20
    iput-object p1, p0, Lc/c/a/f/wb;->E:Lc/c/a/n/w/a;

    .line 21
    monitor-enter p0

    .line 22
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/xb;->O:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lc/c/a/f/xb;->O:J

    .line 23
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x29

    .line 24
    invoke-virtual {p0, p1}, Lb/l/a;->a(I)V

    .line 25
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->k()V

    return-void

    :catchall_0
    move-exception p1

    .line 26
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Lc/c/a/n/w/o;)V
    .locals 4

    .line 13
    iput-object p1, p0, Lc/c/a/f/wb;->F:Lc/c/a/n/w/o;

    .line 14
    monitor-enter p0

    .line 15
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/xb;->O:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lc/c/a/f/xb;->O:J

    .line 16
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x34

    .line 17
    invoke-virtual {p0, p1}, Lb/l/a;->a(I)V

    .line 18
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->k()V

    return-void

    :catchall_0
    move-exception p1

    .line 19
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Lcom/farsitel/bazaar/ui/search/SearchHistoryItem;)V
    .locals 4

    .line 6
    iput-object p1, p0, Lc/c/a/f/wb;->H:Lcom/farsitel/bazaar/ui/search/SearchHistoryItem;

    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/xb;->O:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lc/c/a/f/xb;->O:J

    .line 9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x2d

    .line 10
    invoke-virtual {p0, p1}, Lb/l/a;->a(I)V

    .line 11
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->k()V

    return-void

    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x24

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p2}, Lc/c/a/f/xb;->b(Ljava/lang/Integer;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x2d

    if-ne v0, p1, :cond_1

    .line 2
    check-cast p2, Lcom/farsitel/bazaar/ui/search/SearchHistoryItem;

    invoke-virtual {p0, p2}, Lc/c/a/f/xb;->a(Lcom/farsitel/bazaar/ui/search/SearchHistoryItem;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x34

    if-ne v0, p1, :cond_2

    .line 3
    check-cast p2, Lc/c/a/n/w/o;

    invoke-virtual {p0, p2}, Lc/c/a/f/xb;->a(Lc/c/a/n/w/o;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x29

    if-ne v0, p1, :cond_3

    .line 4
    check-cast p2, Lc/c/a/n/w/a;

    invoke-virtual {p0, p2}, Lc/c/a/f/xb;->a(Lc/c/a/n/w/a;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    if-ne v0, p1, :cond_4

    .line 5
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lc/c/a/f/xb;->b(Ljava/lang/Boolean;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public final b(ILandroid/view/View;)V
    .locals 3

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    iget-object p1, p0, Lc/c/a/f/wb;->H:Lcom/farsitel/bazaar/ui/search/SearchHistoryItem;

    .line 16
    iget-object v1, p0, Lc/c/a/f/wb;->F:Lc/c/a/n/w/o;

    if-eqz v1, :cond_1

    const/4 p2, 0x1

    :cond_1
    if-eqz p2, :cond_4

    .line 17
    invoke-interface {v1, p1}, Lc/c/a/n/w/o;->a(Lcom/farsitel/bazaar/ui/search/SearchHistoryItem;)V

    goto :goto_0

    .line 18
    :cond_2
    iget-object p1, p0, Lc/c/a/f/wb;->H:Lcom/farsitel/bazaar/ui/search/SearchHistoryItem;

    .line 19
    iget-object v1, p0, Lc/c/a/f/wb;->G:Ljava/lang/Integer;

    .line 20
    iget-object v2, p0, Lc/c/a/f/wb;->E:Lc/c/a/n/w/a;

    if-eqz v2, :cond_3

    const/4 p2, 0x1

    :cond_3
    if-eqz p2, :cond_4

    .line 21
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {v2, p1, p2}, Lc/c/a/n/w/a;->a(Lcom/farsitel/bazaar/common/model/RecyclerData;I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/Boolean;)V
    .locals 4

    .line 8
    iput-object p1, p0, Lc/c/a/f/wb;->I:Ljava/lang/Boolean;

    .line 9
    monitor-enter p0

    .line 10
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/xb;->O:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Lc/c/a/f/xb;->O:J

    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x3

    .line 12
    invoke-virtual {p0, p1}, Lb/l/a;->a(I)V

    .line 13
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->k()V

    return-void

    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public b(Ljava/lang/Integer;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lc/c/a/f/wb;->G:Ljava/lang/Integer;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/xb;->O:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lc/c/a/f/xb;->O:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x24

    .line 5
    invoke-virtual {p0, p1}, Lb/l/a;->a(I)V

    .line 6
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->k()V

    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public b(ILjava/lang/Object;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public e()V
    .locals 14

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/xb;->O:J

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, p0, Lc/c/a/f/xb;->O:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v4, p0, Lc/c/a/f/wb;->G:Ljava/lang/Integer;

    .line 6
    iget-object v4, p0, Lc/c/a/f/wb;->H:Lcom/farsitel/bazaar/ui/search/SearchHistoryItem;

    .line 7
    iget-object v5, p0, Lc/c/a/f/wb;->F:Lc/c/a/n/w/o;

    .line 8
    iget-object v5, p0, Lc/c/a/f/wb;->E:Lc/c/a/n/w/a;

    .line 9
    iget-object v5, p0, Lc/c/a/f/wb;->I:Ljava/lang/Boolean;

    const-wide/16 v6, 0x22

    and-long v8, v0, v6

    const/4 v10, 0x0

    cmp-long v11, v8, v2

    if-eqz v11, :cond_5

    if-eqz v4, :cond_0

    .line 10
    invoke-virtual {v4}, Lcom/farsitel/bazaar/ui/search/SearchHistoryItem;->a()Ljava/lang/String;

    move-result-object v10

    .line 11
    invoke-virtual {v4}, Lcom/farsitel/bazaar/ui/search/SearchHistoryItem;->b()Lcom/farsitel/bazaar/ui/search/SearchHistoryType;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v10

    .line 12
    :goto_0
    sget-object v11, Lcom/farsitel/bazaar/ui/search/SearchHistoryType;->HISTORY:Lcom/farsitel/bazaar/ui/search/SearchHistoryType;

    if-ne v4, v11, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    cmp-long v11, v8, v2

    if-eqz v11, :cond_3

    if-eqz v4, :cond_2

    const-wide/16 v8, 0x80

    goto :goto_2

    :cond_2
    const-wide/16 v8, 0x40

    :goto_2
    or-long/2addr v0, v8

    :cond_3
    if-eqz v4, :cond_4

    .line 13
    iget-object v4, p0, Lc/c/a/f/wb;->C:Lcom/farsitel/bazaar/widget/RTLImageView;

    const v8, 0x7f080140

    goto :goto_3

    :cond_4
    iget-object v4, p0, Lc/c/a/f/wb;->C:Lcom/farsitel/bazaar/widget/RTLImageView;

    const v8, 0x7f080148

    :goto_3
    invoke-static {v4, v8}, Landroidx/databinding/ViewDataBinding;->b(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_4

    :cond_5
    move-object v4, v10

    :goto_4
    const-wide/16 v8, 0x30

    and-long/2addr v8, v0

    const-wide/16 v11, 0x20

    and-long/2addr v11, v0

    cmp-long v13, v11, v2

    if-eqz v13, :cond_6

    .line 14
    iget-object v11, p0, Lc/c/a/f/xb;->L:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v12, p0, Lc/c/a/f/xb;->M:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object v11, p0, Lc/c/a/f/wb;->B:Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v12, p0, Lc/c/a/f/xb;->N:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    and-long/2addr v0, v6

    cmp-long v6, v0, v2

    if-eqz v6, :cond_7

    .line 16
    iget-object v0, p0, Lc/c/a/f/wb;->A:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    invoke-static {v0, v10}, Lc/c/a/d/a/b;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lc/c/a/f/wb;->C:Lcom/farsitel/bazaar/widget/RTLImageView;

    invoke-static {v0, v4}, Lb/l/a/c;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    :cond_7
    cmp-long v0, v8, v2

    if-eqz v0, :cond_8

    .line 18
    iget-object v0, p0, Lc/c/a/f/wb;->B:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v0, v5}, Lc/c/a/d/a/b;->a(Landroid/view/View;Ljava/lang/Object;)V

    :cond_8
    return-void

    :catchall_0
    move-exception v0

    .line 19
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
    iget-wide v0, p0, Lc/c/a/f/xb;->O:J

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

    const-wide/16 v0, 0x20

    .line 2
    :try_start_0
    iput-wide v0, p0, Lc/c/a/f/xb;->O:J

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
