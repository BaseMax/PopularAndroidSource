.class public final Lc/c/a/l/d;
.super Ljava/lang/Object;
.source "CafePlayerFactory.kt"

# interfaces
.implements Lb/r/F$b;


# instance fields
.field public final a:Lj/I;

.field public final b:Landroid/content/Context;

.field public final c:Lc/c/a/l/f;

.field public final d:Lc/c/a/l/b/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc/c/a/l/f;Lc/c/a/l/b/b;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playerParams"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoStatRepository"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/l/d;->b:Landroid/content/Context;

    iput-object p2, p0, Lc/c/a/l/d;->c:Lc/c/a/l/f;

    iput-object p3, p0, Lc/c/a/l/d;->d:Lc/c/a/l/b/b;

    .line 2
    new-instance p1, Lj/I;

    invoke-direct {p1}, Lj/I;-><init>()V

    iput-object p1, p0, Lc/c/a/l/d;->a:Lj/I;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lb/r/E;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lb/r/E;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Lcom/farsitel/bazaar/player/CafePlayer;

    iget-object v0, p0, Lc/c/a/l/d;->b:Landroid/content/Context;

    iget-object v1, p0, Lc/c/a/l/d;->c:Lc/c/a/l/f;

    iget-object v2, p0, Lc/c/a/l/d;->a:Lj/I;

    iget-object v3, p0, Lc/c/a/l/d;->d:Lc/c/a/l/b/b;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/farsitel/bazaar/player/CafePlayer;-><init>(Landroid/content/Context;Lc/c/a/l/f;Lj/I;Lc/c/a/l/b/b;)V

    return-object p1
.end method
