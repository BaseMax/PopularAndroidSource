.class public final Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;
.super Lcom/farsitel/bazaar/ui/webview/WebViewFragment;
.source "PaymentWebViewFragment.kt"


# instance fields
.field public ma:Lc/c/a/n/s/h/f;

.field public na:Lc/c/a/n/s/h/e;

.field public final oa:Lc/c/a/n/s/h/d;

.field public pa:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/farsitel/bazaar/ui/webview/WebViewFragment;-><init>()V

    .line 2
    new-instance v0, Lc/c/a/n/s/h/d;

    invoke-direct {v0, p0}, Lc/c/a/n/s/h/d;-><init>(Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;)V

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;->oa:Lc/c/a/n/s/h/d;

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;)Lc/c/a/n/B/a;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/webview/WebViewFragment;->Va()Lc/c/a/n/B/a;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;Landroid/net/http/SslCertificate;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;->b(Landroid/net/http/SslCertificate;)V

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;Ljava/lang/String;Landroid/net/http/SslCertificate;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;->a(Ljava/lang/String;Landroid/net/http/SslCertificate;)V

    return-void
.end method

.method public static final synthetic b(Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;)Lc/c/a/n/s/h/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;->ma:Lc/c/a/n/s/h/f;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "viewModel"

    invoke-static {p0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public La()V
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;->pa:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public Sa()Lcom/farsitel/bazaar/analytics/model/where/WebViewScreen;
    .locals 2

    .line 2
    new-instance v0, Lcom/farsitel/bazaar/analytics/model/where/WebViewScreen;

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;->na:Lc/c/a/n/s/h/e;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lc/c/a/n/s/h/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/farsitel/bazaar/analytics/model/where/WebViewScreen;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const-string v0, "paymentWebViewFragmentArgs"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public bridge synthetic Sa()Lcom/farsitel/bazaar/analytics/model/where/WhereType;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;->Sa()Lcom/farsitel/bazaar/analytics/model/where/WebViewScreen;

    move-result-object v0

    return-object v0
.end method

.method public Xa()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic _a()Lc/c/a/n/B/b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;->_a()Lc/c/a/n/s/h/a;

    move-result-object v0

    return-object v0
.end method

.method public _a()Lc/c/a/n/s/h/a;
    .locals 3

    .line 2
    new-instance v0, Lc/c/a/n/s/h/a;

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;->na:Lc/c/a/n/s/h/e;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lc/c/a/n/s/h/e;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;->oa:Lc/c/a/n/s/h/d;

    invoke-direct {v0, v1, v2}, Lc/c/a/n/s/h/a;-><init>(Ljava/lang/String;Lc/c/a/n/s/h/b;)V

    return-object v0

    :cond_0
    const-string v0, "paymentWebViewFragmentArgs"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0d005f

    const/4 v0, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lh/f/b/j;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    throw p1

    .line 5
    :catch_0
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/webview/WebViewFragment;->Za()Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final a(Landroid/net/http/SslCertificate;)V
    .locals 2

    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ea()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_4

    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f060124

    invoke-static {p1, v0}, Lb/i/b/a;->a(Landroid/content/Context;I)I

    move-result p1

    .line 26
    sget v0, Lc/c/a/e;->ivUrlLock:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 27
    :cond_1
    sget v0, Lc/c/a/e;->ivUrlLock:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    :cond_2
    sget v0, Lc/c/a/e;->tvUrlScheme:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 29
    :cond_3
    sget p1, Lc/c/a/e;->tvUrlScheme:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_8

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 30
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060099

    invoke-static {v0, v1}, Lb/i/b/a;->a(Landroid/content/Context;I)I

    move-result v0

    .line 31
    sget v1, Lc/c/a/e;->ivUrlLock:I

    invoke-virtual {p0, v1}, Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;->e(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v1, :cond_5

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 32
    :cond_5
    sget v1, Lc/c/a/e;->tvUrlScheme:I

    invoke-virtual {p0, v1}, Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;->e(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_6

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 33
    :cond_6
    new-instance v0, Lc/c/a/n/s/h/c;

    invoke-direct {v0, p0, p1}, Lc/c/a/n/s/h/c;-><init>(Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;Landroid/net/http/SslCertificate;)V

    .line 34
    sget p1, Lc/c/a/e;->ivUrlLock:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p1, :cond_7

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    :cond_7
    sget p1, Lc/c/a/e;->tvUrlScheme:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    :goto_0
    return-void
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "view"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-super {p0, p1, p2}, Lcom/farsitel/bazaar/ui/webview/WebViewFragment;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ga()Lb/o/a/i;

    move-result-object p1

    const-string p2, "requireActivity()"

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lc/c/a/d/f/i;->Ra()Lb/r/F$b;

    move-result-object v0

    .line 8
    invoke-static {p1, v0}, Lb/r/G;->a(Lb/o/a/i;Lb/r/F$b;)Lb/r/F;

    move-result-object p1

    const-class v0, Lc/c/a/n/s/h/f;

    invoke-virtual {p1, v0}, Lb/r/F;->a(Ljava/lang/Class;)Lb/r/E;

    move-result-object p1

    const-string v0, "ViewModelProviders.of(th\u2026, factory)[T::class.java]"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    check-cast p1, Lc/c/a/n/s/h/f;

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;->ma:Lc/c/a/n/s/h/f;

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ga()Lb/o/a/i;

    move-result-object p1

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/a/c;->c()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    const-string p1, "requireActivity().onBackPressedDispatcher"

    invoke-static {v0, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ba()Lb/r/k;

    move-result-object v1

    new-instance v3, Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment$onViewCreated$1;

    invoke-direct {v3, p0}, Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment$onViewCreated$1;-><init>(Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;)V

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lb/a/f;->a(Landroidx/activity/OnBackPressedDispatcher;Lb/r/k;ZLh/f/a/b;ILjava/lang/Object;)Lb/a/d;

    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/net/http/SslCertificate;)V
    .locals 6

    .line 11
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :try_start_0
    const-string v1, "pageUri"

    .line 12
    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v2, "http"

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 13
    invoke-static {v1, v2, v5, v3, v4}, Lh/k/n;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 14
    invoke-virtual {p0, p2}, Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;->a(Landroid/net/http/SslCertificate;)V

    .line 15
    invoke-virtual {p0, v5}, Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;->f(I)V

    .line 16
    sget p2, Lc/c/a/e;->tvUrlScheme:I

    invoke-virtual {p0, p2}, Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;->e(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_0

    const v2, 0x7f1001b0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-virtual {p0, v2, v3}, Landroidx/fragment/app/Fragment;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    :cond_0
    sget p2, Lc/c/a/e;->tvUrlImportant:I

    invoke-virtual {p0, p2}, Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;->e(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lh/k/n;->a(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p2

    const/4 v0, 0x6

    if-le p2, v0, :cond_5

    .line 19
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_5

    .line 20
    sget v0, Lc/c/a/e;->tvUrlNotImportant:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_5

    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "(this as java.lang.String).substring(startIndex)"

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_3
    invoke-static {}, Lh/f/b/j;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    throw v4

    :cond_4
    const/4 p1, 0x4

    .line 22
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;->f(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 23
    sget-object p2, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    invoke-virtual {p2, p1}, Lc/c/a/c/c/a;->a(Ljava/lang/Throwable;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final b(Landroid/net/http/SslCertificate;)V
    .locals 7

    .line 2
    sget-object v0, Lc/c/a/d/f/a/a/a;->sa:Lc/c/a/d/f/a/a/a$a;

    .line 3
    invoke-virtual {p1}, Landroid/net/http/SslCertificate;->toString()Ljava/lang/String;

    move-result-object v2

    const-string p1, "certificate.toString()"

    invoke-static {v2, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const p1, 0x7f10005d

    .line 4
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x9

    const/4 v6, 0x0

    .line 5
    invoke-static/range {v0 .. v6}, Lc/c/a/d/f/a/a/a$a;->a(Lc/c/a/d/f/a/a/a$a;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lc/c/a/d/f/a/a/a;

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ia()Lb/o/a/n;

    move-result-object v0

    const-string v1, "requireFragmentManager()"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lc/c/a/d/f/l;->a(Lb/o/a/n;)V

    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/farsitel/bazaar/ui/webview/WebViewFragment;->c(Landroid/os/Bundle;)V

    .line 2
    sget-object p1, Lc/c/a/n/s/h/e;->a:Lc/c/a/n/s/h/e$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "arguments!!"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lc/c/a/n/s/h/e$a;->a(Landroid/os/Bundle;)Lc/c/a/n/s/h/e;

    move-result-object p1

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;->na:Lc/c/a/n/s/h/e;

    return-void

    :cond_0
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public e(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;->pa:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;->pa:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;->pa:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->aa()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;->pa:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final f(I)V
    .locals 1

    .line 1
    sget v0, Lc/c/a/e;->ivUrlLock:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    :cond_0
    sget v0, Lc/c/a/e;->tvUrlScheme:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    :cond_1
    sget v0, Lc/c/a/e;->tvUrlImportant:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    :cond_2
    sget v0, Lc/c/a/e;->tvUrlNotImportant:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public synthetic qa()V
    .locals 0

    invoke-super {p0}, Lcom/farsitel/bazaar/ui/webview/WebViewFragment;->qa()V

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/payment/web/PaymentWebViewFragment;->La()V

    return-void
.end method
