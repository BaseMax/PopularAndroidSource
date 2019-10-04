.class public Lk/l;
.super Lk/B;
.source "ForwardingTimeout.java"


# instance fields
.field public e:Lk/B;


# direct methods
.method public constructor <init>(Lk/B;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lk/B;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lk/l;->e:Lk/B;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "delegate == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Lk/B;
    .locals 1

    .line 5
    iget-object v0, p0, Lk/l;->e:Lk/B;

    invoke-virtual {v0}, Lk/B;->a()Lk/B;

    move-result-object v0

    return-object v0
.end method

.method public a(J)Lk/B;
    .locals 1

    .line 4
    iget-object v0, p0, Lk/l;->e:Lk/B;

    invoke-virtual {v0, p1, p2}, Lk/B;->a(J)Lk/B;

    move-result-object p1

    return-object p1
.end method

.method public a(JLjava/util/concurrent/TimeUnit;)Lk/B;
    .locals 1

    .line 3
    iget-object v0, p0, Lk/l;->e:Lk/B;

    invoke-virtual {v0, p1, p2, p3}, Lk/B;->a(JLjava/util/concurrent/TimeUnit;)Lk/B;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lk/B;)Lk/l;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lk/l;->e:Lk/B;

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "delegate == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Lk/B;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/l;->e:Lk/B;

    invoke-virtual {v0}, Lk/B;->b()Lk/B;

    move-result-object v0

    return-object v0
.end method

.method public c()J
    .locals 2

    .line 1
    iget-object v0, p0, Lk/l;->e:Lk/B;

    invoke-virtual {v0}, Lk/B;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lk/l;->e:Lk/B;

    invoke-virtual {v0}, Lk/B;->d()Z

    move-result v0

    return v0
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/l;->e:Lk/B;

    invoke-virtual {v0}, Lk/B;->e()V

    return-void
.end method

.method public final g()Lk/B;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/l;->e:Lk/B;

    return-object v0
.end method
