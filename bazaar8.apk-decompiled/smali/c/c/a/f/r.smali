.class public Lc/c/a/f/r;
.super Lc/c/a/f/q;
.source "FragmentMyBazaarBindingImpl.java"

# interfaces
.implements Lc/c/a/j/a/a$a;


# static fields
.field public static final P:Landroidx/databinding/ViewDataBinding$b;

.field public static final Q:Landroid/util/SparseIntArray;


# instance fields
.field public final R:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final S:Landroid/view/View$OnClickListener;

.field public final T:Landroid/view/View$OnClickListener;

.field public final U:Landroid/view/View$OnClickListener;

.field public final V:Landroid/view/View$OnClickListener;

.field public W:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lc/c/a/f/r;->Q:Landroid/util/SparseIntArray;

    .line 2
    sget-object v0, Lc/c/a/f/r;->Q:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0398

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3
    sget-object v0, Lc/c/a/f/r;->Q:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0396

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 4
    sget-object v0, Lc/c/a/f/r;->Q:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0397

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 5
    sget-object v0, Lc/c/a/f/r;->Q:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0142

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 6
    sget-object v0, Lc/c/a/f/r;->Q:Landroid/util/SparseIntArray;

    const v1, 0x7f0a00b6

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 7
    sget-object v0, Lc/c/a/f/r;->Q:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0143

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 8
    sget-object v0, Lc/c/a/f/r;->Q:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0365

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 9
    sget-object v0, Lc/c/a/f/r;->Q:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0366

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 10
    sget-object v0, Lc/c/a/f/r;->Q:Landroid/util/SparseIntArray;

    const v1, 0x7f0a03f8

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Lb/l/f;Landroid/view/View;)V
    .locals 3

    .line 1
    sget-object v0, Lc/c/a/f/r;->P:Landroidx/databinding/ViewDataBinding$b;

    sget-object v1, Lc/c/a/f/r;->Q:Landroid/util/SparseIntArray;

    const/16 v2, 0xe

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->a(Lb/l/f;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$b;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lc/c/a/f/r;-><init>(Lb/l/f;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lb/l/f;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 18

    move-object/from16 v3, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/16 v4, 0x9

    .line 2
    aget-object v4, p3, v4

    check-cast v4, Landroidx/constraintlayout/widget/Barrier;

    const/16 v5, 0x8

    aget-object v5, p3, v5

    check-cast v5, Landroid/view/View;

    const/16 v6, 0xa

    aget-object v6, p3, v6

    check-cast v6, Landroid/view/View;

    const/4 v15, 0x4

    aget-object v7, p3, v15

    check-cast v7, Lcom/google/android/material/button/MaterialButton;

    const/4 v14, 0x3

    aget-object v8, p3, v14

    check-cast v8, Lcom/google/android/material/button/MaterialButton;

    const/4 v13, 0x2

    aget-object v9, p3, v13

    check-cast v9, Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    const/4 v12, 0x1

    aget-object v10, p3, v12

    check-cast v10, Landroidx/appcompat/widget/AppCompatImageView;

    const/16 v11, 0xb

    aget-object v11, p3, v11

    check-cast v11, Lcom/google/android/material/tabs/TabLayout;

    const/16 v16, 0xc

    aget-object v16, p3, v16

    check-cast v16, Landroid/view/View;

    move-object/from16 v12, v16

    const/16 v16, 0x6

    aget-object v16, p3, v16

    check-cast v16, Landroidx/appcompat/widget/AppCompatImageView;

    move-object/from16 v13, v16

    const/16 v16, 0x7

    aget-object v16, p3, v16

    check-cast v16, Landroidx/appcompat/widget/AppCompatImageView;

    move-object/from16 v14, v16

    const/16 v16, 0x5

    aget-object v16, p3, v16

    check-cast v16, Landroidx/appcompat/widget/AppCompatImageView;

    move-object/from16 v15, v16

    const/16 v16, 0xd

    aget-object v16, p3, v16

    check-cast v16, Landroidx/viewpager/widget/ViewPager;

    const/16 v17, 0x1

    move/from16 v3, v17

    invoke-direct/range {v0 .. v16}, Lc/c/a/f/q;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/Barrier;Landroid/view/View;Landroid/view/View;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/farsitel/bazaar/widget/LocalAwareTextView;Landroidx/appcompat/widget/AppCompatImageView;Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/viewpager/widget/ViewPager;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    .line 3
    iput-wide v0, v2, Lc/c/a/f/r;->W:J

    .line 4
    iget-object v0, v2, Lc/c/a/f/q;->D:Lcom/google/android/material/button/MaterialButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object v0, v2, Lc/c/a/f/q;->E:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 6
    aget-object v0, p3, v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, v2, Lc/c/a/f/r;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 7
    iget-object v0, v2, Lc/c/a/f/r;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object v0, v2, Lc/c/a/f/q;->F:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 9
    iget-object v0, v2, Lc/c/a/f/q;->G:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 10
    invoke-virtual {v2, v0}, Landroidx/databinding/ViewDataBinding;->b(Landroid/view/View;)V

    .line 11
    new-instance v0, Lc/c/a/j/a/a;

    const/4 v1, 0x3

    invoke-direct {v0, v2, v1}, Lc/c/a/j/a/a;-><init>(Lc/c/a/j/a/a$a;I)V

    iput-object v0, v2, Lc/c/a/f/r;->S:Landroid/view/View$OnClickListener;

    .line 12
    new-instance v0, Lc/c/a/j/a/a;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v1}, Lc/c/a/j/a/a;-><init>(Lc/c/a/j/a/a$a;I)V

    iput-object v0, v2, Lc/c/a/f/r;->T:Landroid/view/View$OnClickListener;

    .line 13
    new-instance v0, Lc/c/a/j/a/a;

    const/4 v1, 0x4

    invoke-direct {v0, v2, v1}, Lc/c/a/j/a/a;-><init>(Lc/c/a/j/a/a$a;I)V

    iput-object v0, v2, Lc/c/a/f/r;->U:Landroid/view/View$OnClickListener;

    .line 14
    new-instance v0, Lc/c/a/j/a/a;

    const/4 v1, 0x2

    invoke-direct {v0, v2, v1}, Lc/c/a/j/a/a;-><init>(Lc/c/a/j/a/a$a;I)V

    iput-object v0, v2, Lc/c/a/f/r;->V:Landroid/view/View$OnClickListener;

    .line 15
    invoke-virtual/range {p0 .. p0}, Lc/c/a/f/r;->l()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/lifecycle/LiveData;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/farsitel/bazaar/common/model/user/User;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0, p1}, Landroidx/databinding/ViewDataBinding;->a(ILandroidx/lifecycle/LiveData;)Z

    .line 4
    iput-object p1, p0, Lc/c/a/f/q;->N:Landroidx/lifecycle/LiveData;

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/r;->W:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lc/c/a/f/r;->W:J

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x33

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

