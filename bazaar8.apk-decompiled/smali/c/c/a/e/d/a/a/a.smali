.class public final Lc/c/a/e/d/a/a/a;
.super Ljava/lang/Object;
.source "AccountLocalDataSource.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/e/d/a/a/a$a;
    }
.end annotation


# static fields
.field public static final a:Lc/c/a/e/d/a/a/a$a;


# instance fields
.field public final b:Lc/c/a/e/d/b/I;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/c/a/e/d/a/a/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/c/a/e/d/a/a/a$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lc/c/a/e/d/a/a/a;->a:Lc/c/a/e/d/a/a/a$a;

    return-void
.end method

.method public constructor <init>(Lc/c/a/e/d/b/I;)V
    .locals 1

    const-string v0, "sharedDataSource"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/a/a/a;->b:Lc/c/a/e/d/b/I;

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 6

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/a/a/a;->b:Lc/c/a/e/d/b/I;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v1, "forceRegister"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lc/c/a/e/d/b/I;->a(Lc/c/a/e/d/b/I;Ljava/lang/String;Ljava/lang/Object;ZILjava/lang/Object;)V

    return-void
.end method

.method public final B()V
    .locals 6

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/a/a/a;->b:Lc/c/a/e/d/b/I;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v1, "forceRegister"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lc/c/a/e/d/b/I;->a(Lc/c/a/e/d/b/I;Ljava/lang/String;Ljava/lang/Object;ZILjava/lang/Object;)V

    return-void
.end method

.method public final a()Ljava/lang/String;
    .locals 3

    .line 4
    iget-object v0, p0, Lc/c/a/e/d/a/a/a;->b:Lc/c/a/e/d/b/I;

    const-string v1, "forceUpdateLink"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lc/c/a/e/d/b/I;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/a/a/a;->b:Lc/c/a/e/d/b/I;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "bazaarLatestVersionCode"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lc/c/a/e/d/b/I;->a(Lc/c/a/e/d/b/I;Ljava/lang/String;Ljava/lang/Object;ZILjava/lang/Object;)V

    return-void
.end method

.method public final a(J)V
    .locals 6

    .line 3
    iget-object v0, p0, Lc/c/a/e/d/a/a/a;->b:Lc/c/a/e/d/b/I;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v1, "latestRegisterDevice"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lc/c/a/e/d/b/I;->a(Lc/c/a/e/d/b/I;Ljava/lang/String;Ljava/lang/Object;ZILjava/lang/Object;)V

    return-void
.end method

