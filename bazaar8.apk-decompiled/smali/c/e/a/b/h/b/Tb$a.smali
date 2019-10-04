.class public final Lc/e/a/b/h/b/Tb$a;
.super Ljava/lang/Object;

# interfaces
.implements Lc/e/a/b/h/b/uc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/b/h/b/Tb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field public a:Lc/e/a/b/g/f/da;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/e/a/b/g/f/ba;",
            ">;"
        }
    .end annotation
.end field

.field public d:J

.field public final synthetic e:Lc/e/a/b/h/b/Tb;


# direct methods
.method public constructor <init>(Lc/e/a/b/h/b/Tb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/h/b/Tb$a;->e:Lc/e/a/b/h/b/Tb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lc/e/a/b/h/b/Tb;Lc/e/a/b/h/b/Ub;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lc/e/a/b/h/b/Tb$a;-><init>(Lc/e/a/b/h/b/Tb;)V

    return-void
.end method

.method public static a(Lc/e/a/b/g/f/ba;)J
    .locals 4

    .line 20
    iget-object p0, p0, Lc/e/a/b/g/f/ba;->f:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public final a(Lc/e/a/b/g/f/da;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lc/e/a/b/h/b/Tb$a;->a:Lc/e/a/b/g/f/da;

    return-void
.end method

.method public final a(JLc/e/a/b/g/f/ba;)Z
    .locals 7

    .line 3
    invoke-static {p3}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lc/e/a/b/h/b/Tb$a;->c:Ljava/util/List;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/e/a/b/h/b/Tb$a;->c:Ljava/util/List;

    .line 6
    :cond_0
    iget-object v0, p0, Lc/e/a/b/h/b/Tb$a;->b:Ljava/util/List;

    if-nez v0, :cond_1

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/e/a/b/h/b/Tb$a;->b:Ljava/util/List;

    .line 8
    :cond_1
    iget-object v0, p0, Lc/e/a/b/h/b/Tb$a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2

    iget-object v0, p0, Lc/e/a/b/h/b/Tb$a;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/a/b/g/f/ba;

    invoke-static {v0}, Lc/e/a/b/h/b/Tb$a;->a(Lc/e/a/b/g/f/ba;)J

    move-result-wide v2

    invoke-static {p3}, Lc/e/a/b/h/b/Tb$a;->a(Lc/e/a/b/g/f/ba;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    return v1

    .line 9
    :cond_2
    iget-wide v2, p0, Lc/e/a/b/h/b/Tb$a;->d:J

    invoke-virtual {p3}, Lc/e/a/b/g/f/Wc;->b()I

    move-result v0

    int-to-long v4, v0

    add-long/2addr v2, v4

    .line 10
    sget-object v0, Lc/e/a/b/h/b/k;->w:Lc/e/a/b/h/b/k$a;

    const/4 v4, 0x0

    .line 11
    invoke-virtual {v0, v4}, Lc/e/a/b/h/b/k$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 12
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v5, v0

    cmp-long v0, v2, v5

    if-ltz v0, :cond_3

    return v1

    .line 13
    :cond_3
    iput-wide v2, p0, Lc/e/a/b/h/b/Tb$a;->d:J

    .line 14
    iget-object v0, p0, Lc/e/a/b/h/b/Tb$a;->c:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object p3, p0, Lc/e/a/b/h/b/Tb$a;->b:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object p1, p0, Lc/e/a/b/h/b/Tb$a;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 17
    sget-object p2, Lc/e/a/b/h/b/k;->x:Lc/e/a/b/h/b/k$a;

    .line 18
    invoke-virtual {p2, v4}, Lc/e/a/b/h/b/k$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 19
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 p3, 0x1

    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-lt p1, p2, :cond_4

    return v1

    :cond_4
    return p3
.end method
