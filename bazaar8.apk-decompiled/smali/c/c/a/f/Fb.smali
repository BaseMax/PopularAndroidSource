.class public Lc/c/a/f/Fb;
.super Lc/c/a/f/Eb;
.source "ItemUpgradableHeaderBindingImpl.java"

# interfaces
.implements Lc/c/a/j/a/a$a;


# static fields
.field public static final D:Landroidx/databinding/ViewDataBinding$b;

.field public static final E:Landroid/util/SparseIntArray;


# instance fields
.field public final F:Landroid/widget/LinearLayout;

.field public final G:Landroidx/appcompat/widget/AppCompatTextView;

.field public final H:Landroid/view/View$OnClickListener;

.field public I:J


# direct methods
.method public constructor <init>(Lb/l/f;Landroid/view/View;)V
    .locals 3

    .line 1
    sget-object v0, Lc/c/a/f/Fb;->D:Landroidx/databinding/ViewDataBinding$b;

    sget-object v1, Lc/c/a/f/Fb;->E:Landroid/util/SparseIntArray;

    const/4 v2, 0x3

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->a(Lb/l/f;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$b;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lc/c/a/f/Fb;-><init>(Lb/l/f;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lb/l/f;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 4

    const/4 v0, 0x2

    .line 2
    aget-object v0, p3, v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lc/c/a/f/Eb;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/google/android/material/button/MaterialButton;)V

    const-wide/16 v2, -0x1

    .line 3
    iput-wide v2, p0, Lc/c/a/f/Fb;->I:J

    .line 4
    aget-object p1, p3, v1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lc/c/a/f/Fb;->F:Landroid/widget/LinearLayout;

    .line 5
    iget-object p1, p0, Lc/c/a/f/Fb;->F:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 6
    aget-object p3, p3, p1

    check-cast p3, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p3, p0, Lc/c/a/f/Fb;->G:Landroidx/appcompat/widget/AppCompatTextView;

    .line 7
    iget-object p3, p0, Lc/c/a/f/Fb;->G:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object p3, p0, Lc/c/a/f/Eb;->A:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->b(Landroid/view/View;)V

    .line 10
    new-instance p2, Lc/c/a/j/a/a;

    invoke-direct {p2, p0, p1}, Lc/c/a/j/a/a;-><init>(Lc/c/a/j/a/a$a;I)V

    iput-object p2, p0, Lc/c/a/f/Fb;->H:Landroid/view/View$OnClickListener;

    .line 11
    invoke-virtual {p0}, Lc/c/a/f/Fb;->l()V

    return-void
.end method


# virtual methods
.method public a(Lc/c/a/n/A/a;)V
    .locals 4

    .line 10
    iput-object p1, p0, Lc/c/a/f/Eb;->C:Lc/c/a/n/A/a;

    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/Fb;->I:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lc/c/a/f/Fb;->I:J

    .line 13
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x1c

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

.method public a(Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsHeaderItem;)V
    .locals 4

    .line 3
    iput-object p1, p0, Lc/c/a/f/Eb;->B:Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsHeaderItem;

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/Fb;->I:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lc/c/a/f/Fb;->I:J

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
    check-cast p2, Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsHeaderItem;

    invoke-virtual {p0, p2}, Lc/c/a/f/Fb;->a(Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsHeaderItem;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x1c

    if-ne v0, p1, :cond_1

    .line 2
    check-cast p2, Lc/c/a/n/A/a;

    invoke-virtual {p0, p2}, Lc/c/a/f/Fb;->a(Lc/c/a/n/A/a;)V

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

    .line 1
    iget-object p1, p0, Lc/c/a/f/Eb;->B:Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsHeaderItem;

    .line 2
    iget-object p2, p0, Lc/c/a/f/Eb;->C:Lc/c/a/n/A/a;

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

    .line 3
    invoke-virtual {p1}, Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsHeaderItem;->a()Z

    move-result p1

    .line 4
    invoke-interface {p2, p1}, Lc/c/a/n/A/a;->a(Z)V

    :cond_2
    return-void
.end method

.method public b(ILjava/lang/Object;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public e()V
    .locals 12

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/Fb;->I:J

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, p0, Lc/c/a/f/Fb;->I:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v4, p0, Lc/c/a/f/Eb;->B:Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsHeaderItem;

    .line 6
    iget-object v5, p0, Lc/c/a/f/Eb;->C:Lc/c/a/n/A/a;

    const-wide/16 v5, 0x5

    and-long v7, v0, v5

    const/4 v9, 0x0

    cmp-long v10, v7, v2

    if-eqz v10, :cond_4

    const/4 v9, 0x0

    if-eqz v4, :cond_0

    .line 7
    invoke-virtual {v4}, Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsHeaderItem;->b()I

    move-result v10

    .line 8
    invoke-virtual {v4}, Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsHeaderItem;->a()Z

    move-result v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    const/4 v10, 0x0

    :goto_0
    cmp-long v11, v7, v2

    if-eqz v11, :cond_2

    if-eqz v4, :cond_1

    const-wide/16 v7, 0x10

    goto :goto_1

    :cond_1
    const-wide/16 v7, 0x8

    :goto_1
    or-long/2addr v0, v7

    .line 9
    :cond_2
    iget-object v7, p0, Lc/c/a/f/Fb;->G:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f100216

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v11, v9

    invoke-virtual {v7, v8, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    if-eqz v4, :cond_3

    .line 10
    iget-object v4, p0, Lc/c/a/f/Eb;->A:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v4}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f10020e

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lc/c/a/f/Eb;->A:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v4}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f100161

    :goto_2
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_4
    move-object v4, v9

    :goto_3
    and-long/2addr v5, v0

    cmp-long v7, v5, v2

    if-eqz v7, :cond_5

    .line 11
    iget-object v5, p0, Lc/c/a/f/Fb;->G:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v5, v9}, Lb/l/a/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 12
    iget-object v5, p0, Lc/c/a/f/Eb;->A:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v5, v4}, Lb/l/a/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_5
    const-wide/16 v4, 0x4

    and-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-eqz v4, :cond_6

    .line 13
    iget-object v0, p0, Lc/c/a/f/Eb;->A:Lcom/google/android/material/button/MaterialButton;

    iget-object v1, p0, Lc/c/a/f/Fb;->H:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
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
    iget-wide v0, p0, Lc/c/a/f/Fb;->I:J

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
    iput-wide v0, p0, Lc/c/a/f/Fb;->I:J

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
