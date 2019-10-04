.class public final Lc/c/a/e/d/u/a;
.super Ljava/lang/Object;
.source "SettingsRepository.kt"


# instance fields
.field public final a:Lc/c/a/e/d/b/G;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/b/G;)V
    .locals 1

    const-string v0, "settingsLocalDataSource"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/u/a;->a:Lc/c/a/e/d/b/G;

    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/u/a;->a:Lc/c/a/e/d/b/G;

    invoke-virtual {v0}, Lc/c/a/e/d/b/G;->w()Z

    move-result v0

    return v0
.end method

.method public final B()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/u/a;->a:Lc/c/a/e/d/b/G;

    invoke-virtual {v0}, Lc/c/a/e/d/b/G;->x()Z

    move-result v0

    return v0
.end method

.method public final C()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/u/a;->a:Lc/c/a/e/d/b/G;

    invoke-virtual {v0}, Lc/c/a/e/d/b/G;->a()V

    return-void
.end method

.method public final D()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/u/a;->a:Lc/c/a/e/d/b/G;

    invoke-virtual {v0}, Lc/c/a/e/d/b/G;->y()V

    return-void
.end method

.method public final E()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/u/a;->a:Lc/c/a/e/d/b/G;

    invoke-virtual {v0}, Lc/c/a/e/d/b/G;->z()Z

    move-result v0

    return v0
.end method

.method public final F()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/u/a;->a:Lc/c/a/e/d/b/G;

    invoke-virtual {v0}, Lc/c/a/e/d/b/G;->A()Z

    move-result v0

    return v0
.end method

.method public final G()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/u/a;->a:Lc/c/a/e/d/b/G;

    invoke-virtual {v0}, Lc/c/a/e/d/b/G;->B()Z

    move-result v0

    return v0
.end method

