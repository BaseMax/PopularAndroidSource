.class public final Lcom/google/android/material/internal/h;
.super Landroidx/appcompat/view/menu/SubMenuBuilder;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/material/internal/f;Landroidx/appcompat/view/menu/MenuItemImpl;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/SubMenuBuilder;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)V

    return-void
.end method


# virtual methods
.method public final onItemsChanged(Z)V
    .locals 1

    .line 42
    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/SubMenuBuilder;->onItemsChanged(Z)V

    .line 43
    invoke-virtual {p0}, Lcom/google/android/material/internal/h;->getParentMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-void
.end method
