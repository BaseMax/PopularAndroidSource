.class public Lc/b/a/c/b/r$b;
.super Ljava/lang/Object;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/c/b/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field public final a:Lc/b/a/c/b/c/b;

.field public final b:Lc/b/a/c/b/c/b;

.field public final c:Lc/b/a/c/b/c/b;

.field public final d:Lc/b/a/c/b/c/b;

.field public final e:Lc/b/a/c/b/u;

.field public final f:Lb/i/j/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/i/j/e<",
            "Lc/b/a/c/b/t<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/b/a/c/b/c/b;Lc/b/a/c/b/c/b;Lc/b/a/c/b/c/b;Lc/b/a/c/b/c/b;Lc/b/a/c/b/u;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lc/b/a/c/b/s;

    invoke-direct {v0, p0}, Lc/b/a/c/b/s;-><init>(Lc/b/a/c/b/r$b;)V

    const/16 v1, 0x96

    .line 3
    invoke-static {v1, v0}, Lc/b/a/i/a/d;->a(ILc/b/a/i/a/d$a;)Lb/i/j/e;

    move-result-object v0

    iput-object v0, p0, Lc/b/a/c/b/r$b;->f:Lb/i/j/e;

    .line 4
    iput-object p1, p0, Lc/b/a/c/b/r$b;->a:Lc/b/a/c/b/c/b;

    .line 5
    iput-object p2, p0, Lc/b/a/c/b/r$b;->b:Lc/b/a/c/b/c/b;

    .line 6
    iput-object p3, p0, Lc/b/a/c/b/r$b;->c:Lc/b/a/c/b/c/b;

    .line 7
    iput-object p4, p0, Lc/b/a/c/b/r$b;->d:Lc/b/a/c/b/c/b;

    .line 8
    iput-object p5, p0, Lc/b/a/c/b/r$b;->e:Lc/b/a/c/b/u;

    return-void
.end method


# virtual methods
.method public a(Lc/b/a/c/c;ZZZZ)Lc/b/a/c/b/t;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/b/a/c/c;",
            "ZZZZ)",
            "Lc/b/a/c/b/t<",
            "TR;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/c/b/r$b;->f:Lb/i/j/e;

    invoke-interface {v0}, Lb/i/j/e;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/a/c/b/t;

    invoke-static {v0}, Lc/b/a/i/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lc/b/a/c/b/t;

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 2
    invoke-virtual/range {v1 .. v6}, Lc/b/a/c/b/t;->a(Lc/b/a/c/c;ZZZZ)Lc/b/a/c/b/t;

    return-object v0
.end method
