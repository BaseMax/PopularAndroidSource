.class public final Lcom/google/android/material/internal/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/internal/g$c;,
        Lcom/google/android/material/internal/g$e;,
        Lcom/google/android/material/internal/g$f;,
        Lcom/google/android/material/internal/g$d;,
        Lcom/google/android/material/internal/g$b;,
        Lcom/google/android/material/internal/g$a;,
        Lcom/google/android/material/internal/g$h;,
        Lcom/google/android/material/internal/g$i;,
        Lcom/google/android/material/internal/g$g;,
        Lcom/google/android/material/internal/g$j;
    }
.end annotation


# instance fields
.field a:Landroid/widget/LinearLayout;

.field b:Landroidx/appcompat/view/menu/MenuBuilder;

.field c:Lcom/google/android/material/internal/g$b;

.field d:Landroid/view/LayoutInflater;

.field e:I

.field f:Z

.field g:Landroid/content/res/ColorStateList;

.field h:Landroid/content/res/ColorStateList;

.field i:Landroid/graphics/drawable/Drawable;

.field j:I

.field k:I

.field l:I

.field final m:Landroid/view/View$OnClickListener;

.field private n:Lcom/google/android/material/internal/NavigationMenuView;

.field private o:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

.field private p:I

.field private q:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    new-instance v0, Lcom/google/android/material/internal/g$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/internal/g$1;-><init>(Lcom/google/android/material/internal/g;)V

    iput-object v0, p0, Lcom/google/android/material/internal/g;->m:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public final addHeaderView(Landroid/view/View;)V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/google/android/material/internal/g;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 215
    iget-object p1, p0, Lcom/google/android/material/internal/g;->n:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {p1}, Lcom/google/android/material/internal/NavigationMenuView;->getPaddingBottom()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v1, v0}, Lcom/google/android/material/internal/NavigationMenuView;->setPadding(IIII)V

    return-void
.end method

.method public final collapseItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final dispatchApplyWindowInsets(Landroidx/core/view/WindowInsetsCompat;)V
    .locals 4

    .line 294
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    .line 295
    iget v1, p0, Lcom/google/android/material/internal/g;->q:I

    if-eq v1, v0, :cond_0

    .line 296
    iput v0, p0, Lcom/google/android/material/internal/g;->q:I

    .line 297
    iget-object v0, p0, Lcom/google/android/material/internal/g;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/google/android/material/internal/g;->n:Lcom/google/android/material/internal/NavigationMenuView;

    iget v1, p0, Lcom/google/android/material/internal/g;->q:I

    invoke-virtual {v0}, Lcom/google/android/material/internal/NavigationMenuView;->getPaddingBottom()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v3, v2}, Lcom/google/android/material/internal/NavigationMenuView;->setPadding(IIII)V

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/g;->a:Landroid/widget/LinearLayout;

    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->dispatchApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    return-void
.end method

.method public final expandItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final flagActionItems()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getCheckedItem()Landroidx/appcompat/view/menu/MenuItemImpl;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/google/android/material/internal/g;->c:Lcom/google/android/material/internal/g$b;

    invoke-virtual {v0}, Lcom/google/android/material/internal/g$b;->getCheckedItem()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v0

    return-object v0
.end method

.method public final getHeaderCount()I
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/google/android/material/internal/g;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public final getHeaderView(I)Landroid/view/View;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/google/android/material/internal/g;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final getId()I
    .locals 1

    .line 152
    iget v0, p0, Lcom/google/android/material/internal/g;->p:I

    return v0
.end method

.method public final getItemBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/google/android/material/internal/g;->i:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getItemHorizontalPadding()I
    .locals 1

    .line 270
    iget v0, p0, Lcom/google/android/material/internal/g;->j:I

    return v0
.end method

.method public final getItemIconPadding()I
    .locals 1

    .line 279
    iget v0, p0, Lcom/google/android/material/internal/g;->k:I

    return v0
.end method

