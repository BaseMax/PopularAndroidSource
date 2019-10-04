.class public abstract Lf/a/a/g/h/a/b;
.super Ljava/lang/Object;
.source "PrefillSheet.java"


# instance fields
.field public a:Lir/cafebazaar/inline/ux/prefill/PrefillDomain;

.field public b:Lf/a/a/g/h/a/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lf/a/a/g/h/a/b;->b:Lf/a/a/g/h/a/b;

    .line 6
    sget-object v0, Lir/cafebazaar/inline/ux/prefill/PrefillDomain;->global:Lir/cafebazaar/inline/ux/prefill/PrefillDomain;

    iput-object v0, p0, Lf/a/a/g/h/a/b;->a:Lir/cafebazaar/inline/ux/prefill/PrefillDomain;

    return-void
.end method

.method public constructor <init>(Lf/a/a/g/h/a/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/a/a/g/h/a/b;->b:Lf/a/a/g/h/a/b;

    .line 3
    invoke-virtual {p1}, Lf/a/a/g/h/a/b;->c()Lir/cafebazaar/inline/ux/prefill/PrefillDomain;

    move-result-object p1

    invoke-virtual {p1}, Lir/cafebazaar/inline/ux/prefill/PrefillDomain;->f()Lir/cafebazaar/inline/ux/prefill/PrefillDomain;

    move-result-object p1

    iput-object p1, p0, Lf/a/a/g/h/a/b;->a:Lir/cafebazaar/inline/ux/prefill/PrefillDomain;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public a(Lir/cafebazaar/inline/ux/prefill/PrefillDomain;Ljava/lang/String;)V
    .locals 2

    .line 8
    invoke-virtual {p0}, Lf/a/a/g/h/a/b;->c()Lir/cafebazaar/inline/ux/prefill/PrefillDomain;

    move-result-object v0

    sget-object v1, Lir/cafebazaar/inline/ux/prefill/PrefillDomain;->global:Lir/cafebazaar/inline/ux/prefill/PrefillDomain;

    invoke-virtual {v0, v1}, Lir/cafebazaar/inline/ux/prefill/PrefillDomain;->a(Lir/cafebazaar/inline/ux/prefill/PrefillDomain;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Lf/a/a/g/h/a/b;->c()Lir/cafebazaar/inline/ux/prefill/PrefillDomain;

    move-result-object v0

    invoke-virtual {v0, p1}, Lir/cafebazaar/inline/ux/prefill/PrefillDomain;->a(Lir/cafebazaar/inline/ux/prefill/PrefillDomain;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {p0, p2}, Lf/a/a/g/h/a/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lf/a/a/g/h/a/b;->b:Lf/a/a/g/h/a/b;

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {v0, p1, p2}, Lf/a/a/g/h/a/b;->a(Lir/cafebazaar/inline/ux/prefill/PrefillDomain;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lir/cafebazaar/inline/ux/prefill/PrefillDomain;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 4
    invoke-virtual {p0}, Lf/a/a/g/h/a/b;->c()Lir/cafebazaar/inline/ux/prefill/PrefillDomain;

    move-result-object v0

    invoke-virtual {v0, p1}, Lir/cafebazaar/inline/ux/prefill/PrefillDomain;->a(Lir/cafebazaar/inline/ux/prefill/PrefillDomain;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0, p2, p3}, Lf/a/a/g/h/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lf/a/a/g/h/a/b;->b:Lf/a/a/g/h/a/b;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0, p1, p2, p3}, Lf/a/a/g/h/a/b;->a(Lir/cafebazaar/inline/ux/prefill/PrefillDomain;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public a(Ljava/lang/String;Z)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lf/a/a/g/h/a/b;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lf/a/a/g/h/a/b;->c()Lir/cafebazaar/inline/ux/prefill/PrefillDomain;

    move-result-object v0

    sget-object v1, Lir/cafebazaar/inline/ux/prefill/PrefillDomain;->global:Lir/cafebazaar/inline/ux/prefill/PrefillDomain;

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 2
    :cond_1
    iget-object v0, p0, Lf/a/a/g/h/a/b;->b:Lf/a/a/g/h/a/b;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0, p1, p2}, Lf/a/a/g/h/a/b;->a(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public abstract b(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public b()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf/a/a/g/h/a/b;->a()V

    .line 2
    iget-object v0, p0, Lf/a/a/g/h/a/b;->b:Lf/a/a/g/h/a/b;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lf/a/a/g/h/a/b;->b()V

    :cond_0
    return-void
.end method

.method public c()Lir/cafebazaar/inline/ux/prefill/PrefillDomain;
    .locals 1

    .line 5
    iget-object v0, p0, Lf/a/a/g/h/a/b;->a:Lir/cafebazaar/inline/ux/prefill/PrefillDomain;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lf/a/a/g/h/a/b;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lf/a/a/g/h/a/b;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lf/a/a/g/h/a/b;->b:Lf/a/a/g/h/a/b;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Lf/a/a/g/h/a/b;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract d(Ljava/lang/String;)Z
.end method
