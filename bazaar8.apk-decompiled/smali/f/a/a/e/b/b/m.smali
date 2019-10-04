.class public Lf/a/a/e/b/b/m;
.super Ljava/lang/Object;
.source "ChoicesPopup.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/e/b/b/o;->a(Landroid/view/LayoutInflater;Lf/a/a/e/g;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/a/a/e/b/b/o$a;

.field public final synthetic b:Lf/a/a/e/b/b/o;


# direct methods
.method public constructor <init>(Lf/a/a/e/b/b/o;Lf/a/a/e/b/b/o$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/b/b/m;->b:Lf/a/a/e/b/b/o;

    iput-object p2, p0, Lf/a/a/e/b/b/m;->a:Lf/a/a/e/b/b/o$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lf/a/a/e/b/b/m;->b:Lf/a/a/e/b/b/o;

    invoke-virtual {p1}, Lf/a/a/e/b/b/A;->c()Lf/a/a/e/b/b/A$a;

    move-result-object p1

    iget-object p2, p0, Lf/a/a/e/b/b/m;->a:Lf/a/a/e/b/b/o$a;

    invoke-virtual {p2, p3}, Lf/a/a/e/b/b/o$a;->a(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Lf/a/a/e/b/b/A$a;->a(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lf/a/a/e/b/b/m;->b:Lf/a/a/e/b/b/o;

    invoke-virtual {p1}, Lf/a/a/e/b/b/A;->a()V

    return-void
.end method
