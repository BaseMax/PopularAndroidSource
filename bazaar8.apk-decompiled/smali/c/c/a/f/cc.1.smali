.class public Lc/c/a/f/cc;
.super Lc/c/a/f/bc;
.source "ItemVideoDetailVideoActionsBindingImpl.java"

# interfaces
.implements Lc/c/a/j/a/a$a;


# static fields
.field public static final L:Landroidx/databinding/ViewDataBinding$b;

.field public static final M:Landroid/util/SparseIntArray;


# instance fields
.field public final N:Landroid/view/View$OnClickListener;

.field public final O:Landroid/view/View$OnClickListener;

.field public final P:Landroid/view/View$OnClickListener;

.field public final Q:Landroid/view/View$OnClickListener;

.field public R:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lc/c/a/f/cc;->M:Landroid/util/SparseIntArray;

    .line 2
    sget-object v0, Lc/c/a/f/cc;->M:Landroid/util/SparseIntArray;

    const v1, 0x7f0a03db

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3
    sget-object v0, Lc/c/a/f/cc;->M:Landroid/util/SparseIntArray;

    const v1, 0x7f0a03dc

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 4
    sget-object v0, Lc/c/a/f/cc;->M:Landroid/util/SparseIntArray;

    const v1, 0x7f0a03ec

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 5
    sget-object v0, Lc/c/a/f/cc;->M:Landroid/util/SparseIntArray;

    const v1, 0x7f0a03f0

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Lb/l/f;Landroid/view/View;)V
    .locals 3

    .line 1
    sget-object v0, Lc/c/a/f/cc;->L:Landroidx/databinding/ViewDataBinding$b;

    sget-object v1, Lc/c/a/f/cc;->M:Landroid/util/SparseIntArray;

    const/16 v2, 0x9

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->a(Lb/l/f;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$b;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lc/c/a/f/cc;-><init>(Lb/l/f;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lb/l/f;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 18

    move-object/from16 v13, p0

    const/4 v0, 0x0

    .line 2
    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/ProgressBar;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v14, 0x4

    aget-object v0, p3, v14

    move-object v8, v0

    check-cast v8, Landroid/view/View;

    const/4 v15, 0x3

    aget-object v0, p3, v15

    move-object v9, v0

    check-cast v9, Lcom/google/android/material/button/MaterialButton;

    const/16 v0, 0x8

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Landroidx/constraintlayout/widget/Group;

    const/4 v12, 0x2

    aget-object v0, p3, v12

    move-object v11, v0

    check-cast v11, Lcom/farsitel/bazaar/widget/LoadingButton;

    const/4 v3, 0x1

    aget-object v0, p3, v3

    move-object/from16 v16, v0

    check-cast v16, Lcom/google/android/material/button/MaterialButton;

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v14, 0x1

    move/from16 v3, v17

    const/4 v15, 0x2

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Lc/c/a/f/bc;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ProgressBar;Lcom/farsitel/bazaar/widget/LocalAwareTextView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/view/View;Lcom/google/android/material/button/MaterialButton;Landroidx/constraintlayout/widget/Group;Lcom/farsitel/bazaar/widget/LoadingButton;Lcom/google/android/material/button/MaterialButton;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, v13, Lc/c/a/f/cc;->R:J

    .line 4
    iget-object v0, v13, Lc/c/a/f/bc;->A:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object v0, v13, Lc/c/a/f/bc;->E:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object v0, v13, Lc/c/a/f/bc;->F:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object v0, v13, Lc/c/a/f/bc;->H:Lcom/farsitel/bazaar/widget/LoadingButton;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object v0, v13, Lc/c/a/f/bc;->I:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 9
    invoke-virtual {v13, v0}, Landroidx/databinding/ViewDataBinding;->b(Landroid/view/View;)V

    .line 10
    new-instance v0, Lc/c/a/j/a/a;

    invoke-direct {v0, v13, v14}, Lc/c/a/j/a/a;-><init>(Lc/c/a/j/a/a$a;I)V

    iput-object v0, v13, Lc/c/a/f/cc;->N:Landroid/view/View$OnClickListener;

    .line 11
    new-instance v0, Lc/c/a/j/a/a;

    invoke-direct {v0, v13, v15}, Lc/c/a/j/a/a;-><init>(Lc/c/a/j/a/a$a;I)V

    iput-object v0, v13, Lc/c/a/f/cc;->O:Landroid/view/View$OnClickListener;

    .line 12
    new-instance v0, Lc/c/a/j/a/a;

    const/4 v1, 0x3

    invoke-direct {v0, v13, v1}, Lc/c/a/j/a/a;-><init>(Lc/c/a/j/a/a$a;I)V

    iput-object v0, v13, Lc/c/a/f/cc;->P:Landroid/view/View$OnClickListener;

    .line 13
    new-instance v0, Lc/c/a/j/a/a;

    const/4 v1, 0x4

    invoke-direct {v0, v13, v1}, Lc/c/a/j/a/a;-><init>(Lc/c/a/j/a/a$a;I)V

    iput-object v0, v13, Lc/c/a/f/cc;->Q:Landroid/view/View$OnClickListener;

    .line 14
    invoke-virtual/range {p0 .. p0}, Lc/c/a/f/cc;->l()V

    return-void
.end method


# virtual methods
.method public a(Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;)V
    .locals 4

    .line 3
    iput-object p1, p0, Lc/c/a/f/bc;->J:Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/cc;->R:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lc/c/a/f/cc;->R:J

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

.method public a(Lcom/farsitel/bazaar/common/model/cinema/VideoInfoClickListener;)V
    .locals 4

    .line 10
    iput-object p1, p0, Lc/c/a/f/bc;->K:Lcom/farsitel/bazaar/common/model/cinema/VideoInfoClickListener;

    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/cc;->R:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lc/c/a/f/cc;->R:J

    .line 13
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x30

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

.method public a(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x2d

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;

    invoke-virtual {p0, p2}, Lc/c/a/f/cc;->a(Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x30

    if-ne v0, p1, :cond_1

    .line 2
    check-cast p2, Lcom/farsitel/bazaar/common/model/cinema/VideoInfoClickListener;

    invoke-virtual {p0, p2}, Lc/c/a/f/cc;->a(Lcom/farsitel/bazaar/common/model/cinema/VideoInfoClickListener;)V

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

    if-eq p1, v0, :cond_6

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lc/c/a/f/bc;->J:Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;

    .line 2
    iget-object v1, p0, Lc/c/a/f/bc;->K:Lcom/farsitel/bazaar/common/model/cinema/VideoInfoClickListener;

    if-eqz v1, :cond_1

    const/4 p2, 0x1

    :cond_1
    if-eqz p2, :cond_8

    .line 3
    invoke-interface {v1, p1}, Lcom/farsitel/bazaar/common/model/cinema/VideoInfoClickListener;->onStopDownloadClicked(Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object p1, p0, Lc/c/a/f/bc;->J:Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;

    .line 5
    iget-object v1, p0, Lc/c/a/f/bc;->K:Lcom/farsitel/bazaar/common/model/cinema/VideoInfoClickListener;

    if-eqz v1, :cond_3

    const/4 p2, 0x1

    :cond_3
    if-eqz p2, :cond_8

    .line 6
    invoke-interface {v1, p1}, Lcom/farsitel/bazaar/common/model/cinema/VideoInfoClickListener;->onDownloadClicked(Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;)V

    goto :goto_0

    .line 7
    :cond_4
    iget-object p1, p0, Lc/c/a/f/bc;->J:Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;

    .line 8
    iget-object v1, p0, Lc/c/a/f/bc;->K:Lcom/farsitel/bazaar/common/model/cinema/VideoInfoClickListener;

    if-eqz v1, :cond_5

    const/4 p2, 0x1

    :cond_5
    if-eqz p2, :cond_8

    .line 9
    invoke-interface {v1, p1}, Lcom/farsitel/bazaar/common/model/cinema/VideoInfoClickListener;->onPlayClicked(Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;)V

    goto :goto_0

    .line 10
    :cond_6
    iget-object p1, p0, Lc/c/a/f/bc;->J:Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;

    .line 11
    iget-object v1, p0, Lc/c/a/f/bc;->K:Lcom/farsitel/bazaar/common/model/cinema/VideoInfoClickListener;

    if-eqz v1, :cond_7

    const/4 p2, 0x1

    :cond_7
    if-eqz p2, :cond_8

    .line 12
    invoke-interface {v1, p1}, Lcom/farsitel/bazaar/common/model/cinema/VideoInfoClickListener;->onPurchaseClicked(Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;)V

    :cond_8
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
    iget-wide v0, p0, Lc/c/a/f/cc;->R:J

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, p0, Lc/c/a/f/cc;->R:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    .line 5
    iget-object v5, p0, Lc/c/a/f/bc;->J:Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;

    .line 6
    iget-object v6, p0, Lc/c/a/f/bc;->K:Lcom/farsitel/bazaar/common/model/cinema/VideoInfoClickListener;

    const-wide/16 v6, 0x5

    and-long/2addr v6, v0

    cmp-long v8, v6, v2

    if-eqz v8, :cond_0

    if-eqz v5, :cond_0

    .line 7
    invoke-virtual {v5}, Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;->getShowLoadingButton()Z

    move-result v4

    :cond_0
    const-wide/16 v8, 0x4

    and-long/2addr v0, v8

    cmp-long v5, v0, v2

    if-eqz v5, :cond_1

    .line 8
    iget-object v0, p0, Lc/c/a/f/bc;->E:Landroid/view/View;

    iget-object v1, p0, Lc/c/a/f/cc;->Q:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p0, Lc/c/a/f/bc;->F:Lcom/google/android/material/button/MaterialButton;

    iget-object v1, p0, Lc/c/a/f/cc;->P:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v0, p0, Lc/c/a/f/bc;->H:Lcom/farsitel/bazaar/widget/LoadingButton;

    iget-object v1, p0, Lc/c/a/f/cc;->O:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/farsitel/bazaar/widget/LoadingButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v0, p0, Lc/c/a/f/bc;->I:Lcom/google/android/material/button/MaterialButton;

    iget-object v1, p0, Lc/c/a/f/cc;->N:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    cmp-long v0, v6, v2

    if-eqz v0, :cond_2

    .line 12
    iget-object v0, p0, Lc/c/a/f/bc;->H:Lcom/farsitel/bazaar/widget/LoadingButton;

    invoke-virtual {v0, v4}, Lcom/farsitel/bazaar/widget/LoadingButton;->setShowLoading(Z)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 13
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
    iget-wide v0, p0, Lc/c/a/f/cc;->R:J

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
    iput-wide v0, p0, Lc/c/a/f/cc;->R:J

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
