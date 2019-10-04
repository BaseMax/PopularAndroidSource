.class public final Lc/b/a/c/f;
.super Ljava/lang/Object;
.source "Options.java"

# interfaces
.implements Lc/b/a/c/c;


# instance fields
.field public final a:Lb/f/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/f/b<",
            "Lc/b/a/c/e<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lc/b/a/i/b;

    invoke-direct {v0}, Lc/b/a/i/b;-><init>()V

    iput-object v0, p0, Lc/b/a/c/f;->a:Lb/f/b;

    return-void
.end method

.method public static a(Lc/b/a/c/e;Ljava/lang/Object;Ljava/security/MessageDigest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/b/a/c/e<",
            "TT;>;",
            "Ljava/lang/Object;",
            "Ljava/security/MessageDigest;",
            ")V"
        }
    .end annotation

    .line 8
    invoke-virtual {p0, p1, p2}, Lc/b/a/c/e;->a(Ljava/lang/Object;Ljava/security/MessageDigest;)V

    return-void
.end method


# virtual methods
.method public a(Lc/b/a/c/e;Ljava/lang/Object;)Lc/b/a/c/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/b/a/c/e<",
            "TT;>;TT;)",
            "Lc/b/a/c/f;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lc/b/a/c/f;->a:Lb/f/b;

    invoke-virtual {v0, p1, p2}, Lb/f/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public a(Lc/b/a/c/e;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/b/a/c/e<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lc/b/a/c/f;->a:Lb/f/b;

    invoke-virtual {v0, p1}, Lb/f/i;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/b/a/c/f;->a:Lb/f/b;

    invoke-virtual {v0, p1}, Lb/f/i;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lc/b/a/c/e;->b()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public a(Lc/b/a/c/f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/c/f;->a:Lb/f/b;

    iget-object p1, p1, Lc/b/a/c/f;->a:Lb/f/b;

    invoke-virtual {v0, p1}, Lb/f/i;->a(Lb/f/i;)V

    return-void
.end method

.method public a(Ljava/security/MessageDigest;)V
    .locals 3

    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Lc/b/a/c/f;->a:Lb/f/b;

    invoke-virtual {v1}, Lb/f/i;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 5
    iget-object v1, p0, Lc/b/a/c/f;->a:Lb/f/b;

    invoke-virtual {v1, v0}, Lb/f/i;->c(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/b/a/c/e;

    .line 6
    iget-object v2, p0, Lc/b/a/c/f;->a:Lb/f/b;

    invoke-virtual {v2, v0}, Lb/f/i;->e(I)Ljava/lang/Object;

    move-result-object v2

    .line 7
    invoke-static {v1, v2, p1}, Lc/b/a/c/f;->a(Lc/b/a/c/e;Ljava/lang/Object;Ljava/security/MessageDigest;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lc/b/a/c/f;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lc/b/a/c/f;

    .line 3
    iget-object v0, p0, Lc/b/a/c/f;->a:Lb/f/b;

    iget-object p1, p1, Lc/b/a/c/f;->a:Lb/f/b;

    invoke-virtual {v0, p1}, Lb/f/i;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/c/f;->a:Lb/f/b;

    invoke-virtual {v0}, Lb/f/i;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Options{values="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/b/a/c/f;->a:Lb/f/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
