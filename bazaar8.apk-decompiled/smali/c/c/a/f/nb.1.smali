.class public Lc/c/a/f/nb;
.super Lc/c/a/f/mb;
.source "ItemReviewBindingImpl.java"

# interfaces
.implements Lc/c/a/j/a/a$a;


# static fields
.field public static final ga:Landroidx/databinding/ViewDataBinding$b;

.field public static final ha:Landroid/util/SparseIntArray;


# instance fields
.field public final ia:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final ja:Landroidx/constraintlayout/widget/Group;

.field public final ka:Landroidx/constraintlayout/widget/Group;

.field public final la:Landroid/view/View$OnClickListener;

.field public final ma:Landroid/view/View$OnClickListener;

.field public final na:Landroid/view/View$OnClickListener;

.field public final oa:Landroid/view/View$OnClickListener;

.field public final pa:Landroid/view/View$OnClickListener;

.field public final qa:Landroid/view/View$OnClickListener;

.field public final ra:Landroid/view/View$OnClickListener;

.field public final sa:Landroid/view/View$OnClickListener;

.field public final ta:Landroid/view/View$OnClickListener;

.field public final ua:Landroid/view/View$OnClickListener;

.field public va:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lc/c/a/f/nb;->ha:Landroid/util/SparseIntArray;

    .line 2
    sget-object v0, Lc/c/a/f/nb;->ha:Landroid/util/SparseIntArray;

    const v1, 0x7f0a029e

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3
    sget-object v0, Lc/c/a/f/nb;->ha:Landroid/util/SparseIntArray;

    const v1, 0x7f0a015a

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 4
    sget-object v0, Lc/c/a/f/nb;->ha:Landroid/util/SparseIntArray;

    const v1, 0x7f0a02aa

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 5
    sget-object v0, Lc/c/a/f/nb;->ha:Landroid/util/SparseIntArray;

    const v1, 0x7f0a00cb

    const/16 v2, 0x19

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 6
    sget-object v0, Lc/c/a/f/nb;->ha:Landroid/util/SparseIntArray;

    const v1, 0x7f0a02ba

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 7
    sget-object v0, Lc/c/a/f/nb;->ha:Landroid/util/SparseIntArray;

    const v1, 0x7f0a02b9

    const/16 v2, 0x1b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 8
    sget-object v0, Lc/c/a/f/nb;->ha:Landroid/util/SparseIntArray;

    const v1, 0x7f0a00c7

    const/16 v2, 0x1c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 9
    sget-object v0, Lc/c/a/f/nb;->ha:Landroid/util/SparseIntArray;

    const v1, 0x7f0a00c4

    const/16 v2, 0x1d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Lb/l/f;Landroid/view/View;)V
    .locals 3

    .line 1
    sget-object v0, Lc/c/a/f/nb;->ga:Landroidx/databinding/ViewDataBinding$b;

    sget-object v1, Lc/c/a/f/nb;->ha:Landroid/util/SparseIntArray;

    const/16 v2, 0x1e

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->a(Lb/l/f;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$b;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lc/c/a/f/nb;-><init>(Lb/l/f;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lb/l/f;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 32

    move-object/from16 v3, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/16 v4, 0x1d

    .line 2
    aget-object v4, p3, v4

    check-cast v4, Landroid/widget/Space;

    const/16 v5, 0x1c

    aget-object v5, p3, v5

    check-cast v5, Landroid/widget/Space;

    const/16 v6, 0x19

    aget-object v6, p3, v6

    check-cast v6, Landroidx/constraintlayout/widget/Barrier;

    const/16 v7, 0x17

    aget-object v7, p3, v7

    check-cast v7, Landroid/view/View;

    const/4 v15, 0x6

    aget-object v8, p3, v15

    check-cast v8, Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    const/4 v14, 0x2

    aget-object v9, p3, v14

    check-cast v9, Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    const/16 v10, 0x16

    aget-object v10, p3, v10

    check-cast v10, Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v13, 0x4

    aget-object v11, p3, v13

    check-cast v11, Landroid/widget/RatingBar;

    const/16 v12, 0x18

    aget-object v12, p3, v12

    check-cast v12, Landroidx/constraintlayout/widget/Barrier;

    const/4 v3, 0x1

    aget-object v16, p3, v3

    check-cast v16, Landroid/view/View;

    move-object/from16 v13, v16

    const/16 v16, 0x1b

    aget-object v16, p3, v16

    check-cast v16, Landroid/view/View;

    move-object/from16 v14, v16

    const/16 v16, 0x1a

    aget-object v16, p3, v16

    check-cast v16, Landroid/view/View;

    move-object/from16 v15, v16

    const/16 v16, 0x14

    aget-object v16, p3, v16

    check-cast v16, Landroidx/constraintlayout/widget/Group;

    const/16 v17, 0xf

    aget-object v17, p3, v17

    check-cast v17, Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v18, 0xe

    aget-object v18, p3, v18

    check-cast v18, Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v19, 0x12

    aget-object v19, p3, v19

    check-cast v19, Landroidx/appcompat/widget/AppCompatImageView;

    const/16 v20, 0x13

    aget-object v20, p3, v20

    check-cast v20, Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v21, 0xd

    aget-object v21, p3, v21

    check-cast v21, Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v22, 0x10

    aget-object v22, p3, v22

    check-cast v22, Landroidx/appcompat/widget/AppCompatImageView;

    const/16 v23, 0x11

    aget-object v23, p3, v23

    check-cast v23, Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v3, 0x3

    aget-object v24, p3, v3

    check-cast v24, Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    const/16 v3, 0x9

    aget-object v25, p3, v3

    check-cast v25, Landroidx/appcompat/widget/AppCompatImageView;

    const/16 v3, 0xa

    aget-object v26, p3, v3

    check-cast v26, Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v27, 0xb

    aget-object v27, p3, v27

    check-cast v27, Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v3, 0x5

    aget-object v28, p3, v3

    check-cast v28, Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    const/4 v3, 0x7

    aget-object v29, p3, v3

    check-cast v29, Landroidx/appcompat/widget/AppCompatImageView;

    const/16 v3, 0x8

    aget-object v30, p3, v3

    check-cast v30, Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v31, 0x0

    move/from16 v3, v31

    invoke-direct/range {v0 .. v30}, Lc/c/a/f/mb;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/Space;Landroid/widget/Space;Landroidx/constraintlayout/widget/Barrier;Landroid/view/View;Lcom/farsitel/bazaar/widget/LocalAwareTextView;Lcom/farsitel/bazaar/widget/LocalAwareTextView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/RatingBar;Landroidx/constraintlayout/widget/Barrier;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroidx/constraintlayout/widget/Group;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatTextView;Lcom/farsitel/bazaar/widget/LocalAwareTextView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatImageView;Lcom/farsitel/bazaar/widget/LocalAwareTextView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatTextView;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    .line 3
    iput-wide v0, v2, Lc/c/a/f/nb;->va:J

    const/4 v0, 0x0

    .line 4
    aget-object v0, p3, v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, v2, Lc/c/a/f/nb;->ia:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 5
    iget-object v0, v2, Lc/c/a/f/nb;->ia:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0xc

    .line 6
    aget-object v0, p3, v0

    check-cast v0, Landroidx/constraintlayout/widget/Group;

    iput-object v0, v2, Lc/c/a/f/nb;->ja:Landroidx/constraintlayout/widget/Group;

    .line 7
    iget-object v0, v2, Lc/c/a/f/nb;->ja:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0x15

    .line 8
    aget-object v0, p3, v0

    check-cast v0, Landroidx/constraintlayout/widget/Group;

    iput-object v0, v2, Lc/c/a/f/nb;->ka:Landroidx/constraintlayout/widget/Group;

    .line 9
    iget-object v0, v2, Lc/c/a/f/nb;->ka:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 10
    iget-object v0, v2, Lc/c/a/f/mb;->E:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 11
    iget-object v0, v2, Lc/c/a/f/mb;->F:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 12
    iget-object v0, v2, Lc/c/a/f/mb;->H:Landroid/widget/RatingBar;

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setTag(Ljava/lang/Object;)V

    .line 13
    iget-object v0, v2, Lc/c/a/f/mb;->J:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 14
    iget-object v0, v2, Lc/c/a/f/mb;->M:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 15
    iget-object v0, v2, Lc/c/a/f/mb;->N:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 16
    iget-object v0, v2, Lc/c/a/f/mb;->O:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 17
    iget-object v0, v2, Lc/c/a/f/mb;->P:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 18
    iget-object v0, v2, Lc/c/a/f/mb;->Q:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 19
    iget-object v0, v2, Lc/c/a/f/mb;->R:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 20
    iget-object v0, v2, Lc/c/a/f/mb;->S:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 21
    iget-object v0, v2, Lc/c/a/f/mb;->T:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 22
    iget-object v0, v2, Lc/c/a/f/mb;->U:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 23
    iget-object v0, v2, Lc/c/a/f/mb;->V:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 24
    iget-object v0, v2, Lc/c/a/f/mb;->W:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 25
    iget-object v0, v2, Lc/c/a/f/mb;->X:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 26
    iget-object v0, v2, Lc/c/a/f/mb;->Y:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 27
    iget-object v0, v2, Lc/c/a/f/mb;->Z:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 28
    iget-object v0, v2, Lc/c/a/f/mb;->aa:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 29
    invoke-virtual {v2, v0}, Landroidx/databinding/ViewDataBinding;->b(Landroid/view/View;)V

    .line 30
    new-instance v0, Lc/c/a/j/a/a;

    const/16 v1, 0x9

    invoke-direct {v0, v2, v1}, Lc/c/a/j/a/a;-><init>(Lc/c/a/j/a/a$a;I)V

    iput-object v0, v2, Lc/c/a/f/nb;->la:Landroid/view/View$OnClickListener;

    .line 31
    new-instance v0, Lc/c/a/j/a/a;

    const/4 v1, 0x5

    invoke-direct {v0, v2, v1}, Lc/c/a/j/a/a;-><init>(Lc/c/a/j/a/a$a;I)V

    iput-object v0, v2, Lc/c/a/f/nb;->ma:Landroid/view/View$OnClickListener;

    .line 32
    new-instance v0, Lc/c/a/j/a/a;

    const/4 v1, 0x6

    invoke-direct {v0, v2, v1}, Lc/c/a/j/a/a;-><init>(Lc/c/a/j/a/a$a;I)V

    iput-object v0, v2, Lc/c/a/f/nb;->na:Landroid/view/View$OnClickListener;

    .line 33
    new-instance v0, Lc/c/a/j/a/a;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v1}, Lc/c/a/j/a/a;-><init>(Lc/c/a/j/a/a$a;I)V

    iput-object v0, v2, Lc/c/a/f/nb;->oa:Landroid/view/View$OnClickListener;

    .line 34
    new-instance v0, Lc/c/a/j/a/a;

    const/4 v1, 0x7

    invoke-direct {v0, v2, v1}, Lc/c/a/j/a/a;-><init>(Lc/c/a/j/a/a$a;I)V

    iput-object v0, v2, Lc/c/a/f/nb;->pa:Landroid/view/View$OnClickListener;

    .line 35
    new-instance v0, Lc/c/a/j/a/a;

    const/4 v1, 0x2

    invoke-direct {v0, v2, v1}, Lc/c/a/j/a/a;-><init>(Lc/c/a/j/a/a$a;I)V

    iput-object v0, v2, Lc/c/a/f/nb;->qa:Landroid/view/View$OnClickListener;

    .line 36
    new-instance v0, Lc/c/a/j/a/a;

    const/16 v1, 0xa

    invoke-direct {v0, v2, v1}, Lc/c/a/j/a/a;-><init>(Lc/c/a/j/a/a$a;I)V

    iput-object v0, v2, Lc/c/a/f/nb;->ra:Landroid/view/View$OnClickListener;

    .line 37
    new-instance v0, Lc/c/a/j/a/a;

    const/16 v1, 0x8

    invoke-direct {v0, v2, v1}, Lc/c/a/j/a/a;-><init>(Lc/c/a/j/a/a$a;I)V

    iput-object v0, v2, Lc/c/a/f/nb;->sa:Landroid/view/View$OnClickListener;

    .line 38
    new-instance v0, Lc/c/a/j/a/a;

    const/4 v1, 0x4

    invoke-direct {v0, v2, v1}, Lc/c/a/j/a/a;-><init>(Lc/c/a/j/a/a$a;I)V

    iput-object v0, v2, Lc/c/a/f/nb;->ta:Landroid/view/View$OnClickListener;

    .line 39
    new-instance v0, Lc/c/a/j/a/a;

    const/4 v1, 0x3

    invoke-direct {v0, v2, v1}, Lc/c/a/j/a/a;-><init>(Lc/c/a/j/a/a$a;I)V

    iput-object v0, v2, Lc/c/a/f/nb;->ua:Landroid/view/View$OnClickListener;

    .line 40
    invoke-virtual/range {p0 .. p0}, Lc/c/a/f/nb;->l()V

    return-void
.end method


# virtual methods
.method public a(Lc/c/a/n/c/d/m;)V
    .locals 4

    .line 27
    iput-object p1, p0, Lc/c/a/f/mb;->ea:Lc/c/a/n/c/d/m;

    .line 28
    monitor-enter p0

    .line 29
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/nb;->va:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Lc/c/a/f/nb;->va:J

    .line 30
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x29

    .line 31
    invoke-virtual {p0, p1}, Lb/l/a;->a(I)V

    .line 32
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->k()V

    return-void

    :catchall_0
    move-exception p1

    .line 33
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Lc/c/a/n/u/b;)V
    .locals 4

    .line 13
    iput-object p1, p0, Lc/c/a/f/mb;->da:Lc/c/a/n/u/b;

    .line 14
    monitor-enter p0

    .line 15
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/nb;->va:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lc/c/a/f/nb;->va:J

    .line 16
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0xa

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

