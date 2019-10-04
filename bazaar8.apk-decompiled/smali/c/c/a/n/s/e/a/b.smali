.class public final Lc/c/a/n/s/e/a/b;
.super Ljava/lang/Object;
.source "PaymentOptionsAdapter.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/n/s/e/a/a$b;->a(Lcom/farsitel/bazaar/data/feature/payment/PaymentGateway;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/n/s/e/a/a$b;


# direct methods
.method public constructor <init>(Lc/c/a/n/s/e/a/a$b;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/s/e/a/b;->a:Lc/c/a/n/s/e/a/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lc/c/a/n/s/e/a/b;->a:Lc/c/a/n/s/e/a/a$b;

    invoke-static {p1}, Lc/c/a/n/s/e/a/a$b;->a(Lc/c/a/n/s/e/a/a$b;)Lc/c/a/n/s/e/a/c;

    move-result-object p1

    iget-object v0, p0, Lc/c/a/n/s/e/a/b;->a:Lc/c/a/n/s/e/a/a$b;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$w;->g()I

    move-result v0

    invoke-interface {p1, v0}, Lc/c/a/n/s/e/a/c;->a(I)V

    return-void
.end method
