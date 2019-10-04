.class public final Lc/e/a/a/k/f/f;
.super Ljava/lang/Object;
.source "TtmlSubtitle.java"

# interfaces
.implements Lc/e/a/a/k/e;


# instance fields
.field public final a:Lc/e/a/a/k/f/b;

.field public final b:[J

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lc/e/a/a/k/f/e;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lc/e/a/a/k/f/c;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/e/a/a/k/f/b;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/a/k/f/b;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lc/e/a/a/k/f/e;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lc/e/a/a/k/f/c;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/e/a/a/k/f/f;->a:Lc/e/a/a/k/f/b;

    .line 3
    iput-object p3, p0, Lc/e/a/a/k/f/f;->d:Ljava/util/Map;

    .line 4
    iput-object p4, p0, Lc/e/a/a/k/f/f;->e:Ljava/util/Map;

    if-eqz p2, :cond_0

    .line 5
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lc/e/a/a/k/f/f;->c:Ljava/util/Map;

    .line 6
    invoke-virtual {p1}, Lc/e/a/a/k/f/b;->b()[J

    move-result-object p1

    iput-object p1, p0, Lc/e/a/a/k/f/f;->b:[J

    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/a/k/f/f;->b:[J

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1, v1}, Lc/e/a/a/o/I;->a([JJZZ)I

    move-result p1

    .line 2
    iget-object p2, p0, Lc/e/a/a/k/f/f;->b:[J

    array-length p2, p2

    if-ge p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public a(I)J
    .locals 3

    .line 3
    iget-object v0, p0, Lc/e/a/a/k/f/f;->b:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public b(J)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lc/e/a/a/k/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/e/a/a/k/f/f;->a:Lc/e/a/a/k/f/b;

    iget-object v3, p0, Lc/e/a/a/k/f/f;->c:Ljava/util/Map;

    iget-object v4, p0, Lc/e/a/a/k/f/f;->d:Ljava/util/Map;

    iget-object v5, p0, Lc/e/a/a/k/f/f;->e:Ljava/util/Map;

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lc/e/a/a/k/f/b;->a(JLjava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public f()I
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/k/f/f;->b:[J

    array-length v0, v0

    return v0
.end method
