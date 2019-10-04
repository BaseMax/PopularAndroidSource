.class public Lf/a/a/e/b/N;
.super Ljava/lang/Object;
.source "TableInflater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lir/cafebazaar/inline/ui/inflaters/TableInflater;->a(Lf/a/a/e/g;Landroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lir/cafebazaar/inline/ui/inflaters/TableInflater;


# direct methods
.method public constructor <init>(Lir/cafebazaar/inline/ui/inflaters/TableInflater;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/b/N;->c:Lir/cafebazaar/inline/ui/inflaters/TableInflater;

    iput-object p2, p0, Lf/a/a/e/b/N;->a:Landroid/view/View;

    iput-object p3, p0, Lf/a/a/e/b/N;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lf/a/a/e/b/N;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2
    iget-object v1, p0, Lf/a/a/e/b/N;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lf/a/a/e/b/N;->c:Lir/cafebazaar/inline/ui/inflaters/TableInflater;

    invoke-static {v2}, Lir/cafebazaar/inline/ui/inflaters/TableInflater;->a(Lir/cafebazaar/inline/ui/inflaters/TableInflater;)Lir/cafebazaar/inline/ui/inflaters/TableInflater$Size;

    move-result-object v2

    iget v2, v2, Lir/cafebazaar/inline/ui/inflaters/TableInflater$Size;->displaySize:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/16 v1, 0x11

    .line 3
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 4
    iget-object v1, p0, Lf/a/a/e/b/N;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
