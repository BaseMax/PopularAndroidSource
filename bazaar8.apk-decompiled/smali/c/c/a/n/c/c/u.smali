.class public final Lc/c/a/n/c/c/u;
.super Ljava/lang/Object;
.source "PageViewModelEnv.kt"


# instance fields
.field public final a:Lc/c/a/b/d/o;

.field public final b:Lc/c/a/b/d/b;

.field public final c:Lc/c/a/e/d/i/j;

.field public final d:Lc/c/a/e/d/b/ba;

.field public final e:Lc/c/a/b/d/m;


# direct methods
.method public constructor <init>(Lc/c/a/b/d/o;Lc/c/a/b/d/b;Lc/c/a/e/d/i/j;Lc/c/a/e/d/b/ba;Lc/c/a/b/d/m;)V
    .locals 1

    const-string v0, "videoManager"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appManager"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadProgressRepository"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upgradableAppRepository"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentManager"

    invoke-static {p5, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/n/c/c/u;->a:Lc/c/a/b/d/o;

    iput-object p2, p0, Lc/c/a/n/c/c/u;->b:Lc/c/a/b/d/b;

    iput-object p3, p0, Lc/c/a/n/c/c/u;->c:Lc/c/a/e/d/i/j;

    iput-object p4, p0, Lc/c/a/n/c/c/u;->d:Lc/c/a/e/d/b/ba;

    iput-object p5, p0, Lc/c/a/n/c/c/u;->e:Lc/c/a/b/d/m;

    return-void
.end method


# virtual methods
.method public final a()Lc/c/a/b/d/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/c/c/u;->b:Lc/c/a/b/d/b;

    return-object v0
.end method

.method public final b()Lc/c/a/e/d/i/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/c/c/u;->c:Lc/c/a/e/d/i/j;

    return-object v0
.end method

.method public final c()Lc/c/a/b/d/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/c/c/u;->e:Lc/c/a/b/d/m;

    return-object v0
.end method

.method public final d()Lc/c/a/e/d/b/ba;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/c/c/u;->d:Lc/c/a/e/d/b/ba;

    return-object v0
.end method

.method public final e()Lc/c/a/b/d/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/c/c/u;->a:Lc/c/a/b/d/o;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lc/c/a/n/c/c/u;

    if-eqz v0, :cond_0

    check-cast p1, Lc/c/a/n/c/c/u;

    iget-object v0, p0, Lc/c/a/n/c/c/u;->a:Lc/c/a/b/d/o;

    iget-object v1, p1, Lc/c/a/n/c/c/u;->a:Lc/c/a/b/d/o;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/n/c/c/u;->b:Lc/c/a/b/d/b;

    iget-object v1, p1, Lc/c/a/n/c/c/u;->b:Lc/c/a/b/d/b;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/n/c/c/u;->c:Lc/c/a/e/d/i/j;

    iget-object v1, p1, Lc/c/a/n/c/c/u;->c:Lc/c/a/e/d/i/j;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/n/c/c/u;->d:Lc/c/a/e/d/b/ba;

    iget-object v1, p1, Lc/c/a/n/c/c/u;->d:Lc/c/a/e/d/b/ba;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/n/c/c/u;->e:Lc/c/a/b/d/m;

    iget-object p1, p1, Lc/c/a/n/c/c/u;->e:Lc/c/a/b/d/m;

    invoke-static {v0, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lc/c/a/n/c/c/u;->a:Lc/c/a/b/d/o;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/n/c/c/u;->b:Lc/c/a/b/d/b;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/n/c/c/u;->c:Lc/c/a/e/d/i/j;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/n/c/c/u;->d:Lc/c/a/e/d/b/ba;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/n/c/c/u;->e:Lc/c/a/b/d/m;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PageViewModelEnv(videoManager="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/n/c/c/u;->a:Lc/c/a/b/d/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", appManager="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/n/c/c/u;->b:Lc/c/a/b/d/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", downloadProgressRepository="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/n/c/c/u;->c:Lc/c/a/e/d/i/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", upgradableAppRepository="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/n/c/c/u;->d:Lc/c/a/e/d/b/ba;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", paymentManager="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/n/c/c/u;->e:Lc/c/a/b/d/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
