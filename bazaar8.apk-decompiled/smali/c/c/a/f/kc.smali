.class public Lc/c/a/f/kc;
.super Lc/c/a/f/jc;
.source "ItemVideoDetailVideoScreenshotCoverItemBindingImpl.java"


# static fields
.field public static final I:Landroidx/databinding/ViewDataBinding$b;

.field public static final J:Landroid/util/SparseIntArray;


# instance fields
.field public K:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lc/c/a/f/kc;->J:Landroid/util/SparseIntArray;

    .line 2
    sget-object v0, Lc/c/a/f/kc;->J:Landroid/util/SparseIntArray;

    const v1, 0x7f0a02e7

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Lb/l/f;Landroid/view/View;)V
    .locals 3

    .line 1
    sget-object v0, Lc/c/a/f/kc;->I:Landroidx/databinding/ViewDataBinding$b;

    sget-object v1, Lc/c/a/f/kc;->J:Landroid/util/SparseIntArray;

    const/4 v2, 0x5

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->a(Lb/l/f;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$b;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lc/c/a/f/kc;-><init>(Lb/l/f;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lb/l/f;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 10

    const/4 v0, 0x2

    .line 2
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/view/View;

    const/4 v0, 0x0

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroidx/cardview/widget/CardView;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v0, 0x3

    aget-object p3, p3, v0

    move-object v9, p3

    check-cast v9, Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v9}, Lc/c/a/f/jc;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/view/View;Landroidx/cardview/widget/CardView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatTextView;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lc/c/a/f/kc;->K:J

    .line 4
    iget-object p1, p0, Lc/c/a/f/jc;->A:Landroid/view/View;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lc/c/a/f/jc;->B:Landroidx/cardview/widget/CardView;

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lc/c/a/f/jc;->D:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lc/c/a/f/jc;->E:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->b(Landroid/view/View;)V

    .line 9
    invoke-virtual {p0}, Lc/c/a/f/kc;->l()V

    return-void
.end method


# virtual methods
.method public a(Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;)V
    .locals 4

    .line 4
    iput-object p1, p0, Lc/c/a/f/jc;->F:Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/kc;->K:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lc/c/a/f/kc;->K:J

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

.method public a(Ljava/lang/String;)V
    .locals 4

    .line 11
    iput-object p1, p0, Lc/c/a/f/jc;->G:Ljava/lang/String;

    .line 12
    monitor-enter p0

    .line 13
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/kc;->K:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lc/c/a/f/kc;->K:J

    .line 14
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x18

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

.method public a(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x2d

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;

    invoke-virtual {p0, p2}, Lc/c/a/f/kc;->a(Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x18

    if-ne v0, p1, :cond_1

    .line 2
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lc/c/a/f/kc;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x1a

    if-ne v0, p1, :cond_2

    .line 3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lc/c/a/f/kc;->b(Ljava/lang/Boolean;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public b(Ljava/lang/Boolean;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lc/c/a/f/jc;->H:Ljava/lang/Boolean;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/kc;->K:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lc/c/a/f/kc;->K:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x1a

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
    .locals 20

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lc/c/a/f/kc;->K:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lc/c/a/f/kc;->K:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lc/c/a/f/jc;->F:Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;

    .line 6
    iget-object v6, v1, Lc/c/a/f/jc;->G:Ljava/lang/String;

    .line 7
    iget-object v7, v1, Lc/c/a/f/jc;->H:Ljava/lang/Boolean;

    const/4 v8, 0x0

    const-wide/16 v9, 0x9

    and-long/2addr v9, v2

    cmp-long v11, v9, v4

    if-eqz v11, :cond_0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v8

    :cond_0
    move-object v12, v8

    const-wide/16 v13, 0xa

    and-long v18, v2, v13

    const-wide/16 v13, 0xc

    and-long/2addr v2, v13

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, v1, Lc/c/a/f/jc;->A:Landroid/view/View;

    invoke-static {v0, v7}, Lc/c/a/d/a/b;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 10
    iget-object v0, v1, Lc/c/a/f/jc;->E:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v7}, Lc/c/a/d/a/b;->a(Landroid/view/View;Ljava/lang/Object;)V

    :cond_1
    cmp-long v0, v9, v4

    if-eqz v0, :cond_2

    .line 11
    iget-object v11, v1, Lc/c/a/f/jc;->D:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v11 .. v17}, Lc/c/a/d/a/b;->a(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Float;)V

    :cond_2
    cmp-long v0, v18, v4

    if-eqz v0, :cond_3

    .line 12
    iget-object v0, v1, Lc/c/a/f/jc;->E:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v6}, Lb/l/a/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_3
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
    iget-wide v0, p0, Lc/c/a/f/kc;->K:J

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
    iput-wide v0, p0, Lc/c/a/f/kc;->K:J

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
