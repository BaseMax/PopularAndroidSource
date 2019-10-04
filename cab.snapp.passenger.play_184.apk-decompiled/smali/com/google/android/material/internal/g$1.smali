.class final Lcom/google/android/material/internal/g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/internal/g;


# direct methods
.method constructor <init>(Lcom/google/android/material/internal/g;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/google/android/material/internal/g$1;->a:Lcom/google/android/material/internal/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 349
    check-cast p1, Lcom/google/android/material/internal/NavigationMenuItemView;

    .line 350
    iget-object v0, p0, Lcom/google/android/material/internal/g$1;->a:Lcom/google/android/material/internal/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/g;->setUpdateSuspended(Z)V

    .line 351
    invoke-virtual {p1}, Lcom/google/android/material/internal/NavigationMenuItemView;->getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object p1

    .line 352
    iget-object v0, p0, Lcom/google/android/material/internal/g$1;->a:Lcom/google/android/material/internal/g;

    iget-object v0, v0, Lcom/google/android/material/internal/g;->b:Landroidx/appcompat/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/google/android/material/internal/g$1;->a:Lcom/google/android/material/internal/g;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/MenuPresenter;I)Z

    move-result v0

    if-eqz p1, :cond_0

    .line 353
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/google/android/material/internal/g$1;->a:Lcom/google/android/material/internal/g;

    iget-object v0, v0, Lcom/google/android/material/internal/g;->c:Lcom/google/android/material/internal/g$b;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/g$b;->setCheckedItem(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    .line 356
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/internal/g$1;->a:Lcom/google/android/material/internal/g;

    invoke-virtual {p1, v2}, Lcom/google/android/material/internal/g;->setUpdateSuspended(Z)V

    .line 357
    iget-object p1, p0, Lcom/google/android/material/internal/g$1;->a:Lcom/google/android/material/internal/g;

    invoke-virtual {p1, v2}, Lcom/google/android/material/internal/g;->updateMenuView(Z)V

    return-void
.end method
