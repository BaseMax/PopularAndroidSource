.class public final Lc/e/a/b/h/b/Ua;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lc/e/a/b/h/b/Fa;


# direct methods
.method public constructor <init>(Lc/e/a/b/h/b/Fa;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/h/b/Ua;->b:Lc/e/a/b/h/b/Fa;

    iput-boolean p2, p0, Lc/e/a/b/h/b/Ua;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/Ua;->b:Lc/e/a/b/h/b/Fa;

    iget-object v0, v0, Lc/e/a/b/h/b/ua;->a:Lc/e/a/b/h/b/Y;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Y;->f()Z

    move-result v0

    .line 2
    iget-object v1, p0, Lc/e/a/b/h/b/Ua;->b:Lc/e/a/b/h/b/Fa;

    iget-object v1, v1, Lc/e/a/b/h/b/ua;->a:Lc/e/a/b/h/b/Y;

    invoke-virtual {v1}, Lc/e/a/b/h/b/Y;->u()Z

    move-result v1

    .line 3
    iget-object v2, p0, Lc/e/a/b/h/b/Ua;->b:Lc/e/a/b/h/b/Fa;

    iget-object v2, v2, Lc/e/a/b/h/b/ua;->a:Lc/e/a/b/h/b/Y;

    iget-boolean v3, p0, Lc/e/a/b/h/b/Ua;->a:Z

    invoke-virtual {v2, v3}, Lc/e/a/b/h/b/Y;->a(Z)V

    .line 4
    iget-boolean v2, p0, Lc/e/a/b/h/b/Ua;->a:Z

    if-ne v1, v2, :cond_0

    .line 5
    iget-object v1, p0, Lc/e/a/b/h/b/Ua;->b:Lc/e/a/b/h/b/Fa;

    iget-object v1, v1, Lc/e/a/b/h/b/ua;->a:Lc/e/a/b/h/b/Y;

    .line 6
    invoke-virtual {v1}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object v1

    iget-boolean v2, p0, Lc/e/a/b/h/b/Ua;->a:Z

    .line 8
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "Default data collection state already set to"

    invoke-virtual {v1, v3, v2}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    :cond_0
    iget-object v1, p0, Lc/e/a/b/h/b/Ua;->b:Lc/e/a/b/h/b/Fa;

    iget-object v1, v1, Lc/e/a/b/h/b/ua;->a:Lc/e/a/b/h/b/Y;

    invoke-virtual {v1}, Lc/e/a/b/h/b/Y;->f()Z

    move-result v1

    if-eq v1, v0, :cond_1

    iget-object v1, p0, Lc/e/a/b/h/b/Ua;->b:Lc/e/a/b/h/b/Fa;

    iget-object v1, v1, Lc/e/a/b/h/b/ua;->a:Lc/e/a/b/h/b/Y;

    .line 10
    invoke-virtual {v1}, Lc/e/a/b/h/b/Y;->f()Z

    move-result v1

    iget-object v2, p0, Lc/e/a/b/h/b/Ua;->b:Lc/e/a/b/h/b/Fa;

    iget-object v2, v2, Lc/e/a/b/h/b/ua;->a:Lc/e/a/b/h/b/Y;

    invoke-virtual {v2}, Lc/e/a/b/h/b/Y;->u()Z

    move-result v2

    if-eq v1, v2, :cond_2

    .line 11
    :cond_1
    iget-object v1, p0, Lc/e/a/b/h/b/Ua;->b:Lc/e/a/b/h/b/Fa;

    iget-object v1, v1, Lc/e/a/b/h/b/ua;->a:Lc/e/a/b/h/b/Y;

    .line 12
    invoke-virtual {v1}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lc/e/a/b/h/b/t;->y()Lc/e/a/b/h/b/v;

    move-result-object v1

    iget-boolean v2, p0, Lc/e/a/b/h/b/Ua;->a:Z

    .line 14
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 15
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "Default data collection is different than actual status"

    .line 16
    invoke-virtual {v1, v3, v2, v0}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17
    :cond_2
    iget-object v0, p0, Lc/e/a/b/h/b/Ua;->b:Lc/e/a/b/h/b/Fa;

    invoke-static {v0}, Lc/e/a/b/h/b/Fa;->a(Lc/e/a/b/h/b/Fa;)V

    return-void
.end method
