.class public final synthetic Lc/e/c/d/s;
.super Ljava/lang/Object;

# interfaces
.implements Lc/e/a/b/j/a;


# instance fields
.field public final a:Lc/e/c/d/t;

.field public final b:Landroid/util/Pair;


# direct methods
.method public constructor <init>(Lc/e/c/d/t;Landroid/util/Pair;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/e/c/d/s;->a:Lc/e/c/d/t;

    iput-object p2, p0, Lc/e/c/d/s;->b:Landroid/util/Pair;

    return-void
.end method


# virtual methods
.method public final a(Lc/e/a/b/j/g;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lc/e/c/d/s;->a:Lc/e/c/d/t;

    iget-object v1, p0, Lc/e/c/d/s;->b:Landroid/util/Pair;

    invoke-virtual {v0, v1, p1}, Lc/e/c/d/t;->a(Landroid/util/Pair;Lc/e/a/b/j/g;)Lc/e/a/b/j/g;

    return-object p1
.end method
