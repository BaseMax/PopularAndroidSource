.class public Lb/i/k/a/e$b;
.super Lb/i/k/a/e$a;
.source "AccessibilityNodeProviderCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/i/k/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Lb/i/k/a/e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb/i/k/a/e$a;-><init>(Lb/i/k/a/e;)V

    return-void
.end method


# virtual methods
.method public findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/i/k/a/e$a;->a:Lb/i/k/a/e;

    invoke-virtual {v0, p1}, Lb/i/k/a/e;->b(I)Lb/i/k/a/d;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lb/i/k/a/d;->x()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1
.end method
