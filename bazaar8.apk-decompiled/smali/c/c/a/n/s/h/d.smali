.class public final Lc/c/a/n/s/h/d;
.super Ljava/lang/Object;
.source "PaymentWebViewFragment.kt"

# interfaces
.implements Lc/c/a/n/s/h/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/c/a/n/s/h/d;->a:Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 3
    iget-object v0, p0, Lc/c/a/n/s/h/d;->a:Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;

    invoke-static {v0}, Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;->a(Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;)Lc/c/a/n/B/a;

    move-result-object v0

    invoke-interface {v0}, Lc/c/a/n/B/a;->a()V

    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lc/c/a/n/s/h/d;->a:Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;

    invoke-static {v0}, Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;->a(Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;)Lc/c/a/n/B/a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lc/c/a/n/B/a;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 5
    iget-object v0, p0, Lc/c/a/n/s/h/d;->a:Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, p2, p1}, Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;->a(Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;Ljava/lang/String;Landroid/net/http/SslCertificate;)V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lc/c/a/n/s/h/d;->a:Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;

    invoke-static {v0}, Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;->a(Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;)Lc/c/a/n/B/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lc/c/a/n/B/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorDescription"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lc/c/a/n/s/h/d;->a:Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;

    invoke-static {v0}, Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;->a(Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;)Lc/c/a/n/B/a;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lc/c/a/n/B/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/s/h/d;->a:Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;

    invoke-static {v0}, Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;->b(Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;)Lc/c/a/n/s/h/f;

    move-result-object v0

    invoke-virtual {v0}, Lc/c/a/n/s/h/f;->e()V

    .line 2
    iget-object v0, p0, Lc/c/a/n/s/h/d;->a:Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->ea()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lc/c/a/n/s/h/d;->a:Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;

    invoke-static {v0}, Lb/w/b/b;->a(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object v0

    invoke-virtual {v0}, Lb/w/j;->i()Z

    :cond_0
    return-void
.end method
