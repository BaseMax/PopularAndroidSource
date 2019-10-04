.class public final Lc/e/a/a/j/c/d;
.super Ljava/lang/Object;
.source "DashMediaPeriod.java"

# interfaces
.implements Lc/e/a/a/j/u;
.implements Lc/e/a/a/j/D$a;
.implements Lc/e/a/a/j/b/g$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/a/j/c/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/e/a/a/j/u;",
        "Lc/e/a/a/j/D$a<",
        "Lc/e/a/a/j/b/g<",
        "Lc/e/a/a/j/c/c;",
        ">;>;",
        "Lc/e/a/a/j/b/g$b<",
        "Lc/e/a/a/j/c/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/regex/Pattern;


# instance fields
.field public final b:I

.field public final c:Lc/e/a/a/j/c/c$a;

.field public final d:Lc/e/a/a/n/A;

.field public final e:Lc/e/a/a/n/v;

.field public final f:J

.field public final g:Lc/e/a/a/n/x;

.field public final h:Lc/e/a/a/n/e;

.field public final i:Lcom/google/android/exoplayer2/source/TrackGroupArray;

.field public final j:[Lc/e/a/a/j/c/d$a;

.field public final k:Lc/e/a/a/j/q;

.field public final l:Lc/e/a/a/j/c/k;

.field public final m:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lc/e/a/a/j/b/g<",
            "Lc/e/a/a/j/c/c;",
            ">;",
            "Lc/e/a/a/j/c/k$c;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Lc/e/a/a/j/w$a;

.field public o:Lc/e/a/a/j/u$a;

.field public p:[Lc/e/a/a/j/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lc/e/a/a/j/b/g<",
            "Lc/e/a/a/j/c/c;",
            ">;"
        }
    .end annotation
.end field

.field public q:[Lc/e/a/a/j/c/j;

.field public r:Lc/e/a/a/j/D;

.field public s:Lc/e/a/a/j/c/a/b;

.field public t:I

.field public u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/e/a/a/j/c/a/e;",
            ">;"
        }
    .end annotation
.end field

.field public v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "CC([1-4])=(.+)"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lc/e/a/a/j/c/d;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(ILc/e/a/a/j/c/a/b;ILc/e/a/a/j/c/c$a;Lc/e/a/a/n/A;Lc/e/a/a/n/v;Lc/e/a/a/j/w$a;JLc/e/a/a/n/x;Lc/e/a/a/n/e;Lc/e/a/a/j/q;Lc/e/a/a/j/c/k$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lc/e/a/a/j/c/d;->b:I

    .line 3
    iput-object p2, p0, Lc/e/a/a/j/c/d;->s:Lc/e/a/a/j/c/a/b;

    .line 4
    iput p3, p0, Lc/e/a/a/j/c/d;->t:I

    .line 5
    iput-object p4, p0, Lc/e/a/a/j/c/d;->c:Lc/e/a/a/j/c/c$a;

    .line 6
    iput-object p5, p0, Lc/e/a/a/j/c/d;->d:Lc/e/a/a/n/A;

    .line 7
    iput-object p6, p0, Lc/e/a/a/j/c/d;->e:Lc/e/a/a/n/v;

    .line 8
    iput-object p7, p0, Lc/e/a/a/j/c/d;->n:Lc/e/a/a/j/w$a;

    .line 9
    iput-wide p8, p0, Lc/e/a/a/j/c/d;->f:J

    .line 10
    iput-object p10, p0, Lc/e/a/a/j/c/d;->g:Lc/e/a/a/n/x;

    .line 11
    iput-object p11, p0, Lc/e/a/a/j/c/d;->h:Lc/e/a/a/n/e;

    .line 12
    iput-object p12, p0, Lc/e/a/a/j/c/d;->k:Lc/e/a/a/j/q;

    .line 13
    new-instance p1, Lc/e/a/a/j/c/k;

    invoke-direct {p1, p2, p13, p11}, Lc/e/a/a/j/c/k;-><init>(Lc/e/a/a/j/c/a/b;Lc/e/a/a/j/c/k$b;Lc/e/a/a/n/e;)V

    iput-object p1, p0, Lc/e/a/a/j/c/d;->l:Lc/e/a/a/j/c/k;

    const/4 p1, 0x0

    .line 14
    invoke-static {p1}, Lc/e/a/a/j/c/d;->b(I)[Lc/e/a/a/j/b/g;

    move-result-object p4

    iput-object p4, p0, Lc/e/a/a/j/c/d;->p:[Lc/e/a/a/j/b/g;

    .line 15
    new-array p1, p1, [Lc/e/a/a/j/c/j;

    iput-object p1, p0, Lc/e/a/a/j/c/d;->q:[Lc/e/a/a/j/c/j;

    .line 16
    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lc/e/a/a/j/c/d;->m:Ljava/util/IdentityHashMap;

    .line 17
    iget-object p1, p0, Lc/e/a/a/j/c/d;->p:[Lc/e/a/a/j/b/g;

    .line 18
    invoke-interface {p12, p1}, Lc/e/a/a/j/q;->a([Lc/e/a/a/j/D;)Lc/e/a/a/j/D;

    move-result-object p1

    iput-object p1, p0, Lc/e/a/a/j/c/d;->r:Lc/e/a/a/j/D;

    .line 19
    invoke-virtual {p2, p3}, Lc/e/a/a/j/c/a/b;->a(I)Lc/e/a/a/j/c/a/f;

    move-result-object p1

    .line 20
    iget-object p2, p1, Lc/e/a/a/j/c/a/f;->d:Ljava/util/List;

    iput-object p2, p0, Lc/e/a/a/j/c/d;->u:Ljava/util/List;

    .line 21
    iget-object p1, p1, Lc/e/a/a/j/c/a/f;->c:Ljava/util/List;

    iget-object p2, p0, Lc/e/a/a/j/c/d;->u:Ljava/util/List;

    invoke-static {p1, p2}, Lc/e/a/a/j/c/d;->a(Ljava/util/List;Ljava/util/List;)Landroid/util/Pair;

    move-result-object p1

    .line 22
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iput-object p2, p0, Lc/e/a/a/j/c/d;->i:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 23
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [Lc/e/a/a/j/c/d$a;

    iput-object p1, p0, Lc/e/a/a/j/c/d;->j:[Lc/e/a/a/j/c/d$a;

    .line 24
    invoke-virtual {p7}, Lc/e/a/a/j/w$a;->a()V

    return-void
.end method

.method public static a(ILjava/util/List;[[I[Z[[Lcom/google/android/exoplayer2/Format;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lc/e/a/a/j/c/a/a;",
            ">;[[I[Z[[",
            "Lcom/google/android/exoplayer2/Format;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p0, :cond_2

    .line 103
    aget-object v2, p2, v0

    invoke-static {p1, v2}, Lc/e/a/a/j/c/d;->b(Ljava/util/List;[I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 104
    aput-boolean v2, p3, v0

    add-int/lit8 v1, v1, 0x1

    .line 105
    :cond_0
    aget-object v2, p2, v0

    .line 106
    invoke-static {p1, v2}, Lc/e/a/a/j/c/d;->a(Ljava/util/List;[I)[Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    aput-object v2, p4, v0

    .line 107
    aget-object v2, p4, v0

    array-length v2, v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static a(Ljava/util/List;[[II[Z[[Lcom/google/android/exoplayer2/Format;[Lcom/google/android/exoplayer2/source/TrackGroup;[Lc/e/a/a/j/c/d$a;)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/e/a/a/j/c/a/a;",
            ">;[[II[Z[[",
            "Lcom/google/android/exoplayer2/Format;",
            "[",
            "Lcom/google/android/exoplayer2/source/TrackGroup;",
            "[",
            "Lc/e/a/a/j/c/d$a;",
            ")I"
        }
    .end annotation

    move-object v0, p0

    const/4 v1, 0x0

    move v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_6

    .line 108
    aget-object v5, p1, v3

    .line 109
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 110
    array-length v7, v5

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_0

    aget v9, v5, v8

    .line 111
    invoke-interface {p0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lc/e/a/a/j/c/a/a;

    iget-object v9, v9, Lc/e/a/a/j/c/a/a;->c:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 112
    :cond_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Lcom/google/android/exoplayer2/Format;

    const/4 v8, 0x0

    .line 113
    :goto_2
    array-length v9, v7

    if-ge v8, v9, :cond_1

    .line 114
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lc/e/a/a/j/c/a/j;

    iget-object v9, v9, Lc/e/a/a/j/c/a/j;->b:Lcom/google/android/exoplayer2/Format;

    aput-object v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 115
    :cond_1
    aget v6, v5, v1

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc/e/a/a/j/c/a/a;

    add-int/lit8 v8, v4, 0x1

    .line 116
    aget-boolean v9, p3, v3

    const/4 v10, -0x1

    if-eqz v9, :cond_2

    add-int/lit8 v9, v8, 0x1

    goto :goto_3

    :cond_2
    move v9, v8

    const/4 v8, -0x1

    .line 117
    :goto_3
    aget-object v11, p4, v3

    array-length v11, v11

    if-eqz v11, :cond_3

    add-int/lit8 v11, v9, 0x1

    goto :goto_4

    :cond_3
    move v11, v9

    const/4 v9, -0x1

    .line 118
    :goto_4
    new-instance v12, Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {v12, v7}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    aput-object v12, p5, v4

    .line 119
    iget v7, v6, Lc/e/a/a/j/c/a/a;->b:I

    .line 120
    invoke-static {v7, v5, v4, v8, v9}, Lc/e/a/a/j/c/d$a;->a(I[IIII)Lc/e/a/a/j/c/d$a;

    move-result-object v7

    aput-object v7, p6, v4

    if-eq v8, v10, :cond_4

    .line 121
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v6, Lc/e/a/a/j/c/a/a;->a:I

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":emsg"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v12, "application/x-emsg"

    invoke-static {v6, v12, v7, v10, v7}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v6

    .line 122
    new-instance v7, Lcom/google/android/exoplayer2/source/TrackGroup;

    const/4 v12, 0x1

    new-array v12, v12, [Lcom/google/android/exoplayer2/Format;

    aput-object v6, v12, v1

    invoke-direct {v7, v12}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    aput-object v7, p5, v8

    .line 123
    invoke-static {v5, v4}, Lc/e/a/a/j/c/d$a;->b([II)Lc/e/a/a/j/c/d$a;

    move-result-object v6

    aput-object v6, p6, v8

    :cond_4
    if-eq v9, v10, :cond_5

    .line 124
    new-instance v6, Lcom/google/android/exoplayer2/source/TrackGroup;

    aget-object v7, p4, v3

    invoke-direct {v6, v7}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    aput-object v6, p5, v9

    .line 125
    invoke-static {v5, v4}, Lc/e/a/a/j/c/d$a;->a([II)Lc/e/a/a/j/c/d$a;

    move-result-object v4

    aput-object v4, p6, v9

    :cond_5
    add-int/lit8 v3, v3, 0x1

    move v4, v11

    goto/16 :goto_0

    :cond_6
    return v4
.end method

.method public static a(Ljava/util/List;Ljava/util/List;)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/e/a/a/j/c/a/a;",
            ">;",
            "Ljava/util/List<",
            "Lc/e/a/a/j/c/a/e;",
            ">;)",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplayer2/source/TrackGroupArray;",
            "[",
            "Lc/e/a/a/j/c/d$a;",
            ">;"
        }
    .end annotation

    .line 92
    invoke-static {p0}, Lc/e/a/a/j/c/d;->b(Ljava/util/List;)[[I

    move-result-object v1

    .line 93
    array-length v2, v1

    .line 94
    new-array v3, v2, [Z

    .line 95
    new-array v4, v2, [[Lcom/google/android/exoplayer2/Format;

    .line 96
    invoke-static {v2, p0, v1, v3, v4}, Lc/e/a/a/j/c/d;->a(ILjava/util/List;[[I[Z[[Lcom/google/android/exoplayer2/Format;)I

    move-result v0

    add-int/2addr v0, v2

    .line 97
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v0, v5

    .line 98
    new-array v7, v0, [Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 99
    new-array v8, v0, [Lc/e/a/a/j/c/d$a;

    move-object v0, p0

    move-object v5, v7

    move-object v6, v8

    .line 100
    invoke-static/range {v0 .. v6}, Lc/e/a/a/j/c/d;->a(Ljava/util/List;[[II[Z[[Lcom/google/android/exoplayer2/Format;[Lcom/google/android/exoplayer2/source/TrackGroup;[Lc/e/a/a/j/c/d$a;)I

    move-result p0

    .line 101
    invoke-static {p1, v7, v8, p0}, Lc/e/a/a/j/c/d;->a(Ljava/util/List;[Lcom/google/android/exoplayer2/source/TrackGroup;[Lc/e/a/a/j/c/d$a;I)V

    .line 102
    new-instance p0, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-direct {p0, v7}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    invoke-static {p0, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/List;)Lc/e/a/a/j/c/a/d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/e/a/a/j/c/a/d;",
            ">;)",
            "Lc/e/a/a/j/c/a/d;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 154
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 155
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/a/a/j/c/a/d;

    .line 156
    iget-object v2, v1, Lc/e/a/a/j/c/a/d;->a:Ljava/lang/String;

    const-string v3, "urn:mpeg:dash:adaptation-set-switching:2016"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(I)Lcom/google/android/exoplayer2/Format;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 176
    invoke-static {p0, v0, v1}, Lc/e/a/a/j/c/d;->a(ILjava/lang/String;I)Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    return-object p0
.end method

.method public static a(ILjava/lang/String;I)Lcom/google/android/exoplayer2/Format;
    .locals 12

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":cea608"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, -0x1

    if-eq p2, p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    const-wide v9, 0x7fffffffffffffffL

    const/4 v11, 0x0

    const-string v2, "application/cea-608"

    move-object v6, p1

    move v7, p2

    invoke-static/range {v1 .. v11}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/google/android/exoplayer2/drm/DrmInitData;JLjava/util/List;)Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/List;[Lcom/google/android/exoplayer2/source/TrackGroup;[Lc/e/a/a/j/c/d$a;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/e/a/a/j/c/a/e;",
            ">;[",
            "Lcom/google/android/exoplayer2/source/TrackGroup;",
            "[",
            "Lc/e/a/a/j/c/d$a;",
            "I)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, p3

    const/4 p3, 0x0

    .line 126
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge p3, v2, :cond_0

    .line 127
    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/e/a/a/j/c/a/e;

    .line 128
    invoke-virtual {v2}, Lc/e/a/a/j/c/a/e;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const-string v5, "application/x-emsg"

    invoke-static {v2, v5, v4, v3, v4}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    .line 129
    new-instance v3, Lcom/google/android/exoplayer2/source/TrackGroup;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/google/android/exoplayer2/Format;

    aput-object v2, v4, v0

    invoke-direct {v3, v4}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    aput-object v3, p1, v1

    add-int/lit8 v2, v1, 0x1

    .line 130
    invoke-static {p3}, Lc/e/a/a/j/c/d$a;->a(I)Lc/e/a/a/j/c/d$a;

    move-result-object v3

    aput-object v3, p2, v1

    add-int/lit8 p3, p3, 0x1

    move v1, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(Ljava/util/List;[I)[Lcom/google/android/exoplayer2/Format;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/e/a/a/j/c/a/a;",
            ">;[I)[",
            "Lcom/google/android/exoplayer2/Format;"
        }
    .end annotation

    .line 157
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_5

    aget v3, p1, v2

    .line 158
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/e/a/a/j/c/a/a;

    .line 159
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/e/a/a/j/c/a/a;

    iget-object v3, v3, Lc/e/a/a/j/c/a/a;->d:Ljava/util/List;

    const/4 v5, 0x0

    .line 160
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 161
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc/e/a/a/j/c/a/d;

    .line 162
    iget-object v7, v6, Lc/e/a/a/j/c/a/d;->a:Ljava/lang/String;

    const-string v8, "urn:scte:dash:cc:cea-608:2015"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 163
    iget-object p0, v6, Lc/e/a/a/j/c/a/d;->b:Ljava/lang/String;

    const/4 p1, 0x1

    if-nez p0, :cond_0

    .line 164
    new-array p0, p1, [Lcom/google/android/exoplayer2/Format;

    iget p1, v4, Lc/e/a/a/j/c/a/a;->a:I

    invoke-static {p1}, Lc/e/a/a/j/c/d;->a(I)Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    aput-object p1, p0, v1

    return-object p0

    :cond_0
    const-string v0, ";"

    .line 165
    invoke-static {p0, v0}, Lc/e/a/a/o/I;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 166
    array-length v0, p0

    new-array v0, v0, [Lcom/google/android/exoplayer2/Format;

    const/4 v2, 0x0

    .line 167
    :goto_2
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 168
    sget-object v3, Lc/e/a/a/j/c/d;->a:Ljava/util/regex/Pattern;

    aget-object v5, p0, v2

    invoke-virtual {v3, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 169
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_1

    .line 170
    new-array p0, p1, [Lcom/google/android/exoplayer2/Format;

    iget p1, v4, Lc/e/a/a/j/c/a/a;->a:I

    invoke-static {p1}, Lc/e/a/a/j/c/d;->a(I)Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    aput-object p1, p0, v1

    return-object p0

    .line 171
    :cond_1
    iget v5, v4, Lc/e/a/a/j/c/a/a;->a:I

    const/4 v6, 0x2

    .line 172
    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 173
    invoke-virtual {v3, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 174
    invoke-static {v5, v6, v3}, Lc/e/a/a/j/c/d;->a(ILjava/lang/String;I)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-object v0

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 175
    :cond_5
    new-array p0, v1, [Lcom/google/android/exoplayer2/Format;

    return-object p0
.end method

.method public static b(Ljava/util/List;[I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/e/a/a/j/c/a/a;",
            ">;[I)Z"
        }
    .end annotation

    .line 27
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget v3, p1, v2

    .line 28
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/e/a/a/j/c/a/a;

    iget-object v3, v3, Lc/e/a/a/j/c/a/a;->c:Ljava/util/List;

    const/4 v4, 0x0

    .line 29
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 30
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/e/a/a/j/c/a/j;

    .line 31
    iget-object v5, v5, Lc/e/a/a/j/c/a/j;->e:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static b(I)[Lc/e/a/a/j/b/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lc/e/a/a/j/b/g<",
            "Lc/e/a/a/j/c/c;",
            ">;"
        }
    .end annotation

    .line 32
    new-array p0, p0, [Lc/e/a/a/j/b/g;

    return-object p0
.end method

.method public static b(Ljava/util/List;)[[I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/e/a/a/j/c/a/a;",
            ">;)[[I"
        }
    .end annotation

    .line 4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 5
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1, v0}, Landroid/util/SparseIntArray;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 6
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/e/a/a/j/c/a/a;

    iget v4, v4, Lc/e/a/a/j/c/a/a;->a:I

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_0
    new-array v3, v0, [[I

    .line 8
    new-array v4, v0, [Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v5, v0, :cond_6

    .line 9
    aget-boolean v7, v4, v5

    if-eqz v7, :cond_1

    goto :goto_3

    :cond_1
    const/4 v7, 0x1

    .line 10
    aput-boolean v7, v4, v5

    .line 11
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc/e/a/a/j/c/a/a;

    iget-object v8, v8, Lc/e/a/a/j/c/a/a;->e:Ljava/util/List;

    .line 12
    invoke-static {v8}, Lc/e/a/a/j/c/d;->a(Ljava/util/List;)Lc/e/a/a/j/c/a/d;

    move-result-object v8

    if-nez v8, :cond_2

    add-int/lit8 v8, v6, 0x1

    .line 13
    new-array v7, v7, [I

    aput v5, v7, v2

    aput-object v7, v3, v6

    move v6, v8

    goto :goto_3

    .line 14
    :cond_2
    iget-object v8, v8, Lc/e/a/a/j/c/a/d;->b:Ljava/lang/String;

    const-string v9, ","

    invoke-static {v8, v9}, Lc/e/a/a/o/I;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 15
    array-length v9, v8

    add-int/2addr v9, v7

    new-array v9, v9, [I

    .line 16
    aput v5, v9, v2

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 17
    :goto_2
    array-length v12, v8

    if-ge v10, v12, :cond_4

    .line 18
    aget-object v12, v8, v10

    .line 19
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    const/4 v13, -0x1

    .line 20
    invoke-virtual {v1, v12, v13}, Landroid/util/SparseIntArray;->get(II)I

    move-result v12

    if-eq v12, v13, :cond_3

    .line 21
    aput-boolean v7, v4, v12

    .line 22
    aput v12, v9, v11

    add-int/lit8 v11, v11, 0x1

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 23
    :cond_4
    array-length v7, v9

    if-ge v11, v7, :cond_5

    .line 24
    invoke-static {v9, v11}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v9

    :cond_5
    add-int/lit8 v7, v6, 0x1

    .line 25
    aput-object v9, v3, v6

    move v6, v7

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    if-ge v6, v0, :cond_7

    .line 26
    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, [[I

    :cond_7
    return-object v3
.end method


# virtual methods
.method public final a(I[I)I
    .locals 4

    .line 87
    aget p1, p2, p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return v0

    .line 88
    :cond_0
    iget-object v1, p0, Lc/e/a/a/j/c/d;->j:[Lc/e/a/a/j/c/d$a;

    aget-object p1, v1, p1

    iget p1, p1, Lc/e/a/a/j/c/d$a;->e:I

    const/4 v1, 0x0

    .line 89
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_2

    .line 90
    aget v2, p2, v1

    if-ne v2, p1, :cond_1

    .line 91
    iget-object v3, p0, Lc/e/a/a/j/c/d;->j:[Lc/e/a/a/j/c/d$a;

    aget-object v2, v3, v2

    iget v2, v2, Lc/e/a/a/j/c/d$a;->c:I

    if-nez v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public a(J)J
    .locals 5

    .line 40
    iget-object v0, p0, Lc/e/a/a/j/c/d;->p:[Lc/e/a/a/j/b/g;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 41
    invoke-virtual {v4, p1, p2}, Lc/e/a/a/j/b/g;->a(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 42
    :cond_0
    iget-object v0, p0, Lc/e/a/a/j/c/d;->q:[Lc/e/a/a/j/c/j;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 43
    invoke-virtual {v3, p1, p2}, Lc/e/a/a/j/c/j;->a(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-wide p1
.end method

.method public a(JLc/e/a/a/V;)J
    .locals 6

    .line 44
    iget-object v0, p0, Lc/e/a/a/j/c/d;->p:[Lc/e/a/a/j/b/g;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 45
    iget v4, v3, Lc/e/a/a/j/b/g;->a:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 46
    invoke-virtual {v3, p1, p2, p3}, Lc/e/a/a/j/b/g;->a(JLc/e/a/a/V;)J

    move-result-wide p1

    return-wide p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide p1
.end method

.method public a([Lc/e/a/a/l/n;[Z[Lc/e/a/a/j/C;[ZJ)J
    .locals 7

    .line 20
    invoke-virtual {p0, p1}, Lc/e/a/a/j/c/d;->a([Lc/e/a/a/l/n;)[I

    move-result-object v6

    .line 21
    invoke-virtual {p0, p1, p2, p3}, Lc/e/a/a/j/c/d;->a([Lc/e/a/a/l/n;[Z[Lc/e/a/a/j/C;)V

    .line 22
    invoke-virtual {p0, p1, p3, v6}, Lc/e/a/a/j/c/d;->a([Lc/e/a/a/l/n;[Lc/e/a/a/j/C;[I)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-wide v4, p5

    .line 23
    invoke-virtual/range {v0 .. v6}, Lc/e/a/a/j/c/d;->a([Lc/e/a/a/l/n;[Lc/e/a/a/j/C;[ZJ[I)V

    .line 24
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 26
    array-length p4, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_2

    aget-object v1, p3, v0

    .line 27
    instance-of v2, v1, Lc/e/a/a/j/b/g;

    if-eqz v2, :cond_0

    .line 28
    check-cast v1, Lc/e/a/a/j/b/g;

    .line 29
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 30
    :cond_0
    instance-of v2, v1, Lc/e/a/a/j/c/j;

    if-eqz v2, :cond_1

    .line 31
    check-cast v1, Lc/e/a/a/j/c/j;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 32
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-static {p3}, Lc/e/a/a/j/c/d;->b(I)[Lc/e/a/a/j/b/g;

    move-result-object p3

    iput-object p3, p0, Lc/e/a/a/j/c/d;->p:[Lc/e/a/a/j/b/g;

    .line 33
    iget-object p3, p0, Lc/e/a/a/j/c/d;->p:[Lc/e/a/a/j/b/g;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 34
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lc/e/a/a/j/c/j;

    iput-object p1, p0, Lc/e/a/a/j/c/d;->q:[Lc/e/a/a/j/c/j;

    .line 35
    iget-object p1, p0, Lc/e/a/a/j/c/d;->q:[Lc/e/a/a/j/c/j;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 36
    iget-object p1, p0, Lc/e/a/a/j/c/d;->k:Lc/e/a/a/j/q;

    iget-object p2, p0, Lc/e/a/a/j/c/d;->p:[Lc/e/a/a/j/b/g;

    .line 37
    invoke-interface {p1, p2}, Lc/e/a/a/j/q;->a([Lc/e/a/a/j/D;)Lc/e/a/a/j/D;

    move-result-object p1

    iput-object p1, p0, Lc/e/a/a/j/c/d;->r:Lc/e/a/a/j/D;

    return-wide p5
.end method

.method public final a(Lc/e/a/a/j/c/d$a;Lc/e/a/a/l/n;J)Lc/e/a/a/j/b/g;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/a/j/c/d$a;",
            "Lc/e/a/a/l/n;",
            "J)",
            "Lc/e/a/a/j/b/g<",
            "Lc/e/a/a/j/c/c;",
            ">;"
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v0, p1

    .line 131
    iget v1, v0, Lc/e/a/a/j/c/d$a;->f:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_0

    const/16 v22, 0x1

    goto :goto_0

    :cond_0
    const/16 v22, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v22, :cond_1

    .line 132
    iget-object v5, v12, Lc/e/a/a/j/c/d;->i:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget v6, v0, Lc/e/a/a/j/c/d$a;->f:I

    .line 133
    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->a(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v5

    move-object v6, v5

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    move-object v6, v1

    const/4 v5, 0x0

    .line 134
    :goto_1
    iget v7, v0, Lc/e/a/a/j/c/d$a;->g:I

    if-eq v7, v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_3

    .line 135
    iget-object v7, v12, Lc/e/a/a/j/c/d;->i:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget v8, v0, Lc/e/a/a/j/c/d$a;->g:I

    invoke-virtual {v7, v8}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->a(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v7

    .line 136
    iget v8, v7, Lcom/google/android/exoplayer2/source/TrackGroup;->a:I

    add-int/2addr v5, v8

    goto :goto_3

    :cond_3
    move-object v7, v1

    .line 137
    :goto_3
    new-array v8, v5, [Lcom/google/android/exoplayer2/Format;

    .line 138
    new-array v5, v5, [I

    if-eqz v22, :cond_4

    .line 139
    invoke-virtual {v6, v4}, Lcom/google/android/exoplayer2/source/TrackGroup;->a(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v6

    aput-object v6, v8, v4

    const/4 v6, 0x4

    .line 140
    aput v6, v5, v4

    const/4 v6, 0x1

    goto :goto_4

    :cond_4
    const/4 v6, 0x0

    .line 141
    :goto_4
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_5

    .line 142
    :goto_5
    iget v2, v7, Lcom/google/android/exoplayer2/source/TrackGroup;->a:I

    if-ge v4, v2, :cond_5

    .line 143
    invoke-virtual {v7, v4}, Lcom/google/android/exoplayer2/source/TrackGroup;->a(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    aput-object v2, v8, v6

    const/4 v2, 0x3

    .line 144
    aput v2, v5, v6

    .line 145
    aget-object v2, v8, v6

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v6, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 146
    :cond_5
    iget-object v2, v12, Lc/e/a/a/j/c/d;->s:Lc/e/a/a/j/c/a/b;

    iget-boolean v2, v2, Lc/e/a/a/j/c/a/b;->d:Z

    if-eqz v2, :cond_6

    if-eqz v22, :cond_6

    iget-object v1, v12, Lc/e/a/a/j/c/d;->l:Lc/e/a/a/j/c/k;

    .line 147
    invoke-virtual {v1}, Lc/e/a/a/j/c/k;->b()Lc/e/a/a/j/c/k$c;

    move-result-object v1

    :cond_6
    move-object v11, v1

    .line 148
    iget-object v13, v12, Lc/e/a/a/j/c/d;->c:Lc/e/a/a/j/c/c$a;

    iget-object v14, v12, Lc/e/a/a/j/c/d;->g:Lc/e/a/a/n/x;

    iget-object v15, v12, Lc/e/a/a/j/c/d;->s:Lc/e/a/a/j/c/a/b;

    iget v1, v12, Lc/e/a/a/j/c/d;->t:I

    iget-object v2, v0, Lc/e/a/a/j/c/d$a;->a:[I

    iget v3, v0, Lc/e/a/a/j/c/d$a;->b:I

    iget-wide v6, v12, Lc/e/a/a/j/c/d;->f:J

    iget-object v4, v12, Lc/e/a/a/j/c/d;->d:Lc/e/a/a/n/A;

    move/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, p2

    move/from16 v19, v3

    move-wide/from16 v20, v6

    move-object/from16 v23, v9

    move-object/from16 v24, v11

    move-object/from16 v25, v4

    .line 149
    invoke-interface/range {v13 .. v25}, Lc/e/a/a/j/c/c$a;->a(Lc/e/a/a/n/x;Lc/e/a/a/j/c/a/b;I[ILc/e/a/a/l/n;IJZLjava/util/List;Lc/e/a/a/j/c/k$c;Lc/e/a/a/n/A;)Lc/e/a/a/j/c/c;

    move-result-object v6

    .line 150
    new-instance v13, Lc/e/a/a/j/b/g;

    iget v2, v0, Lc/e/a/a/j/c/d$a;->b:I

    iget-object v7, v12, Lc/e/a/a/j/c/d;->h:Lc/e/a/a/n/e;

    iget-object v10, v12, Lc/e/a/a/j/c/d;->e:Lc/e/a/a/n/v;

    iget-object v0, v12, Lc/e/a/a/j/c/d;->n:Lc/e/a/a/j/w$a;

    move-object v1, v13

    move-object v3, v5

    move-object v4, v8

    move-object v5, v6

    move-object/from16 v6, p0

    move-wide/from16 v8, p3

    move-object v14, v11

    move-object v11, v0

    invoke-direct/range {v1 .. v11}, Lc/e/a/a/j/b/g;-><init>(I[I[Lcom/google/android/exoplayer2/Format;Lc/e/a/a/j/b/h;Lc/e/a/a/j/D$a;Lc/e/a/a/n/e;JLc/e/a/a/n/v;Lc/e/a/a/j/w$a;)V

    .line 151
    monitor-enter p0

    .line 152
    :try_start_0
    iget-object v0, v12, Lc/e/a/a/j/c/d;->m:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, v13, v14}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    monitor-exit p0

    return-object v13

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method

.method public a(JZ)V
    .locals 4

    .line 38
    iget-object v0, p0, Lc/e/a/a/j/c/d;->p:[Lc/e/a/a/j/b/g;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 39
    invoke-virtual {v3, p1, p2, p3}, Lc/e/a/a/j/b/g;->a(JZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Lc/e/a/a/j/D;)V
    .locals 0

    .line 1
    check-cast p1, Lc/e/a/a/j/b/g;

    invoke-virtual {p0, p1}, Lc/e/a/a/j/c/d;->b(Lc/e/a/a/j/b/g;)V

    return-void
.end method

.method public declared-synchronized a(Lc/e/a/a/j/b/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/a/j/b/g<",
            "Lc/e/a/a/j/c/c;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 15
    :try_start_0
    iget-object v0, p0, Lc/e/a/a/j/c/d;->m:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/e/a/a/j/c/k$c;

    if-eqz p1, :cond_0

    .line 16
    invoke-virtual {p1}, Lc/e/a/a/j/c/k$c;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Lc/e/a/a/j/c/a/b;I)V
    .locals 9

    .line 2
    iput-object p1, p0, Lc/e/a/a/j/c/d;->s:Lc/e/a/a/j/c/a/b;

    .line 3
    iput p2, p0, Lc/e/a/a/j/c/d;->t:I

    .line 4
    iget-object v0, p0, Lc/e/a/a/j/c/d;->l:Lc/e/a/a/j/c/k;

    invoke-virtual {v0, p1}, Lc/e/a/a/j/c/k;->a(Lc/e/a/a/j/c/a/b;)V

    .line 5
    iget-object v0, p0, Lc/e/a/a/j/c/d;->p:[Lc/e/a/a/j/b/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 6
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 7
    invoke-virtual {v4}, Lc/e/a/a/j/b/g;->i()Lc/e/a/a/j/b/h;

    move-result-object v4

    check-cast v4, Lc/e/a/a/j/c/c;

    invoke-interface {v4, p1, p2}, Lc/e/a/a/j/c/c;->a(Lc/e/a/a/j/c/a/b;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lc/e/a/a/j/c/d;->o:Lc/e/a/a/j/u$a;

    invoke-interface {v0, p0}, Lc/e/a/a/j/D$a;->a(Lc/e/a/a/j/D;)V

    .line 9
    :cond_1
    invoke-virtual {p1, p2}, Lc/e/a/a/j/c/a/b;->a(I)Lc/e/a/a/j/c/a/f;

    move-result-object v0

    iget-object v0, v0, Lc/e/a/a/j/c/a/f;->d:Ljava/util/List;

    iput-object v0, p0, Lc/e/a/a/j/c/d;->u:Ljava/util/List;

    .line 10
    iget-object v0, p0, Lc/e/a/a/j/c/d;->q:[Lc/e/a/a/j/c/j;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_5

    aget-object v4, v0, v3

    .line 11
    iget-object v5, p0, Lc/e/a/a/j/c/d;->u:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc/e/a/a/j/c/a/e;

    .line 12
    invoke-virtual {v6}, Lc/e/a/a/j/c/a/e;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lc/e/a/a/j/c/j;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 13
    invoke-virtual {p1}, Lc/e/a/a/j/c/a/b;->a()I

    move-result v5

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    .line 14
    iget-boolean v8, p1, Lc/e/a/a/j/c/a/b;->d:Z

    if-eqz v8, :cond_3

    if-ne p2, v5, :cond_3

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v4, v6, v7}, Lc/e/a/a/j/c/j;->a(Lc/e/a/a/j/c/a/e;Z)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public a(Lc/e/a/a/j/u$a;J)V
    .locals 0

    .line 18
    iput-object p1, p0, Lc/e/a/a/j/c/d;->o:Lc/e/a/a/j/u$a;

    .line 19
    invoke-interface {p1, p0}, Lc/e/a/a/j/u$a;->a(Lc/e/a/a/j/u;)V

    return-void
.end method

.method public final a([Lc/e/a/a/l/n;[Lc/e/a/a/j/C;[I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 60
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_5

    .line 61
    aget-object v2, p2, v1

    instance-of v2, v2, Lc/e/a/a/j/s;

    if-nez v2, :cond_0

    aget-object v2, p2, v1

    instance-of v2, v2, Lc/e/a/a/j/b/g$a;

    if-eqz v2, :cond_4

    .line 62
    :cond_0
    invoke-virtual {p0, v1, p3}, Lc/e/a/a/j/c/d;->a(I[I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 63
    aget-object v2, p2, v1

    instance-of v2, v2, Lc/e/a/a/j/s;

    goto :goto_1

    .line 64
    :cond_1
    aget-object v3, p2, v1

    instance-of v3, v3, Lc/e/a/a/j/b/g$a;

    if-eqz v3, :cond_2

    aget-object v3, p2, v1

    check-cast v3, Lc/e/a/a/j/b/g$a;

    iget-object v3, v3, Lc/e/a/a/j/b/g$a;->a:Lc/e/a/a/j/b/g;

    aget-object v2, p2, v2

    if-ne v3, v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_4

    .line 65
    aget-object v2, p2, v1

    instance-of v2, v2, Lc/e/a/a/j/b/g$a;

    if-eqz v2, :cond_3

    .line 66
    aget-object v2, p2, v1

    check-cast v2, Lc/e/a/a/j/b/g$a;

    invoke-virtual {v2}, Lc/e/a/a/j/b/g$a;->d()V

    :cond_3
    const/4 v2, 0x0

    .line 67
    aput-object v2, p2, v1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final a([Lc/e/a/a/l/n;[Lc/e/a/a/j/C;[ZJ[I)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 68
    :goto_0
    array-length v2, p1

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    .line 69
    aget-object v2, p2, v1

    if-nez v2, :cond_1

    aget-object v2, p1, v1

    if-eqz v2, :cond_1

    .line 70
    aput-boolean v3, p3, v1

    .line 71
    aget v2, p6, v1

    .line 72
    iget-object v3, p0, Lc/e/a/a/j/c/d;->j:[Lc/e/a/a/j/c/d$a;

    aget-object v2, v3, v2

    .line 73
    iget v3, v2, Lc/e/a/a/j/c/d$a;->c:I

    if-nez v3, :cond_0

    .line 74
    aget-object v3, p1, v1

    invoke-virtual {p0, v2, v3, p4, p5}, Lc/e/a/a/j/c/d;->a(Lc/e/a/a/j/c/d$a;Lc/e/a/a/l/n;J)Lc/e/a/a/j/b/g;

    move-result-object v2

    aput-object v2, p2, v1

    goto :goto_1

    :cond_0
    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 75
    iget-object v3, p0, Lc/e/a/a/j/c/d;->u:Ljava/util/List;

    iget v2, v2, Lc/e/a/a/j/c/d$a;->d:I

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/e/a/a/j/c/a/e;

    .line 76
    aget-object v3, p1, v1

    invoke-interface {v3}, Lc/e/a/a/l/n;->a()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/source/TrackGroup;->a(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    .line 77
    new-instance v4, Lc/e/a/a/j/c/j;

    iget-object v5, p0, Lc/e/a/a/j/c/d;->s:Lc/e/a/a/j/c/a/b;

    iget-boolean v5, v5, Lc/e/a/a/j/c/a/b;->d:Z

    invoke-direct {v4, v2, v3, v5}, Lc/e/a/a/j/c/j;-><init>(Lc/e/a/a/j/c/a/e;Lcom/google/android/exoplayer2/Format;Z)V

    aput-object v4, p2, v1

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    :cond_2
    :goto_2
    array-length p3, p1

    if-ge v0, p3, :cond_5

    .line 79
    aget-object p3, p2, v0

    if-nez p3, :cond_4

    aget-object p3, p1, v0

    if-eqz p3, :cond_4

    .line 80
    aget p3, p6, v0

    .line 81
    iget-object v1, p0, Lc/e/a/a/j/c/d;->j:[Lc/e/a/a/j/c/d$a;

    aget-object p3, v1, p3

    .line 82
    iget v1, p3, Lc/e/a/a/j/c/d$a;->c:I

    if-ne v1, v3, :cond_4

    .line 83
    invoke-virtual {p0, v0, p6}, Lc/e/a/a/j/c/d;->a(I[I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 84
    new-instance p3, Lc/e/a/a/j/s;

    invoke-direct {p3}, Lc/e/a/a/j/s;-><init>()V

    aput-object p3, p2, v0

    goto :goto_3

    .line 85
    :cond_3
    aget-object v1, p2, v1

    check-cast v1, Lc/e/a/a/j/b/g;

    iget p3, p3, Lc/e/a/a/j/c/d$a;->b:I

    .line 86
    invoke-virtual {v1, p4, p5, p3}, Lc/e/a/a/j/b/g;->a(JI)Lc/e/a/a/j/b/g$a;

    move-result-object p3

    aput-object p3, p2, v0

    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public final a([Lc/e/a/a/l/n;[Z[Lc/e/a/a/j/C;)V
    .locals 2

    const/4 v0, 0x0

    .line 52
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    .line 53
    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    aget-boolean v1, p2, v0

    if-nez v1, :cond_3

    .line 54
    :cond_0
    aget-object v1, p3, v0

    instance-of v1, v1, Lc/e/a/a/j/b/g;

    if-eqz v1, :cond_1

    .line 55
    aget-object v1, p3, v0

    check-cast v1, Lc/e/a/a/j/b/g;

    .line 56
    invoke-virtual {v1, p0}, Lc/e/a/a/j/b/g;->a(Lc/e/a/a/j/b/g$b;)V

    goto :goto_1

    .line 57
    :cond_1
    aget-object v1, p3, v0

    instance-of v1, v1, Lc/e/a/a/j/b/g$a;

    if-eqz v1, :cond_2

    .line 58
    aget-object v1, p3, v0

    check-cast v1, Lc/e/a/a/j/b/g$a;

    invoke-virtual {v1}, Lc/e/a/a/j/b/g$a;->d()V

    :cond_2
    :goto_1
    const/4 v1, 0x0

    .line 59
    aput-object v1, p3, v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final a([Lc/e/a/a/l/n;)[I
    .locals 4

    .line 47
    array-length v0, p1

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 48
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 49
    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    .line 50
    iget-object v2, p0, Lc/e/a/a/j/c/d;->i:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v3, p1, v1

    invoke-interface {v3}, Lc/e/a/a/l/n;->a()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->a(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v2

    aput v2, v0, v1

    goto :goto_1

    :cond_0
    const/4 v2, -0x1

    .line 51
    aput v2, v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public b()J
    .locals 2

    .line 2
    iget-object v0, p0, Lc/e/a/a/j/c/d;->r:Lc/e/a/a/j/D;

    invoke-interface {v0}, Lc/e/a/a/j/D;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public b(Lc/e/a/a/j/b/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/a/j/b/g<",
            "Lc/e/a/a/j/c/c;",
            ">;)V"
        }
    .end annotation

    .line 3
    iget-object p1, p0, Lc/e/a/a/j/c/d;->o:Lc/e/a/a/j/u$a;

    invoke-interface {p1, p0}, Lc/e/a/a/j/D$a;->a(Lc/e/a/a/j/D;)V

    return-void
.end method

.method public b(J)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/c/d;->r:Lc/e/a/a/j/D;

    invoke-interface {v0, p1, p2}, Lc/e/a/a/j/D;->b(J)Z

    move-result p1

    return p1
.end method

.method public c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/c/d;->l:Lc/e/a/a/j/c/k;

    invoke-virtual {v0}, Lc/e/a/a/j/c/k;->d()V

    .line 2
    iget-object v0, p0, Lc/e/a/a/j/c/d;->p:[Lc/e/a/a/j/b/g;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    invoke-virtual {v3, p0}, Lc/e/a/a/j/b/g;->a(Lc/e/a/a/j/b/g$b;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lc/e/a/a/j/c/d;->o:Lc/e/a/a/j/u$a;

    .line 5
    iget-object v0, p0, Lc/e/a/a/j/c/d;->n:Lc/e/a/a/j/w$a;

    invoke-virtual {v0}, Lc/e/a/a/j/w$a;->b()V

    return-void
.end method

.method public c(J)V
    .locals 1

    .line 6
    iget-object v0, p0, Lc/e/a/a/j/c/d;->r:Lc/e/a/a/j/D;

    invoke-interface {v0, p1, p2}, Lc/e/a/a/j/D;->c(J)V

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/c/d;->g:Lc/e/a/a/n/x;

    invoke-interface {v0}, Lc/e/a/a/n/x;->a()V

    return-void
.end method

.method public e()J
    .locals 2

    .line 1
    iget-boolean v0, p0, Lc/e/a/a/j/c/d;->v:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/e/a/a/j/c/d;->n:Lc/e/a/a/j/w$a;

    invoke-virtual {v0}, Lc/e/a/a/j/w$a;->c()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lc/e/a/a/j/c/d;->v:Z

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public f()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/c/d;->i:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public g()J
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/c/d;->r:Lc/e/a/a/j/D;

    invoke-interface {v0}, Lc/e/a/a/j/D;->g()J

    move-result-wide v0

    return-wide v0
.end method
