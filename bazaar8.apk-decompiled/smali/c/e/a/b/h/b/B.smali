.class public final Lc/e/a/b/h/b/B;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lc/e/a/b/h/b/A;

.field public final b:I

.field public final c:Ljava/lang/Throwable;

.field public final d:[B

.field public final e:Ljava/lang/String;

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lc/e/a/b/h/b/A;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lc/e/a/b/h/b/A;",
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p2}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lc/e/a/b/h/b/B;->a:Lc/e/a/b/h/b/A;

    .line 4
    iput p3, p0, Lc/e/a/b/h/b/B;->b:I

    .line 5
    iput-object p4, p0, Lc/e/a/b/h/b/B;->c:Ljava/lang/Throwable;

    .line 6
    iput-object p5, p0, Lc/e/a/b/h/b/B;->d:[B

    .line 7
    iput-object p1, p0, Lc/e/a/b/h/b/B;->e:Ljava/lang/String;

    .line 8
    iput-object p6, p0, Lc/e/a/b/h/b/B;->f:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lc/e/a/b/h/b/A;ILjava/lang/Throwable;[BLjava/util/Map;Lc/e/a/b/h/b/y;)V
    .locals 0

    .line 9
    invoke-direct/range {p0 .. p6}, Lc/e/a/b/h/b/B;-><init>(Ljava/lang/String;Lc/e/a/b/h/b/A;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/B;->a:Lc/e/a/b/h/b/A;

    iget-object v1, p0, Lc/e/a/b/h/b/B;->e:Ljava/lang/String;

    iget v2, p0, Lc/e/a/b/h/b/B;->b:I

    iget-object v3, p0, Lc/e/a/b/h/b/B;->c:Ljava/lang/Throwable;

    iget-object v4, p0, Lc/e/a/b/h/b/B;->d:[B

    iget-object v5, p0, Lc/e/a/b/h/b/B;->f:Ljava/util/Map;

    invoke-interface/range {v0 .. v5}, Lc/e/a/b/h/b/A;->a(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void
.end method
