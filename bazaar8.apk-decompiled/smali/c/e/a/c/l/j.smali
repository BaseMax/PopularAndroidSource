.class public Lc/e/a/c/l/j;
.super Lb/i/k/a;
.source "NavigationMenuItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/NavigationMenuItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic d:Lcom/google/android/material/internal/NavigationMenuItemView;


# direct methods
.method public constructor <init>(Lcom/google/android/material/internal/NavigationMenuItemView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/c/l/j;->d:Lcom/google/android/material/internal/NavigationMenuItemView;

    invoke-direct {p0}, Lb/i/k/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lb/i/k/a/d;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lb/i/k/a;->a(Landroid/view/View;Lb/i/k/a/d;)V

    .line 2
    iget-object p1, p0, Lc/e/a/c/l/j;->d:Lcom/google/android/material/internal/NavigationMenuItemView;

    iget-boolean p1, p1, Lcom/google/android/material/internal/NavigationMenuItemView;->y:Z

    invoke-virtual {p2, p1}, Lb/i/k/a/d;->b(Z)V

    return-void
.end method