.method public final getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/google/android/material/internal/g;->g:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final getItemTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/google/android/material/internal/g;->h:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final getMenuView(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/MenuView;
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/google/android/material/internal/g;->n:Lcom/google/android/material/internal/NavigationMenuView;

    if-nez v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/google/android/material/internal/g;->d:Landroid/view/LayoutInflater;

    sget v1, Lcom/google/android/material/a$h;->design_navigation_menu:I

    const/4 v2, 0x0

    .line 99
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/internal/NavigationMenuView;

    iput-object p1, p0, Lcom/google/android/material/internal/g;->n:Lcom/google/android/material/internal/NavigationMenuView;

    .line 100
    iget-object p1, p0, Lcom/google/android/material/internal/g;->c:Lcom/google/android/material/internal/g$b;

    if-nez p1, :cond_0

    .line 101
    new-instance p1, Lcom/google/android/material/internal/g$b;

    invoke-direct {p1, p0}, Lcom/google/android/material/internal/g$b;-><init>(Lcom/google/android/material/internal/g;)V

    iput-object p1, p0, Lcom/google/android/material/internal/g;->c:Lcom/google/android/material/internal/g$b;

    .line 103
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/internal/g;->d:Landroid/view/LayoutInflater;

    sget v0, Lcom/google/android/material/a$h;->design_navigation_item_header:I

    iget-object v1, p0, Lcom/google/android/material/internal/g;->n:Lcom/google/android/material/internal/NavigationMenuView;

    .line 105
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/google/android/material/internal/g;->a:Landroid/widget/LinearLayout;

    .line 106
    iget-object p1, p0, Lcom/google/android/material/internal/g;->n:Lcom/google/android/material/internal/NavigationMenuView;

    iget-object v0, p0, Lcom/google/android/material/internal/g;->c:Lcom/google/android/material/internal/g$b;

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 108
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/internal/g;->n:Lcom/google/android/material/internal/NavigationMenuView;

    return-object p1
.end method

.method public final inflateHeaderView(I)Landroid/view/View;
    .locals 3

    .line 207
    iget-object v0, p0, Lcom/google/android/material/internal/g;->d:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/google/android/material/internal/g;->a:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 208
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/g;->addHeaderView(Landroid/view/View;)V

    return-object p1
.end method

.method public final initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 1

    .line 88
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/internal/g;->d:Landroid/view/LayoutInflater;

    .line 89
    iput-object p2, p0, Lcom/google/android/material/internal/g;->b:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 91
    sget p2, Lcom/google/android/material/a$d;->design_navigation_separator_vertical_padding:I

    .line 92
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/internal/g;->l:I

    return-void
.end method

.method public final onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/google/android/material/internal/g;->o:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 131
    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/menu/MenuPresenter$Callback;->onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V

    :cond_0
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 180
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 181
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "android:menu:list"

    .line 182
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v1, p0, Lcom/google/android/material/internal/g;->n:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v1, v0}, Lcom/google/android/material/internal/NavigationMenuView;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_0
    const-string v0, "android:menu:adapter"

    .line 186
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 188
    iget-object v1, p0, Lcom/google/android/material/internal/g;->c:Lcom/google/android/material/internal/g$b;

    invoke-virtual {v1, v0}, Lcom/google/android/material/internal/g$b;->restoreInstanceState(Landroid/os/Bundle;)V

    :cond_1
    const-string v0, "android:menu:header"

    .line 190
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 192
    iget-object v0, p0, Lcom/google/android/material/internal/g;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_2
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 161
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 162
    iget-object v1, p0, Lcom/google/android/material/internal/g;->n:Lcom/google/android/material/internal/NavigationMenuView;

    if-eqz v1, :cond_0

    .line 163
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 164
    iget-object v2, p0, Lcom/google/android/material/internal/g;->n:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v2, v1}, Lcom/google/android/material/internal/NavigationMenuView;->saveHierarchyState(Landroid/util/SparseArray;)V

    const-string v2, "android:menu:list"

    .line 165
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 167
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/internal/g;->c:Lcom/google/android/material/internal/g$b;

    if-eqz v1, :cond_1

    .line 168
    invoke-virtual {v1}, Lcom/google/android/material/internal/g$b;->createInstanceState()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android:menu:adapter"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 170
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/internal/g;->a:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    .line 171
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 172
    iget-object v2, p0, Lcom/google/android/material/internal/g;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->saveHierarchyState(Landroid/util/SparseArray;)V

    const-string v2, "android:menu:header"

    .line 173
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_2
    return-object v0
.end method

.method public final onSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final removeHeaderView(Landroid/view/View;)V
    .locals 3

    .line 219
    iget-object v0, p0, Lcom/google/android/material/internal/g;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 220
    iget-object p1, p0, Lcom/google/android/material/internal/g;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 221
    iget-object p1, p0, Lcom/google/android/material/internal/g;->n:Lcom/google/android/material/internal/NavigationMenuView;

    iget v0, p0, Lcom/google/android/material/internal/g;->q:I

    invoke-virtual {p1}, Lcom/google/android/material/internal/NavigationMenuView;->getPaddingBottom()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v2, v1}, Lcom/google/android/material/internal/NavigationMenuView;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method public final setCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/google/android/material/internal/g;->o:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    return-void
.end method

.method public final setCheckedItem(Landroidx/appcompat/view/menu/MenuItemImpl;)V
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/google/android/material/internal/g;->c:Lcom/google/android/material/internal/g$b;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/g$b;->setCheckedItem(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    return-void
.end method

.method public final setId(I)V
    .locals 0

    .line 156
    iput p1, p0, Lcom/google/android/material/internal/g;->p:I

    return-void
.end method

.method public final setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/google/android/material/internal/g;->i:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 266
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/g;->updateMenuView(Z)V

    return-void
.end method

.method public final setItemHorizontalPadding(I)V
    .locals 0

    .line 274
    iput p1, p0, Lcom/google/android/material/internal/g;->j:I

    const/4 p1, 0x0

    .line 275
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/g;->updateMenuView(Z)V

    return-void
.end method

.method public final setItemIconPadding(I)V
    .locals 0

    .line 283
    iput p1, p0, Lcom/google/android/material/internal/g;->k:I

    const/4 p1, 0x0

    .line 284
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/g;->updateMenuView(Z)V

    return-void
.end method

.method public final setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/google/android/material/internal/g;->h:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    .line 240
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/g;->updateMenuView(Z)V

    return-void
.end method

.method public final setItemTextAppearance(I)V
    .locals 0

    .line 254
    iput p1, p0, Lcom/google/android/material/internal/g;->e:I

    const/4 p1, 0x1

    .line 255
    iput-boolean p1, p0, Lcom/google/android/material/internal/g;->f:Z

    const/4 p1, 0x0

    .line 256
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/g;->updateMenuView(Z)V

    return-void
.end method

.method public final setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/google/android/material/internal/g;->g:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    .line 250
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/g;->updateMenuView(Z)V

    return-void
.end method

.method public final setUpdateSuspended(Z)V
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/google/android/material/internal/g;->c:Lcom/google/android/material/internal/g$b;

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/g$b;->setUpdateSuspended(Z)V

    :cond_0
    return-void
.end method

.method public final updateMenuView(Z)V
    .locals 0

    .line 113
    iget-object p1, p0, Lcom/google/android/material/internal/g;->c:Lcom/google/android/material/internal/g$b;

    if-eqz p1, :cond_0

    .line 114
    invoke-virtual {p1}, Lcom/google/android/material/internal/g$b;->update()V

    :cond_0
    return-void
.end method
