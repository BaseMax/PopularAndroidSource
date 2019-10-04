.class public abstract Lf/a/a/e/b/b/B;
.super Lf/a/a/e/b/n;
.source "InputInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/a/a/e/b/b/B$a;
    }
.end annotation


# instance fields
.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Lir/cafebazaar/inline/ux/prefill/PrefillDomain;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lf/a/a/e/b/n;-><init>()V

    .line 2
    sget-object v0, Lir/cafebazaar/inline/ux/prefill/PrefillDomain;->page:Lir/cafebazaar/inline/ux/prefill/PrefillDomain;

    iput-object v0, p0, Lf/a/a/e/b/b/B;->e:Lir/cafebazaar/inline/ux/prefill/PrefillDomain;

    return-void
.end method


# virtual methods
.method public a(Lf/a/a/e/c;Lf/a/a/e/b/b/B$a;)V
    .locals 2

    .line 6
    invoke-virtual {p1}, Lf/a/a/e/c;->Oa()Lf/a/a/g/d;

    move-result-object p1

    invoke-virtual {p0}, Lf/a/a/e/b/b/B;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lf/a/a/e/b/b/B;->e()Lir/cafebazaar/inline/ux/prefill/PrefillDomain;

    move-result-object v1

    invoke-virtual {p1, v0, v1, p2}, Lf/a/a/g/d;->a(Ljava/lang/String;Lir/cafebazaar/inline/ux/prefill/PrefillDomain;Lf/a/a/e/b/b/B$a;)V

    return-void
.end method

.method public a(Lf/a/a/g/h/b;)V
    .locals 3

    .line 2
    invoke-virtual {p1}, Lf/a/a/g/h/b;->a()Lf/a/a/g/h/a/b;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lf/a/a/e/b/b/B;->c()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lf/a/a/e/b/b/B;->e()Lir/cafebazaar/inline/ux/prefill/PrefillDomain;

    move-result-object v1

    sget-object v2, Lir/cafebazaar/inline/ux/prefill/PrefillDomain;->global:Lir/cafebazaar/inline/ux/prefill/PrefillDomain;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1}, Lf/a/a/g/h/a/b;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p1, v0}, Lf/a/a/g/h/a/b;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lf/a/a/e/b/b/B;->a(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public a(Lir/cafebazaar/inline/ux/prefill/PrefillDomain;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/b/b/B;->e:Lir/cafebazaar/inline/ux/prefill/PrefillDomain;

    return-void
.end method

.method public abstract a(Ljava/lang/Object;)V
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lf/a/a/e/b/b/B;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/b/b/B;->c:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lf/a/a/e/b/b/B;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/b/b/B;->d:Ljava/lang/String;

    return-void
.end method

.method public e()Lir/cafebazaar/inline/ux/prefill/PrefillDomain;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/e/b/b/B;->e:Lir/cafebazaar/inline/ux/prefill/PrefillDomain;

    return-object v0
.end method
