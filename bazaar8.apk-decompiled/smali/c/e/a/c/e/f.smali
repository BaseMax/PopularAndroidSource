.class public Lc/e/a/c/e/f;
.super Ljava/lang/Object;
.source "BottomNavigationView.java"

# interfaces
.implements Lb/b/f/a/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/bottomnavigation/BottomNavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/android/material/bottomnavigation/BottomNavigationView;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomnavigation/BottomNavigationView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/c/e/f;->a:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/b/f/a/k;)V
    .locals 0

    return-void
.end method

.method public a(Lb/b/f/a/k;Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lc/e/a/c/e/f;->a:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-static {p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a(Lcom/google/android/material/bottomnavigation/BottomNavigationView;)Lcom/google/android/material/bottomnavigation/BottomNavigationView$a;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    iget-object v1, p0, Lc/e/a/c/e/f;->a:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getSelectedItemId()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 2
    iget-object p1, p0, Lc/e/a/c/e/f;->a:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-static {p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a(Lcom/google/android/material/bottomnavigation/BottomNavigationView;)Lcom/google/android/material/bottomnavigation/BottomNavigationView$a;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/google/android/material/bottomnavigation/BottomNavigationView$a;->b(Landroid/view/MenuItem;)V

    return v0

    .line 3
    :cond_0
    iget-object p1, p0, Lc/e/a/c/e/f;->a:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-static {p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->b(Lcom/google/android/material/bottomnavigation/BottomNavigationView;)Lcom/google/android/material/bottomnavigation/BottomNavigationView$b;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lc/e/a/c/e/f;->a:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-static {p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->b(Lcom/google/android/material/bottomnavigation/BottomNavigationView;)Lcom/google/android/material/bottomnavigation/BottomNavigationView$b;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/google/android/material/bottomnavigation/BottomNavigationView$b;->a(Landroid/view/MenuItem;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
