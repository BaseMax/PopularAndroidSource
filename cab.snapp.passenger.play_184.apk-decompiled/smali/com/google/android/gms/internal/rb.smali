.class final Lcom/google/android/gms/internal/rb;
.super Lcom/google/android/gms/internal/ou;


# static fields
.field private static final b:[I


# instance fields
.field private final c:I

.field private final d:Lcom/google/android/gms/internal/ou;

.field private final e:Lcom/google/android/gms/internal/ou;

.field private final f:I

.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    if-lez v1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v2, v1

    move v4, v2

    move v2, v1

    move v1, v4

    goto :goto_0

    :cond_0
    const v1, 0x7fffffff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    sput-object v1, Lcom/google/android/gms/internal/rb;->b:[I

    const/4 v1, 0x0

    :goto_1
    sget-object v2, Lcom/google/android/gms/internal/rb;->b:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ou;Lcom/google/android/gms/internal/ou;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ou;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/rb;->d:Lcom/google/android/gms/internal/ou;

    iput-object p2, p0, Lcom/google/android/gms/internal/rb;->e:Lcom/google/android/gms/internal/ou;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ou;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/rb;->f:I

    iget v0, p0, Lcom/google/android/gms/internal/rb;->f:I

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ou;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/rb;->c:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ou;->a()I

    move-result p1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ou;->a()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/rb;->g:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ou;Lcom/google/android/gms/internal/ou;B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/rb;-><init>(Lcom/google/android/gms/internal/ou;Lcom/google/android/gms/internal/ou;)V

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/ou;Lcom/google/android/gms/internal/ou;)Lcom/google/android/gms/internal/ou;
    .locals 5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ou;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ou;->size()I

    move-result v0

    if-nez v0, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ou;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ou;->size()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x80

    if-ge v0, v1, :cond_2

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/rb;->b(Lcom/google/android/gms/internal/ou;Lcom/google/android/gms/internal/ou;)Lcom/google/android/gms/internal/ou;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v2, p0, Lcom/google/android/gms/internal/rb;

    if-eqz v2, :cond_4

    move-object v2, p0

    check-cast v2, Lcom/google/android/gms/internal/rb;

    iget-object v3, v2, Lcom/google/android/gms/internal/rb;->e:Lcom/google/android/gms/internal/ou;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ou;->size()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ou;->size()I

    move-result v4

    add-int/2addr v3, v4

    if-ge v3, v1, :cond_3

    iget-object p0, v2, Lcom/google/android/gms/internal/rb;->e:Lcom/google/android/gms/internal/ou;

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/rb;->b(Lcom/google/android/gms/internal/ou;Lcom/google/android/gms/internal/ou;)Lcom/google/android/gms/internal/ou;

    move-result-object p0

    new-instance p1, Lcom/google/android/gms/internal/rb;

    iget-object v0, v2, Lcom/google/android/gms/internal/rb;->d:Lcom/google/android/gms/internal/ou;

    invoke-direct {p1, v0, p0}, Lcom/google/android/gms/internal/rb;-><init>(Lcom/google/android/gms/internal/ou;Lcom/google/android/gms/internal/ou;)V

    return-object p1

    :cond_3
    iget-object v1, v2, Lcom/google/android/gms/internal/rb;->d:Lcom/google/android/gms/internal/ou;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ou;->a()I

    move-result v1

    iget-object v3, v2, Lcom/google/android/gms/internal/rb;->e:Lcom/google/android/gms/internal/ou;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ou;->a()I

    move-result v3

    if-le v1, v3, :cond_4

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ou;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ou;->a()I

    move-result v3

    if-le v1, v3, :cond_4

    new-instance p0, Lcom/google/android/gms/internal/rb;

    iget-object v0, v2, Lcom/google/android/gms/internal/rb;->e:Lcom/google/android/gms/internal/ou;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/rb;-><init>(Lcom/google/android/gms/internal/ou;Lcom/google/android/gms/internal/ou;)V

    new-instance p1, Lcom/google/android/gms/internal/rb;

    iget-object v0, v2, Lcom/google/android/gms/internal/rb;->d:Lcom/google/android/gms/internal/ou;

    invoke-direct {p1, v0, p0}, Lcom/google/android/gms/internal/rb;-><init>(Lcom/google/android/gms/internal/ou;Lcom/google/android/gms/internal/ou;)V

    return-object p1

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ou;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ou;->a()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    sget-object v2, Lcom/google/android/gms/internal/rb;->b:[I

    aget v1, v2, v1

    if-lt v0, v1, :cond_5

    new-instance v0, Lcom/google/android/gms/internal/rb;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/rb;-><init>(Lcom/google/android/gms/internal/ou;Lcom/google/android/gms/internal/ou;)V

    return-object v0

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/rc;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/rc;-><init>(B)V

    .line 2000
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/rc;->a(Lcom/google/android/gms/internal/ou;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/rc;->a(Lcom/google/android/gms/internal/ou;)V

    iget-object p0, v0, Lcom/google/android/gms/internal/rc;->a:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ou;

    :goto_0
    iget-object p1, v0, Lcom/google/android/gms/internal/rc;->a:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, v0, Lcom/google/android/gms/internal/rc;->a:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ou;

    new-instance v2, Lcom/google/android/gms/internal/rb;

    invoke-direct {v2, p1, p0, v1}, Lcom/google/android/gms/internal/rb;-><init>(Lcom/google/android/gms/internal/ou;Lcom/google/android/gms/internal/ou;B)V

    move-object p0, v2

    goto :goto_0

    :cond_6
    return-object p0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/rb;)Lcom/google/android/gms/internal/ou;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/rb;->d:Lcom/google/android/gms/internal/ou;

    return-object p0
.end method

.method private static b(Lcom/google/android/gms/internal/ou;Lcom/google/android/gms/internal/ou;)Lcom/google/android/gms/internal/ou;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ou;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ou;->size()I

    move-result v1

    add-int v2, v0, v1

    new-array v2, v2, [B

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v3, v0}, Lcom/google/android/gms/internal/ou;->zza([BIII)V

    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/google/android/gms/internal/ou;->zza([BIII)V

    invoke-static {v2}, Lcom/google/android/gms/internal/ou;->a([B)Lcom/google/android/gms/internal/ou;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/rb;)Lcom/google/android/gms/internal/ou;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/rb;->e:Lcom/google/android/gms/internal/ou;

    return-object p0
.end method

.method static synthetic c()[I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/rb;->b:[I

    return-object v0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/rb;->g:I

    return v0
.end method

.method protected final a(III)I
    .locals 2

    add-int v0, p2, p3

    iget v1, p0, Lcom/google/android/gms/internal/rb;->f:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/rb;->d:Lcom/google/android/gms/internal/ou;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ou;->a(III)I

    move-result p1

    return p1

    :cond_0
    if-lt p2, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/rb;->e:Lcom/google/android/gms/internal/ou;

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ou;->a(III)I

    move-result p1

    return p1

    :cond_1
    sub-int/2addr v1, p2

    iget-object v0, p0, Lcom/google/android/gms/internal/rb;->d:Lcom/google/android/gms/internal/ou;

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ou;->a(III)I

    move-result p1

    iget-object p2, p0, Lcom/google/android/gms/internal/rb;->e:Lcom/google/android/gms/internal/ou;

    const/4 v0, 0x0

    sub-int/2addr p3, v1

    invoke-virtual {p2, p1, v0, p3}, Lcom/google/android/gms/internal/ou;->a(III)I

    move-result p1

    return p1
.end method

.method final a(Lcom/google/android/gms/internal/ot;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/rb;->d:Lcom/google/android/gms/internal/ou;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ou;->a(Lcom/google/android/gms/internal/ot;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/rb;->e:Lcom/google/android/gms/internal/ou;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ou;->a(Lcom/google/android/gms/internal/ot;)V

    return-void
.end method

.method protected final a([BIII)V
    .locals 2

    add-int v0, p2, p4

    iget v1, p0, Lcom/google/android/gms/internal/rb;->f:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/rb;->d:Lcom/google/android/gms/internal/ou;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ou;->a([BIII)V

    return-void

    :cond_0
    if-lt p2, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/rb;->e:Lcom/google/android/gms/internal/ou;

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ou;->a([BIII)V

    return-void

    :cond_1
    sub-int/2addr v1, p2

    iget-object v0, p0, Lcom/google/android/gms/internal/rb;->d:Lcom/google/android/gms/internal/ou;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/android/gms/internal/ou;->a([BIII)V

    iget-object p2, p0, Lcom/google/android/gms/internal/rb;->e:Lcom/google/android/gms/internal/ou;

    const/4 v0, 0x0

    add-int/2addr p3, v1

    sub-int/2addr p4, v1

    invoke-virtual {p2, p1, v0, p3, p4}, Lcom/google/android/gms/internal/ou;->a([BIII)V

    return-void
.end method

.method protected final b()Z
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/rb;->c:I

    sget-object v1, Lcom/google/android/gms/internal/rb;->b:[I

    iget v2, p0, Lcom/google/android/gms/internal/rb;->g:I

    aget v1, v1, v2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 12

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/ou;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ou;

    iget v1, p0, Lcom/google/android/gms/internal/rb;->c:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ou;->size()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/google/android/gms/internal/rb;->c:I

    if-nez v1, :cond_3

    return v0

    .line 3000
    :cond_3
    iget v1, p0, Lcom/google/android/gms/internal/ou;->a:I

    .line 4000
    iget v3, p1, Lcom/google/android/gms/internal/ou;->a:I

    if-eqz v1, :cond_4

    if-eqz v3, :cond_4

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    new-instance v1, Lcom/google/android/gms/internal/rd;

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/rd;-><init>(Lcom/google/android/gms/internal/ou;B)V

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/pa;

    new-instance v4, Lcom/google/android/gms/internal/rd;

    invoke-direct {v4, p1, v2}, Lcom/google/android/gms/internal/rd;-><init>(Lcom/google/android/gms/internal/ou;B)V

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/pa;

    move-object v5, p1

    const/4 p1, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ou;->size()I

    move-result v8

    sub-int/2addr v8, p1

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ou;->size()I

    move-result v9

    sub-int/2addr v9, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v10

    if-nez p1, :cond_5

    invoke-virtual {v3, v5, v6, v10}, Lcom/google/android/gms/internal/pa;->a(Lcom/google/android/gms/internal/ou;II)Z

    move-result v11

    goto :goto_1

    :cond_5
    invoke-virtual {v5, v3, p1, v10}, Lcom/google/android/gms/internal/pa;->a(Lcom/google/android/gms/internal/ou;II)Z

    move-result v11

    :goto_1
    if-nez v11, :cond_6

    return v2

    :cond_6
    add-int/2addr v7, v10

    iget v11, p0, Lcom/google/android/gms/internal/rb;->c:I

    if-lt v7, v11, :cond_8

    if-ne v7, v11, :cond_7

    return v0

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_8
    if-ne v10, v8, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/pa;

    move-object v3, p1

    const/4 p1, 0x0

    goto :goto_2

    :cond_9
    add-int/2addr p1, v10

    :goto_2
    if-ne v10, v9, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/pa;

    const/4 v6, 0x0

    goto :goto_0

    :cond_a
    add-int/2addr v6, v10

    goto :goto_0
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/rb;->c:I

    return v0
.end method

.method public final zzcvm()Lcom/google/android/gms/internal/pd;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/re;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/re;-><init>(Lcom/google/android/gms/internal/rb;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/pd;->zzi(Ljava/io/InputStream;)Lcom/google/android/gms/internal/pd;

    move-result-object v0

    return-object v0
.end method

.method public final zzkn(I)B
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/rb;->c:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/rb;->a(II)V

    iget v0, p0, Lcom/google/android/gms/internal/rb;->f:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/rb;->d:Lcom/google/android/gms/internal/ou;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ou;->zzkn(I)B

    move-result p1

    return p1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/rb;->e:Lcom/google/android/gms/internal/ou;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ou;->zzkn(I)B

    move-result p1

    return p1
.end method

.method public final zzx(II)Lcom/google/android/gms/internal/ou;
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/rb;->c:I

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/rb;->b(III)I

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ou;->zzpfg:Lcom/google/android/gms/internal/ou;

    return-object p1

    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/rb;->c:I

    if-ne v0, v1, :cond_1

    return-object p0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/rb;->f:I

    if-gt p2, v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/rb;->d:Lcom/google/android/gms/internal/ou;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ou;->zzx(II)Lcom/google/android/gms/internal/ou;

    move-result-object p1

    return-object p1

    :cond_2
    if-lt p1, v0, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/rb;->e:Lcom/google/android/gms/internal/ou;

    sub-int/2addr p1, v0

    sub-int/2addr p2, v0

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/ou;->zzx(II)Lcom/google/android/gms/internal/ou;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/rb;->d:Lcom/google/android/gms/internal/ou;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ou;->size()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ou;->zzx(II)Lcom/google/android/gms/internal/ou;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/rb;->e:Lcom/google/android/gms/internal/ou;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/rb;->f:I

    sub-int/2addr p2, v2

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/ou;->zzx(II)Lcom/google/android/gms/internal/ou;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/rb;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/rb;-><init>(Lcom/google/android/gms/internal/ou;Lcom/google/android/gms/internal/ou;)V

    return-object v0
.end method
