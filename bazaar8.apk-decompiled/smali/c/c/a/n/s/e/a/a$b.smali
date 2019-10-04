.class public final Lc/c/a/n/s/e/a/a$b;
.super Landroidx/recyclerview/widget/RecyclerView$w;
.source "PaymentOptionsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/n/s/e/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final t:Lc/c/a/f/Za;

.field public final u:Lc/c/a/n/s/e/a/c;


# direct methods
.method public constructor <init>(Lc/c/a/f/Za;Lc/c/a/n/s/e/a/c;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickListener"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->h()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$w;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lc/c/a/n/s/e/a/a$b;->t:Lc/c/a/f/Za;

    iput-object p2, p0, Lc/c/a/n/s/e/a/a$b;->u:Lc/c/a/n/s/e/a/c;

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/s/e/a/a$b;)Lc/c/a/n/s/e/a/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/s/e/a/a$b;->u:Lc/c/a/n/s/e/a/c;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/farsitel/bazaar/data/feature/payment/PaymentGateway;I)V
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lc/c/a/n/s/e/a/a$b;->t:Lc/c/a/f/Za;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1, p1}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Lc/c/a/n/s/e/a/a$b;->t:Lc/c/a/f/Za;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$w;->g()I

    move-result v0

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/16 v0, 0x22

    invoke-virtual {p1, v0, p2}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;)Z

    .line 4
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->b:Landroid/view/View;

    new-instance p2, Lc/c/a/n/s/e/a/b;

    invoke-direct {p2, p0}, Lc/c/a/n/s/e/a/b;-><init>(Lc/c/a/n/s/e/a/a$b;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object p1, p0, Lc/c/a/n/s/e/a/a$b;->t:Lc/c/a/f/Za;

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->g()V

    return-void
.end method