.method public a(Lc/c/a/n/r/p;)V
    .locals 4

    .line 11
    iput-object p1, p0, Lc/c/a/f/q;->O:Lc/c/a/n/r/p;

    .line 12
    monitor-enter p0

    .line 13
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/r;->W:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lc/c/a/f/r;->W:J

    .line 14
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x2e

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

    const/16 v0, 0x33

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Landroidx/lifecycle/LiveData;

    invoke-virtual {p0, p2}, Lc/c/a/f/r;->a(Landroidx/lifecycle/LiveData;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x2e

    if-ne v0, p1, :cond_1

    .line 2
    check-cast p2, Lc/c/a/n/r/p;

    invoke-virtual {p0, p2}, Lc/c/a/f/r;->a(Lc/c/a/n/r/p;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public final a(Landroidx/lifecycle/LiveData;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/farsitel/bazaar/common/model/user/User;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 18
    monitor-enter p0

    .line 19
    :try_start_0
    iget-wide p1, p0, Lc/c/a/f/r;->W:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lc/c/a/f/r;->W:J

    .line 20
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

    .line 2
    :cond_0
    iget-object p1, p0, Lc/c/a/f/q;->O:Lc/c/a/n/r/p;

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    :cond_1
    if-eqz p2, :cond_8

    .line 3
    invoke-interface {p1}, Lc/c/a/n/r/p;->n()V

    goto :goto_0

    .line 4
    :cond_2
    iget-object p1, p0, Lc/c/a/f/q;->O:Lc/c/a/n/r/p;

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    :cond_3
    if-eqz p2, :cond_8

    .line 5
    invoke-interface {p1}, Lc/c/a/n/r/p;->p()V

    goto :goto_0

    .line 6
    :cond_4
    iget-object p1, p0, Lc/c/a/f/q;->O:Lc/c/a/n/r/p;

    if-eqz p1, :cond_5

    const/4 p2, 0x1

    :cond_5
    if-eqz p2, :cond_8

    .line 7
    invoke-interface {p1}, Lc/c/a/n/r/p;->q()V

    goto :goto_0

    .line 8
    :cond_6
    iget-object p1, p0, Lc/c/a/f/q;->O:Lc/c/a/n/r/p;

    if-eqz p1, :cond_7

    const/4 p2, 0x1

    :cond_7
    if-eqz p2, :cond_8

    .line 9
    invoke-interface {p1}, Lc/c/a/n/r/p;->q()V

    :cond_8
    :goto_0
    return-void
.end method

.method public b(ILjava/lang/Object;I)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    check-cast p2, Landroidx/lifecycle/LiveData;

    invoke-virtual {p0, p2, p3}, Lc/c/a/f/r;->a(Landroidx/lifecycle/LiveData;I)Z

    move-result p1

    return p1
.end method

.method public e()V
    .locals 17

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lc/c/a/f/r;->W:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lc/c/a/f/r;->W:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lc/c/a/f/q;->N:Landroidx/lifecycle/LiveData;

    .line 6
    iget-object v6, v1, Lc/c/a/f/q;->O:Lc/c/a/n/r/p;

    const-wide/16 v6, 0x5

    and-long v8, v2, v6

    const/4 v10, 0x1

    const-wide/16 v11, 0x10

    const/4 v13, 0x0

    const/4 v14, 0x0

    cmp-long v15, v8, v4

    if-eqz v15, :cond_4

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/common/model/user/User;

    goto :goto_0

    :cond_0
    move-object v0, v13

    :goto_0
    if-eqz v0, :cond_1

    const/4 v15, 0x1

    goto :goto_1

    :cond_1
    const/4 v15, 0x0

    :goto_1
    cmp-long v16, v8, v4

    if-eqz v16, :cond_3

    if-eqz v15, :cond_2

    or-long/2addr v2, v11

    const-wide/16 v8, 0x40

    goto :goto_2

    :cond_2
    const-wide/16 v8, 0x8

    or-long/2addr v2, v8

    const-wide/16 v8, 0x20

    :goto_2
    or-long/2addr v2, v8

    :cond_3
    if-eqz v0, :cond_5

    .line 8
    invoke-virtual/range {p0 .. p0}, Landroidx/databinding/ViewDataBinding;->h()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/farsitel/bazaar/common/model/user/User;->accountName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    goto :goto_3

    :cond_4
    move-object v0, v13

    const/4 v15, 0x0

    :cond_5
    :goto_3
    const-wide/16 v8, 0x50

    and-long/2addr v8, v2

    cmp-long v16, v8, v4

    if-eqz v16, :cond_7

    if-eqz v0, :cond_6

    .line 9
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/user/User;->isLoggedIn()Z

    move-result v0

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    :goto_4
    and-long v8, v2, v11

    cmp-long v11, v8, v4

    if-eqz v11, :cond_8

    if-nez v0, :cond_8

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    :cond_8
    const/4 v10, 0x0

    :goto_5
    and-long/2addr v6, v2

    cmp-long v8, v6, v4

    if-eqz v8, :cond_a

    if-eqz v15, :cond_9

    goto :goto_6

    :cond_9
    const/4 v10, 0x0

    :goto_6
    if-eqz v15, :cond_b

    move v14, v0

    goto :goto_7

    :cond_a
    const/4 v10, 0x0

    :cond_b
    :goto_7
    const-wide/16 v8, 0x4

    and-long/2addr v2, v8

    cmp-long v0, v2, v4

    if-eqz v0, :cond_c

    .line 10
    iget-object v0, v1, Lc/c/a/f/q;->D:Lcom/google/android/material/button/MaterialButton;

    iget-object v2, v1, Lc/c/a/f/r;->U:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v0, v1, Lc/c/a/f/q;->E:Lcom/google/android/material/button/MaterialButton;

    iget-object v2, v1, Lc/c/a/f/r;->S:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object v0, v1, Lc/c/a/f/q;->F:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    iget-object v2, v1, Lc/c/a/f/r;->V:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object v0, v1, Lc/c/a/f/q;->G:Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v2, v1, Lc/c/a/f/r;->T:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_c
    cmp-long v0, v6, v4

    if-eqz v0, :cond_d

    .line 14
    iget-object v0, v1, Lc/c/a/f/q;->D:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lc/c/a/d/a/b;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 15
    iget-object v0, v1, Lc/c/a/f/q;->E:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lc/c/a/d/a/b;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 16
    iget-object v0, v1, Lc/c/a/f/q;->F:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    invoke-static {v0, v13}, Lb/l/a/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_d
    return-void

    :catchall_0
    move-exception v0

    .line 17
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
    iget-wide v0, p0, Lc/c/a/f/r;->W:J

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
    iput-wide v0, p0, Lc/c/a/f/r;->W:J

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