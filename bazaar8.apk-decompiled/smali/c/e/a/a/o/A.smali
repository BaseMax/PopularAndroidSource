.class public Lc/e/a/a/o/A;
.super Ljava/lang/Object;
.source "SlidingPercentile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/a/o/A$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lc/e/a/a/o/A$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lc/e/a/a/o/A$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final c:I

.field public final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lc/e/a/a/o/A$a;",
            ">;"
        }
    .end annotation
.end field

.field public final e:[Lc/e/a/a/o/A$a;

.field public f:I

.field public g:I

.field public h:I

.field public i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lc/e/a/a/o/b;->a:Lc/e/a/a/o/b;

    sput-object v0, Lc/e/a/a/o/A;->a:Ljava/util/Comparator;

    .line 2
    sget-object v0, Lc/e/a/a/o/c;->a:Lc/e/a/a/o/c;

    sput-object v0, Lc/e/a/a/o/A;->b:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lc/e/a/a/o/A;->c:I

    const/4 p1, 0x5

    .line 3
    new-array p1, p1, [Lc/e/a/a/o/A$a;

    iput-object p1, p0, Lc/e/a/a/o/A;->e:[Lc/e/a/a/o/A$a;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lc/e/a/a/o/A;->d:Ljava/util/ArrayList;

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lc/e/a/a/o/A;->f:I

    return-void
.end method

.method public static synthetic a(Lc/e/a/a/o/A$a;Lc/e/a/a/o/A$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lc/e/a/a/o/A$a;->a:I

    iget p1, p1, Lc/e/a/a/o/A$a;->a:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public static synthetic b(Lc/e/a/a/o/A$a;Lc/e/a/a/o/A$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lc/e/a/a/o/A$a;->c:F

    iget p1, p1, Lc/e/a/a/o/A$a;->c:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0
.end method


# virtual methods
.method public a(F)F
    .locals 4

    .line 18
    invoke-virtual {p0}, Lc/e/a/a/o/A;->b()V

    .line 19
    iget v0, p0, Lc/e/a/a/o/A;->h:I

    int-to-float v0, v0

    mul-float p1, p1, v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 20
    :goto_0
    iget-object v2, p0, Lc/e/a/a/o/A;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 21
    iget-object v2, p0, Lc/e/a/a/o/A;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/e/a/a/o/A$a;

    .line 22
    iget v3, v2, Lc/e/a/a/o/A$a;->b:I

    add-int/2addr v1, v3

    int-to-float v3, v1

    cmpl-float v3, v3, p1

    if-ltz v3, :cond_0

    .line 23
    iget p1, v2, Lc/e/a/a/o/A$a;->c:F

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 24
    :cond_1
    iget-object p1, p0, Lc/e/a/a/o/A;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    const/high16 p1, 0x7fc00000    # Float.NaN

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lc/e/a/a/o/A;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/e/a/a/o/A$a;

    iget p1, p1, Lc/e/a/a/o/A$a;->c:F

    :goto_1
    return p1
.end method

.method public final a()V
    .locals 3

    .line 25
    iget v0, p0, Lc/e/a/a/o/A;->f:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 26
    iget-object v0, p0, Lc/e/a/a/o/A;->d:Ljava/util/ArrayList;

    sget-object v2, Lc/e/a/a/o/A;->a:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 27
    iput v1, p0, Lc/e/a/a/o/A;->f:I

    :cond_0
    return-void
.end method

.method public a(IF)V
    .locals 3

    .line 2
    invoke-virtual {p0}, Lc/e/a/a/o/A;->a()V

    .line 3
    iget v0, p0, Lc/e/a/a/o/A;->i:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lc/e/a/a/o/A;->e:[Lc/e/a/a/o/A$a;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lc/e/a/a/o/A;->i:I

    aget-object v0, v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Lc/e/a/a/o/A$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/e/a/a/o/A$a;-><init>(Lc/e/a/a/o/z;)V

    .line 4
    :goto_0
    iget v1, p0, Lc/e/a/a/o/A;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lc/e/a/a/o/A;->g:I

    iput v1, v0, Lc/e/a/a/o/A$a;->a:I

    .line 5
    iput p1, v0, Lc/e/a/a/o/A$a;->b:I

    .line 6
    iput p2, v0, Lc/e/a/a/o/A$a;->c:F

    .line 7
    iget-object p2, p0, Lc/e/a/a/o/A;->d:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    iget p2, p0, Lc/e/a/a/o/A;->h:I

    add-int/2addr p2, p1

    iput p2, p0, Lc/e/a/a/o/A;->h:I

    .line 9
    :cond_1
    :goto_1
    iget p1, p0, Lc/e/a/a/o/A;->h:I

    iget p2, p0, Lc/e/a/a/o/A;->c:I

    if-le p1, p2, :cond_3

    sub-int/2addr p1, p2

    .line 10
    iget-object p2, p0, Lc/e/a/a/o/A;->d:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lc/e/a/a/o/A$a;

    .line 11
    iget v1, p2, Lc/e/a/a/o/A$a;->b:I

    if-gt v1, p1, :cond_2

    .line 12
    iget p1, p0, Lc/e/a/a/o/A;->h:I

    sub-int/2addr p1, v1

    iput p1, p0, Lc/e/a/a/o/A;->h:I

    .line 13
    iget-object p1, p0, Lc/e/a/a/o/A;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 14
    iget p1, p0, Lc/e/a/a/o/A;->i:I

    const/4 v0, 0x5

    if-ge p1, v0, :cond_1

    .line 15
    iget-object v0, p0, Lc/e/a/a/o/A;->e:[Lc/e/a/a/o/A$a;

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lc/e/a/a/o/A;->i:I

    aput-object p2, v0, p1

    goto :goto_1

    :cond_2
    sub-int/2addr v1, p1

    .line 16
    iput v1, p2, Lc/e/a/a/o/A$a;->b:I

    .line 17
    iget p2, p0, Lc/e/a/a/o/A;->h:I

    sub-int/2addr p2, p1

    iput p2, p0, Lc/e/a/a/o/A;->h:I

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final b()V
    .locals 2

    .line 2
    iget v0, p0, Lc/e/a/a/o/A;->f:I

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lc/e/a/a/o/A;->d:Ljava/util/ArrayList;

    sget-object v1, Lc/e/a/a/o/A;->b:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lc/e/a/a/o/A;->f:I

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/o/A;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lc/e/a/a/o/A;->f:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lc/e/a/a/o/A;->g:I

    .line 4
    iput v0, p0, Lc/e/a/a/o/A;->h:I

    return-void
.end method
