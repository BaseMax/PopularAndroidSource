.class public final Lc/b/a/i/a/d;
.super Ljava/lang/Object;
.source "FactoryPools.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/i/a/d$b;,
        Lc/b/a/i/a/d$c;,
        Lc/b/a/i/a/d$d;,
        Lc/b/a/i/a/d$a;
    }
.end annotation


# static fields
.field public static final a:Lc/b/a/i/a/d$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/i/a/d$d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/b/a/i/a/a;

    invoke-direct {v0}, Lc/b/a/i/a/a;-><init>()V

    sput-object v0, Lc/b/a/i/a/d;->a:Lc/b/a/i/a/d$d;

    return-void
.end method

.method public static a(I)Lb/i/j/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lb/i/j/e<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lb/i/j/g;

    invoke-direct {v0, p0}, Lb/i/j/g;-><init>(I)V

    new-instance p0, Lc/b/a/i/a/b;

    invoke-direct {p0}, Lc/b/a/i/a/b;-><init>()V

    new-instance v1, Lc/b/a/i/a/c;

    invoke-direct {v1}, Lc/b/a/i/a/c;-><init>()V

    invoke-static {v0, p0, v1}, Lc/b/a/i/a/d;->a(Lb/i/j/e;Lc/b/a/i/a/d$a;Lc/b/a/i/a/d$d;)Lb/i/j/e;

    move-result-object p0

    return-object p0
.end method

.method public static a(ILc/b/a/i/a/d$a;)Lb/i/j/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lc/b/a/i/a/d$c;",
            ">(I",
            "Lc/b/a/i/a/d$a<",
            "TT;>;)",
            "Lb/i/j/e<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lb/i/j/f;

    invoke-direct {v0, p0}, Lb/i/j/f;-><init>(I)V

    invoke-static {v0, p1}, Lc/b/a/i/a/d;->a(Lb/i/j/e;Lc/b/a/i/a/d$a;)Lb/i/j/e;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lb/i/j/e;Lc/b/a/i/a/d$a;)Lb/i/j/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lc/b/a/i/a/d$c;",
            ">(",
            "Lb/i/j/e<",
            "TT;>;",
            "Lc/b/a/i/a/d$a<",
            "TT;>;)",
            "Lb/i/j/e<",
            "TT;>;"
        }
    .end annotation

    .line 3
    invoke-static {}, Lc/b/a/i/a/d;->a()Lc/b/a/i/a/d$d;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lc/b/a/i/a/d;->a(Lb/i/j/e;Lc/b/a/i/a/d$a;Lc/b/a/i/a/d$d;)Lb/i/j/e;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lb/i/j/e;Lc/b/a/i/a/d$a;Lc/b/a/i/a/d$d;)Lb/i/j/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lb/i/j/e<",
            "TT;>;",
            "Lc/b/a/i/a/d$a<",
            "TT;>;",
            "Lc/b/a/i/a/d$d<",
            "TT;>;)",
            "Lb/i/j/e<",
            "TT;>;"
        }
    .end annotation

    .line 4
    new-instance v0, Lc/b/a/i/a/d$b;

    invoke-direct {v0, p0, p1, p2}, Lc/b/a/i/a/d$b;-><init>(Lb/i/j/e;Lc/b/a/i/a/d$a;Lc/b/a/i/a/d$d;)V

    return-object v0
.end method

.method public static a()Lc/b/a/i/a/d$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lc/b/a/i/a/d$d<",
            "TT;>;"
        }
    .end annotation

    .line 5
    sget-object v0, Lc/b/a/i/a/d;->a:Lc/b/a/i/a/d$d;

    return-object v0
.end method

.method public static b()Lb/i/j/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lb/i/j/e<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const/16 v0, 0x14

    .line 2
    invoke-static {v0}, Lc/b/a/i/a/d;->a(I)Lb/i/j/e;

    move-result-object v0

    return-object v0
.end method

.method public static b(ILc/b/a/i/a/d$a;)Lb/i/j/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lc/b/a/i/a/d$c;",
            ">(I",
            "Lc/b/a/i/a/d$a<",
            "TT;>;)",
            "Lb/i/j/e<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lb/i/j/g;

    invoke-direct {v0, p0}, Lb/i/j/g;-><init>(I)V

    invoke-static {v0, p1}, Lc/b/a/i/a/d;->a(Lb/i/j/e;Lc/b/a/i/a/d$a;)Lb/i/j/e;

    move-result-object p0

    return-object p0
.end method
