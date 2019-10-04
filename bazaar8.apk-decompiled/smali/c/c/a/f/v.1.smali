.class public Lc/c/a/f/v;
.super Lc/c/a/f/u;
.source "FragmentReportAppBindingImpl.java"


# static fields
.field public static final S:Landroidx/databinding/ViewDataBinding$b;

.field public static final T:Landroid/util/SparseIntArray;


# instance fields
.field public U:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lc/c/a/f/v;->T:Landroid/util/SparseIntArray;

    .line 2
    sget-object v0, Lc/c/a/f/v;->T:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0089

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3
    sget-object v0, Lc/c/a/f/v;->T:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0391

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 4
    sget-object v0, Lc/c/a/f/v;->T:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0393

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 5
    sget-object v0, Lc/c/a/f/v;->T:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0258

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 6
    sget-object v0, Lc/c/a/f/v;->T:Landroid/util/SparseIntArray;

    const v1, 0x7f0a02d9

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 7
    sget-object v0, Lc/c/a/f/v;->T:Landroid/util/SparseIntArray;

    const v1, 0x7f0a02c6

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 8
    sget-object v0, Lc/c/a/f/v;->T:Landroid/util/SparseIntArray;

    const v1, 0x7f0a03c0

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 9
    sget-object v0, Lc/c/a/f/v;->T:Landroid/util/SparseIntArray;

    const v1, 0x7f0a025a

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 10
    sget-object v0, Lc/c/a/f/v;->T:Landroid/util/SparseIntArray;

    const v1, 0x7f0a03fa

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 11
    sget-object v0, Lc/c/a/f/v;->T:Landroid/util/SparseIntArray;

    const v1, 0x7f0a026b

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 12
    sget-object v0, Lc/c/a/f/v;->T:Landroid/util/SparseIntArray;

    const v1, 0x7f0a016b

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 13
    sget-object v0, Lc/c/a/f/v;->T:Landroid/util/SparseIntArray;

    const v1, 0x7f0a00d2

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Lb/l/f;Landroid/view/View;)V
    .locals 3

    .line 1
    sget-object v0, Lc/c/a/f/v;->S:Landroidx/databinding/ViewDataBinding$b;

    sget-object v1, Lc/c/a/f/v;->T:Landroid/util/SparseIntArray;

    const/16 v2, 0x11

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->a(Lb/l/f;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$b;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lc/c/a/f/v;-><init>(Lb/l/f;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lb/l/f;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 22

    move-object/from16 v3, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v4, 0x5

    .line 2
    aget-object v4, p3, v4

    check-cast v4, Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v5, 0x1

    aget-object v5, p3, v5

    check-cast v5, Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v6, 0x3

    aget-object v6, p3, v6

    check-cast v6, Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v7, 0x10

    aget-object v7, p3, v7

    check-cast v7, Lcom/google/android/material/button/MaterialButton;

    const/16 v8, 0xf

    aget-object v8, p3, v8

    check-cast v8, Landroidx/appcompat/widget/AppCompatEditText;

    const/16 v9, 0x8

    aget-object v9, p3, v9

    check-cast v9, Landroidx/core/widget/NestedScrollView;

    const/16 v10, 0xc

    aget-object v10, p3, v10

    check-cast v10, Landroidx/appcompat/widget/AppCompatRadioButton;

    const/16 v11, 0xe

    aget-object v11, p3, v11

    check-cast v11, Landroidx/appcompat/widget/AppCompatRadioButton;

    const/4 v12, 0x2

    aget-object v12, p3, v12

    check-cast v12, Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v13, 0xa

    aget-object v13, p3, v13

    check-cast v13, Landroidx/appcompat/widget/AppCompatRadioButton;

    const/4 v14, 0x0

    aget-object v14, p3, v14

    check-cast v14, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v15, 0x4

    aget-object v15, p3, v15

    check-cast v15, Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v16, 0x9

    aget-object v16, p3, v16

    check-cast v16, Landroid/widget/RadioGroup;

    const/16 v17, 0x6

    aget-object v17, p3, v17

    check-cast v17, Landroidx/appcompat/widget/Toolbar;

    const/16 v18, 0x7

    aget-object v18, p3, v18

    check-cast v18, Landroidx/appcompat/widget/AppCompatImageView;

    const/16 v19, 0xb

    aget-object v19, p3, v19

    check-cast v19, Landroidx/appcompat/widget/AppCompatRadioButton;

    const/16 v20, 0xd

    aget-object v20, p3, v20

    check-cast v20, Landroidx/appcompat/widget/AppCompatRadioButton;

    const/16 v21, 0x0

    move/from16 v3, v21

    invoke-direct/range {v0 .. v20}, Lc/c/a/f/u;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/google/android/material/appbar/AppBarLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatTextView;Lcom/google/android/material/button/MaterialButton;Landroidx/appcompat/widget/AppCompatEditText;Landroidx/core/widget/NestedScrollView;Landroidx/appcompat/widget/AppCompatRadioButton;Landroidx/appcompat/widget/AppCompatRadioButton;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatRadioButton;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/RadioGroup;Landroidx/appcompat/widget/Toolbar;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatRadioButton;Landroidx/appcompat/widget/AppCompatRadioButton;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    .line 3
    iput-wide v0, v2, Lc/c/a/f/v;->U:J

    .line 4
    iget-object v0, v2, Lc/c/a/f/u;->B:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object v0, v2, Lc/c/a/f/u;->C:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object v0, v2, Lc/c/a/f/u;->I:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object v0, v2, Lc/c/a/f/u;->K:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object v0, v2, Lc/c/a/f/u;->L:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 9
    invoke-virtual {v2, v0}, Landroidx/databinding/ViewDataBinding;->b(Landroid/view/View;)V

    .line 10
    invoke-virtual/range {p0 .. p0}, Lc/c/a/f/v;->l()V

    return-void
.end method


# virtual methods
.method public a(Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;)V
    .locals 4

    .line 2
    iput-object p1, p0, Lc/c/a/f/u;->R:Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/v;->U:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lc/c/a/f/v;->U:J

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x35

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

    const/16 v0, 0x35

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;

    invoke-virtual {p0, p2}, Lc/c/a/f/v;->a(Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;)V

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
    .locals 17

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lc/c/a/f/v;->U:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lc/c/a/f/v;->U:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lc/c/a/f/u;->R:Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;

    const-wide/16 v6, 0x3

    and-long/2addr v2, v6

    const/4 v6, 0x0

    cmp-long v7, v2, v4

    if-eqz v7, :cond_1

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;->b()Ljava/lang/String;

    move-result-object v6

    .line 7
    invoke-virtual {v0}, Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;->c()Ljava/lang/String;

    move-result-object v7

    .line 8
    invoke-virtual {v0}, Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;->a()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v6

    move-object v6, v0

    move-object/from16 v0, v16

    goto :goto_0

    :cond_0
    move-object v0, v6

    move-object v7, v0

    .line 9
    :goto_0
    iget-object v8, v1, Lc/c/a/f/u;->L:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f10019a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object v10, v0

    goto :goto_1

    :cond_1
    move-object v7, v6

    move-object v8, v7

    move-object v10, v8

    :goto_1
    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    .line 10
    iget-object v9, v1, Lc/c/a/f/u;->B:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v9 .. v15}, Lc/c/a/d/a/b;->a(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Float;)V

    .line 11
    iget-object v0, v1, Lc/c/a/f/u;->C:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v6}, Lb/l/a/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, v1, Lc/c/a/f/u;->I:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v7}, Lb/l/a/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 13
    iget-object v0, v1, Lc/c/a/f/u;->L:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v8}, Lb/l/a/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 14
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
    iget-wide v0, p0, Lc/c/a/f/v;->U:J

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
    iput-wide v0, p0, Lc/c/a/f/v;->U:J

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
