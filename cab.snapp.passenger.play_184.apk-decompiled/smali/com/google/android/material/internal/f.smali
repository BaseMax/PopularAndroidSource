.class public final Lcom/google/android/material/internal/f;
.super Landroidx/appcompat/view/menu/MenuBuilder;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 0

    .line 43
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/material/internal/f;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 44
    new-instance p2, Lcom/google/android/material/internal/h;

    invoke-virtual {p0}, Lcom/google/android/material/internal/f;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3, p0, p1}, Lcom/google/android/material/internal/h;-><init>(Landroid/content/Context;Lcom/google/android/material/internal/f;Landroidx/appcompat/view/menu/MenuItemImpl;)V

    .line 45
    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/MenuItemImpl;->setSubMenu(Landroidx/appcompat/view/menu/SubMenuBuilder;)V

    return-object p2
.end method