.class public final Lc/e/a/b/d/a/a/n;
.super Ljava/lang/Object;

# interfaces
.implements Lc/e/a/b/j/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/e/a/b/j/c<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc/e/a/b/j/h;

.field public final synthetic b:Lc/e/a/b/d/a/a/m;


# direct methods
.method public constructor <init>(Lc/e/a/b/d/a/a/m;Lc/e/a/b/j/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/d/a/a/n;->b:Lc/e/a/b/d/a/a/m;

    iput-object p2, p0, Lc/e/a/b/d/a/a/n;->a:Lc/e/a/b/j/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lc/e/a/b/j/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/b/j/g<",
            "TTResult;>;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lc/e/a/b/d/a/a/n;->b:Lc/e/a/b/d/a/a/m;

    invoke-static {p1}, Lc/e/a/b/d/a/a/m;->a(Lc/e/a/b/d/a/a/m;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lc/e/a/b/d/a/a/n;->a:Lc/e/a/b/j/h;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
