.class public Lc/b/a/c/b/s;
.super Ljava/lang/Object;
.source "Engine.java"

# interfaces
.implements Lc/b/a/i/a/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/c/b/r$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/b/a/i/a/d$a<",
        "Lc/b/a/c/b/t<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc/b/a/c/b/r$b;


# direct methods
.method public constructor <init>(Lc/b/a/c/b/r$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/b/a/c/b/s;->a:Lc/b/a/c/b/r$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lc/b/a/c/b/t;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/b/a/c/b/t<",
            "*>;"
        }
    .end annotation

    .line 2
    new-instance v7, Lc/b/a/c/b/t;

    iget-object v0, p0, Lc/b/a/c/b/s;->a:Lc/b/a/c/b/r$b;

    iget-object v1, v0, Lc/b/a/c/b/r$b;->a:Lc/b/a/c/b/c/b;

    iget-object v2, v0, Lc/b/a/c/b/r$b;->b:Lc/b/a/c/b/c/b;

    iget-object v3, v0, Lc/b/a/c/b/r$b;->c:Lc/b/a/c/b/c/b;

    iget-object v4, v0, Lc/b/a/c/b/r$b;->d:Lc/b/a/c/b/c/b;

    iget-object v5, v0, Lc/b/a/c/b/r$b;->e:Lc/b/a/c/b/u;

    iget-object v6, v0, Lc/b/a/c/b/r$b;->f:Lb/i/j/e;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lc/b/a/c/b/t;-><init>(Lc/b/a/c/b/c/b;Lc/b/a/c/b/c/b;Lc/b/a/c/b/c/b;Lc/b/a/c/b/c/b;Lc/b/a/c/b/u;Lb/i/j/e;)V

    return-object v7
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/b/a/c/b/s;->a()Lc/b/a/c/b/t;

    move-result-object v0

    return-object v0
.end method
