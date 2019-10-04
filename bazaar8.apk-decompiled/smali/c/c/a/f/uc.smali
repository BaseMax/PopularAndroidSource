.class public Lc/c/a/f/uc;
.super Lc/c/a/f/tc;
.source "ItemVideoDownloadedBindingImpl.java"

# interfaces
.implements Lc/c/a/j/a/a$a;


# static fields
.field public static final O:Landroidx/databinding/ViewDataBinding$b;

.field public static final P:Landroid/util/SparseIntArray;


# instance fields
.field public final Q:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final R:Landroid/view/View$OnClickListener;

.field public final S:Landroid/view/View$OnClickListener;

.field public final T:Landroid/view/View$OnClickListener;

.field public final U:Landroid/view/View$OnClickListener;

.field public V:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lc/c/a/f/uc;->P:Landroid/util/SparseIntArray;

    .line 2
    sget-object v0, Lc/c/a/f/uc;->P:Landroid/util/SparseIntArray;

    const v1, 0x7f0a00c3

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3
    sget-object v0, Lc/c/a/f/uc;->P:Landroid/util/SparseIntArray;

    const v1, 0x7f0a02dc

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Lb/l/f;Landroid/view/View;)V
    .locals 3

    .line 1
    sget-object v0, Lc/c/a/f/uc;->O:Landroidx/databinding/ViewDataBinding$b;

    sget-object v1, Lc/c/a/f/uc;->P:Landroid/util/SparseIntArray;

    const/16 v2, 0xd

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->a(Lb/l/f;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$b;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lc/c/a/f/uc;-><init>(Lb/l/f;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lb/l/f;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 20

    move-object/from16 v15, p0

    const/16 v0, 0xb

    .line 2
    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Landroid/view/View;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroidx/appcompat/widget/AppCompatImageView;

    const/16 v0, 0xa

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroidx/constraintlayout/widget/Group;

    const/16 v0, 0x8

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/ProgressBar;

    const/16 v0, 0xc

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroidx/constraintlayout/widget/Barrier;

    const/4 v14, 0x1

    aget-object v0, p3, v14

    move-object v9, v0

    check-cast v9, Landroidx/appcompat/widget/AppCompatImageView;

    const/16 v0, 0x9

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object v11, v0

    check-cast v11, Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v13, 0x3

    aget-object v0, p3, v13

    move-object v12, v0

    check-cast v12, Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v3, 0x4

    aget-object v0, p3, v3

    move-object/from16 v16, v0

    check-cast v16, Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v2, 0x2

    aget-object v0, p3, v2

    move-object/from16 v17, v0

    check-cast v17, Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object/from16 v18, v0

    check-cast v18, Lcom/google/android/material/button/MaterialButton;

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v19

    move-object/from16 v13, v16

    move-object/from16 v14, v17

    move-object/from16 v15, v18

    invoke-direct/range {v0 .. v15}, Lc/c/a/f/tc;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/view/View;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/constraintlayout/widget/Group;Landroid/widget/ProgressBar;Landroidx/constraintlayout/widget/Barrier;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Lcom/google/android/material/button/MaterialButton;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    .line 3
    iput-wide v0, v2, Lc/c/a/f/uc;->V:J

    .line 4
    iget-object v0, v2, Lc/c/a/f/tc;->B:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object v0, v2, Lc/c/a/f/tc;->C:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 6
    aget-object v0, p3, v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, v2, Lc/c/a/f/uc;->Q:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 7
    iget-object v0, v2, Lc/c/a/f/uc;->Q:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object v0, v2, Lc/c/a/f/tc;->D:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setTag(Ljava/lang/Object;)V

    .line 9
    iget-object v0, v2, Lc/c/a/f/tc;->F:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 10
    iget-object v0, v2, Lc/c/a/f/tc;->G:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 11
    iget-object v0, v2, Lc/c/a/f/tc;->H:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 12
    iget-object v0, v2, Lc/c/a/f/tc;->I:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 13
    iget-object v0, v2, Lc/c/a/f/tc;->J:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 14
    iget-object v0, v2, Lc/c/a/f/tc;->K:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 15
    iget-object v0, v2, Lc/c/a/f/tc;->L:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 16
    invoke-virtual {v2, v0}, Landroidx/databinding/ViewDataBinding;->b(Landroid/view/View;)V

    .line 17
    new-instance v0, Lc/c/a/j/a/a;

    const/4 v1, 0x3

    invoke-direct {v0, v2, v1}, Lc/c/a/j/a/a;-><init>(Lc/c/a/j/a/a$a;I)V

    iput-object v0, v2, Lc/c/a/f/uc;->R:Landroid/view/View$OnClickListener;

    .line 18
    new-instance v0, Lc/c/a/j/a/a;

    const/4 v1, 0x4

    invoke-direct {v0, v2, v1}, Lc/c/a/j/a/a;-><init>(Lc/c/a/j/a/a$a;I)V

    iput-object v0, v2, Lc/c/a/f/uc;->S:Landroid/view/View$OnClickListener;

    .line 19
    new-instance v0, Lc/c/a/j/a/a;

    const/4 v1, 0x2

    invoke-direct {v0, v2, v1}, Lc/c/a/j/a/a;-><init>(Lc/c/a/j/a/a$a;I)V

    iput-object v0, v2, Lc/c/a/f/uc;->T:Landroid/view/View$OnClickListener;

    .line 20
    new-instance v0, Lc/c/a/j/a/a;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v1}, Lc/c/a/j/a/a;-><init>(Lc/c/a/j/a/a$a;I)V

    iput-object v0, v2, Lc/c/a/f/uc;->U:Landroid/view/View$OnClickListener;

    .line 21
    invoke-virtual/range {p0 .. p0}, Lc/c/a/f/uc;->l()V

    return-void
.end method


# virtual methods
.method public a(Lc/c/a/n/j/c/p;)V
    .locals 4

    .line 10
    iput-object p1, p0, Lc/c/a/f/tc;->N:Lc/c/a/n/j/c/p;

    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/uc;->V:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lc/c/a/f/uc;->V:J

    .line 13
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x10

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

.method public a(Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;)V
    .locals 4

    .line 3
    iput-object p1, p0, Lc/c/a/f/tc;->M:Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/uc;->V:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lc/c/a/f/uc;->V:J

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
    check-cast p2, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;

    invoke-virtual {p0, p2}, Lc/c/a/f/uc;->a(Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    if-ne v0, p1, :cond_1

    .line 2
    check-cast p2, Lc/c/a/n/j/c/p;

    invoke-virtual {p0, p2}, Lc/c/a/f/uc;->a(Lc/c/a/n/j/c/p;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public final b(ILandroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_6

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lc/c/a/f/tc;->M:Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;

    .line 2
    iget-object v2, p0, Lc/c/a/f/tc;->N:Lc/c/a/n/j/c/p;

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_8

    .line 3
    invoke-interface {v2, p2, p1}, Lc/c/a/n/j/c/p;->a(Landroid/view/View;Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object p1, p0, Lc/c/a/f/tc;->M:Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;

    .line 5
    iget-object p2, p0, Lc/c/a/f/tc;->N:Lc/c/a/n/j/c/p;

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    :cond_3
    if-eqz v0, :cond_8

    .line 6
    invoke-interface {p2, p1}, Lc/c/a/n/j/c/p;->a(Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;)V

    goto :goto_0

    .line 7
    :cond_4
    iget-object p1, p0, Lc/c/a/f/tc;->M:Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;

    .line 8
    iget-object p2, p0, Lc/c/a/f/tc;->N:Lc/c/a/n/j/c/p;

    if-eqz p2, :cond_5

    const/4 v0, 0x1

    :cond_5
    if-eqz v0, :cond_8

    .line 9
    invoke-interface {p2, p1}, Lc/c/a/n/j/c/p;->b(Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;)V

    goto :goto_0

    .line 10
    :cond_6
    iget-object p1, p0, Lc/c/a/f/tc;->M:Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;

    .line 11
    iget-object p2, p0, Lc/c/a/f/tc;->N:Lc/c/a/n/j/c/p;

    if-eqz p2, :cond_7

    const/4 v0, 0x1

    :cond_7
    if-eqz v0, :cond_8

    .line 12
    invoke-interface {p2, p1}, Lc/c/a/n/j/c/p;->c(Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;)V

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
    .locals 23

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lc/c/a/f/uc;->V:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lc/c/a/f/uc;->V:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lc/c/a/f/tc;->M:Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;

    .line 6
    iget-object v6, v1, Lc/c/a/f/tc;->N:Lc/c/a/n/j/c/p;

    const-wide/16 v6, 0x5

    and-long/2addr v6, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    cmp-long v10, v6, v4

    if-eqz v10, :cond_2

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->getEnablePlayButton()Z

    move-result v9

    .line 8
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->getVisibleVideoInfo()Z

    move-result v10

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroidx/databinding/ViewDataBinding;->h()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->playButtonText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 10
    invoke-virtual/range {p0 .. p0}, Landroidx/databinding/ViewDataBinding;->h()Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->getVideoDownloadStateLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 11
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->getCoverUrl()Ljava/lang/String;

    move-result-object v13

    .line 12
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->getVideoDesc()Ljava/lang/String;

    move-result-object v14

    .line 13
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->getProgressInfo()Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;

    move-result-object v15

    .line 14
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->getVideoName()Ljava/lang/String;

    move-result-object v16

    .line 15
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->getVisiblePlayButton()Z

    move-result v17

    .line 16
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->getVisibleDeleteIcon()Z

    move-result v18

    .line 17
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->getVisibleDownloadProgress()Z

    move-result v19

    .line 18
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->getVideoInfo()Ljava/lang/String;

    move-result-object v0

    move/from16 v22, v10

    move v10, v9

    move-object v9, v11

    move/from16 v11, v22

    goto :goto_0

    :cond_0
    move-object v0, v9

    move-object v12, v0

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_0
    if-eqz v15, :cond_1

    .line 19
    invoke-virtual {v15}, Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;->getProgress()I

    move-result v8

    :cond_1
    move-object v15, v14

    move-object v14, v0

    move-object v0, v12

    move v12, v10

    move-object v10, v13

    move-object/from16 v13, v16

    move/from16 v16, v11

    move-object v11, v9

    goto :goto_1

    :cond_2
    move-object v0, v9

    move-object v10, v0

    move-object v11, v10

    move-object v13, v11

    move-object v14, v13

    move-object v15, v14

    const/4 v12, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_1
    const-wide/16 v20, 0x4

    and-long v2, v2, v20

    cmp-long v9, v2, v4

    if-eqz v9, :cond_3

    .line 20
    iget-object v2, v1, Lc/c/a/f/tc;->B:Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v3, v1, Lc/c/a/f/uc;->R:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iget-object v2, v1, Lc/c/a/f/uc;->Q:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v3, v1, Lc/c/a/f/uc;->U:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iget-object v2, v1, Lc/c/a/f/tc;->G:Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v3, v1, Lc/c/a/f/uc;->S:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iget-object v2, v1, Lc/c/a/f/tc;->L:Lcom/google/android/material/button/MaterialButton;

    iget-object v3, v1, Lc/c/a/f/uc;->T:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    cmp-long v2, v6, v4

    if-eqz v2, :cond_4

    .line 24
    iget-object v2, v1, Lc/c/a/f/tc;->C:Landroidx/constraintlayout/widget/Group;

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lc/c/a/d/a/b;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 25
    iget-object v2, v1, Lc/c/a/f/tc;->D:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 26
    iget-object v9, v1, Lc/c/a/f/tc;->F:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v9}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070069

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    move-object v7, v11

    move-object v11, v2

    move v8, v12

    move-object v12, v3

    move-object v2, v13

    move-object v13, v4

    move-object v3, v14

    move-object v14, v5

    move-object v4, v15

    move-object v15, v6

    invoke-static/range {v9 .. v15}, Lc/c/a/d/a/b;->a(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Float;)V

    .line 27
    iget-object v5, v1, Lc/c/a/f/tc;->G:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v5, v6}, Lc/c/a/d/a/b;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 28
    iget-object v5, v1, Lc/c/a/f/tc;->H:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v5, v0}, Lb/l/a/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 29
    iget-object v0, v1, Lc/c/a/f/tc;->I:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v4}, Lb/l/a/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 30
    iget-object v0, v1, Lc/c/a/f/tc;->J:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v3}, Lb/l/a/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 31
    iget-object v0, v1, Lc/c/a/f/tc;->J:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v3}, Lc/c/a/d/a/b;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 32
    iget-object v0, v1, Lc/c/a/f/tc;->K:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v2}, Lb/l/a/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 33
    iget-object v0, v1, Lc/c/a/f/tc;->L:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 34
    iget-object v0, v1, Lc/c/a/f/tc;->L:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v0, v7}, Lb/l/a/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 35
    iget-object v0, v1, Lc/c/a/f/tc;->L:Lcom/google/android/material/button/MaterialButton;

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lc/c/a/d/a/b;->a(Landroid/view/View;Ljava/lang/Object;)V

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    .line 36
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
    iget-wide v0, p0, Lc/c/a/f/uc;->V:J

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
    iput-wide v0, p0, Lc/c/a/f/uc;->V:J

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
