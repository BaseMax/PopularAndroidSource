.class public Lc/c/a/f/Bb;
.super Lc/c/a/f/Ab;
.source "ItemTransactionBindingImpl.java"

# interfaces
.implements Lc/c/a/j/a/b$a;


# static fields
.field public static final D:Landroidx/databinding/ViewDataBinding$b;

.field public static final E:Landroid/util/SparseIntArray;


# instance fields
.field public final F:Landroid/widget/FrameLayout;

.field public final G:Landroid/widget/LinearLayout;

.field public final H:Landroidx/appcompat/widget/AppCompatTextView;

.field public final I:Landroidx/appcompat/widget/AppCompatTextView;

.field public final J:Landroidx/appcompat/widget/AppCompatTextView;

.field public final K:Landroidx/appcompat/widget/AppCompatTextView;

.field public final L:Landroid/view/View;

.field public final M:Landroid/view/View$OnLongClickListener;

.field public N:J


# direct methods
.method public constructor <init>(Lb/l/f;Landroid/view/View;)V
    .locals 3

    .line 1
    sget-object v0, Lc/c/a/f/Bb;->D:Landroidx/databinding/ViewDataBinding$b;

    sget-object v1, Lc/c/a/f/Bb;->E:Landroid/util/SparseIntArray;

    const/4 v2, 0x7

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->a(Lb/l/f;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$b;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lc/c/a/f/Bb;-><init>(Lb/l/f;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lb/l/f;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lc/c/a/f/Ab;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 3
    iput-wide v1, p0, Lc/c/a/f/Bb;->N:J

    .line 4
    aget-object p1, p3, v0

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lc/c/a/f/Bb;->F:Landroid/widget/FrameLayout;

    .line 5
    iget-object p1, p0, Lc/c/a/f/Bb;->F:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 6
    aget-object v1, p3, p1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lc/c/a/f/Bb;->G:Landroid/widget/LinearLayout;

    .line 7
    iget-object v1, p0, Lc/c/a/f/Bb;->G:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x2

    .line 8
    aget-object v1, p3, v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v1, p0, Lc/c/a/f/Bb;->H:Landroidx/appcompat/widget/AppCompatTextView;

    .line 9
    iget-object v1, p0, Lc/c/a/f/Bb;->H:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x3

    .line 10
    aget-object v1, p3, v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v1, p0, Lc/c/a/f/Bb;->I:Landroidx/appcompat/widget/AppCompatTextView;

    .line 11
    iget-object v1, p0, Lc/c/a/f/Bb;->I:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x4

    .line 12
    aget-object v1, p3, v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v1, p0, Lc/c/a/f/Bb;->J:Landroidx/appcompat/widget/AppCompatTextView;

    .line 13
    iget-object v1, p0, Lc/c/a/f/Bb;->J:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x5

    .line 14
    aget-object v1, p3, v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v1, p0, Lc/c/a/f/Bb;->K:Landroidx/appcompat/widget/AppCompatTextView;

    .line 15
    iget-object v1, p0, Lc/c/a/f/Bb;->K:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x6

    .line 16
    aget-object p3, p3, v1

    check-cast p3, Landroid/view/View;

    iput-object p3, p0, Lc/c/a/f/Bb;->L:Landroid/view/View;

    .line 17
    iget-object p3, p0, Lc/c/a/f/Bb;->L:Landroid/view/View;

    invoke-virtual {p3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 18
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->b(Landroid/view/View;)V

    .line 19
    new-instance p2, Lc/c/a/j/a/b;

    invoke-direct {p2, p0, p1}, Lc/c/a/j/a/b;-><init>(Lc/c/a/j/a/b$a;I)V

    iput-object p2, p0, Lc/c/a/f/Bb;->M:Landroid/view/View$OnLongClickListener;

    .line 20
    invoke-virtual {p0}, Lc/c/a/f/Bb;->l()V

    return-void
.end method


# virtual methods
.method public a(Lcom/farsitel/bazaar/common/model/transaction/TransactionItem;)V
    .locals 4

    .line 11
    iput-object p1, p0, Lc/c/a/f/Ab;->A:Lcom/farsitel/bazaar/common/model/transaction/TransactionItem;

    .line 12
    monitor-enter p0

    .line 13
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/Bb;->N:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lc/c/a/f/Bb;->N:J

    .line 14
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x2d

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

.method public a(Lcom/farsitel/bazaar/common/model/transaction/TransactionItemCommunicator;)V
    .locals 4

    .line 4
    iput-object p1, p0, Lc/c/a/f/Ab;->B:Lcom/farsitel/bazaar/common/model/transaction/TransactionItemCommunicator;

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/Bb;->N:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lc/c/a/f/Bb;->N:J

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x9

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

.method public final a(ILandroid/view/View;)Z
    .locals 3

    .line 18
    iget-object p1, p0, Lc/c/a/f/Ab;->A:Lcom/farsitel/bazaar/common/model/transaction/TransactionItem;

    .line 19
    iget-object p2, p0, Lc/c/a/f/Ab;->B:Lcom/farsitel/bazaar/common/model/transaction/TransactionItemCommunicator;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 20
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/transaction/TransactionItem;->getToken()Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-interface {p2, p1}, Lcom/farsitel/bazaar/common/model/transaction/TransactionItemCommunicator;->onTokenItemLongClicked(Ljava/lang/String;)Z

    move-result v1

    :cond_2
    return v1
.end method

.method public a(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x1d

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p2}, Lc/c/a/f/Bb;->b(Ljava/lang/Integer;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    if-ne v0, p1, :cond_1

    .line 2
    check-cast p2, Lcom/farsitel/bazaar/common/model/transaction/TransactionItemCommunicator;

    invoke-virtual {p0, p2}, Lc/c/a/f/Bb;->a(Lcom/farsitel/bazaar/common/model/transaction/TransactionItemCommunicator;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x2d

    if-ne v0, p1, :cond_2

    .line 3
    check-cast p2, Lcom/farsitel/bazaar/common/model/transaction/TransactionItem;

    invoke-virtual {p0, p2}, Lc/c/a/f/Bb;->a(Lcom/farsitel/bazaar/common/model/transaction/TransactionItem;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public b(Ljava/lang/Integer;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lc/c/a/f/Ab;->C:Ljava/lang/Integer;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/Bb;->N:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lc/c/a/f/Bb;->N:J

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
    .locals 20

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lc/c/a/f/Bb;->N:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lc/c/a/f/Bb;->N:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lc/c/a/f/Ab;->C:Ljava/lang/Integer;

    .line 6
    iget-object v6, v1, Lc/c/a/f/Ab;->B:Lcom/farsitel/bazaar/common/model/transaction/TransactionItemCommunicator;

    .line 7
    iget-object v6, v1, Lc/c/a/f/Ab;->A:Lcom/farsitel/bazaar/common/model/transaction/TransactionItem;

    const-wide/16 v7, 0x9

    and-long v9, v2, v7

    const/4 v11, 0x0

    cmp-long v12, v9, v4

    if-eqz v12, :cond_4

    .line 8
    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->a(Ljava/lang/Integer;)I

    move-result v0

    .line 9
    rem-int/lit8 v0, v0, 0x2

    const/4 v12, 0x1

    if-ne v0, v12, :cond_0

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    :goto_0
    cmp-long v0, v9, v4

    if-eqz v0, :cond_2

    if-eqz v12, :cond_1

    const-wide/16 v9, 0x20

    goto :goto_1

    :cond_1
    const-wide/16 v9, 0x10

    :goto_1
    or-long/2addr v2, v9

    :cond_2
    if-eqz v12, :cond_3

    .line 10
    iget-object v0, v1, Lc/c/a/f/Bb;->G:Landroid/widget/LinearLayout;

    const v9, 0x7f060028

    goto :goto_2

    :cond_3
    iget-object v0, v1, Lc/c/a/f/Bb;->G:Landroid/widget/LinearLayout;

    const v9, 0x7f060125

    :goto_2
    invoke-static {v0, v9}, Landroidx/databinding/ViewDataBinding;->a(Landroid/view/View;I)I

    move-result v0

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    const-wide/16 v9, 0xc

    and-long v12, v2, v9

    const/4 v14, 0x0

    cmp-long v15, v12, v4

    if-eqz v15, :cond_9

    if-eqz v6, :cond_5

    .line 11
    invoke-virtual {v6}, Lcom/farsitel/bazaar/common/model/transaction/TransactionItem;->getDescription()Ljava/lang/String;

    move-result-object v14

    .line 12
    invoke-virtual {v6}, Lcom/farsitel/bazaar/common/model/transaction/TransactionItem;->getDateTimeString()Ljava/lang/String;

    move-result-object v11

    .line 13
    invoke-virtual {v6}, Lcom/farsitel/bazaar/common/model/transaction/TransactionItem;->isIncome()Z

    move-result v15

    .line 14
    invoke-virtual {v6}, Lcom/farsitel/bazaar/common/model/transaction/TransactionItem;->getToken()Ljava/lang/String;

    move-result-object v16

    .line 15
    invoke-virtual {v6}, Lcom/farsitel/bazaar/common/model/transaction/TransactionItem;->getAmountString()Ljava/lang/String;

    move-result-object v17

    .line 16
    invoke-virtual {v6}, Lcom/farsitel/bazaar/common/model/transaction/TransactionItem;->isRefunded()Z

    move-result v6

    move-object/from16 v19, v11

    move v11, v6

    move-object/from16 v6, v19

    goto :goto_4

    :cond_5
    move-object v6, v14

    move-object/from16 v16, v6

    move-object/from16 v17, v16

    const/4 v15, 0x0

    :goto_4
    cmp-long v18, v12, v4

    if-eqz v18, :cond_7

    if-eqz v15, :cond_6

    const-wide/16 v12, 0x80

    goto :goto_5

    :cond_6
    const-wide/16 v12, 0x40

    :goto_5
    or-long/2addr v2, v12

    :cond_7
    if-eqz v15, :cond_8

    .line 17
    iget-object v12, v1, Lc/c/a/f/Bb;->I:Landroidx/appcompat/widget/AppCompatTextView;

    const v13, 0x7f060099

    goto :goto_6

    :cond_8
    iget-object v12, v1, Lc/c/a/f/Bb;->I:Landroidx/appcompat/widget/AppCompatTextView;

    const v13, 0x7f06008e

    :goto_6
    invoke-static {v12, v13}, Landroidx/databinding/ViewDataBinding;->a(Landroid/view/View;I)I

    move-result v12

    move v15, v11

    move v11, v12

    move-object v12, v14

    move-object/from16 v13, v16

    move-object/from16 v14, v17

    goto :goto_7

    :cond_9
    move-object v6, v14

    move-object v12, v6

    move-object v13, v12

    const/4 v15, 0x0

    :goto_7
    and-long/2addr v7, v2

    cmp-long v16, v7, v4

    if-eqz v16, :cond_a

    .line 18
    iget-object v7, v1, Lc/c/a/f/Bb;->G:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lb/l/a/b;->a(I)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v0

    invoke-static {v7, v0}, Lb/l/a/g;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_a
    and-long v7, v2, v9

    cmp-long v0, v7, v4

    if-eqz v0, :cond_b

    .line 19
    iget-object v0, v1, Lc/c/a/f/Bb;->H:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v6}, Lb/l/a/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 20
    iget-object v0, v1, Lc/c/a/f/Bb;->I:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v14}, Lb/l/a/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 21
    iget-object v0, v1, Lc/c/a/f/Bb;->I:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 22
    iget-object v0, v1, Lc/c/a/f/Bb;->J:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v12}, Lb/l/a/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 23
    iget-object v0, v1, Lc/c/a/f/Bb;->K:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v13}, Lb/l/a/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 24
    iget-object v0, v1, Lc/c/a/f/Bb;->L:Landroid/view/View;

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v0, v6}, Lc/c/a/d/a/b;->a(Landroid/view/View;Ljava/lang/Object;)V

    :cond_b
    const-wide/16 v6, 0x8

    and-long/2addr v2, v6

    cmp-long v0, v2, v4

    if-eqz v0, :cond_c

    .line 25
    iget-object v0, v1, Lc/c/a/f/Bb;->K:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v2, v1, Lc/c/a/f/Bb;->M:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_c
    return-void

    :catchall_0
    move-exception v0

    .line 26
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
    iget-wide v0, p0, Lc/c/a/f/Bb;->N:J

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
    iput-wide v0, p0, Lc/c/a/f/Bb;->N:J

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
