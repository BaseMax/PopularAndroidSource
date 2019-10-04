.class public Lc/e/a/c/s/h;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/e/a/c/s/i;->onViewDetachedFromWindow(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/e/a/c/s/i;


# direct methods
.method public constructor <init>(Lc/e/a/c/s/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/c/s/h;->a:Lc/e/a/c/s/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/c/s/h;->a:Lc/e/a/c/s/i;

    iget-object v0, v0, Lc/e/a/c/s/i;->a:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->d(I)V

    return-void
.end method
