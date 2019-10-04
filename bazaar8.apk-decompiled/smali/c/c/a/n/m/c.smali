.class public final Lc/c/a/n/m/c;
.super Ljava/lang/Object;
.source "HomeFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/home/HomeFragment;->Ab()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/android/material/snackbar/Snackbar;

.field public final synthetic b:Lcom/farsitel/bazaar/ui/home/HomeFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/material/snackbar/Snackbar;Lcom/farsitel/bazaar/ui/home/HomeFragment;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/m/c;->a:Lcom/google/android/material/snackbar/Snackbar;

    iput-object p2, p0, Lc/c/a/n/m/c;->b:Lcom/farsitel/bazaar/ui/home/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lc/c/a/n/m/c;->b:Lcom/farsitel/bazaar/ui/home/HomeFragment;

    invoke-static {p1}, Lb/w/b/b;->a(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object p1

    sget-object v0, Lc/c/a/d;->a:Lc/c/a/d$l;

    .line 2
    iget-object v1, p0, Lc/c/a/n/m/c;->a:Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->d()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.packageName"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lc/c/a/c/d/e;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 4
    invoke-virtual {v0, v1, v2, v3}, Lc/c/a/d$l;->a(Ljava/lang/String;Ljava/lang/String;Z)Lb/w/p;

    move-result-object v0

    invoke-static {p1, v0}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    return-void
.end method