.method public a(Lc/c/a/n/u/c;)V
    .locals 4

    .line 6
    iput-object p1, p0, Lc/c/a/f/mb;->ca:Lc/c/a/n/u/c;

    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/nb;->va:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lc/c/a/f/nb;->va:J

    .line 9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x1b

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

.method public a(Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;)V
    .locals 4

    .line 20
    iput-object p1, p0, Lc/c/a/f/mb;->ba:Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;

    .line 21
    monitor-enter p0

    .line 22
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/nb;->va:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lc/c/a/f/nb;->va:J

    .line 23
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x32

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

.method public a(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x1b

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Lc/c/a/n/u/c;

    invoke-virtual {p0, p2}, Lc/c/a/f/nb;->a(Lc/c/a/n/u/c;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x1d

    if-ne v0, p1, :cond_1

    .line 2
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p2}, Lc/c/a/f/nb;->b(Ljava/lang/Integer;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0xa

    if-ne v0, p1, :cond_2

    .line 3
    check-cast p2, Lc/c/a/n/u/b;

    invoke-virtual {p0, p2}, Lc/c/a/f/nb;->a(Lc/c/a/n/u/b;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x32

    if-ne v0, p1, :cond_3

    .line 4
    check-cast p2, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;

    invoke-virtual {p0, p2}, Lc/c/a/f/nb;->a(Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x29

    if-ne v0, p1, :cond_4

    .line 5
    check-cast p2, Lc/c/a/n/c/d/m;

    invoke-virtual {p0, p2}, Lc/c/a/f/nb;->a(Lc/c/a/n/c/d/m;)V

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

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_a

    .line 8
    :pswitch_0
    iget-object p1, p0, Lc/c/a/f/mb;->ca:Lc/c/a/n/u/c;

    .line 9
    iget-object p2, p0, Lc/c/a/f/mb;->fa:Ljava/lang/Integer;

    .line 10
    iget-object v2, p0, Lc/c/a/f/mb;->ba:Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_a

    .line 11
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v2, p2}, Lc/c/a/n/u/c;->d(Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;I)V

    goto/16 :goto_a

    .line 12
    :pswitch_1
    iget-object p1, p0, Lc/c/a/f/mb;->ca:Lc/c/a/n/u/c;

    .line 13
    iget-object p2, p0, Lc/c/a/f/mb;->fa:Ljava/lang/Integer;

    .line 14
    iget-object v2, p0, Lc/c/a/f/mb;->ba:Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_a

    .line 15
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v2, p2}, Lc/c/a/n/u/c;->d(Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;I)V

    goto/16 :goto_a

    .line 16
    :pswitch_2
    iget-object p1, p0, Lc/c/a/f/mb;->ca:Lc/c/a/n/u/c;

    .line 17
    iget-object p2, p0, Lc/c/a/f/mb;->fa:Ljava/lang/Integer;

    .line 18
    iget-object v2, p0, Lc/c/a/f/mb;->ba:Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_a

    .line 19
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v2, p2}, Lc/c/a/n/u/c;->b(Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;I)V

    goto/16 :goto_a

    .line 20
    :pswitch_3
    iget-object p1, p0, Lc/c/a/f/mb;->ca:Lc/c/a/n/u/c;

    .line 21
    iget-object p2, p0, Lc/c/a/f/mb;->fa:Ljava/lang/Integer;

    .line 22
    iget-object v2, p0, Lc/c/a/f/mb;->ba:Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_a

    .line 23
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v2, p2}, Lc/c/a/n/u/c;->b(Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;I)V

    goto/16 :goto_a

    .line 24
    :pswitch_4
    iget-object p1, p0, Lc/c/a/f/mb;->ba:Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;

    .line 25
    iget-object v2, p0, Lc/c/a/f/mb;->da:Lc/c/a/n/u/b;

    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_a

    .line 26
    invoke-interface {v2, p2, p1}, Lc/c/a/n/u/b;->a(Landroid/view/View;Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;)V

    goto :goto_a

    .line 27
    :pswitch_5
    iget-object p1, p0, Lc/c/a/f/mb;->ca:Lc/c/a/n/u/c;

    .line 28
    iget-object p2, p0, Lc/c/a/f/mb;->fa:Ljava/lang/Integer;

    .line 29
    iget-object v2, p0, Lc/c/a/f/mb;->ba:Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;

    if-eqz p1, :cond_5

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_a

    .line 30
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v2, p2}, Lc/c/a/n/u/c;->c(Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;I)V

    goto :goto_a

    .line 31
    :pswitch_6
    iget-object p1, p0, Lc/c/a/f/mb;->ca:Lc/c/a/n/u/c;

    .line 32
    iget-object p2, p0, Lc/c/a/f/mb;->fa:Ljava/lang/Integer;

    .line 33
    iget-object v2, p0, Lc/c/a/f/mb;->ba:Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;

    if-eqz p1, :cond_6

    goto :goto_6

    :cond_6
    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_a

    .line 34
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v2, p2}, Lc/c/a/n/u/c;->c(Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;I)V

    goto :goto_a

    .line 35
    :pswitch_7
    iget-object p1, p0, Lc/c/a/f/mb;->ca:Lc/c/a/n/u/c;

    .line 36
    iget-object p2, p0, Lc/c/a/f/mb;->fa:Ljava/lang/Integer;

    .line 37
    iget-object v2, p0, Lc/c/a/f/mb;->ba:Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;

    if-eqz p1, :cond_7

    goto :goto_7

    :cond_7
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_a

    .line 38
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v2, p2}, Lc/c/a/n/u/c;->a(Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;I)V

    goto :goto_a

    .line 39
    :pswitch_8
    iget-object p1, p0, Lc/c/a/f/mb;->ca:Lc/c/a/n/u/c;

    .line 40
    iget-object p2, p0, Lc/c/a/f/mb;->fa:Ljava/lang/Integer;

    .line 41
    iget-object v2, p0, Lc/c/a/f/mb;->ba:Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;

    if-eqz p1, :cond_8

    goto :goto_8

    :cond_8
    const/4 v0, 0x0

    :goto_8
    if-eqz v0, :cond_a

    .line 42
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v2, p2}, Lc/c/a/n/u/c;->a(Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;I)V

    goto :goto_a

    .line 43
    :pswitch_9
    iget-object p1, p0, Lc/c/a/f/mb;->ba:Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;

    .line 44
    iget-object p2, p0, Lc/c/a/f/mb;->ea:Lc/c/a/n/c/d/m;

    if-eqz p2, :cond_9

    goto :goto_9

    :cond_9
    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_a

    .line 45
    invoke-interface {p2, p1}, Lc/c/a/n/c/d/m;->a(Lcom/farsitel/bazaar/common/model/RecyclerData;)V

    :cond_a
    :goto_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b(Ljava/lang/Integer;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lc/c/a/f/mb;->fa:Ljava/lang/Integer;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/nb;->va:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lc/c/a/f/nb;->va:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x1d

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
    .locals 36

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lc/c/a/f/nb;->va:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lc/c/a/f/nb;->va:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lc/c/a/f/mb;->ca:Lc/c/a/n/u/c;

    .line 6
    iget-object v0, v1, Lc/c/a/f/mb;->fa:Ljava/lang/Integer;

    .line 7
    iget-object v0, v1, Lc/c/a/f/mb;->da:Lc/c/a/n/u/b;

    .line 8
    iget-object v0, v1, Lc/c/a/f/mb;->ba:Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;

    .line 9
    iget-object v6, v1, Lc/c/a/f/mb;->ea:Lc/c/a/n/c/d/m;

    const-wide/16 v6, 0x28

    and-long/2addr v6, v2

    const/4 v8, 0x0

    cmp-long v10, v6, v4

    if-eqz v10, :cond_2

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->getComment()Ljava/lang/String;

    move-result-object v10

    .line 11
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->getShowRate()Z

    move-result v11

    .line 12
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->isReplyLiked()Z

    move-result v12

    .line 13
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->getDislikeCount()Ljava/lang/Integer;

    move-result-object v13

    .line 14
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->isDisliked()Z

    move-result v14

    .line 15
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->getUser()Ljava/lang/String;

    move-result-object v15

    .line 16
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->getRate()Ljava/lang/Integer;

    move-result-object v16

    .line 17
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->getReplyItem()Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;

    move-result-object v17

    .line 18
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->getShowLikeDislike()Z

    move-result v18

    .line 19
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->getVoteState()Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    move-result-object v19

    .line 20
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->getReplyVoteState()Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    move-result-object v20

    .line 21
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->isLiked()Z

    move-result v21

    .line 22
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->getShowReport()Z

    move-result v22

    .line 23
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->getDate()Ljava/lang/String;

    move-result-object v23

    .line 24
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->commentOnOldVersion()Z

    move-result v24

    .line 25
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->getShowReplyVote()Z

    move-result v25

    .line 26
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->getLikeCount()Ljava/lang/Integer;

    move-result-object v26

    .line 27
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->isReplyDisliked()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    .line 28
    :goto_0
    iget-object v9, v1, Lc/c/a/f/mb;->W:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v13, v5, v8

    const v13, 0x7f100143

    invoke-virtual {v9, v13, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 29
    invoke-static/range {v16 .. v16}, Landroidx/databinding/ViewDataBinding;->a(Ljava/lang/Integer;)I

    move-result v5

    .line 30
    iget-object v13, v1, Lc/c/a/f/mb;->aa:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    move/from16 v28, v0

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v26, v0, v8

    const v8, 0x7f100143

    invoke-virtual {v13, v8, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v17, :cond_1

    .line 31
    invoke-virtual/range {v17 .. v17}, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->getComment()Ljava/lang/String;

    move-result-object v8

    .line 32
    invoke-virtual/range {v17 .. v17}, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->getDate()Ljava/lang/String;

    move-result-object v13

    .line 33
    invoke-virtual/range {v17 .. v17}, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->getLikes()I

    move-result v27

    .line 34
    invoke-virtual/range {v17 .. v17}, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->getDislikeCount()I

    move-result v29

    .line 35
    invoke-virtual/range {v17 .. v17}, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->getUser()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v31, v0

    goto :goto_1

    :cond_1
    move-object/from16 v31, v0

    const/4 v8, 0x0

    const/4 v13, 0x0

    const/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    .line 36
    :goto_1
    iget-object v0, v1, Lc/c/a/f/mb;->T:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    move/from16 v32, v5

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    const/16 v26, 0x0

    aput-object v27, v5, v26

    const v4, 0x7f100143

    invoke-virtual {v0, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 37
    iget-object v5, v1, Lc/c/a/f/mb;->Q:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v4, v26

    move-object/from16 v27, v0

    const v0, 0x7f100143

    invoke-virtual {v5, v0, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v33, v9

    move-object/from16 v34, v10

    move/from16 v26, v11

    move-object/from16 v4, v17

    move-object/from16 v5, v20

    move-object/from16 v11, v27

    move-object/from16 v10, v30

    move-object/from16 v35, v31

    move-object v9, v0

    move-wide/from16 v16, v2

    move v3, v14

    move-object/from16 v2, v19

    move-object/from16 v14, v23

    move/from16 v0, v32

    const-wide/16 v19, 0x0

    goto :goto_2

    :cond_2
    const/16 v26, 0x0

    move-wide/from16 v16, v2

    move-wide/from16 v19, v4

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v28, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    :goto_2
    cmp-long v23, v6, v19

    if-eqz v23, :cond_3

    .line 38
    iget-object v6, v1, Lc/c/a/f/nb;->ja:Landroidx/constraintlayout/widget/Group;

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v6, v7}, Lc/c/a/d/a/b;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 39
    iget-object v6, v1, Lc/c/a/f/nb;->ka:Landroidx/constraintlayout/widget/Group;

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v6, v7}, Lc/c/a/d/a/b;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 40
    iget-object v6, v1, Lc/c/a/f/mb;->E:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v6, v7}, Lc/c/a/d/a/b;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 41
    iget-object v6, v1, Lc/c/a/f/mb;->F:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    invoke-static {v6, v15}, Lb/l/a/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 42
    iget-object v6, v1, Lc/c/a/f/mb;->F:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    invoke-static {v6, v15}, Lc/c/a/d/a/b;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 43
    iget-object v6, v1, Lc/c/a/f/mb;->H:Landroid/widget/RatingBar;

    int-to-float v0, v0

    invoke-static {v6, v0}, Lb/l/a/e;->a(Landroid/widget/RatingBar;F)V

    .line 44
    iget-object v0, v1, Lc/c/a/f/mb;->H:Landroid/widget/RatingBar;

    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v0, v6}, Lc/c/a/d/a/b;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 45
    iget-object v0, v1, Lc/c/a/f/mb;->M:Landroidx/constraintlayout/widget/Group;

    invoke-static {v0, v4}, Lc/c/a/d/a/b;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 46
    iget-object v0, v1, Lc/c/a/f/mb;->N:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v8}, Lb/l/a/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 47
    iget-object v0, v1, Lc/c/a/f/mb;->O:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v13}, Lb/l/a/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 48
    iget-object v0, v1, Lc/c/a/f/mb;->P:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v0, v5, v4}, Lc/c/a/b/c;->a(Landroidx/appcompat/widget/AppCompatImageView;Lcom/farsitel/bazaar/common/model/reviews/VoteState;Ljava/lang/Boolean;)V

    .line 49
    iget-object v0, v1, Lc/c/a/f/mb;->Q:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v9}, Lb/l/a/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 50
    iget-object v0, v1, Lc/c/a/f/mb;->R:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v10}, Lb/l/a/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 51
    iget-object v0, v1, Lc/c/a/f/mb;->S:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v0, v5, v4}, Lc/c/a/b/c;->a(Landroidx/appcompat/widget/AppCompatImageView;Lcom/farsitel/bazaar/common/model/reviews/VoteState;Ljava/lang/Boolean;)V

    .line 52
    iget-object v0, v1, Lc/c/a/f/mb;->T:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v11}, Lb/l/a/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, v1, Lc/c/a/f/mb;->U:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    invoke-static {v0, v14}, Lb/l/a/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 54
    iget-object v0, v1, Lc/c/a/f/mb;->V:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lc/c/a/b/c;->a(Landroidx/appcompat/widget/AppCompatImageView;Lcom/farsitel/bazaar/common/model/reviews/VoteState;Ljava/lang/Boolean;)V

    .line 55
    iget-object v0, v1, Lc/c/a/f/mb;->W:Landroidx/appcompat/widget/AppCompatTextView;

    move-object/from16 v9, v33

    invoke-static {v0, v9}, Lb/l/a/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, v1, Lc/c/a/f/mb;->X:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v3}, Lc/c/a/d/a/b;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 57
    iget-object v0, v1, Lc/c/a/f/mb;->Y:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    move-object/from16 v10, v34

    invoke-static {v0, v10}, Lb/l/a/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, v1, Lc/c/a/f/mb;->Z:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lc/c/a/b/c;->a(Landroidx/appcompat/widget/AppCompatImageView;Lcom/farsitel/bazaar/common/model/reviews/VoteState;Ljava/lang/Boolean;)V

    .line 59
    iget-object v0, v1, Lc/c/a/f/mb;->aa:Landroidx/appcompat/widget/AppCompatTextView;

    move-object/from16 v2, v35

    invoke-static {v0, v2}, Lb/l/a/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_3
    const-wide/16 v2, 0x20

    and-long v2, v16, v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    .line 60
    iget-object v0, v1, Lc/c/a/f/mb;->J:Landroid/view/View;

    iget-object v2, v1, Lc/c/a/f/nb;->oa:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v0, v1, Lc/c/a/f/mb;->P:Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v2, v1, Lc/c/a/f/nb;->la:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v0, v1, Lc/c/a/f/mb;->Q:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v2, v1, Lc/c/a/f/nb;->ra:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v0, v1, Lc/c/a/f/mb;->S:Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v2, v1, Lc/c/a/f/nb;->pa:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v0, v1, Lc/c/a/f/mb;->T:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v2, v1, Lc/c/a/f/nb;->sa:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, v1, Lc/c/a/f/mb;->V:Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v2, v1, Lc/c/a/f/nb;->ta:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v0, v1, Lc/c/a/f/mb;->W:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v2, v1, Lc/c/a/f/nb;->ma:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v0, v1, Lc/c/a/f/mb;->X:Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v2, v1, Lc/c/a/f/nb;->na:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v0, v1, Lc/c/a/f/mb;->Z:Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v2, v1, Lc/c/a/f/nb;->qa:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v0, v1, Lc/c/a/f/mb;->aa:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v2, v1, Lc/c/a/f/nb;->ua:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    .line 70
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
    iget-wide v0, p0, Lc/c/a/f/nb;->va:J

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
    iput-wide v0, p0, Lc/c/a/f/nb;->va:J

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
