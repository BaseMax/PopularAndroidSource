.class public final Lc/c/a/n/s/e/a/a;
.super Landroidx/recyclerview/widget/RecyclerView$a;
.source "PaymentOptionsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/n/s/e/a/a$b;,
        Lc/c/a/n/s/e/a/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$a<",
        "Lc/c/a/n/s/e/a/a$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lc/c/a/n/s/e/a/a$a;


# instance fields
.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/feature/payment/PaymentGateway;",
            ">;"
        }
    .end annotation
.end field

.field public e:I

.field public final f:Lc/c/a/n/s/e/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/c/a/n/s/e/a/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/c/a/n/s/e/a/a$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lc/c/a/n/s/e/a/a;->c:Lc/c/a/n/s/e/a/a$a;

    return-void
.end method

.method public constructor <init>(Lc/c/a/n/s/e/a/c;)V
    .locals 1

    const-string v0, "paymentOptionClickListener"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$a;-><init>()V

    iput-object p1, p0, Lc/c/a/n/s/e/a/a;->f:Lc/c/a/n/s/e/a/c;

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lc/c/a/n/s/e/a/a;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/s/e/a/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public a(Lc/c/a/n/s/e/a/a$b;I)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lc/c/a/n/s/e/a/a;->d:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/farsitel/bazaar/data/feature/payment/PaymentGateway;

    iget v0, p0, Lc/c/a/n/s/e/a/a;->e:I

    invoke-virtual {p1, p2, v0}, Lc/c/a/n/s/e/a/a$b;->a(Lcom/farsitel/bazaar/data/feature/payment/PaymentGateway;I)V

    return-void
.end method

.method public bridge synthetic b(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$w;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lc/c/a/n/s/e/a/a;->b(Landroid/view/ViewGroup;I)Lc/c/a/n/s/e/a/a$b;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/view/ViewGroup;I)Lc/c/a/n/s/e/a/a$b;
    .locals 2

    const-string p2, "parent"

    invoke-static {p1, p2}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance p2, Lc/c/a/n/s/e/a/a$b;

    .line 4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lc/c/a/f/Za;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/Za;

    move-result-object p1

    const-string v0, "ItemPaymentOptionBinding\u2026.context), parent, false)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lc/c/a/n/s/e/a/a;->f:Lc/c/a/n/s/e/a/c;

    .line 6
    invoke-direct {p2, p1, v0}, Lc/c/a/n/s/e/a/a$b;-><init>(Lc/c/a/f/Za;Lc/c/a/n/s/e/a/c;)V

    return-object p2
.end method

.method public bridge synthetic b(Landroidx/recyclerview/widget/RecyclerView$w;I)V
    .locals 0

    .line 1
    check-cast p1, Lc/c/a/n/s/e/a/a$b;

    invoke-virtual {p0, p1, p2}, Lc/c/a/n/s/e/a/a;->a(Lc/c/a/n/s/e/a/a$b;I)V

    return-void
.end method

.method public final e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/feature/payment/PaymentGateway;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/n/s/e/a/a;->d:Ljava/util/List;

    return-object v0
.end method

.method public final f()Lcom/farsitel/bazaar/data/feature/payment/PaymentGateway;
    .locals 2

    .line 7
    iget-object v0, p0, Lc/c/a/n/s/e/a/a;->d:Ljava/util/List;

    iget v1, p0, Lc/c/a/n/s/e/a/a;->e:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentGateway;

    return-object v0
.end method

.method public final f(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/n/s/e/a/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2
    iget v0, p0, Lc/c/a/n/s/e/a/a;->e:I

    .line 3
    iput p1, p0, Lc/c/a/n/s/e/a/a;->e:I

    .line 4
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$a;->c(I)V

    .line 5
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$a;->c(I)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object p1, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "Illegal item selection in invoice bottom sheet"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lc/c/a/c/c/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
