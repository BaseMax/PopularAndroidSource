.class public Lc/c/a/f/x;
.super Lc/c/a/f/w;
.source "FragmentScreenshotBindingImpl.java"


# static fields
.field public static final I:Landroidx/databinding/ViewDataBinding$b;

.field public static final J:Landroid/util/SparseIntArray;


# instance fields
.field public final K:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field public L:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lc/c/a/f/x;->J:Landroid/util/SparseIntArray;

    .line 2
    sget-object v0, Lc/c/a/f/x;->J:Landroid/util/SparseIntArray;

    const v1, 0x7f0a02f4

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3
    sget-object v0, Lc/c/a/f/x;->J:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0089

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 4
    sget-object v0, Lc/c/a/f/x;->J:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0391

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 5
    sget-object v0, Lc/c/a/f/x;->J:Landroid/util/SparseIntArray;

    const v1, 0x7f0a02f3

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Lb/l/f;Landroid/view/View;)V
    .locals 3

    .line 1
    sget-object v0, Lc/c/a/f/x;->I:Landroidx/databinding/ViewDataBinding$b;

    sget-object v1, Lc/c/a/f/x;->J:Landroid/util/SparseIntArray;

    const/4 v2, 0x7

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->a(Lb/l/f;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$b;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lc/c/a/f/x;-><init>(Lb/l/f;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lb/l/f;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 11

    const/4 v0, 0x4

    .line 2
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Lcom/farsitel/bazaar/widget/RTLImageView;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroidx/viewpager/widget/ViewPager;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Landroidx/appcompat/widget/Toolbar;

    const/4 v4, 0x2

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v10}, Lc/c/a/f/w;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/google/android/material/appbar/AppBarLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Lcom/farsitel/bazaar/widget/RTLImageView;Landroidx/viewpager/widget/ViewPager;Landroidx/appcompat/widget/Toolbar;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lc/c/a/f/x;->L:J

    .line 4
    iget-object p1, p0, Lc/c/a/f/w;->B:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 5
    aget-object p1, p3, p1

    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object p1, p0, Lc/c/a/f/x;->K:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 6
    iget-object p1, p0, Lc/c/a/f/x;->K:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lc/c/a/f/w;->C:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->b(Landroid/view/View;)V

    .line 9
    invoke-virtual {p0}, Lc/c/a/f/x;->l()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/databinding/ObservableField;)V
    .locals 4

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0, p1}, Landroidx/databinding/ViewDataBinding;->a(ILb/l/j;)Z

    .line 4
    iput-object p1, p0, Lc/c/a/f/w;->G:Landroidx/databinding/ObservableField;

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/x;->L:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lc/c/a/f/x;->L:J

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x19

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

    const/16 v0, 0x19

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-virtual {p0, p2}, Lc/c/a/f/x;->a(Landroidx/databinding/ObservableField;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    if-ne v0, p1, :cond_1

    .line 2
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-virtual {p0, p2}, Lc/c/a/f/x;->b(Landroidx/databinding/ObservableField;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public final a(Landroidx/databinding/ObservableField;I)Z
    .locals 2

    if-nez p2, :cond_0

    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget-wide p1, p0, Lc/c/a/f/x;->L:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lc/c/a/f/x;->L:J

    .line 13
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(Landroidx/databinding/ObservableField;)V
    .locals 4

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0, p1}, Landroidx/databinding/ViewDataBinding;->a(ILb/l/j;)Z

    .line 2
    iput-object p1, p0, Lc/c/a/f/w;->H:Landroidx/databinding/ObservableField;

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/x;->L:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lc/c/a/f/x;->L:J

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x6

    .line 6
    invoke-virtual {p0, p1}, Lb/l/a;->a(I)V

    .line 7
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->k()V

    return-void

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public b(ILjava/lang/Object;I)Z
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 9
    :cond_0
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-virtual {p0, p2, p3}, Lc/c/a/f/x;->b(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 10
    :cond_1
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-virtual {p0, p2, p3}, Lc/c/a/f/x;->a(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1
.end method

.method public final b(Landroidx/databinding/ObservableField;I)Z
    .locals 2

    if-nez p2, :cond_0

    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget-wide p1, p0, Lc/c/a/f/x;->L:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lc/c/a/f/x;->L:J

    .line 13
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public e()V
    .locals 11

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/x;->L:J

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, p0, Lc/c/a/f/x;->L:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v4, p0, Lc/c/a/f/w;->G:Landroidx/databinding/ObservableField;

    .line 6
    iget-object v5, p0, Lc/c/a/f/w;->H:Landroidx/databinding/ObservableField;

    const-wide/16 v6, 0x5

    and-long/2addr v6, v0

    const/4 v8, 0x0

    cmp-long v9, v6, v2

    if-eqz v9, :cond_0

    if-eqz v4, :cond_0

    .line 7
    invoke-virtual {v4}, Landroidx/databinding/ObservableField;->b()Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v8

    :goto_0
    const-wide/16 v9, 0x6

    and-long/2addr v0, v9

    cmp-long v9, v0, v2

    if-eqz v9, :cond_1

    if-eqz v5, :cond_1

    .line 8
    invoke-virtual {v5}, Landroidx/databinding/ObservableField;->b()Ljava/lang/Object;

    move-result-object v8

    :cond_1
    cmp-long v5, v6, v2

    if-eqz v5, :cond_2

    .line 9
    iget-object v5, p0, Lc/c/a/f/w;->B:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v5, v4}, Lc/c/a/d/a/b;->a(Landroid/view/View;Ljava/lang/Object;)V

    :cond_2
    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    .line 10
    iget-object v0, p0, Lc/c/a/f/w;->C:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v0, v8}, Lc/c/a/d/a/b;->a(Landroid/view/View;Ljava/lang/Object;)V

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    .line 11
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
    iget-wide v0, p0, Lc/c/a/f/x;->L:J

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
    iput-wide v0, p0, Lc/c/a/f/x;->L:J

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
