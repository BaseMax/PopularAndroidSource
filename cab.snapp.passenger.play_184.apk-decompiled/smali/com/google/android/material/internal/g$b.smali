.class final Lcom/google/android/material/internal/g$b;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/google/android/material/internal/g$j;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/internal/g;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/material/internal/g$d;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroidx/appcompat/view/menu/MenuItemImpl;

.field private d:Z


# direct methods
.method constructor <init>(Lcom/google/android/material/internal/g;)V
    .locals 0

    .line 375
    iput-object p1, p0, Lcom/google/android/material/internal/g$b;->a:Lcom/google/android/material/internal/g;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 371
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/internal/g$b;->b:Ljava/util/ArrayList;

    .line 376
    invoke-direct {p0}, Lcom/google/android/material/internal/g$b;->a()V

    return-void
.end method

.method private a()V
    .locals 16

    move-object/from16 v0, p0

    .line 482
    iget-boolean v1, v0, Lcom/google/android/material/internal/g$b;->d:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 485
    iput-boolean v1, v0, Lcom/google/android/material/internal/g$b;->d:Z

    .line 486
    iget-object v2, v0, Lcom/google/android/material/internal/g$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 487
    iget-object v2, v0, Lcom/google/android/material/internal/g$b;->b:Ljava/util/ArrayList;

    new-instance v3, Lcom/google/android/material/internal/g$c;

    invoke-direct {v3}, Lcom/google/android/material/internal/g$c;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, -0x1

    .line 492
    iget-object v3, v0, Lcom/google/android/material/internal/g$b;->a:Lcom/google/android/material/internal/g;

    iget-object v3, v3, Lcom/google/android/material/internal/g;->b:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v2, v3, :cond_f

    .line 493
    iget-object v8, v0, Lcom/google/android/material/internal/g$b;->a:Lcom/google/android/material/internal/g;

    iget-object v8, v8, Lcom/google/android/material/internal/g;->b:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 494
    invoke-virtual {v8}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 495
    invoke-virtual {v0, v8}, Lcom/google/android/material/internal/g$b;->setCheckedItem(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    .line 497
    :cond_1
    invoke-virtual {v8}, Landroidx/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 498
    invoke-virtual {v8, v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 500
    :cond_2
    invoke-virtual {v8}, Landroidx/appcompat/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 501
    invoke-virtual {v8}, Landroidx/appcompat/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v9

    .line 502
    invoke-interface {v9}, Landroid/view/SubMenu;->hasVisibleItems()Z

    move-result v10

    if-eqz v10, :cond_e

    if-eqz v2, :cond_3

    .line 504
    iget-object v10, v0, Lcom/google/android/material/internal/g$b;->b:Ljava/util/ArrayList;

    new-instance v11, Lcom/google/android/material/internal/g$e;

    iget-object v12, v0, Lcom/google/android/material/internal/g$b;->a:Lcom/google/android/material/internal/g;

    iget v12, v12, Lcom/google/android/material/internal/g;->l:I

    invoke-direct {v11, v12, v4}, Lcom/google/android/material/internal/g$e;-><init>(II)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    :cond_3
    iget-object v10, v0, Lcom/google/android/material/internal/g$b;->b:Ljava/util/ArrayList;

    new-instance v11, Lcom/google/android/material/internal/g$f;

    invoke-direct {v11, v8}, Lcom/google/android/material/internal/g$f;-><init>(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    iget-object v10, v0, Lcom/google/android/material/internal/g$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 509
    invoke-interface {v9}, Landroid/view/SubMenu;->size()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_1
    if-ge v12, v11, :cond_8

    .line 510
    invoke-interface {v9, v12}, Landroid/view/SubMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v14

    check-cast v14, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 511
    invoke-virtual {v14}, Landroidx/appcompat/view/menu/MenuItemImpl;->isVisible()Z

    move-result v15

    if-eqz v15, :cond_7

    if-nez v13, :cond_4

    .line 512
    invoke-virtual {v14}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    if-eqz v15, :cond_4

    const/4 v13, 0x1

    .line 515
    :cond_4
    invoke-virtual {v14}, Landroidx/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 516
    invoke-virtual {v14, v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 518
    :cond_5
    invoke-virtual {v8}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 519
    invoke-virtual {v0, v8}, Lcom/google/android/material/internal/g$b;->setCheckedItem(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    .line 521
    :cond_6
    iget-object v15, v0, Lcom/google/android/material/internal/g$b;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/material/internal/g$f;

    invoke-direct {v1, v14}, Lcom/google/android/material/internal/g$f;-><init>(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v12, v12, 0x1

    const/4 v1, 0x1

    goto :goto_1

    :cond_8
    if-eqz v13, :cond_e

    .line 525
    iget-object v1, v0, Lcom/google/android/material/internal/g$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v10, v1}, Lcom/google/android/material/internal/g$b;->a(II)V

    goto :goto_4

    .line 529
    :cond_9
    invoke-virtual {v8}, Landroidx/appcompat/view/menu/MenuItemImpl;->getGroupId()I

    move-result v1

    if-eq v1, v5, :cond_c

    .line 531
    iget-object v5, v0, Lcom/google/android/material/internal/g$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 532
    invoke-virtual {v8}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_a

    const/4 v5, 0x1

    goto :goto_2

    :cond_a
    const/4 v5, 0x0

    :goto_2
    if-eqz v2, :cond_b

    add-int/lit8 v7, v7, 0x1

    .line 535
    iget-object v6, v0, Lcom/google/android/material/internal/g$b;->b:Ljava/util/ArrayList;

    new-instance v9, Lcom/google/android/material/internal/g$e;

    iget-object v10, v0, Lcom/google/android/material/internal/g$b;->a:Lcom/google/android/material/internal/g;

    iget v10, v10, Lcom/google/android/material/internal/g;->l:I

    iget-object v11, v0, Lcom/google/android/material/internal/g$b;->a:Lcom/google/android/material/internal/g;

    iget v11, v11, Lcom/google/android/material/internal/g;->l:I

    invoke-direct {v9, v10, v11}, Lcom/google/android/material/internal/g$e;-><init>(II)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    move v6, v5

    goto :goto_3

    :cond_c
    if-nez v6, :cond_d

    .line 537
    invoke-virtual {v8}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_d

    .line 539
    iget-object v5, v0, Lcom/google/android/material/internal/g$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v0, v7, v5}, Lcom/google/android/material/internal/g$b;->a(II)V

    const/4 v6, 0x1

    .line 541
    :cond_d
    :goto_3
    new-instance v5, Lcom/google/android/material/internal/g$f;

    invoke-direct {v5, v8}, Lcom/google/android/material/internal/g$f;-><init>(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    .line 542
    iput-boolean v6, v5, Lcom/google/android/material/internal/g$f;->a:Z

    .line 543
    iget-object v8, v0, Lcom/google/android/material/internal/g$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v1

    :cond_e
    :goto_4
    add-int/lit8 v2, v2, 0x1

    const/4 v1, 0x1

    goto/16 :goto_0

    .line 547
    :cond_f
    iput-boolean v4, v0, Lcom/google/android/material/internal/g$b;->d:Z

    return-void
.end method

.method private a(II)V
    .locals 2

    :goto_0
    if-ge p1, p2, :cond_0

    .line 552
    iget-object v0, p0, Lcom/google/android/material/internal/g$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/internal/g$f;

    const/4 v1, 0x1

    .line 553
    iput-boolean v1, v0, Lcom/google/android/material/internal/g$f;->a:Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final createInstanceState()Landroid/os/Bundle;
    .locals 7

    .line 573
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 574
    iget-object v1, p0, Lcom/google/android/material/internal/g$b;->c:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v1, :cond_0

    .line 575
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v1

    const-string v2, "android:menu:checked"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 578
    :cond_0
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    const/4 v2, 0x0

    .line 579
    iget-object v3, p0, Lcom/google/android/material/internal/g$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_3

    .line 580
    iget-object v4, p0, Lcom/google/android/material/internal/g$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/internal/g$d;

    .line 581
    instance-of v5, v4, Lcom/google/android/material/internal/g$f;

    if-eqz v5, :cond_2

    .line 582
    check-cast v4, Lcom/google/android/material/internal/g$f;

    invoke-virtual {v4}, Lcom/google/android/material/internal/g$f;->getMenuItem()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 583
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v5

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_2

    .line 585
    new-instance v6, Lcom/google/android/material/internal/ParcelableSparseArray;

    invoke-direct {v6}, Lcom/google/android/material/internal/ParcelableSparseArray;-><init>()V

    .line 586
    invoke-virtual {v5, v6}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 587
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v4

    invoke-virtual {v1, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const-string v2, "android:menu:action_views"

    .line 591
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    return-object v0
.end method

.method public final getCheckedItem()Landroidx/appcompat/view/menu/MenuItemImpl;
    .locals 1

    .line 569
    iget-object v0, p0, Lcom/google/android/material/internal/g$b;->c:Landroidx/appcompat/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public final getItemCount()I
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/google/android/material/internal/g$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/google/android/material/internal/g$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/internal/g$d;

    .line 392
    instance-of v0, p1, Lcom/google/android/material/internal/g$e;

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    return p1

    .line 394
    :cond_0
    instance-of v0, p1, Lcom/google/android/material/internal/g$c;

    if-eqz v0, :cond_1

    const/4 p1, 0x3

    return p1

    .line 396
    :cond_1
    instance-of v0, p1, Lcom/google/android/material/internal/g$f;

    if-eqz v0, :cond_3

    .line 397
    check-cast p1, Lcom/google/android/material/internal/g$f;

    .line 398
    invoke-virtual {p1}, Lcom/google/android/material/internal/g$f;->getMenuItem()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1

    .line 404
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unknown item type."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 361
    check-cast p1, Lcom/google/android/material/internal/g$j;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/internal/g$b;->onBindViewHolder(Lcom/google/android/material/internal/g$j;I)V

    return-void
.end method

.method public final onBindViewHolder(Lcom/google/android/material/internal/g$j;I)V
    .locals 3

    .line 424
    invoke-virtual {p0, p2}, Lcom/google/android/material/internal/g$b;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/g$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/internal/g$e;

    .line 455
    iget-object p1, p1, Lcom/google/android/material/internal/g$j;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Lcom/google/android/material/internal/g$e;->getPaddingTop()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/material/internal/g$e;->getPaddingBottom()I

    move-result p2

    invoke-virtual {p1, v1, v0, v1, p2}, Landroid/view/View;->setPadding(IIII)V

    :goto_0
    return-void

    .line 447
    :cond_1
    iget-object p1, p1, Lcom/google/android/material/internal/g$j;->itemView:Landroid/view/View;

    check-cast p1, Landroid/widget/TextView;

    .line 448
    iget-object v0, p0, Lcom/google/android/material/internal/g$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/internal/g$f;

    .line 449
    invoke-virtual {p2}, Lcom/google/android/material/internal/g$f;->getMenuItem()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 427
    :cond_2
    iget-object p1, p1, Lcom/google/android/material/internal/g$j;->itemView:Landroid/view/View;

    check-cast p1, Lcom/google/android/material/internal/NavigationMenuItemView;

    .line 428
    iget-object v0, p0, Lcom/google/android/material/internal/g$b;->a:Lcom/google/android/material/internal/g;

    iget-object v0, v0, Lcom/google/android/material/internal/g;->h:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 429
    iget-object v0, p0, Lcom/google/android/material/internal/g$b;->a:Lcom/google/android/material/internal/g;

    iget-boolean v0, v0, Lcom/google/android/material/internal/g;->f:Z

    if-eqz v0, :cond_3

    .line 430
    iget-object v0, p0, Lcom/google/android/material/internal/g$b;->a:Lcom/google/android/material/internal/g;

    iget v0, v0, Lcom/google/android/material/internal/g;->e:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setTextAppearance(I)V

    .line 432
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/internal/g$b;->a:Lcom/google/android/material/internal/g;

    iget-object v0, v0, Lcom/google/android/material/internal/g;->g:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_4

    .line 433
    iget-object v0, p0, Lcom/google/android/material/internal/g$b;->a:Lcom/google/android/material/internal/g;

    iget-object v0, v0, Lcom/google/android/material/internal/g;->g:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 435
    :cond_4
    iget-object v0, p0, Lcom/google/android/material/internal/g$b;->a:Lcom/google/android/material/internal/g;

    iget-object v0, v0, Lcom/google/android/material/internal/g;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/material/internal/g$b;->a:Lcom/google/android/material/internal/g;

    iget-object v0, v0, Lcom/google/android/material/internal/g;->i:Landroid/graphics/drawable/Drawable;

    .line 437
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    .line 435
    :goto_1
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 438
    iget-object v0, p0, Lcom/google/android/material/internal/g$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/internal/g$f;

    .line 439
    iget-boolean v0, p2, Lcom/google/android/material/internal/g$f;->a:Z

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setNeedsEmptyIcon(Z)V

    .line 440
    iget-object v0, p0, Lcom/google/android/material/internal/g$b;->a:Lcom/google/android/material/internal/g;

    iget v0, v0, Lcom/google/android/material/internal/g;->j:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setHorizontalPadding(I)V

    .line 441
    iget-object v0, p0, Lcom/google/android/material/internal/g$b;->a:Lcom/google/android/material/internal/g;

    iget v0, v0, Lcom/google/android/material/internal/g;->k:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setIconPadding(I)V

    .line 442
    invoke-virtual {p2}, Lcom/google/android/material/internal/g$f;->getMenuItem()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lcom/google/android/material/internal/NavigationMenuItemView;->initialize(Landroidx/appcompat/view/menu/MenuItemImpl;I)V

    return-void
.end method

.method public final bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 361
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/internal/g$b;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/google/android/material/internal/g$j;

    move-result-object p1

    return-object p1
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/google/android/material/internal/g$j;
    .locals 2

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 p1, 0x3

    if-eq p2, p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 417
    :cond_0
    new-instance p1, Lcom/google/android/material/internal/g$a;

    iget-object p2, p0, Lcom/google/android/material/internal/g$b;->a:Lcom/google/android/material/internal/g;

    iget-object p2, p2, Lcom/google/android/material/internal/g;->a:Landroid/widget/LinearLayout;

    invoke-direct {p1, p2}, Lcom/google/android/material/internal/g$a;-><init>(Landroid/view/View;)V

    return-object p1

    .line 415
    :cond_1
    new-instance p2, Lcom/google/android/material/internal/g$h;

    iget-object v0, p0, Lcom/google/android/material/internal/g$b;->a:Lcom/google/android/material/internal/g;

    iget-object v0, v0, Lcom/google/android/material/internal/g;->d:Landroid/view/LayoutInflater;

    invoke-direct {p2, v0, p1}, Lcom/google/android/material/internal/g$h;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    return-object p2

    .line 413
    :cond_2
    new-instance p2, Lcom/google/android/material/internal/g$i;

    iget-object v0, p0, Lcom/google/android/material/internal/g$b;->a:Lcom/google/android/material/internal/g;

    iget-object v0, v0, Lcom/google/android/material/internal/g;->d:Landroid/view/LayoutInflater;

    invoke-direct {p2, v0, p1}, Lcom/google/android/material/internal/g$i;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    return-object p2

    .line 411
    :cond_3
    new-instance p2, Lcom/google/android/material/internal/g$g;

    iget-object v0, p0, Lcom/google/android/material/internal/g$b;->a:Lcom/google/android/material/internal/g;

    iget-object v0, v0, Lcom/google/android/material/internal/g;->d:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/google/android/material/internal/g$b;->a:Lcom/google/android/material/internal/g;

    iget-object v1, v1, Lcom/google/android/material/internal/g;->m:Landroid/view/View$OnClickListener;

    invoke-direct {p2, v0, p1, v1}, Lcom/google/android/material/internal/g$g;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public final bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 361
    check-cast p1, Lcom/google/android/material/internal/g$j;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/g$b;->onViewRecycled(Lcom/google/android/material/internal/g$j;)V

    return-void
.end method

.method public final onViewRecycled(Lcom/google/android/material/internal/g$j;)V
    .locals 1

    .line 467
    instance-of v0, p1, Lcom/google/android/material/internal/g$g;

    if-eqz v0, :cond_0

    .line 468
    iget-object p1, p1, Lcom/google/android/material/internal/g$j;->itemView:Landroid/view/View;

    check-cast p1, Lcom/google/android/material/internal/NavigationMenuItemView;

    invoke-virtual {p1}, Lcom/google/android/material/internal/NavigationMenuItemView;->recycle()V

    :cond_0
    return-void
.end method

.method public final restoreInstanceState(Landroid/os/Bundle;)V
    .locals 6

    const/4 v0, 0x0

    const-string v1, "android:menu:checked"

    .line 596
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    .line 598
    iput-boolean v2, p0, Lcom/google/android/material/internal/g$b;->d:Z

    .line 599
    iget-object v2, p0, Lcom/google/android/material/internal/g$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 600
    iget-object v4, p0, Lcom/google/android/material/internal/g$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/internal/g$d;

    .line 601
    instance-of v5, v4, Lcom/google/android/material/internal/g$f;

    if-eqz v5, :cond_0

    .line 602
    check-cast v4, Lcom/google/android/material/internal/g$f;

    invoke-virtual {v4}, Lcom/google/android/material/internal/g$f;->getMenuItem()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 603
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v5

    if-ne v5, v1, :cond_0

    .line 604
    invoke-virtual {p0, v4}, Lcom/google/android/material/internal/g$b;->setCheckedItem(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 609
    :cond_1
    :goto_1
    iput-boolean v0, p0, Lcom/google/android/material/internal/g$b;->d:Z

    .line 610
    invoke-direct {p0}, Lcom/google/android/material/internal/g$b;->a()V

    :cond_2
    const-string v1, "android:menu:action_views"

    .line 614
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 616
    iget-object v1, p0, Lcom/google/android/material/internal/g$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_2
    if-ge v0, v1, :cond_4

    .line 617
    iget-object v2, p0, Lcom/google/android/material/internal/g$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/internal/g$d;

    .line 618
    instance-of v3, v2, Lcom/google/android/material/internal/g$f;

    if-eqz v3, :cond_3

    .line 621
    check-cast v2, Lcom/google/android/material/internal/g$f;

    invoke-virtual {v2}, Lcom/google/android/material/internal/g$f;->getMenuItem()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 625
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 629
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/internal/ParcelableSparseArray;

    if-eqz v2, :cond_3

    .line 633
    invoke-virtual {v3, v2}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final setCheckedItem(Landroidx/appcompat/view/menu/MenuItemImpl;)V
    .locals 2

    .line 558
    iget-object v0, p0, Lcom/google/android/material/internal/g$b;->c:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eq v0, p1, :cond_2

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/g$b;->c:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 562
    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->setChecked(Z)Landroid/view/MenuItem;

    .line 564
    :cond_1
    iput-object p1, p0, Lcom/google/android/material/internal/g$b;->c:Landroidx/appcompat/view/menu/MenuItemImpl;

    const/4 v0, 0x1

    .line 565
    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->setChecked(Z)Landroid/view/MenuItem;

    :cond_2
    :goto_0
    return-void
.end method

.method public final setUpdateSuspended(Z)V
    .locals 0

    .line 639
    iput-boolean p1, p0, Lcom/google/android/material/internal/g$b;->d:Z

    return-void
.end method

.method public final update()V
    .locals 0

    .line 473
    invoke-direct {p0}, Lcom/google/android/material/internal/g$b;->a()V

    .line 474
    invoke-virtual {p0}, Lcom/google/android/material/internal/g$b;->notifyDataSetChanged()V

    return-void
.end method
