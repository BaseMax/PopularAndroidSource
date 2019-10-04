.class public final Lc/c/a/n/s/h/a;
.super Lc/c/a/n/B/b;
.source "PaymentWebClient.kt"


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Lc/c/a/n/s/h/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lc/c/a/n/s/h/b;)V
    .locals 1

    const-string v0, "finishUrl"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentWebClientCallback"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2}, Lc/c/a/n/B/b;-><init>(Lc/c/a/n/B/a;)V

    iput-object p1, p0, Lc/c/a/n/s/h/a;->b:Ljava/lang/String;

    iput-object p2, p0, Lc/c/a/n/s/h/a;->c:Lc/c/a/n/s/h/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lc/c/a/n/s/h/a;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lc/c/a/n/s/h/a;->c:Lc/c/a/n/s/h/b;

    invoke-interface {p1}, Lc/c/a/n/s/h/b;->b()V

    const/4 p1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lc/c/a/n/B/b;->a(Ljava/lang/String;)Z

    move-result p1

    :goto_0
    return p1
.end method
