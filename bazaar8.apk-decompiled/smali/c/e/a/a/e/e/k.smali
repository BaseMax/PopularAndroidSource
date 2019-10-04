.class public final Lc/e/a/a/e/e/k;
.super Ljava/lang/Object;
.source "Mp4Extractor.java"

# interfaces
.implements Lc/e/a/a/e/g;
.implements Lc/e/a/a/e/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/a/e/e/k$a;
    }
.end annotation


# static fields
.field public static final a:Lc/e/a/a/e/j;

.field public static final b:I


# instance fields
.field public final c:I

.field public final d:Lc/e/a/a/o/v;

.field public final e:Lc/e/a/a/o/v;

.field public final f:Lc/e/a/a/o/v;

.field public final g:Lc/e/a/a/o/v;

.field public final h:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lc/e/a/a/e/e/c$a;",
            ">;"
        }
    .end annotation
.end field

.field public i:I

.field public j:I

.field public k:J

.field public l:I

.field public m:Lc/e/a/a/o/v;

.field public n:I

.field public o:I

.field public p:I

.field public q:Z

.field public r:Lc/e/a/a/e/i;

.field public s:[Lc/e/a/a/e/e/k$a;

.field public t:[[J

.field public u:I

.field public v:J

.field public w:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lc/e/a/a/e/e/b;->a:Lc/e/a/a/e/e/b;

    sput-object v0, Lc/e/a/a/e/e/k;->a:Lc/e/a/a/e/j;

    const-string v0, "qt  "

    .line 2
    invoke-static {v0}, Lc/e/a/a/o/I;->b(Ljava/lang/String;)I

    move-result v0

    sput v0, Lc/e/a/a/e/e/k;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lc/e/a/a/e/e/k;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lc/e/a/a/e/e/k;->c:I

    .line 4
    new-instance p1, Lc/e/a/a/o/v;

    const/16 v0, 0x10

    invoke-direct {p1, v0}, Lc/e/a/a/o/v;-><init>(I)V

    iput-object p1, p0, Lc/e/a/a/e/e/k;->g:Lc/e/a/a/o/v;

    .line 5
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lc/e/a/a/e/e/k;->h:Ljava/util/ArrayDeque;

    .line 6
    new-instance p1, Lc/e/a/a/o/v;

    sget-object v0, Lc/e/a/a/o/t;->a:[B

    invoke-direct {p1, v0}, Lc/e/a/a/o/v;-><init>([B)V

    iput-object p1, p0, Lc/e/a/a/e/e/k;->d:Lc/e/a/a/o/v;

    .line 7
    new-instance p1, Lc/e/a/a/o/v;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Lc/e/a/a/o/v;-><init>(I)V

    iput-object p1, p0, Lc/e/a/a/e/e/k;->e:Lc/e/a/a/o/v;

    .line 8
    new-instance p1, Lc/e/a/a/o/v;

    invoke-direct {p1}, Lc/e/a/a/o/v;-><init>()V

    iput-object p1, p0, Lc/e/a/a/e/e/k;->f:Lc/e/a/a/o/v;

    const/4 p1, -0x1

    .line 9
    iput p1, p0, Lc/e/a/a/e/e/k;->n:I

    return-void
.end method

.method public static a(Lc/e/a/a/e/e/q;J)I
    .locals 2

    .line 84
    invoke-virtual {p0, p1, p2}, Lc/e/a/a/e/e/q;->a(J)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 85
    invoke-virtual {p0, p1, p2}, Lc/e/a/a/e/e/q;->b(J)I

    move-result v0

    :cond_0
    return v0
.end method

.method public static a(Lc/e/a/a/e/e/q;JJ)J
    .locals 0

    .line 81
    invoke-static {p0, p1, p2}, Lc/e/a/a/e/e/k;->a(Lc/e/a/a/e/e/q;J)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return-wide p3

    .line 82
    :cond_0
    iget-object p0, p0, Lc/e/a/a/e/e/q;->c:[J

    aget-wide p1, p0, p1

    .line 83
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static a(I)Z
    .locals 1

    .line 92
    sget v0, Lc/e/a/a/e/e/c;->Q:I

    if-eq p0, v0, :cond_1

    sget v0, Lc/e/a/a/e/e/c;->S:I

    if-eq p0, v0, :cond_1

    sget v0, Lc/e/a/a/e/e/c;->T:I

    if-eq p0, v0, :cond_1

    sget v0, Lc/e/a/a/e/e/c;->U:I

    if-eq p0, v0, :cond_1

    sget v0, Lc/e/a/a/e/e/c;->V:I

    if-eq p0, v0, :cond_1

    sget v0, Lc/e/a/a/e/e/c;->ca:I

    if-eq p0, v0, :cond_1

    sget v0, Lc/e/a/a/e/e/c;->Oa:I

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static a(Lc/e/a/a/o/v;)Z
    .locals 3

    const/16 v0, 0x8

    .line 86
    invoke-virtual {p0, v0}, Lc/e/a/a/o/v;->e(I)V

    .line 87
    invoke-virtual {p0}, Lc/e/a/a/o/v;->i()I

    move-result v0

    .line 88
    sget v1, Lc/e/a/a/e/e/k;->b:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x4

    .line 89
    invoke-virtual {p0, v0}, Lc/e/a/a/o/v;->f(I)V

    .line 90
    :cond_1
    invoke-virtual {p0}, Lc/e/a/a/o/v;->a()I

    move-result v0

    if-lez v0, :cond_2

    .line 91
    invoke-virtual {p0}, Lc/e/a/a/o/v;->i()I

    move-result v0

    sget v1, Lc/e/a/a/e/e/k;->b:I

    if-ne v0, v1, :cond_1

    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static a([Lc/e/a/a/e/e/k$a;)[[J
    .locals 15

    .line 63
    array-length v0, p0

    new-array v0, v0, [[J

    .line 64
    array-length v1, p0

    new-array v1, v1, [I

    .line 65
    array-length v2, p0

    new-array v2, v2, [J

    .line 66
    array-length v3, p0

    new-array v3, v3, [Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 67
    :goto_0
    array-length v6, p0

    if-ge v5, v6, :cond_0

    .line 68
    aget-object v6, p0, v5

    iget-object v6, v6, Lc/e/a/a/e/e/k$a;->b:Lc/e/a/a/e/e/q;

    iget v6, v6, Lc/e/a/a/e/e/q;->b:I

    new-array v6, v6, [J

    aput-object v6, v0, v5

    .line 69
    aget-object v6, p0, v5

    iget-object v6, v6, Lc/e/a/a/e/e/k$a;->b:Lc/e/a/a/e/e/q;

    iget-object v6, v6, Lc/e/a/a/e/e/q;->f:[J

    aget-wide v7, v6, v4

    aput-wide v7, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v5, 0x0

    move-wide v6, v5

    const/4 v5, 0x0

    .line 70
    :goto_1
    array-length v8, p0

    if-ge v5, v8, :cond_4

    const-wide v8, 0x7fffffffffffffffL

    const/4 v10, -0x1

    move-wide v11, v8

    const/4 v8, 0x0

    .line 71
    :goto_2
    array-length v9, p0

    if-ge v8, v9, :cond_2

    .line 72
    aget-boolean v9, v3, v8

    if-nez v9, :cond_1

    aget-wide v13, v2, v8

    cmp-long v9, v13, v11

    if-gtz v9, :cond_1

    .line 73
    aget-wide v9, v2, v8

    move-wide v11, v9

    move v10, v8

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 74
    :cond_2
    aget v8, v1, v10

    .line 75
    aget-object v9, v0, v10

    aput-wide v6, v9, v8

    .line 76
    aget-object v9, p0, v10

    iget-object v9, v9, Lc/e/a/a/e/e/k$a;->b:Lc/e/a/a/e/e/q;

    iget-object v9, v9, Lc/e/a/a/e/e/q;->d:[I

    aget v9, v9, v8

    int-to-long v11, v9

    add-long/2addr v6, v11

    const/4 v9, 0x1

    add-int/2addr v8, v9

    .line 77
    aput v8, v1, v10

    .line 78
    aget-object v11, v0, v10

    array-length v11, v11

    if-ge v8, v11, :cond_3

    .line 79
    aget-object v9, p0, v10

    iget-object v9, v9, Lc/e/a/a/e/e/k$a;->b:Lc/e/a/a/e/e/q;

    iget-object v9, v9, Lc/e/a/a/e/e/q;->f:[J

    aget-wide v8, v9, v8

    aput-wide v8, v2, v10

    goto :goto_1

    .line 80
    :cond_3
    aput-boolean v9, v3, v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method public static b(I)Z
    .locals 1

    .line 40
    sget v0, Lc/e/a/a/e/e/c;->ea:I

    if-eq p0, v0, :cond_1

    sget v0, Lc/e/a/a/e/e/c;->R:I

    if-eq p0, v0, :cond_1

    sget v0, Lc/e/a/a/e/e/c;->fa:I

    if-eq p0, v0, :cond_1

    sget v0, Lc/e/a/a/e/e/c;->ga:I

    if-eq p0, v0, :cond_1

    sget v0, Lc/e/a/a/e/e/c;->za:I

    if-eq p0, v0, :cond_1

    sget v0, Lc/e/a/a/e/e/c;->Aa:I

    if-eq p0, v0, :cond_1

    sget v0, Lc/e/a/a/e/e/c;->Ba:I

    if-eq p0, v0, :cond_1

    sget v0, Lc/e/a/a/e/e/c;->da:I

    if-eq p0, v0, :cond_1

    sget v0, Lc/e/a/a/e/e/c;->Ca:I

    if-eq p0, v0, :cond_1

    sget v0, Lc/e/a/a/e/e/c;->Da:I

    if-eq p0, v0, :cond_1

    sget v0, Lc/e/a/a/e/e/c;->Ea:I

    if-eq p0, v0, :cond_1

    sget v0, Lc/e/a/a/e/e/c;->Fa:I

    if-eq p0, v0, :cond_1

    sget v0, Lc/e/a/a/e/e/c;->Ga:I

    if-eq p0, v0, :cond_1

    sget v0, Lc/e/a/a/e/e/c;->ba:I

    if-eq p0, v0, :cond_1

    sget v0, Lc/e/a/a/e/e/c;->a:I

    if-eq p0, v0, :cond_1

    sget v0, Lc/e/a/a/e/e/c;->Na:I

    if-eq p0, v0, :cond_1

    sget v0, Lc/e/a/a/e/e/c;->Pa:I

    if-eq p0, v0, :cond_1

    sget v0, Lc/e/a/a/e/e/c;->Qa:I

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static synthetic f()[Lc/e/a/a/e/g;
    .locals 3

    const/4 v0, 0x1

    .line 1
    new-array v0, v0, [Lc/e/a/a/e/g;

    new-instance v1, Lc/e/a/a/e/e/k;

    invoke-direct {v1}, Lc/e/a/a/e/e/k;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method


# virtual methods
.method public a(Lc/e/a/a/e/h;Lc/e/a/a/e/n;)I
    .locals 2

    .line 12
    :cond_0
    iget v0, p0, Lc/e/a/a/e/e/k;->i:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 13
    invoke-virtual {p0, p1, p2}, Lc/e/a/a/e/e/k;->c(Lc/e/a/a/e/h;Lc/e/a/a/e/n;)I

    move-result p1

    return p1

    .line 14
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 15
    :cond_2
    invoke-virtual {p0, p1, p2}, Lc/e/a/a/e/e/k;->b(Lc/e/a/a/e/h;Lc/e/a/a/e/n;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 16
    :cond_3
    invoke-virtual {p0, p1}, Lc/e/a/a/e/e/k;->c(Lc/e/a/a/e/h;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1
.end method

.method public final a(Lc/e/a/a/e/e/c$a;Lc/e/a/a/e/k;Z)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/a/e/e/c$a;",
            "Lc/e/a/a/e/k;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Lc/e/a/a/e/e/q;",
            ">;"
        }
    .end annotation

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 50
    :goto_0
    iget-object v2, p1, Lc/e/a/a/e/e/c$a;->ib:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 51
    iget-object v2, p1, Lc/e/a/a/e/e/c$a;->ib:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/e/a/a/e/e/c$a;

    .line 52
    iget v3, v2, Lc/e/a/a/e/e/c;->fb:I

    sget v4, Lc/e/a/a/e/e/c;->S:I

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 53
    :cond_0
    sget v3, Lc/e/a/a/e/e/c;->R:I

    .line 54
    invoke-virtual {p1, v3}, Lc/e/a/a/e/e/c$a;->e(I)Lc/e/a/a/e/e/c$b;

    move-result-object v4

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    iget-boolean v9, p0, Lc/e/a/a/e/e/k;->w:Z

    move-object v3, v2

    move v8, p3

    .line 55
    invoke-static/range {v3 .. v9}, Lc/e/a/a/e/e/d;->a(Lc/e/a/a/e/e/c$a;Lc/e/a/a/e/e/c$b;JLcom/google/android/exoplayer2/drm/DrmInitData;ZZ)Lc/e/a/a/e/e/n;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 56
    :cond_1
    sget v4, Lc/e/a/a/e/e/c;->T:I

    .line 57
    invoke-virtual {v2, v4}, Lc/e/a/a/e/e/c$a;->d(I)Lc/e/a/a/e/e/c$a;

    move-result-object v2

    sget v4, Lc/e/a/a/e/e/c;->U:I

    .line 58
    invoke-virtual {v2, v4}, Lc/e/a/a/e/e/c$a;->d(I)Lc/e/a/a/e/e/c$a;

    move-result-object v2

    sget v4, Lc/e/a/a/e/e/c;->V:I

    .line 59
    invoke-virtual {v2, v4}, Lc/e/a/a/e/e/c$a;->d(I)Lc/e/a/a/e/e/c$a;

    move-result-object v2

    .line 60
    invoke-static {v3, v2, p2}, Lc/e/a/a/e/e/d;->a(Lc/e/a/a/e/e/n;Lc/e/a/a/e/e/c$a;Lc/e/a/a/e/k;)Lc/e/a/a/e/e/q;

    move-result-object v2

    .line 61
    iget v3, v2, Lc/e/a/a/e/e/q;->b:I

    if-nez v3, :cond_2

    goto :goto_1

    .line 62
    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method public a(JJ)V
    .locals 3

    .line 3
    iget-object v0, p0, Lc/e/a/a/e/e/k;->h:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lc/e/a/a/e/e/k;->l:I

    const/4 v1, -0x1

    .line 5
    iput v1, p0, Lc/e/a/a/e/e/k;->n:I

    .line 6
    iput v0, p0, Lc/e/a/a/e/e/k;->o:I

    .line 7
    iput v0, p0, Lc/e/a/a/e/e/k;->p:I

    .line 8
    iput-boolean v0, p0, Lc/e/a/a/e/e/k;->q:Z

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 9
    invoke-virtual {p0}, Lc/e/a/a/e/e/k;->e()V

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lc/e/a/a/e/e/k;->s:[Lc/e/a/a/e/e/k$a;

    if-eqz p1, :cond_1

    .line 11
    invoke-virtual {p0, p3, p4}, Lc/e/a/a/e/e/k;->e(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Lc/e/a/a/e/e/c$a;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 17
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 18
    new-instance v3, Lc/e/a/a/e/k;

    invoke-direct {v3}, Lc/e/a/a/e/k;-><init>()V

    .line 19
    sget v4, Lc/e/a/a/e/e/c;->Na:I

    invoke-virtual {v1, v4}, Lc/e/a/a/e/e/c$a;->e(I)Lc/e/a/a/e/e/c$b;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 20
    iget-boolean v6, v0, Lc/e/a/a/e/e/k;->w:Z

    invoke-static {v4, v6}, Lc/e/a/a/e/e/d;->a(Lc/e/a/a/e/e/c$b;Z)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 21
    invoke-virtual {v3, v4}, Lc/e/a/a/e/k;->a(Lcom/google/android/exoplayer2/metadata/Metadata;)Z

    goto :goto_0

    :cond_0
    move-object v4, v5

    .line 22
    :cond_1
    :goto_0
    sget v6, Lc/e/a/a/e/e/c;->Oa:I

    invoke-virtual {v1, v6}, Lc/e/a/a/e/e/c$a;->d(I)Lc/e/a/a/e/e/c$a;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 23
    invoke-static {v6}, Lc/e/a/a/e/e/d;->b(Lc/e/a/a/e/e/c$a;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v5

    .line 24
    :cond_2
    iget v6, v0, Lc/e/a/a/e/e/k;->c:I

    const/4 v7, 0x1

    and-int/2addr v6, v7

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    .line 25
    :goto_1
    invoke-virtual {v0, v1, v3, v6}, Lc/e/a/a/e/e/k;->a(Lc/e/a/a/e/e/c$a;Lc/e/a/a/e/k;Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 26
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v14, v9

    const/4 v12, 0x0

    const/4 v13, -0x1

    :goto_2
    if-ge v12, v6, :cond_9

    .line 27
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Lc/e/a/a/e/e/q;

    .line 28
    iget-object v11, v8, Lc/e/a/a/e/e/q;->a:Lc/e/a/a/e/e/n;

    move-object/from16 v17, v8

    .line 29
    iget-wide v7, v11, Lc/e/a/a/e/e/n;->e:J

    cmp-long v18, v7, v9

    if-eqz v18, :cond_4

    move-wide v9, v7

    move-object/from16 v7, v17

    goto :goto_3

    :cond_4
    move-object/from16 v7, v17

    iget-wide v9, v7, Lc/e/a/a/e/e/q;->h:J

    .line 30
    :goto_3
    invoke-static {v14, v15, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    .line 31
    new-instance v8, Lc/e/a/a/e/e/k$a;

    move-object/from16 v19, v1

    iget-object v1, v0, Lc/e/a/a/e/e/k;->r:Lc/e/a/a/e/i;

    move/from16 v20, v6

    iget v6, v11, Lc/e/a/a/e/e/n;->b:I

    .line 32
    invoke-interface {v1, v12, v6}, Lc/e/a/a/e/i;->a(II)Lc/e/a/a/e/q;

    move-result-object v1

    invoke-direct {v8, v11, v7, v1}, Lc/e/a/a/e/e/k$a;-><init>(Lc/e/a/a/e/e/n;Lc/e/a/a/e/e/q;Lc/e/a/a/e/q;)V

    .line 33
    iget v1, v7, Lc/e/a/a/e/e/q;->e:I

    add-int/lit8 v1, v1, 0x1e

    .line 34
    iget-object v6, v11, Lc/e/a/a/e/e/n;->f:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v6, v1}, Lcom/google/android/exoplayer2/Format;->b(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    .line 35
    iget v6, v11, Lc/e/a/a/e/e/n;->b:I

    move-wide/from16 v21, v14

    const/4 v14, 0x2

    if-ne v6, v14, :cond_5

    const-wide/16 v23, 0x0

    cmp-long v6, v9, v23

    if-lez v6, :cond_5

    iget v6, v7, Lc/e/a/a/e/e/q;->b:I

    const/4 v7, 0x1

    if-le v6, v7, :cond_6

    int-to-float v6, v6

    long-to-float v9, v9

    const v10, 0x49742400    # 1000000.0f

    div-float/2addr v9, v10

    div-float/2addr v6, v9

    .line 36
    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/Format;->a(F)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    goto :goto_4

    :cond_5
    const/4 v7, 0x1

    .line 37
    :cond_6
    :goto_4
    iget v6, v11, Lc/e/a/a/e/e/n;->b:I

    .line 38
    invoke-static {v6, v1, v4, v5, v3}, Lc/e/a/a/e/e/j;->a(ILcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/metadata/Metadata;Lc/e/a/a/e/k;)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    .line 39
    iget-object v6, v8, Lc/e/a/a/e/e/k$a;->c:Lc/e/a/a/e/q;

    invoke-interface {v6, v1}, Lc/e/a/a/e/q;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 40
    iget v1, v11, Lc/e/a/a/e/e/n;->b:I

    if-ne v1, v14, :cond_7

    const/4 v1, -0x1

    if-ne v13, v1, :cond_8

    .line 41
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    move v13, v6

    goto :goto_5

    :cond_7
    const/4 v1, -0x1

    .line 42
    :cond_8
    :goto_5
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, v19

    move/from16 v6, v20

    move-wide/from16 v14, v21

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_2

    .line 43
    :cond_9
    iput v13, v0, Lc/e/a/a/e/e/k;->u:I

    .line 44
    iput-wide v14, v0, Lc/e/a/a/e/e/k;->v:J

    const/4 v1, 0x0

    .line 45
    new-array v1, v1, [Lc/e/a/a/e/e/k$a;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lc/e/a/a/e/e/k$a;

    iput-object v1, v0, Lc/e/a/a/e/e/k;->s:[Lc/e/a/a/e/e/k$a;

    .line 46
    iget-object v1, v0, Lc/e/a/a/e/e/k;->s:[Lc/e/a/a/e/e/k$a;

    invoke-static {v1}, Lc/e/a/a/e/e/k;->a([Lc/e/a/a/e/e/k$a;)[[J

    move-result-object v1

    iput-object v1, v0, Lc/e/a/a/e/e/k;->t:[[J

    .line 47
    iget-object v1, v0, Lc/e/a/a/e/e/k;->r:Lc/e/a/a/e/i;

    invoke-interface {v1}, Lc/e/a/a/e/i;->a()V

    .line 48
    iget-object v1, v0, Lc/e/a/a/e/e/k;->r:Lc/e/a/a/e/i;

    invoke-interface {v1, v0}, Lc/e/a/a/e/i;->a(Lc/e/a/a/e/o;)V

    return-void
.end method

.method public a(Lc/e/a/a/e/i;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lc/e/a/a/e/e/k;->r:Lc/e/a/a/e/i;

    return-void
.end method

.method public a(Lc/e/a/a/e/h;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lc/e/a/a/e/e/m;->b(Lc/e/a/a/e/h;)Z

    move-result p1

    return p1
.end method

.method public b(J)Lc/e/a/a/e/o$a;
    .locals 12

    .line 1
    iget-object v0, p0, Lc/e/a/a/e/e/k;->s:[Lc/e/a/a/e/e/k$a;

    array-length v1, v0

    if-nez v1, :cond_0

    .line 2
    new-instance p1, Lc/e/a/a/e/o$a;

    sget-object p2, Lc/e/a/a/e/p;->a:Lc/e/a/a/e/p;

    invoke-direct {p1, p2}, Lc/e/a/a/e/o$a;-><init>(Lc/e/a/a/e/p;)V

    return-object p1

    :cond_0
    const-wide/16 v1, -0x1

    .line 3
    iget v3, p0, Lc/e/a/a/e/e/k;->u:I

    const/4 v4, -0x1

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v3, v4, :cond_3

    .line 4
    aget-object v0, v0, v3

    iget-object v0, v0, Lc/e/a/a/e/e/k$a;->b:Lc/e/a/a/e/e/q;

    .line 5
    invoke-static {v0, p1, p2}, Lc/e/a/a/e/e/k;->a(Lc/e/a/a/e/e/q;J)I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 6
    new-instance p1, Lc/e/a/a/e/o$a;

    sget-object p2, Lc/e/a/a/e/p;->a:Lc/e/a/a/e/p;

    invoke-direct {p1, p2}, Lc/e/a/a/e/o$a;-><init>(Lc/e/a/a/e/p;)V

    return-object p1

    .line 7
    :cond_1
    iget-object v7, v0, Lc/e/a/a/e/e/q;->f:[J

    aget-wide v8, v7, v3

    .line 8
    iget-object v7, v0, Lc/e/a/a/e/e/q;->c:[J

    aget-wide v10, v7, v3

    cmp-long v7, v8, p1

    if-gez v7, :cond_2

    .line 9
    iget v7, v0, Lc/e/a/a/e/e/q;->b:I

    add-int/lit8 v7, v7, -0x1

    if-ge v3, v7, :cond_2

    .line 10
    invoke-virtual {v0, p1, p2}, Lc/e/a/a/e/e/q;->b(J)I

    move-result p1

    if-eq p1, v4, :cond_2

    if-eq p1, v3, :cond_2

    .line 11
    iget-object p2, v0, Lc/e/a/a/e/e/q;->f:[J

    aget-wide v1, p2, p1

    .line 12
    iget-object p2, v0, Lc/e/a/a/e/e/q;->c:[J

    aget-wide p1, p2, p1

    goto :goto_0

    :cond_2
    move-wide p1, v1

    move-wide v1, v5

    :goto_0
    move-wide v3, p1

    move-wide p1, v8

    goto :goto_1

    :cond_3
    const-wide v10, 0x7fffffffffffffffL

    move-wide v3, v1

    move-wide v1, v5

    :goto_1
    const/4 v0, 0x0

    .line 13
    :goto_2
    iget-object v7, p0, Lc/e/a/a/e/e/k;->s:[Lc/e/a/a/e/e/k$a;

    array-length v8, v7

    if-ge v0, v8, :cond_6

    .line 14
    iget v8, p0, Lc/e/a/a/e/e/k;->u:I

    if-eq v0, v8, :cond_5

    .line 15
    aget-object v7, v7, v0

    iget-object v7, v7, Lc/e/a/a/e/e/k$a;->b:Lc/e/a/a/e/e/q;

    .line 16
    invoke-static {v7, p1, p2, v10, v11}, Lc/e/a/a/e/e/k;->a(Lc/e/a/a/e/e/q;JJ)J

    move-result-wide v8

    cmp-long v10, v1, v5

    if-eqz v10, :cond_4

    .line 17
    invoke-static {v7, v1, v2, v3, v4}, Lc/e/a/a/e/e/k;->a(Lc/e/a/a/e/e/q;JJ)J

    move-result-wide v3

    :cond_4
    move-wide v10, v8

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 18
    :cond_6
    new-instance v0, Lc/e/a/a/e/p;

    invoke-direct {v0, p1, p2, v10, v11}, Lc/e/a/a/e/p;-><init>(JJ)V

    cmp-long p1, v1, v5

    if-nez p1, :cond_7

    .line 19
    new-instance p1, Lc/e/a/a/e/o$a;

    invoke-direct {p1, v0}, Lc/e/a/a/e/o$a;-><init>(Lc/e/a/a/e/p;)V

    return-object p1

    .line 20
    :cond_7
    new-instance p1, Lc/e/a/a/e/p;

    invoke-direct {p1, v1, v2, v3, v4}, Lc/e/a/a/e/p;-><init>(JJ)V

    .line 21
    new-instance p2, Lc/e/a/a/e/o$a;

    invoke-direct {p2, v0, p1}, Lc/e/a/a/e/o$a;-><init>(Lc/e/a/a/e/p;Lc/e/a/a/e/p;)V

    return-object p2
.end method

.method public final b(Lc/e/a/a/e/h;)V
    .locals 3

    .line 34
    iget-object v0, p0, Lc/e/a/a/e/e/k;->f:Lc/e/a/a/o/v;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lc/e/a/a/o/v;->c(I)V

    .line 35
    iget-object v0, p0, Lc/e/a/a/e/e/k;->f:Lc/e/a/a/o/v;

    iget-object v0, v0, Lc/e/a/a/o/v;->a:[B

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lc/e/a/a/e/h;->a([BII)V

    .line 36
    iget-object v0, p0, Lc/e/a/a/e/e/k;->f:Lc/e/a/a/o/v;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lc/e/a/a/o/v;->f(I)V

    .line 37
    iget-object v0, p0, Lc/e/a/a/e/e/k;->f:Lc/e/a/a/o/v;

    invoke-virtual {v0}, Lc/e/a/a/o/v;->i()I

    move-result v0

    sget v2, Lc/e/a/a/e/e/c;->fa:I

    if-ne v0, v2, :cond_0

    .line 38
    invoke-interface {p1}, Lc/e/a/a/e/h;->b()V

    goto :goto_0

    .line 39
    :cond_0
    invoke-interface {p1, v1}, Lc/e/a/a/e/h;->c(I)V

    :goto_0
    return-void
.end method

.method public final b(Lc/e/a/a/e/h;Lc/e/a/a/e/n;)Z
    .locals 9

    .line 22
    iget-wide v0, p0, Lc/e/a/a/e/e/k;->k:J

    iget v2, p0, Lc/e/a/a/e/e/k;->l:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    .line 23
    invoke-interface {p1}, Lc/e/a/a/e/h;->getPosition()J

    move-result-wide v2

    add-long/2addr v2, v0

    .line 24
    iget-object v4, p0, Lc/e/a/a/e/e/k;->m:Lc/e/a/a/o/v;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    .line 25
    iget-object p2, v4, Lc/e/a/a/o/v;->a:[B

    iget v4, p0, Lc/e/a/a/e/e/k;->l:I

    long-to-int v1, v0

    invoke-interface {p1, p2, v4, v1}, Lc/e/a/a/e/h;->readFully([BII)V

    .line 26
    iget p1, p0, Lc/e/a/a/e/e/k;->j:I

    sget p2, Lc/e/a/a/e/e/c;->a:I

    if-ne p1, p2, :cond_0

    .line 27
    iget-object p1, p0, Lc/e/a/a/e/e/k;->m:Lc/e/a/a/o/v;

    invoke-static {p1}, Lc/e/a/a/e/e/k;->a(Lc/e/a/a/o/v;)Z

    move-result p1

    iput-boolean p1, p0, Lc/e/a/a/e/e/k;->w:Z

    goto :goto_0

    .line 28
    :cond_0
    iget-object p1, p0, Lc/e/a/a/e/e/k;->h:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 29
    iget-object p1, p0, Lc/e/a/a/e/e/k;->h:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/e/a/a/e/e/c$a;

    new-instance p2, Lc/e/a/a/e/e/c$b;

    iget v0, p0, Lc/e/a/a/e/e/k;->j:I

    iget-object v1, p0, Lc/e/a/a/e/e/k;->m:Lc/e/a/a/o/v;

    invoke-direct {p2, v0, v1}, Lc/e/a/a/e/e/c$b;-><init>(ILc/e/a/a/o/v;)V

    invoke-virtual {p1, p2}, Lc/e/a/a/e/e/c$a;->a(Lc/e/a/a/e/e/c$b;)V

    goto :goto_0

    :cond_1
    const-wide/32 v7, 0x40000

    cmp-long v4, v0, v7

    if-gez v4, :cond_3

    long-to-int p2, v0

    .line 30
    invoke-interface {p1, p2}, Lc/e/a/a/e/h;->c(I)V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    goto :goto_1

    .line 31
    :cond_3
    invoke-interface {p1}, Lc/e/a/a/e/h;->getPosition()J

    move-result-wide v7

    add-long/2addr v7, v0

    iput-wide v7, p2, Lc/e/a/a/e/n;->a:J

    const/4 p1, 0x1

    .line 32
    :goto_1
    invoke-virtual {p0, v2, v3}, Lc/e/a/a/e/e/k;->d(J)V

    if-eqz p1, :cond_4

    .line 33
    iget p1, p0, Lc/e/a/a/e/e/k;->i:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    return v5
.end method

.method public final c(J)I
    .locals 20

    move-object/from16 v0, p0

    const/4 v2, -0x1

    const/4 v2, 0x0

    const-wide v6, 0x7fffffffffffffffL

    const/4 v8, 0x1

    const-wide v9, 0x7fffffffffffffffL

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, 0x1

    const-wide v14, 0x7fffffffffffffffL

    .line 81
    :goto_0
    iget-object v1, v0, Lc/e/a/a/e/e/k;->s:[Lc/e/a/a/e/e/k$a;

    array-length v3, v1

    if-ge v2, v3, :cond_7

    .line 82
    aget-object v1, v1, v2

    .line 83
    iget v3, v1, Lc/e/a/a/e/e/k$a;->d:I

    .line 84
    iget-object v1, v1, Lc/e/a/a/e/e/k$a;->b:Lc/e/a/a/e/e/q;

    iget v4, v1, Lc/e/a/a/e/e/q;->b:I

    if-ne v3, v4, :cond_0

    goto :goto_3

    .line 85
    :cond_0
    iget-object v1, v1, Lc/e/a/a/e/e/q;->c:[J

    aget-wide v4, v1, v3

    .line 86
    iget-object v1, v0, Lc/e/a/a/e/e/k;->t:[[J

    aget-object v1, v1, v2

    aget-wide v16, v1, v3

    sub-long v4, v4, p1

    const-wide/16 v18, 0x0

    cmp-long v1, v4, v18

    if-ltz v1, :cond_2

    const-wide/32 v18, 0x40000

    cmp-long v1, v4, v18

    if-ltz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-nez v1, :cond_3

    if-nez v13, :cond_4

    :cond_3
    if-ne v1, v13, :cond_5

    cmp-long v3, v4, v14

    if-gez v3, :cond_5

    :cond_4
    move v13, v1

    move v12, v2

    move-wide v14, v4

    move-wide/from16 v9, v16

    :cond_5
    cmp-long v3, v16, v6

    if-gez v3, :cond_6

    move v8, v1

    move v11, v2

    move-wide/from16 v6, v16

    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    const-wide v1, 0x7fffffffffffffffL

    cmp-long v3, v6, v1

    if-eqz v3, :cond_8

    if-eqz v8, :cond_8

    const-wide/32 v1, 0xa00000

    add-long/2addr v6, v1

    cmp-long v1, v9, v6

    if-gez v1, :cond_9

    :cond_8
    move v11, v12

    :cond_9
    return v11
.end method

.method public final c(Lc/e/a/a/e/h;Lc/e/a/a/e/n;)I
    .locals 13

    .line 33
    invoke-interface {p1}, Lc/e/a/a/e/h;->getPosition()J

    move-result-wide v0

    .line 34
    iget v2, p0, Lc/e/a/a/e/e/k;->n:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 35
    invoke-virtual {p0, v0, v1}, Lc/e/a/a/e/e/k;->c(J)I

    move-result v2

    iput v2, p0, Lc/e/a/a/e/e/k;->n:I

    .line 36
    iget v2, p0, Lc/e/a/a/e/e/k;->n:I

    if-ne v2, v3, :cond_0

    return v3

    .line 37
    :cond_0
    iget-object v4, p0, Lc/e/a/a/e/e/k;->s:[Lc/e/a/a/e/e/k$a;

    aget-object v2, v4, v2

    iget-object v2, v2, Lc/e/a/a/e/e/k$a;->a:Lc/e/a/a/e/e/n;

    iget-object v2, v2, Lc/e/a/a/e/e/n;->f:Lcom/google/android/exoplayer2/Format;

    iget-object v2, v2, Lcom/google/android/exoplayer2/Format;->i:Ljava/lang/String;

    const-string v4, "audio/ac4"

    .line 38
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lc/e/a/a/e/e/k;->q:Z

    .line 39
    :cond_1
    iget-object v2, p0, Lc/e/a/a/e/e/k;->s:[Lc/e/a/a/e/e/k$a;

    iget v4, p0, Lc/e/a/a/e/e/k;->n:I

    aget-object v2, v2, v4

    .line 40
    iget-object v4, v2, Lc/e/a/a/e/e/k$a;->c:Lc/e/a/a/e/q;

    .line 41
    iget v5, v2, Lc/e/a/a/e/e/k$a;->d:I

    .line 42
    iget-object v6, v2, Lc/e/a/a/e/e/k$a;->b:Lc/e/a/a/e/e/q;

    iget-object v7, v6, Lc/e/a/a/e/e/q;->c:[J

    aget-wide v8, v7, v5

    .line 43
    iget-object v6, v6, Lc/e/a/a/e/e/q;->d:[I

    aget v6, v6, v5

    sub-long v0, v8, v0

    .line 44
    iget v7, p0, Lc/e/a/a/e/e/k;->o:I

    int-to-long v10, v7

    add-long/2addr v0, v10

    const-wide/16 v10, 0x0

    const/4 v12, 0x1

    cmp-long v7, v0, v10

    if-ltz v7, :cond_9

    const-wide/32 v10, 0x40000

    cmp-long v7, v0, v10

    if-ltz v7, :cond_2

    goto/16 :goto_2

    .line 45
    :cond_2
    iget-object p2, v2, Lc/e/a/a/e/e/k$a;->a:Lc/e/a/a/e/e/n;

    iget p2, p2, Lc/e/a/a/e/e/n;->g:I

    if-ne p2, v12, :cond_3

    const-wide/16 v7, 0x8

    add-long/2addr v0, v7

    add-int/lit8 v6, v6, -0x8

    :cond_3
    long-to-int p2, v0

    .line 46
    invoke-interface {p1, p2}, Lc/e/a/a/e/h;->c(I)V

    .line 47
    iget-object p2, v2, Lc/e/a/a/e/e/k$a;->a:Lc/e/a/a/e/e/n;

    iget p2, p2, Lc/e/a/a/e/e/n;->j:I

    const/4 v0, 0x0

    if-eqz p2, :cond_6

    .line 48
    iget-object v1, p0, Lc/e/a/a/e/e/k;->e:Lc/e/a/a/o/v;

    iget-object v1, v1, Lc/e/a/a/o/v;->a:[B

    .line 49
    aput-byte v0, v1, v0

    .line 50
    aput-byte v0, v1, v12

    const/4 v7, 0x2

    .line 51
    aput-byte v0, v1, v7

    const/4 v7, 0x4

    rsub-int/lit8 v8, p2, 0x4

    .line 52
    :goto_0
    iget v9, p0, Lc/e/a/a/e/e/k;->o:I

    if-ge v9, v6, :cond_8

    .line 53
    iget v9, p0, Lc/e/a/a/e/e/k;->p:I

    if-nez v9, :cond_5

    .line 54
    invoke-interface {p1, v1, v8, p2}, Lc/e/a/a/e/h;->readFully([BII)V

    .line 55
    iget-object v9, p0, Lc/e/a/a/e/e/k;->e:Lc/e/a/a/o/v;

    invoke-virtual {v9, v0}, Lc/e/a/a/o/v;->e(I)V

    .line 56
    iget-object v9, p0, Lc/e/a/a/e/e/k;->e:Lc/e/a/a/o/v;

    invoke-virtual {v9}, Lc/e/a/a/o/v;->i()I

    move-result v9

    if-ltz v9, :cond_4

    .line 57
    iput v9, p0, Lc/e/a/a/e/e/k;->p:I

    .line 58
    iget-object v9, p0, Lc/e/a/a/e/e/k;->d:Lc/e/a/a/o/v;

    invoke-virtual {v9, v0}, Lc/e/a/a/o/v;->e(I)V

    .line 59
    iget-object v9, p0, Lc/e/a/a/e/e/k;->d:Lc/e/a/a/o/v;

    invoke-interface {v4, v9, v7}, Lc/e/a/a/e/q;->a(Lc/e/a/a/o/v;I)V

    .line 60
    iget v9, p0, Lc/e/a/a/e/e/k;->o:I

    add-int/2addr v9, v7

    iput v9, p0, Lc/e/a/a/e/e/k;->o:I

    add-int/2addr v6, v8

    goto :goto_0

    .line 61
    :cond_4
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string p2, "Invalid NAL length"

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_5
    invoke-interface {v4, p1, v9, v0}, Lc/e/a/a/e/q;->a(Lc/e/a/a/e/h;IZ)I

    move-result v9

    .line 63
    iget v10, p0, Lc/e/a/a/e/e/k;->o:I

    add-int/2addr v10, v9

    iput v10, p0, Lc/e/a/a/e/e/k;->o:I

    .line 64
    iget v10, p0, Lc/e/a/a/e/e/k;->p:I

    sub-int/2addr v10, v9

    iput v10, p0, Lc/e/a/a/e/e/k;->p:I

    goto :goto_0

    .line 65
    :cond_6
    iget-boolean p2, p0, Lc/e/a/a/e/e/k;->q:Z

    if-eqz p2, :cond_7

    .line 66
    iget-object p2, p0, Lc/e/a/a/e/e/k;->f:Lc/e/a/a/o/v;

    invoke-static {v6, p2}, Lc/e/a/a/b/j;->a(ILc/e/a/a/o/v;)V

    .line 67
    iget-object p2, p0, Lc/e/a/a/e/e/k;->f:Lc/e/a/a/o/v;

    invoke-virtual {p2}, Lc/e/a/a/o/v;->d()I

    move-result p2

    .line 68
    iget-object v1, p0, Lc/e/a/a/e/e/k;->f:Lc/e/a/a/o/v;

    invoke-interface {v4, v1, p2}, Lc/e/a/a/e/q;->a(Lc/e/a/a/o/v;I)V

    add-int/2addr v6, p2

    .line 69
    iget v1, p0, Lc/e/a/a/e/e/k;->o:I

    add-int/2addr v1, p2

    iput v1, p0, Lc/e/a/a/e/e/k;->o:I

    .line 70
    iput-boolean v0, p0, Lc/e/a/a/e/e/k;->q:Z

    .line 71
    :cond_7
    :goto_1
    iget p2, p0, Lc/e/a/a/e/e/k;->o:I

    if-ge p2, v6, :cond_8

    sub-int p2, v6, p2

    .line 72
    invoke-interface {v4, p1, p2, v0}, Lc/e/a/a/e/q;->a(Lc/e/a/a/e/h;IZ)I

    move-result p2

    .line 73
    iget v1, p0, Lc/e/a/a/e/e/k;->o:I

    add-int/2addr v1, p2

    iput v1, p0, Lc/e/a/a/e/e/k;->o:I

    .line 74
    iget v1, p0, Lc/e/a/a/e/e/k;->p:I

    sub-int/2addr v1, p2

    iput v1, p0, Lc/e/a/a/e/e/k;->p:I

    goto :goto_1

    :cond_8
    move v8, v6

    .line 75
    iget-object p1, v2, Lc/e/a/a/e/e/k$a;->b:Lc/e/a/a/e/e/q;

    iget-object p2, p1, Lc/e/a/a/e/e/q;->f:[J

    aget-wide v6, p2, v5

    iget-object p1, p1, Lc/e/a/a/e/e/q;->g:[I

    aget p1, p1, v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-wide v5, v6

    move v7, p1

    invoke-interface/range {v4 .. v10}, Lc/e/a/a/e/q;->a(JIIILc/e/a/a/e/q$a;)V

    .line 76
    iget p1, v2, Lc/e/a/a/e/e/k$a;->d:I

    add-int/2addr p1, v12

    iput p1, v2, Lc/e/a/a/e/e/k$a;->d:I

    .line 77
    iput v3, p0, Lc/e/a/a/e/e/k;->n:I

    .line 78
    iput v0, p0, Lc/e/a/a/e/e/k;->o:I

    .line 79
    iput v0, p0, Lc/e/a/a/e/e/k;->p:I

    return v0

    .line 80
    :cond_9
    :goto_2
    iput-wide v8, p2, Lc/e/a/a/e/n;->a:J

    return v12
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final c(Lc/e/a/a/e/h;)Z
    .locals 8

    .line 1
    iget v0, p0, Lc/e/a/a/e/e/k;->l:I

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lc/e/a/a/e/e/k;->g:Lc/e/a/a/o/v;

    iget-object v0, v0, Lc/e/a/a/o/v;->a:[B

    invoke-interface {p1, v0, v3, v2, v1}, Lc/e/a/a/e/h;->a([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    return v3

    .line 3
    :cond_0
    iput v2, p0, Lc/e/a/a/e/e/k;->l:I

    .line 4
    iget-object v0, p0, Lc/e/a/a/e/e/k;->g:Lc/e/a/a/o/v;

    invoke-virtual {v0, v3}, Lc/e/a/a/o/v;->e(I)V

    .line 5
    iget-object v0, p0, Lc/e/a/a/e/e/k;->g:Lc/e/a/a/o/v;

    invoke-virtual {v0}, Lc/e/a/a/o/v;->w()J

    move-result-wide v4

    iput-wide v4, p0, Lc/e/a/a/e/e/k;->k:J

    .line 6
    iget-object v0, p0, Lc/e/a/a/e/e/k;->g:Lc/e/a/a/o/v;

    invoke-virtual {v0}, Lc/e/a/a/o/v;->i()I

    move-result v0

    iput v0, p0, Lc/e/a/a/e/e/k;->j:I

    .line 7
    :cond_1
    iget-wide v4, p0, Lc/e/a/a/e/e/k;->k:J

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lc/e/a/a/e/e/k;->g:Lc/e/a/a/o/v;

    iget-object v0, v0, Lc/e/a/a/o/v;->a:[B

    invoke-interface {p1, v0, v2, v2}, Lc/e/a/a/e/h;->readFully([BII)V

    .line 9
    iget v0, p0, Lc/e/a/a/e/e/k;->l:I

    add-int/2addr v0, v2

    iput v0, p0, Lc/e/a/a/e/e/k;->l:I

    .line 10
    iget-object v0, p0, Lc/e/a/a/e/e/k;->g:Lc/e/a/a/o/v;

    invoke-virtual {v0}, Lc/e/a/a/o/v;->z()J

    move-result-wide v4

    iput-wide v4, p0, Lc/e/a/a/e/e/k;->k:J

    goto :goto_0

    :cond_2
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_4

    .line 11
    invoke-interface {p1}, Lc/e/a/a/e/h;->getLength()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    .line 12
    iget-object v0, p0, Lc/e/a/a/e/e/k;->h:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 13
    iget-object v0, p0, Lc/e/a/a/e/e/k;->h:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/a/a/e/e/c$a;

    iget-wide v4, v0, Lc/e/a/a/e/e/c$a;->gb:J

    :cond_3
    cmp-long v0, v4, v6

    if-eqz v0, :cond_4

    .line 14
    invoke-interface {p1}, Lc/e/a/a/e/h;->getPosition()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget v0, p0, Lc/e/a/a/e/e/k;->l:I

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lc/e/a/a/e/e/k;->k:J

    .line 15
    :cond_4
    :goto_0
    iget-wide v4, p0, Lc/e/a/a/e/e/k;->k:J

    iget v0, p0, Lc/e/a/a/e/e/k;->l:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_b

    .line 16
    iget v0, p0, Lc/e/a/a/e/e/k;->j:I

    invoke-static {v0}, Lc/e/a/a/e/e/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 17
    invoke-interface {p1}, Lc/e/a/a/e/h;->getPosition()J

    move-result-wide v2

    iget-wide v4, p0, Lc/e/a/a/e/e/k;->k:J

    add-long/2addr v2, v4

    iget v0, p0, Lc/e/a/a/e/e/k;->l:I

    int-to-long v4, v0

    sub-long/2addr v2, v4

    .line 18
    iget-object v0, p0, Lc/e/a/a/e/e/k;->h:Ljava/util/ArrayDeque;

    new-instance v4, Lc/e/a/a/e/e/c$a;

    iget v5, p0, Lc/e/a/a/e/e/k;->j:I

    invoke-direct {v4, v5, v2, v3}, Lc/e/a/a/e/e/c$a;-><init>(IJ)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 19
    iget-wide v4, p0, Lc/e/a/a/e/e/k;->k:J

    iget v0, p0, Lc/e/a/a/e/e/k;->l:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-nez v0, :cond_5

    .line 20
    invoke-virtual {p0, v2, v3}, Lc/e/a/a/e/e/k;->d(J)V

    goto :goto_3

    .line 21
    :cond_5
    iget v0, p0, Lc/e/a/a/e/e/k;->j:I

    sget v2, Lc/e/a/a/e/e/c;->Oa:I

    if-ne v0, v2, :cond_6

    .line 22
    invoke-virtual {p0, p1}, Lc/e/a/a/e/e/k;->b(Lc/e/a/a/e/h;)V

    .line 23
    :cond_6
    invoke-virtual {p0}, Lc/e/a/a/e/e/k;->e()V

    goto :goto_3

    .line 24
    :cond_7
    iget p1, p0, Lc/e/a/a/e/e/k;->j:I

    invoke-static {p1}, Lc/e/a/a/e/e/k;->b(I)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 25
    iget p1, p0, Lc/e/a/a/e/e/k;->l:I

    if-ne p1, v2, :cond_8

    const/4 p1, 0x1

    goto :goto_1

    :cond_8
    const/4 p1, 0x0

    :goto_1
    invoke-static {p1}, Lc/e/a/a/o/e;->b(Z)V

    .line 26
    iget-wide v4, p0, Lc/e/a/a/e/e/k;->k:J

    const-wide/32 v6, 0x7fffffff

    cmp-long p1, v4, v6

    if-gtz p1, :cond_9

    const/4 p1, 0x1

    goto :goto_2

    :cond_9
    const/4 p1, 0x0

    :goto_2
    invoke-static {p1}, Lc/e/a/a/o/e;->b(Z)V

    .line 27
    new-instance p1, Lc/e/a/a/o/v;

    iget-wide v4, p0, Lc/e/a/a/e/e/k;->k:J

    long-to-int v0, v4

    invoke-direct {p1, v0}, Lc/e/a/a/o/v;-><init>(I)V

    iput-object p1, p0, Lc/e/a/a/e/e/k;->m:Lc/e/a/a/o/v;

    .line 28
    iget-object p1, p0, Lc/e/a/a/e/e/k;->g:Lc/e/a/a/o/v;

    iget-object p1, p1, Lc/e/a/a/o/v;->a:[B

    iget-object v0, p0, Lc/e/a/a/e/e/k;->m:Lc/e/a/a/o/v;

    iget-object v0, v0, Lc/e/a/a/o/v;->a:[B

    invoke-static {p1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    iput v1, p0, Lc/e/a/a/e/e/k;->i:I

    goto :goto_3

    :cond_a
    const/4 p1, 0x0

    .line 30
    iput-object p1, p0, Lc/e/a/a/e/e/k;->m:Lc/e/a/a/o/v;

    .line 31
    iput v1, p0, Lc/e/a/a/e/e/k;->i:I

    :goto_3
    return v1

    .line 32
    :cond_b
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string v0, "Atom size less than header length (unsupported)."

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lc/e/a/a/e/e/k;->v:J

    return-wide v0
.end method

.method public final d(J)V
    .locals 4

    .line 2
    :cond_0
    :goto_0
    iget-object v0, p0, Lc/e/a/a/e/e/k;->h:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_2

    iget-object v0, p0, Lc/e/a/a/e/e/k;->h:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/a/a/e/e/c$a;

    iget-wide v2, v0, Lc/e/a/a/e/e/c$a;->gb:J

    cmp-long v0, v2, p1

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lc/e/a/a/e/e/k;->h:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/a/a/e/e/c$a;

    .line 4
    iget v2, v0, Lc/e/a/a/e/e/c;->fb:I

    sget v3, Lc/e/a/a/e/e/c;->Q:I

    if-ne v2, v3, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Lc/e/a/a/e/e/k;->a(Lc/e/a/a/e/e/c$a;)V

    .line 6
    iget-object v0, p0, Lc/e/a/a/e/e/k;->h:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 7
    iput v1, p0, Lc/e/a/a/e/e/k;->i:I

    goto :goto_0

    .line 8
    :cond_1
    iget-object v1, p0, Lc/e/a/a/e/e/k;->h:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 9
    iget-object v1, p0, Lc/e/a/a/e/e/k;->h:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/a/a/e/e/c$a;

    invoke-virtual {v1, v0}, Lc/e/a/a/e/e/c$a;->a(Lc/e/a/a/e/e/c$a;)V

    goto :goto_0

    .line 10
    :cond_2
    iget p1, p0, Lc/e/a/a/e/e/k;->i:I

    if-eq p1, v1, :cond_3

    .line 11
    invoke-virtual {p0}, Lc/e/a/a/e/e/k;->e()V

    :cond_3
    return-void
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lc/e/a/a/e/e/k;->i:I

    .line 2
    iput v0, p0, Lc/e/a/a/e/e/k;->l:I

    return-void
.end method

.method public final e(J)V
    .locals 7

    .line 3
    iget-object v0, p0, Lc/e/a/a/e/e/k;->s:[Lc/e/a/a/e/e/k$a;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 4
    iget-object v4, v3, Lc/e/a/a/e/e/k$a;->b:Lc/e/a/a/e/e/q;

    .line 5
    invoke-virtual {v4, p1, p2}, Lc/e/a/a/e/e/q;->a(J)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 6
    invoke-virtual {v4, p1, p2}, Lc/e/a/a/e/e/q;->b(J)I

    move-result v5

    .line 7
    :cond_0
    iput v5, v3, Lc/e/a/a/e/e/k$a;->d:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
