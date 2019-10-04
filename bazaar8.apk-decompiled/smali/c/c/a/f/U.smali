.class public Lc/c/a/f/U;
.super Lc/c/a/f/T;
.source "ItemAppdetailRateInfoBindingImpl.java"


# static fields
.field public static final V:Landroidx/databinding/ViewDataBinding$b;

.field public static final W:Landroid/util/SparseIntArray;


# instance fields
.field public final X:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public Y:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lc/c/a/f/U;->W:Landroid/util/SparseIntArray;

    .line 2
    sget-object v0, Lc/c/a/f/U;->W:Landroid/util/SparseIntArray;

    const v1, 0x7f0a02ce

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3
    sget-object v0, Lc/c/a/f/U;->W:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0343

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 4
    sget-object v0, Lc/c/a/f/U;->W:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0346

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 5
    sget-object v0, Lc/c/a/f/U;->W:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0349

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 6
    sget-object v0, Lc/c/a/f/U;->W:Landroid/util/SparseIntArray;

    const v1, 0x7f0a034c

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 7
    sget-object v0, Lc/c/a/f/U;->W:Landroid/util/SparseIntArray;

    const v1, 0x7f0a034f

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 8
    sget-object v0, Lc/c/a/f/U;->W:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0345

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 9
    sget-object v0, Lc/c/a/f/U;->W:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0348

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 10
    sget-object v0, Lc/c/a/f/U;->W:Landroid/util/SparseIntArray;

    const v1, 0x7f0a034b

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 11
    sget-object v0, Lc/c/a/f/U;->W:Landroid/util/SparseIntArray;

    const v1, 0x7f0a034e

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 12
    sget-object v0, Lc/c/a/f/U;->W:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0351

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 13
    sget-object v0, Lc/c/a/f/U;->W:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0354

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 14
    sget-object v0, Lc/c/a/f/U;->W:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0105

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Lb/l/f;Landroid/view/View;)V
    .locals 3

    .line 1
    sget-object v0, Lc/c/a/f/U;->V:Landroidx/databinding/ViewDataBinding$b;

    sget-object v1, Lc/c/a/f/U;->W:Landroid/util/SparseIntArray;

    const/16 v2, 0x15

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->a(Lb/l/f;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$b;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lc/c/a/f/U;-><init>(Lb/l/f;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lb/l/f;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 25

    move-object/from16 v3, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v4, 0x6

    .line 2
    aget-object v4, p3, v4

    check-cast v4, Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v5, 0x7

    aget-object v5, p3, v5

    check-cast v5, Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v6, 0x14

    aget-object v6, p3, v6

    check-cast v6, Landroid/widget/Space;

    const/16 v7, 0x8

    aget-object v7, p3, v7

    check-cast v7, Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v8, 0x9

    aget-object v8, p3, v8

    check-cast v8, Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v9, 0x5

    aget-object v9, p3, v9

    check-cast v9, Landroid/widget/ProgressBar;

    const/16 v10, 0xe

    aget-object v10, p3, v10

    check-cast v10, Landroid/widget/TextView;

    const/16 v11, 0xa

    aget-object v11, p3, v11

    check-cast v11, Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v12, 0x1

    aget-object v12, p3, v12

    check-cast v12, Landroid/widget/ProgressBar;

    const/16 v13, 0xf

    aget-object v13, p3, v13

    check-cast v13, Landroid/widget/TextView;

    const/16 v14, 0xb

    aget-object v14, p3, v14

    check-cast v14, Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v15, 0x2

    aget-object v15, p3, v15

    check-cast v15, Landroid/widget/ProgressBar;

    const/16 v16, 0x10

    aget-object v16, p3, v16

    check-cast v16, Landroid/widget/TextView;

    const/16 v17, 0xc

    aget-object v17, p3, v17

    check-cast v17, Landroidx/appcompat/widget/AppCompatImageView;

    const/16 v18, 0x3

    aget-object v18, p3, v18

    check-cast v18, Landroid/widget/ProgressBar;

    const/16 v19, 0x11

    aget-object v19, p3, v19

    check-cast v19, Landroid/widget/TextView;

    const/16 v20, 0xd

    aget-object v20, p3, v20

    check-cast v20, Landroidx/appcompat/widget/AppCompatImageView;

    const/16 v21, 0x4

    aget-object v21, p3, v21

    check-cast v21, Landroid/widget/ProgressBar;

    const/16 v22, 0x12

    aget-object v22, p3, v22

    check-cast v22, Landroid/widget/TextView;

    const/16 v23, 0x13

    aget-object v23, p3, v23

    check-cast v23, Landroidx/constraintlayout/widget/Barrier;

    const/16 v24, 0x0

    move/from16 v3, v24

    invoke-direct/range {v0 .. v23}, Lc/c/a/f/T;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/Space;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroidx/constraintlayout/widget/Barrier;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    .line 3
    iput-wide v0, v2, Lc/c/a/f/U;->Y:J

    .line 4
    iget-object v0, v2, Lc/c/a/f/T;->A:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object v0, v2, Lc/c/a/f/T;->B:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 6
    aget-object v0, p3, v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, v2, Lc/c/a/f/U;->X:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 7
    iget-object v0, v2, Lc/c/a/f/U;->X:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object v0, v2, Lc/c/a/f/T;->F:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setTag(Ljava/lang/Object;)V

    .line 9
    iget-object v0, v2, Lc/c/a/f/T;->I:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setTag(Ljava/lang/Object;)V

    .line 10
    iget-object v0, v2, Lc/c/a/f/T;->L:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setTag(Ljava/lang/Object;)V

    .line 11
    iget-object v0, v2, Lc/c/a/f/T;->O:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setTag(Ljava/lang/Object;)V

    .line 12
    iget-object v0, v2, Lc/c/a/f/T;->R:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 13
    invoke-virtual {v2, v0}, Landroidx/databinding/ViewDataBinding;->b(Landroid/view/View;)V

    .line 14
    invoke-virtual/range {p0 .. p0}, Lc/c/a/f/U;->l()V

    return-void
.end method


# virtual methods
.method public a(Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;)V
    .locals 4

    .line 2
    iput-object p1, p0, Lc/c/a/f/T;->U:Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/U;->Y:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lc/c/a/f/U;->Y:J

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x2d

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

.method public a(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x2d

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;

    invoke-virtual {p0, p2}, Lc/c/a/f/U;->a(Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b(ILjava/lang/Object;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public e()V
    .locals 16

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lc/c/a/f/U;->Y:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lc/c/a/f/U;->Y:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 5
    iget-object v6, v1, Lc/c/a/f/T;->U:Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;

    const-wide/16 v7, 0x3

    and-long/2addr v2, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    cmp-long v9, v2, v4

    if-eqz v9, :cond_1

    if-eqz v6, :cond_0

    .line 6
    invoke-virtual {v6}, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->getRate()F

    move-result v0

    .line 7
    invoke-virtual {v6}, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->getRate5()I

    move-result v7

    .line 8
    invoke-virtual {v6}, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->getRate4()I

    move-result v9

    .line 9
    invoke-virtual {v6}, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->getRate3()I

    move-result v10

    .line 10
    invoke-virtual {v6}, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->getRate2()I

    move-result v11

    .line 11
    invoke-virtual {v6}, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->getRate1()I

    move-result v12

    .line 12
    invoke-virtual {v6}, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->getReviewCount()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_0
    move-object v6, v7

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 13
    :goto_0
    iget-object v13, v1, Lc/c/a/f/T;->A:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f10018f

    const/4 v15, 0x1

    new-array v4, v15, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-virtual {v13, v14, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 14
    iget-object v4, v1, Lc/c/a/f/T;->B:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1001a6

    new-array v13, v15, [Ljava/lang/Object;

    aput-object v6, v13, v8

    invoke-virtual {v4, v5, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move v8, v12

    const-wide/16 v5, 0x0

    goto :goto_1

    :cond_1
    move-wide v5, v4

    move-object v0, v7

    move-object v4, v0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1
    cmp-long v12, v2, v5

    if-eqz v12, :cond_2

    .line 15
    iget-object v2, v1, Lc/c/a/f/T;->A:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v2, v0}, Lb/l/a/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 16
    iget-object v0, v1, Lc/c/a/f/T;->B:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v4}, Lb/l/a/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 17
    iget-object v0, v1, Lc/c/a/f/T;->F:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 18
    iget-object v0, v1, Lc/c/a/f/T;->I:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v11}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 19
    iget-object v0, v1, Lc/c/a/f/T;->L:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v10}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 20
    iget-object v0, v1, Lc/c/a/f/T;->O:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v9}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 21
    iget-object v0, v1, Lc/c/a/f/T;->R:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 22
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
    iget-wide v0, p0, Lc/c/a/f/U;->Y:J

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

    const-wide/16 v0, 0x2

    .line 2
    :try_start_0
    iput-wide v0, p0, Lc/c/a/f/U;->Y:J

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
