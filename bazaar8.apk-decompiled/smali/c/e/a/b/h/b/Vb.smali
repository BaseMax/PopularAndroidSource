.class public final Lc/e/a/b/h/b/Vb;
.super Ljava/lang/Object;

# interfaces
.implements Lc/e/a/b/h/b/A;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lc/e/a/b/h/b/Tb;


# direct methods
.method public constructor <init>(Lc/e/a/b/h/b/Tb;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/h/b/Vb;->b:Lc/e/a/b/h/b/Tb;

    iput-object p2, p0, Lc/e/a/b/h/b/Vb;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Throwable;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lc/e/a/b/h/b/Vb;->b:Lc/e/a/b/h/b/Tb;

    iget-object p5, p0, Lc/e/a/b/h/b/Vb;->a:Ljava/lang/String;

    invoke-virtual {p1, p2, p3, p4, p5}, Lc/e/a/b/h/b/Tb;->a(ILjava/lang/Throwable;[BLjava/lang/String;)V

    return-void
.end method
