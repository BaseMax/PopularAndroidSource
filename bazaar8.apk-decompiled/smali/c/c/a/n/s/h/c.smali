.class public final Lc/c/a/n/s/h/c;
.super Ljava/lang/Object;
.source "PaymentWebViewFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;->a(Landroid/net/http/SslCertificate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;

.field public final synthetic b:Landroid/net/http/SslCertificate;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;Landroid/net/http/SslCertificate;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/s/h/c;->a:Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;

    iput-object p2, p0, Lc/c/a/n/s/h/c;->b:Landroid/net/http/SslCertificate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lc/c/a/n/s/h/c;->a:Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;

    iget-object v0, p0, Lc/c/a/n/s/h/c;->b:Landroid/net/http/SslCertificate;

    invoke-static {p1, v0}, Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;->a(Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;Landroid/net/http/SslCertificate;)V

    return-void
.end method
