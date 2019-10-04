.class public Lc/c/a/f/B;
.super Lc/c/a/f/A;
.source "ItemAppDetailDeveloperInfoBindingImpl.java"

# interfaces
.implements Lc/c/a/j/a/a$a;


# static fields
.field public static final P:Landroidx/databinding/ViewDataBinding$b;

.field public static final Q:Landroid/util/SparseIntArray;


# instance fields
.field public final R:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final S:Landroidx/constraintlayout/widget/Group;

.field public final T:Landroidx/constraintlayout/widget/Group;

.field public final U:Landroidx/constraintlayout/widget/Group;

.field public final V:Landroid/view/View$OnClickListener;

.field public final W:Landroid/view/View$OnClickListener;

.field public final X:Landroid/view/View$OnClickListener;

.field public Y:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lc/c/a/f/B;->Q:Landroid/util/SparseIntArray;

    .line 2
    sget-object v0, Lc/c/a/f/B;->Q:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0137

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3
    sget-object v0, Lc/c/a/f/B;->Q:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0134

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 4
    sget-object v0, Lc/c/a/f/B;->Q:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0132

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 5
    sget-object v0, Lc/c/a/f/B;->Q:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0139

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 6
    sget-object v0, Lc/c/a/f/B;->Q:Landroid/util/SparseIntArray;

    const v1, 0x7f0a013c

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 7
    sget-object v0, Lc/c/a/f/B;->Q:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0136

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 8
    sget-object v0, Lc/c/a/f/B;->Q:Landroid/util/SparseIntArray;

    const v1, 0x7f0a013b

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Lb/l/f;Landroid/view/View;)V
    .locals 3

    .line 1
    sget-object v0, Lc/c/a/f/B;->P:Landroidx/databinding/ViewDataBinding$b;

    sget-object v1, Lc/c/a/f/B;->Q:Landroid/util/SparseIntArray;

    const/16 v2, 0x11

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->a(Lb/l/f;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$b;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lc/c/a/f/B;-><init>(Lb/l/f;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lb/l/f;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 18

    move-object/from16 v3, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/16 v4, 0xc

    .line 2
    aget-object v4, p3, v4

    check-cast v4, Landroid/view/View;

    const/4 v15, 0x1

    aget-object v5, p3, v15

    check-cast v5, Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    const/16 v6, 0xb

    aget-object v6, p3, v6

    check-cast v6, Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v14, 0x3

    aget-object v7, p3, v14

    check-cast v7, Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    const/16 v8, 0xf

    aget-object v8, p3, v8

    check-cast v8, Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v9, 0xa

    aget-object v9, p3, v9

    check-cast v9, Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v13, 0x2

    aget-object v10, p3, v13

    check-cast v10, Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    const/16 v11, 0xd

    aget-object v11, p3, v11

    check-cast v11, Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v12, 0x10

    aget-object v12, p3, v12

    check-cast v12, Landroid/view/View;

    const/16 v16, 0xe

    aget-object v16, p3, v16

    check-cast v16, Landroid/view/View;

    move-object/from16 v13, v16

    const/16 v16, 0x7

    aget-object v16, p3, v16

    check-cast v16, Landroid/view/View;

    move-object/from16 v14, v16

    const/16 v16, 0x9

    aget-object v16, p3, v16

    check-cast v16, Landroid/view/View;

    move-object/from16 v15, v16

    const/16 v16, 0x8

    aget-object v16, p3, v16

    check-cast v16, Landroid/view/View;

    const/16 v17, 0x0

    move/from16 v3, v17

    invoke-direct/range {v0 .. v16}, Lc/c/a/f/A;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/view/View;Lcom/farsitel/bazaar/widget/LocalAwareTextView;Landroidx/appcompat/widget/AppCompatTextView;Lcom/farsitel/bazaar/widget/LocalAwareTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Lcom/farsitel/bazaar/widget/LocalAwareTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    .line 3
    iput-wide v0, v2, Lc/c/a/f/B;->Y:J

    .line 4
    iget-object v0, v2, Lc/c/a/f/A;->B:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object v0, v2, Lc/c/a/f/A;->D:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object v0, v2, Lc/c/a/f/A;->G:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object v0, v2, Lc/c/a/f/A;->K:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 8
    aget-object v0, p3, v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, v2, Lc/c/a/f/B;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 9
    iget-object v0, v2, Lc/c/a/f/B;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x4

    .line 10
    aget-object v0, p3, v0

    check-cast v0, Landroidx/constraintlayout/widget/Group;

    iput-object v0, v2, Lc/c/a/f/B;->S:Landroidx/constraintlayout/widget/Group;

    .line 11
    iget-object v0, v2, Lc/c/a/f/B;->S:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x5

    .line 12
    aget-object v0, p3, v0

    check-cast v0, Landroidx/constraintlayout/widget/Group;

    iput-object v0, v2, Lc/c/a/f/B;->T:Landroidx/constraintlayout/widget/Group;

    .line 13
    iget-object v0, v2, Lc/c/a/f/B;->T:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x6

    .line 14
    aget-object v0, p3, v0

    check-cast v0, Landroidx/constraintlayout/widget/Group;

    iput-object v0, v2, Lc/c/a/f/B;->U:Landroidx/constraintlayout/widget/Group;

    .line 15
    iget-object v0, v2, Lc/c/a/f/B;->U:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 16
    iget-object v0, v2, Lc/c/a/f/A;->L:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 17
    iget-object v0, v2, Lc/c/a/f/A;->M:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 18
    invoke-virtual {v2, v0}, Landroidx/databinding/ViewDataBinding;->b(Landroid/view/View;)V

    .line 19
    new-instance v0, Lc/c/a/j/a/a;

    const/4 v1, 0x3

    invoke-direct {v0, v2, v1}, Lc/c/a/j/a/a;-><init>(Lc/c/a/j/a/a$a;I)V

    iput-object v0, v2, Lc/c/a/f/B;->V:Landroid/view/View$OnClickListener;

    .line 20
    new-instance v0, Lc/c/a/j/a/a;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v1}, Lc/c/a/j/a/a;-><init>(Lc/c/a/j/a/a$a;I)V

    iput-object v0, v2, Lc/c/a/f/B;->W:Landroid/view/View$OnClickListener;

    .line 21
    new-instance v0, Lc/c/a/j/a/a;

    const/4 v1, 0x2

    invoke-direct {v0, v2, v1}, Lc/c/a/j/a/a;-><init>(Lc/c/a/j/a/a$a;I)V

    iput-object v0, v2, Lc/c/a/f/B;->X:Landroid/view/View$OnClickListener;

    .line 22
    invoke-virtual/range {p0 .. p0}, Lc/c/a/f/B;->l()V

    return-void
.end method


# virtual methods
.method public a(Lc/c/a/n/b/d/f;)V
    .locals 4

    .line 3
    iput-object p1, p0, Lc/c/a/f/A;->N:Lc/c/a/n/b/d/f;

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/B;->Y:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lc/c/a/f/B;->Y:J

    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x1f

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

.method public a(Lcom/farsitel/bazaar/common/model/appdetail/DeveloperInfoSectionItem;)V
    .locals 4

    .line 10
    iput-object p1, p0, Lc/c/a/f/A;->O:Lcom/farsitel/bazaar/common/model/appdetail/DeveloperInfoSectionItem;

    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/B;->Y:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lc/c/a/f/B;->Y:J

    .line 13
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x2d

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

    const/16 v0, 0x1f

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Lc/c/a/n/b/d/f;

    invoke-virtual {p0, p2}, Lc/c/a/f/B;->a(Lc/c/a/n/b/d/f;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x2d

    if-ne v0, p1, :cond_1

    .line 2
    check-cast p2, Lcom/farsitel/bazaar/common/model/appdetail/DeveloperInfoSectionItem;

    invoke-virtual {p0, p2}, Lc/c/a/f/B;->a(Lcom/farsitel/bazaar/common/model/appdetail/DeveloperInfoSectionItem;)V

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

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_3

    .line 1
    :cond_0
    iget-object p1, p0, Lc/c/a/f/A;->O:Lcom/farsitel/bazaar/common/model/appdetail/DeveloperInfoSectionItem;

    .line 2
    iget-object v1, p0, Lc/c/a/f/A;->N:Lc/c/a/n/b/d/f;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_9

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    :cond_2
    if-eqz p2, :cond_9

    .line 3
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/appdetail/DeveloperInfoSectionItem;->getAppPhone()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-interface {v1, p1}, Lc/c/a/n/b/d/f;->c(Ljava/lang/String;)V

    goto :goto_3

    .line 5
    :cond_3
    iget-object p1, p0, Lc/c/a/f/A;->O:Lcom/farsitel/bazaar/common/model/appdetail/DeveloperInfoSectionItem;

    .line 6
    iget-object v1, p0, Lc/c/a/f/A;->N:Lc/c/a/n/b/d/f;

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_9

    if-eqz p1, :cond_5

    const/4 p2, 0x1

    :cond_5
    if-eqz p2, :cond_9

    .line 7
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/appdetail/DeveloperInfoSectionItem;->getHomepage()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-interface {v1, p1}, Lc/c/a/n/b/d/f;->b(Ljava/lang/String;)V

    goto :goto_3

    .line 9
    :cond_6
    iget-object p1, p0, Lc/c/a/f/A;->O:Lcom/farsitel/bazaar/common/model/appdetail/DeveloperInfoSectionItem;

    .line 10
    iget-object v1, p0, Lc/c/a/f/A;->N:Lc/c/a/n/b/d/f;

    if-eqz v1, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_9

    if-eqz p1, :cond_8

    const/4 p2, 0x1

    :cond_8
    if-eqz p2, :cond_9

    .line 11
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/appdetail/DeveloperInfoSectionItem;->getAppEmail()Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-interface {v1, p1}, Lc/c/a/n/b/d/f;->a(Ljava/lang/String;)V

    :cond_9
    :goto_3
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
    iget-wide v0, p0, Lc/c/a/f/B;->Y:J

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, p0, Lc/c/a/f/B;->Y:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v4, p0, Lc/c/a/f/A;->N:Lc/c/a/n/b/d/f;

    .line 6
    iget-object v4, p0, Lc/c/a/f/A;->O:Lcom/farsitel/bazaar/common/model/appdetail/DeveloperInfoSectionItem;

    const-wide/16 v5, 0x6

    and-long/2addr v5, v0

    const/4 v7, 0x0

    cmp-long v8, v5, v2

    if-eqz v8, :cond_0

    if-eqz v4, :cond_0

    .line 7
    invoke-virtual {v4}, Lcom/farsitel/bazaar/common/model/appdetail/DeveloperInfoSectionItem;->getAppPhone()Ljava/lang/String;

    move-result-object v7

    .line 8
    invoke-virtual {v4}, Lcom/farsitel/bazaar/common/model/appdetail/DeveloperInfoSectionItem;->getHomepage()Ljava/lang/String;

    move-result-object v8

    .line 9
    invoke-virtual {v4}, Lcom/farsitel/bazaar/common/model/appdetail/DeveloperInfoSectionItem;->getAppEmail()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v7

    move-object v8, v4

    :goto_0
    cmp-long v9, v5, v2

    if-eqz v9, :cond_1

    .line 10
    iget-object v5, p0, Lc/c/a/f/A;->B:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    invoke-static {v5, v4}, Lb/l/a/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 11
    iget-object v5, p0, Lc/c/a/f/A;->D:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    invoke-static {v5, v7}, Lb/l/a/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 12
    iget-object v5, p0, Lc/c/a/f/A;->G:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    invoke-static {v5, v8}, Lb/l/a/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 13
    iget-object v5, p0, Lc/c/a/f/B;->S:Landroidx/constraintlayout/widget/Group;

    invoke-static {v5, v4}, Lc/c/a/d/a/b;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 14
    iget-object v4, p0, Lc/c/a/f/B;->T:Landroidx/constraintlayout/widget/Group;

    invoke-static {v4, v8}, Lc/c/a/d/a/b;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 15
    iget-object v4, p0, Lc/c/a/f/B;->U:Landroidx/constraintlayout/widget/Group;

    invoke-static {v4, v7}, Lc/c/a/d/a/b;->a(Landroid/view/View;Ljava/lang/Object;)V

    :cond_1
    const-wide/16 v4, 0x4

    and-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 16
    iget-object v0, p0, Lc/c/a/f/A;->K:Landroid/view/View;

    iget-object v1, p0, Lc/c/a/f/B;->W:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object v0, p0, Lc/c/a/f/A;->L:Landroid/view/View;

    iget-object v1, p0, Lc/c/a/f/B;->V:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iget-object v0, p0, Lc/c/a/f/A;->M:Landroid/view/View;

    iget-object v1, p0, Lc/c/a/f/B;->X:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
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
    iget-wide v0, p0, Lc/c/a/f/B;->Y:J

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
    iput-wide v0, p0, Lc/c/a/f/B;->Y:J

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