.method public final a(Lc/c/a/e/g/f;)V
    .locals 3

    const-string v0, "registerDevice"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lc/c/a/e/g/f;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lc/c/a/e/d/a/a/a;->b(I)V

    .line 6
    invoke-virtual {p1}, Lc/c/a/e/g/f;->a()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lc/c/a/e/d/a/a/a;->a(I)V

    .line 7
    invoke-virtual {p1}, Lc/c/a/e/g/f;->e()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Lc/c/a/e/d/a/a/a;->a(Z)V

    .line 8
    invoke-virtual {p1}, Lc/c/a/e/g/f;->j()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0, v0}, Lc/c/a/e/d/a/a/a;->d(Z)V

    .line 9
    invoke-virtual {p1}, Lc/c/a/e/g/f;->d()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move-object v0, v2

    :goto_3
    invoke-virtual {p0, v0}, Lc/c/a/e/d/a/a/a;->g(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lc/c/a/e/g/f;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    move-object v0, v2

    :goto_4
    invoke-virtual {p0, v0}, Lc/c/a/e/d/a/a/a;->f(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lc/c/a/e/g/f;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    goto :goto_5

    :cond_5
    move-object v0, v2

    :goto_5
    invoke-virtual {p0, v0}, Lc/c/a/e/d/a/a/a;->j(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Lc/c/a/e/g/f;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    goto :goto_6

    :cond_6
    move-object v0, v2

    :goto_6
    invoke-virtual {p0, v0}, Lc/c/a/e/d/a/a/a;->h(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Lc/c/a/e/g/f;->q()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_7

    :cond_7
    const/4 v0, 0x1

    :goto_7
    invoke-virtual {p0, v0}, Lc/c/a/e/d/a/a/a;->k(Z)V

    .line 14
    invoke-virtual {p1}, Lc/c/a/e/g/f;->p()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_8

    :cond_8
    const/4 v0, 0x1

    :goto_8
    invoke-virtual {p0, v0}, Lc/c/a/e/d/a/a/a;->j(Z)V

    .line 15
    invoke-virtual {p1}, Lc/c/a/e/g/f;->s()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_9

    :cond_9
    const/4 v0, 0x0

    :goto_9
    invoke-virtual {p0, v0}, Lc/c/a/e/d/a/a/a;->m(Z)V

    .line 16
    invoke-virtual {p1}, Lc/c/a/e/g/f;->h()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_a

    :cond_a
    const/4 v0, 0x0

    :goto_a
    invoke-virtual {p0, v0}, Lc/c/a/e/d/a/a/a;->b(Z)V

    .line 17
    invoke-virtual {p1}, Lc/c/a/e/g/f;->l()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_b

    :cond_b
    const/4 v0, 0x1

    :goto_b
    invoke-virtual {p0, v0}, Lc/c/a/e/d/a/a/a;->f(Z)V

    .line 18
    invoke-virtual {p1}, Lc/c/a/e/g/f;->i()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_c

    :cond_c
    const/4 v0, 0x1

    :goto_c
    invoke-virtual {p0, v0}, Lc/c/a/e/d/a/a/a;->c(Z)V

    .line 19
    invoke-virtual {p1}, Lc/c/a/e/g/f;->k()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_d

    :cond_d
    const/4 v0, 0x0

    :goto_d
    invoke-virtual {p0, v0}, Lc/c/a/e/d/a/a/a;->e(Z)V

    .line 20
    invoke-virtual {p1}, Lc/c/a/e/g/f;->r()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_e

    :cond_e
    const/4 v0, 0x1

    :goto_e
    invoke-virtual {p0, v0}, Lc/c/a/e/d/a/a/a;->l(Z)V

    .line 21
    invoke-virtual {p1}, Lc/c/a/e/g/f;->n()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_f

    :cond_f
    const/4 v0, 0x1

    :goto_f
    invoke-virtual {p0, v0}, Lc/c/a/e/d/a/a/a;->h(Z)V

    .line 22
    invoke-virtual {p1}, Lc/c/a/e/g/f;->o()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :cond_10
    invoke-virtual {p0, v2}, Lc/c/a/e/d/a/a/a;->i(Z)V

    .line 23
    invoke-virtual {p1}, Lc/c/a/e/g/f;->m()Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_11
    invoke-virtual {p0, v1}, Lc/c/a/e/d/a/a/a;->g(Z)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 13

    const-string v0, "phoneNumber"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Lc/c/a/e/d/a/a/a;->b()Ljava/util/List;

    move-result-object v0

    .line 25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    .line 27
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 28
    :cond_2
    invoke-static {v1}, Lh/a/u;->j(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v4

    .line 29
    invoke-interface {v4, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x3e

    const/4 v12, 0x0

    const-string v5, ","

    .line 30
    invoke-static/range {v4 .. v12}, Lh/a/u;->a(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lh/f/a/b;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 31
    iget-object v0, p0, Lc/c/a/e/d/a/a/a;->b:Lc/c/a/e/d/b/I;

    const-string v1, "autoFillPhones"

    invoke-virtual {v0, v1, p1, v3}, Lc/c/a/e/d/b/I;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public final a(Z)V
    .locals 6

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/a/a/a;->b:Lc/c/a/e/d/b/I;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v1, "hasForceUpdate"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lc/c/a/e/d/b/I;->a(Lc/c/a/e/d/b/I;Ljava/lang/String;Ljava/lang/Object;ZILjava/lang/Object;)V

    return-void
.end method

.method public final b()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lc/c/a/e/d/a/a/a;->b:Lc/c/a/e/d/b/I;

    const-string v1, "autoFillPhones"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lc/c/a/e/d/b/I;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, ","

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lh/k/n;->a(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/a/a/a;->b:Lc/c/a/e/d/b/I;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "deviceId"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lc/c/a/e/d/b/I;->a(Lc/c/a/e/d/b/I;Ljava/lang/String;Ljava/lang/Object;ZILjava/lang/Object;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    const-string v0, "code"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lc/c/a/e/d/a/a/a;->b:Lc/c/a/e/d/b/I;

    const-string v1, "emailOtpToken"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lc/c/a/e/d/b/I;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public final b(Z)V
    .locals 6

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/a/a/a;->b:Lc/c/a/e/d/b/I;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v1, "navAppHomeVisible"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lc/c/a/e/d/b/I;->a(Lc/c/a/e/d/b/I;Ljava/lang/String;Ljava/lang/Object;ZILjava/lang/Object;)V

    return-void
.end method

.method public final c()I
    .locals 3

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/a/a/a;->b:Lc/c/a/e/d/b/I;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "bazaarLatestVersionCode"

    invoke-virtual {v0, v2, v1}, Lc/c/a/e/d/b/I;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3

    const-string v0, "email"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lc/c/a/e/d/a/a/a;->b:Lc/c/a/e/d/b/I;

    const-string v1, "mergeAccountEmail"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lc/c/a/e/d/b/I;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public final c(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/a/a/a;->b:Lc/c/a/e/d/b/I;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v1, "navCategoryVisible"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lc/c/a/e/d/b/I;->a(Lc/c/a/e/d/b/I;Ljava/lang/String;Ljava/lang/Object;ZILjava/lang/Object;)V

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 3

    .line 3
    iget-object v0, p0, Lc/c/a/e/d/a/a/a;->b:Lc/c/a/e/d/b/I;

    const-string v1, "bazaarLogoUrl"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lc/c/a/e/d/b/I;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 7

    const-string v0, "phoneNumber"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lc/c/a/e/d/a/a/a;->b:Lc/c/a/e/d/b/I;

    const-string v2, "phoneNumber"

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lc/c/a/e/d/b/I;->a(Lc/c/a/e/d/b/I;Ljava/lang/String;Ljava/lang/Object;ZILjava/lang/Object;)V

    return-void
.end method

.method public final d(Z)V
    .locals 6

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/a/a/a;->b:Lc/c/a/e/d/b/I;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v1, "isDirectLinkForceUpdate"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lc/c/a/e/d/b/I;->a(Lc/c/a/e/d/b/I;Ljava/lang/String;Ljava/lang/Object;ZILjava/lang/Object;)V

    return-void
.end method

.method public final e()I
    .locals 3

    .line 3
    iget-object v0, p0, Lc/c/a/e/d/a/a/a;->b:Lc/c/a/e/d/b/I;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "deviceId"

    invoke-virtual {v0, v2, v1}, Lc/c/a/e/d/b/I;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 7

    const-string v0, "userName"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lc/c/a/e/d/a/a/a;->b:Lc/c/a/e/d/b/I;

    const-string v2, "username"

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lc/c/a/e/d/b/I;->a(Lc/c/a/e/d/b/I;Ljava/lang/String;Ljava/lang/Object;ZILjava/lang/Object;)V

    return-void
.end method

.method public final e(Z)V
    .locals 6

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/a/a/a;->b:Lc/c/a/e/d/b/I;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v1, "navGameHomeVisible"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lc/c/a/e/d/b/I;->a(Lc/c/a/e/d/b/I;Ljava/lang/String;Ljava/lang/Object;ZILjava/lang/Object;)V

    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 3

    .line 3
    iget-object v0, p0, Lc/c/a/e/d/a/a/a;->b:Lc/c/a/e/d/b/I;

    const-string v1, "emailOtpToken"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lc/c/a/e/d/b/I;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final f(Ljava/lang/String;)V
    .locals 7

    const-string v0, "logoUrl"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lc/c/a/e/d/a/a/a;->b:Lc/c/a/e/d/b/I;

    const-string v2, "bazaarLogoUrl"

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lc/c/a/e/d/b/I;->a(Lc/c/a/e/d/b/I;Ljava/lang/String;Ljava/lang/Object;ZILjava/lang/Object;)V

    return-void
.end method

.method public final f(Z)V
    .locals 6

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/a/a/a;->b:Lc/c/a/e/d/b/I;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v1, "navHomeVisible"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lc/c/a/e/d/b/I;->a(Lc/c/a/e/d/b/I;Ljava/lang/String;Ljava/lang/Object;ZILjava/lang/Object;)V

    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 3

    .line 3
    iget-object v0, p0, Lc/c/a/e/d/a/a/a;->b:Lc/c/a/e/d/b/I;

    const-string v1, "kidsLogoUrl"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lc/c/a/e/d/b/I;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final g(Ljava/lang/String;)V
    .locals 7

    const-string v0, "forceUpdateLink"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lc/c/a/e/d/a/a/a;->b:Lc/c/a/e/d/b/I;

    const-string v2, "forceUpdateLink"

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lc/c/a/e/d/b/I;->a(Lc/c/a/e/d/b/I;Ljava/lang/String;Ljava/lang/Object;ZILjava/lang/Object;)V

    return-void
.end method

.method public final g(Z)V
    .locals 6

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/a/a/a;->b:Lc/c/a/e/d/b/I;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v1, "kidsOptionVisible"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lc/c/a/e/d/b/I;->a(Lc/c/a/e/d/b/I;Ljava/lang/String;Ljava/lang/Object;ZILjava/lang/Object;)V

    return-void
.end method

.method public final h()J
    .locals 3

    .line 3
    iget-object v0, p0, Lc/c/a/e/d/a/a/a;->b:Lc/c/a/e/d/b/I;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "latestRegisterDevice"

    invoke-virtual {v0, v2, v1}, Lc/c/a/e/d/b/I;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final h(Ljava/lang/String;)V
    .locals 7

    const-string v0, "logoUrl"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lc/c/a/e/d/a/a/a;->b:Lc/c/a/e/d/b/I;

    const-string v2, "kidsLogoUrl"

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lc/c/a/e/d/b/I;->a(Lc/c/a/e/d/b/I;Ljava/lang/String;Ljava/lang/Object;ZILjava/lang/Object;)V

    return-void
.end method

.method public final h(Z)V
    .locals 6

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/a/a/a;->b:Lc/c/a/e/d/b/I;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v1, "navMyBazaarVisible"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lc/c/a/e/d/b/I;->a(Lc/c/a/e/d/b/I;Ljava/lang/String;Ljava/lang/Object;ZILjava/lang/Object;)V

    return-void
.end method

.method public final i()Ljava/lang/String;
    .locals 3

    .line 3
    iget-object v0, p0, Lc/c/a/e/d/a/a/a;->b:Lc/c/a/e/d/b/I;

    const-string v1, "mergeAccountEmail"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lc/c/a/e/d/b/I;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final i(Ljava/lang/String;)V
    .locals 7

    const-string v0, "nickName"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lc/c/a/e/d/a/a/a;->b:Lc/c/a/e/d/b/I;

    const-string v2, "nickName"

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lc/c/a/e/d/b/I;->a(Lc/c/a/e/d/b/I;Ljava/lang/String;Ljava/lang/Object;ZILjava/lang/Object;)V

    return-void
.end method

.method public final i(Z)V
    .locals 6

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/a/a/a;->b:Lc/c/a/e/d/b/I;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v1, "navSearchVisible"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lc/c/a/e/d/b/I;->a(Lc/c/a/e/d/b/I;Ljava/lang/String;Ljava/lang/Object;ZILjava/lang/Object;)V

    return-void
.end method

.method public final j()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/a/a/a;->b:Lc/c/a/e/d/b/I;

    const-string v1, "nickName"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lc/c/a/e/d/b/I;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final j(Ljava/lang/String;)V
    .locals 7

    const-string v0, "logoUrl"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lc/c/a/e/d/a/a/a;->b:Lc/c/a/e/d/b/I;

    const-string v2, "videoLogoUrl"

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lc/c/a/e/d/b/I;->a(Lc/c/a/e/d/b/I;Ljava/lang/String;Ljava/lang/Object;ZILjava/lang/Object;)V

    return-void
.end method

.method public final j(Z)V
    .locals 6

    .line 3
    iget-object v0, p0, Lc/c/a/e/d/a/a/a;->b:Lc/c/a/e/d/b/I;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v1, "isTopChartsVisible"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lc/c/a/e/d/b/I;->a(Lc/c/a/e/d/b/I;Ljava/lang/String;Ljava/lang/Object;ZILjava/lang/Object;)V

    return-void
.end method

.method public final k()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/a/a/a;->b:Lc/c/a/e/d/b/I;

    const-string v1, "phoneNumber"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lc/c/a/e/d/b/I;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final k(Z)V
    .locals 6

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/a/a/a;->b:Lc/c/a/e/d/b/I;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v1, "isUpdateAllEnabled"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lc/c/a/e/d/b/I;->a(Lc/c/a/e/d/b/I;Ljava/lang/String;Ljava/lang/Object;ZILjava/lang/Object;)V

    return-void
.end method

.method public final l()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/a/a/a;->b:Lc/c/a/e/d/b/I;

    const-string v1, "username"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lc/c/a/e/d/b/I;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final l(Z)V
    .locals 6

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/a/a/a;->b:Lc/c/a/e/d/b/I;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v1, "navVideoHomeVisible"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lc/c/a/e/d/b/I;->a(Lc/c/a/e/d/b/I;Ljava/lang/String;Ljava/lang/Object;ZILjava/lang/Object;)V

    return-void
.end method

.method public final m()Ljava/lang/String;
    .locals 3

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/a/a/a;->b:Lc/c/a/e/d/b/I;

    const-string v1, "videoLogoUrl"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lc/c/a/e/d/b/I;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final m(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/a/a/a;->b:Lc/c/a/e/d/b/I;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v1, "isVideoButtonInListVisible"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lc/c/a/e/d/b/I;->a(Lc/c/a/e/d/b/I;Ljava/lang/String;Ljava/lang/Object;ZILjava/lang/Object;)V

    return-void
.end method

.method public final n()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/a/a/a;->b:Lc/c/a/e/d/b/I;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "hasForceUpdate"

    invoke-virtual {v0, v2, v1}, Lc/c/a/e/d/b/I;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final o()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/a/a/a;->b:Lc/c/a/e/d/b/I;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "navAppHomeVisible"

    invoke-virtual {v0, v2, v1}, Lc/c/a/e/d/b/I;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final p()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/a/a/a;->b:Lc/c/a/e/d/b/I;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "navCategoryVisible"

    invoke-virtual {v0, v2, v1}, Lc/c/a/e/d/b/I;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final q()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/a/a/a;->b:Lc/c/a/e/d/b/I;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isDirectLinkForceUpdate"

    invoke-virtual {v0, v2, v1}, Lc/c/a/e/d/b/I;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final r()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/a/a/a;->b:Lc/c/a/e/d/b/I;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "forceRegister"

    invoke-virtual {v0, v2, v1}, Lc/c/a/e/d/b/I;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final s()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/a/a/a;->b:Lc/c/a/e/d/b/I;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "navGameHomeVisible"

    invoke-virtual {v0, v2, v1}, Lc/c/a/e/d/b/I;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final t()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/a/a/a;->b:Lc/c/a/e/d/b/I;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "navHomeVisible"

    invoke-virtual {v0, v2, v1}, Lc/c/a/e/d/b/I;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final u()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/a/a/a;->b:Lc/c/a/e/d/b/I;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "kidsOptionVisible"

    invoke-virtual {v0, v2, v1}, Lc/c/a/e/d/b/I;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final v()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/a/a/a;->b:Lc/c/a/e/d/b/I;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "navMyBazaarVisible"

    invoke-virtual {v0, v2, v1}, Lc/c/a/e/d/b/I;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final w()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/a/a/a;->b:Lc/c/a/e/d/b/I;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "navSearchVisible"

    invoke-virtual {v0, v2, v1}, Lc/c/a/e/d/b/I;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final x()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/a/a/a;->b:Lc/c/a/e/d/b/I;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isUpdateAllEnabled"

    invoke-virtual {v0, v2, v1}, Lc/c/a/e/d/b/I;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final y()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/a/a/a;->b:Lc/c/a/e/d/b/I;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "navVideoHomeVisible"

    invoke-virtual {v0, v2, v1}, Lc/c/a/e/d/b/I;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final z()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lc/c/a/e/d/a/a/a;->i()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lc/c/a/e/d/a/a/a;->f()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lc/c/a/e/d/a/a/a;->b:Lc/c/a/e/d/b/I;

    const-string v3, "autoFillPhones"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lc/c/a/e/d/b/I;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    .line 4
    iget-object v2, p0, Lc/c/a/e/d/a/a/a;->b:Lc/c/a/e/d/b/I;

    invoke-virtual {v2}, Lc/c/a/e/d/b/I;->a()V

    .line 5
    invoke-virtual {p0, v1}, Lc/c/a/e/d/a/a/a;->b(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, v0}, Lc/c/a/e/d/a/a/a;->c(Ljava/lang/String;)V

    .line 7
    iget-object v3, p0, Lc/c/a/e/d/a/a/a;->b:Lc/c/a/e/d/b/I;

    const-string v4, "autoFillPhones"

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lc/c/a/e/d/b/I;->a(Lc/c/a/e/d/b/I;Ljava/lang/String;Ljava/lang/Object;ZILjava/lang/Object;)V

    return-void
.end method