.method public final a(IIII)V
    .locals 3

    .line 1
    sget-object v0, Lh/f/b/n;->a:Lh/f/b/n;

    .line 2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "Locale.getDefault()"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x4

    .line 3
    new-array v1, v1, [Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v1, p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v1, p2

    .line 5
    array-length p1, v1

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%d:%d-%d:%d"

    invoke-static {v0, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "java.lang.String.format(locale, format, *args)"

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lc/c/a/e/d/u/a;->a:Lc/c/a/e/d/b/G;

    invoke-virtual {p2, p1}, Lc/c/a/e/d/b/G;->g(Ljava/lang/String;)V

    return-void
.end method

.method public final a(J)V
    .locals 1

    .line 7
    iget-object v0, p0, Lc/c/a/e/d/u/a;->a:Lc/c/a/e/d/b/G;

    invoke-virtual {v0, p1, p2}, Lc/c/a/e/d/b/G;->a(J)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "pass"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lc/c/a/e/d/u/a;->a:Lc/c/a/e/d/b/G;

    invoke-virtual {v0, p1}, Lc/c/a/e/d/b/G;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 9
    iget-object v0, p0, Lc/c/a/e/d/u/a;->a:Lc/c/a/e/d/b/G;

    invoke-virtual {v0, p1}, Lc/c/a/e/d/b/G;->a(Z)V

    return-void
.end method

.method public final a()Z
    .locals 1

    .line 10
    iget-object v0, p0, Lc/c/a/e/d/u/a;->a:Lc/c/a/e/d/b/G;

    invoke-virtual {v0}, Lc/c/a/e/d/b/G;->b()Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 1

    .line 3
    iget-object v0, p0, Lc/c/a/e/d/u/a;->a:Lc/c/a/e/d/b/G;

    invoke-virtual {v0}, Lc/c/a/e/d/b/G;->c()V

    return-void
.end method

.method public final b(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/u/a;->a:Lc/c/a/e/d/b/G;

    invoke-virtual {v0, p1, p2}, Lc/c/a/e/d/b/G;->b(J)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "nonce"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/u/a;->a:Lc/c/a/e/d/b/G;

    invoke-virtual {v0, p1}, Lc/c/a/e/d/b/G;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Z)V
    .locals 1

    .line 4
    iget-object v0, p0, Lc/c/a/e/d/u/a;->a:Lc/c/a/e/d/b/G;

    invoke-virtual {v0, p1}, Lc/c/a/e/d/b/G;->b(Z)V

    return-void
.end method

.method public final c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/u/a;->a:Lc/c/a/e/d/b/G;

    invoke-virtual {v0}, Lc/c/a/e/d/b/G;->d()V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    const-string v0, "advertisingId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/u/a;->a:Lc/c/a/e/d/b/G;

    invoke-virtual {v0, p1}, Lc/c/a/e/d/b/G;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final c(Z)V
    .locals 1

    .line 3
    iget-object v0, p0, Lc/c/a/e/d/u/a;->a:Lc/c/a/e/d/b/G;

    invoke-virtual {v0, p1}, Lc/c/a/e/d/b/G;->c(Z)V

    return-void
.end method

.method public final d()V
    .locals 1

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/u/a;->a:Lc/c/a/e/d/b/G;

    invoke-virtual {v0}, Lc/c/a/e/d/b/G;->e()V

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    const-string v0, "clientId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/u/a;->a:Lc/c/a/e/d/b/G;

    invoke-virtual {v0, p1}, Lc/c/a/e/d/b/G;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/u/a;->a:Lc/c/a/e/d/b/G;

    invoke-virtual {v0}, Lc/c/a/e/d/b/G;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 1

    const-string v0, "token"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/u/a;->a:Lc/c/a/e/d/b/G;

    invoke-virtual {v0, p1}, Lc/c/a/e/d/b/G;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/u/a;->a:Lc/c/a/e/d/b/G;

    invoke-virtual {v0}, Lc/c/a/e/d/b/G;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f(Ljava/lang/String;)V
    .locals 1

    const-string v0, "locale"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/u/a;->a:Lc/c/a/e/d/b/G;

    invoke-virtual {v0, p1}, Lc/c/a/e/d/b/G;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/u/a;->a:Lc/c/a/e/d/b/G;

    invoke-virtual {v0}, Lc/c/a/e/d/b/G;->h()Z

    move-result v0

    return v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/u/a;->a:Lc/c/a/e/d/b/G;

    invoke-virtual {v0}, Lc/c/a/e/d/b/G;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/u/a;->a:Lc/c/a/e/d/b/G;

    invoke-virtual {v0}, Lc/c/a/e/d/b/G;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/Locale;

    const-string v1, "fa"

    const-string v2, "ir"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    move-result-object v0

    const-string v1, "Currency.getInstance(Locale(\"fa\", \"ir\"))"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/u/a;->a:Lc/c/a/e/d/b/G;

    invoke-virtual {v0}, Lc/c/a/e/d/b/G;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/e/d/u/a;->n()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "fa"

    :goto_0
    return-object v0
.end method

.method public final m()J
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/u/a;->a:Lc/c/a/e/d/b/G;

    invoke-virtual {v0}, Lc/c/a/e/d/b/G;->l()J

    move-result-wide v0

    return-wide v0
.end method

.method public final n()Ljava/util/Locale;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/u/a;->a:Lc/c/a/e/d/b/G;

    invoke-virtual {v0}, Lc/c/a/e/d/b/G;->m()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/u/a;->a:Lc/c/a/e/d/b/G;

    invoke-virtual {v0}, Lc/c/a/e/d/b/G;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/u/a;->a:Lc/c/a/e/d/b/G;

    invoke-virtual {v0}, Lc/c/a/e/d/b/G;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final q()Ljava/util/Calendar;
    .locals 14

    .line 1
    invoke-virtual {p0}, Lc/c/a/e/d/u/a;->o()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 3
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "-"

    aput-object v2, v1, v7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lh/k/n;->a(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/CharSequence;

    new-array v9, v6, [Ljava/lang/String;

    const-string v0, ":"

    aput-object v0, v9, v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x6

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lh/k/n;->a(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xb

    .line 6
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    .line 7
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    .line 8
    invoke-virtual {v1, v0, v7}, Ljava/util/Calendar;->set(II)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method public final r()Ljava/util/Calendar;
    .locals 14

    .line 1
    invoke-virtual {p0}, Lc/c/a/e/d/u/a;->o()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 3
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "-"

    aput-object v2, v1, v7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lh/k/n;->a(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/CharSequence;

    new-array v9, v6, [Ljava/lang/String;

    const-string v0, ":"

    aput-object v0, v9, v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x6

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lh/k/n;->a(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xb

    .line 6
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    .line 7
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    .line 8
    invoke-virtual {v1, v0, v7}, Ljava/util/Calendar;->set(II)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method public final s()J
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/u/a;->a:Lc/c/a/e/d/b/G;

    invoke-virtual {v0}, Lc/c/a/e/d/b/G;->p()J

    move-result-wide v0

    return-wide v0
.end method

.method public final t()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/u/a;->a:Lc/c/a/e/d/b/G;

    invoke-virtual {v0}, Lc/c/a/e/d/b/G;->q()Z

    move-result v0

    return v0
.end method

.method public final u()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/u/a;->a:Lc/c/a/e/d/b/G;

    invoke-virtual {v0}, Lc/c/a/e/d/b/G;->r()Z

    move-result v0

    return v0
.end method

.method public final v()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/u/a;->a:Lc/c/a/e/d/b/G;

    invoke-virtual {v0}, Lc/c/a/e/d/b/G;->s()Z

    move-result v0

    return v0
.end method

.method public final w()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lc/c/a/e/d/u/a;->n()Ljava/util/Locale;

    move-result-object v0

    new-instance v1, Ljava/util/Locale;

    const-string v2, "fa"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final x()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/u/a;->a:Lc/c/a/e/d/b/G;

    invoke-virtual {v0}, Lc/c/a/e/d/b/G;->t()Z

    move-result v0

    return v0
.end method

.method public final y()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/u/a;->a:Lc/c/a/e/d/b/G;

    invoke-virtual {v0}, Lc/c/a/e/d/b/G;->u()Z

    move-result v0

    return v0
.end method

.method public final z()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/u/a;->a:Lc/c/a/e/d/b/G;

    invoke-virtual {v0}, Lc/c/a/e/d/b/G;->v()Z

    move-result v0

    return v0
.end method
