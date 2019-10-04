.class public final Lc/c/a/l/a/a$a;
.super Ljava/lang/Object;
.source "CafeTrack.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/l/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:[Lh/i/i;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lh/i/i;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lc/c/a/l/a/a$a;

    invoke-static {v2}, Lh/f/b/k;->a(Ljava/lang/Class;)Lh/i/c;

    move-result-object v2

    const-string v3, "qualityInfo"

    const-string v4, "getQualityInfo()Landroid/util/SparseArray;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lh/i/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lh/f/b/k;->a(Lkotlin/jvm/internal/PropertyReference1;)Lh/i/j;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lc/c/a/l/a/a$a;->a:[Lh/i/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lh/f/b/f;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lc/c/a/l/a/a$a;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lc/c/a/l/a/a$a;Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc/c/a/l/a/a$a;->a(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(II)I
    .locals 0

    sub-int/2addr p1, p2

    .line 11
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    return p1
.end method

.method public final a()Landroid/util/SparseArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lc/c/a/l/a/a;->a()Lh/c;

    move-result-object v0

    sget-object v1, Lc/c/a/l/a/a;->c:Lc/c/a/l/a/a$a;

    sget-object v1, Lc/c/a/l/a/a$a;->a:[Lh/i/i;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lh/c;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    return-object v0
.end method

.method public final a(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;
    .locals 5

    .line 2
    iget p1, p1, Lcom/google/android/exoplayer2/Format;->o:I

    .line 3
    invoke-virtual {p0}, Lc/c/a/l/a/a$a;->a()Landroid/util/SparseArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Lc/c/a/l/a/a$a;->a()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 5
    invoke-virtual {p0, p1, v1}, Lc/c/a/l/a/a$a;->a(II)I

    move-result v1

    .line 6
    invoke-virtual {p0}, Lc/c/a/l/a/a$a;->a()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x1

    :goto_0
    if-ge v3, v2, :cond_1

    .line 7
    invoke-virtual {p0}, Lc/c/a/l/a/a$a;->a()Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 8
    invoke-virtual {p0, p1, v4}, Lc/c/a/l/a/a$a;->a(II)I

    move-result v4

    if-ge v4, v1, :cond_0

    .line 9
    invoke-virtual {p0}, Lc/c/a/l/a/a$a;->a()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move v1, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "closestQualityString"

    .line 10
    invoke-static {v0, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
