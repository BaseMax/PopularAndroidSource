.class public Lc/e/a/c/e/c;
.super Ljava/lang/Object;
.source "BottomNavigationMenuView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/e/a/c/e/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/e/a/c/e/d;


# direct methods
.method public constructor <init>(Lc/e/a/c/e/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/c/e/c;->a:Lc/e/a/c/e/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    check-cast p1, Lc/e/a/c/e/a;

    .line 2
    invoke-virtual {p1}, Lc/e/a/c/e/a;->getItemData()Lb/b/f/a/o;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lc/e/a/c/e/c;->a:Lc/e/a/c/e/d;

    invoke-static {v0}, Lc/e/a/c/e/d;->b(Lc/e/a/c/e/d;)Lb/b/f/a/k;

    move-result-object v0

    iget-object v1, p0, Lc/e/a/c/e/c;->a:Lc/e/a/c/e/d;

    invoke-static {v1}, Lc/e/a/c/e/d;->a(Lc/e/a/c/e/d;)Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lb/b/f/a/k;->a(Landroid/view/MenuItem;Lb/b/f/a/t;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 4
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method
