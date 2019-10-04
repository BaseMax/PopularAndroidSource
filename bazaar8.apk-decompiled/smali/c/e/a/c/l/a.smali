.class public Lc/e/a/c/l/a;
.super Lb/i/k/a;
.source "CheckableImageButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/internal/CheckableImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic d:Lcom/google/android/material/internal/CheckableImageButton;


# direct methods
.method public constructor <init>(Lcom/google/android/material/internal/CheckableImageButton;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/c/l/a;->d:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-direct {p0}, Lb/i/k/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lb/i/k/a/d;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lb/i/k/a;->a(Landroid/view/View;Lb/i/k/a/d;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p2, p1}, Lb/i/k/a/d;->b(Z)V

    .line 3
    iget-object p1, p0, Lc/e/a/c/l/a;->d:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p1}, Lcom/google/android/material/internal/CheckableImageButton;->isChecked()Z

    move-result p1

    invoke-virtual {p2, p1}, Lb/i/k/a/d;->c(Z)V

    return-void
.end method

.method public b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lb/i/k/a;->b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    iget-object p1, p0, Lc/e/a/c/l/a;->d:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p1}, Lcom/google/android/material/internal/CheckableImageButton;->isChecked()Z

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    return-void
.end method
