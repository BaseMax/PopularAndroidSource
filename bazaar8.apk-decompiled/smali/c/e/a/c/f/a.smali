.class public Lc/e/a/c/f/a;
.super Ljava/lang/Object;
.source "BottomSheetBehavior.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->c(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:I

.field public final synthetic c:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/c/f/a;->c:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iput-object p2, p0, Lc/e/a/c/f/a;->a:Landroid/view/View;

    iput p3, p0, Lc/e/a/c/f/a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/e/a/c/f/a;->c:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v1, p0, Lc/e/a/c/f/a;->a:Landroid/view/View;

    iget v2, p0, Lc/e/a/c/f/a;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a(Landroid/view/View;I)V

    return-void
.end method
