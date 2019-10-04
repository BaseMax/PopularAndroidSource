.class public final Lc/c/a/n/j/b/a/f;
.super Ljava/lang/Object;
.source "ScreenshotAdapter.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/n/j/b/a/d;->a(Lc/c/a/n/c/d/n;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/n/j/b/a/d;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(Lc/c/a/n/j/b/a/d;I)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/j/b/a/f;->a:Lc/c/a/n/j/b/a/d;

    iput p2, p0, Lc/c/a/n/j/b/a/f;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lc/c/a/n/j/b/a/f;->a:Lc/c/a/n/j/b/a/d;

    iget v0, p0, Lc/c/a/n/j/b/a/f;->b:I

    invoke-static {p1, v0}, Lc/c/a/n/j/b/a/d;->a(Lc/c/a/n/j/b/a/d;I)I

    move-result p1

    .line 2
    iget-object v0, p0, Lc/c/a/n/j/b/a/f;->a:Lc/c/a/n/j/b/a/d;

    invoke-static {v0}, Lc/c/a/n/j/b/a/d;->b(Lc/c/a/n/j/b/a/d;)Lc/c/a/n/j/b/a/d$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lc/c/a/n/j/b/a/f;->a:Lc/c/a/n/j/b/a/d;

    invoke-static {v1}, Lc/c/a/n/j/b/a/d;->a(Lc/c/a/n/j/b/a/d;)Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-interface {v0, p1, v1}, Lc/c/a/n/j/b/a/d$a;->a(ILjava/util/List;)V

    :cond_0
    return-void
.end method
