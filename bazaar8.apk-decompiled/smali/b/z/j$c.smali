.class public Lb/z/j$c;
.super Ljava/lang/Object;
.source "InvalidationTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/z/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field public final a:[I

.field public final b:[Ljava/lang/String;

.field public final c:Lb/z/j$b;

.field public final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb/z/j$b;[I[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/z/j$c;->c:Lb/z/j$b;

    .line 3
    iput-object p2, p0, Lb/z/j$c;->a:[I

    .line 4
    iput-object p3, p0, Lb/z/j$c;->b:[Ljava/lang/String;

    .line 5
    array-length p1, p2

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 6
    new-instance p1, Lb/f/d;

    invoke-direct {p1}, Lb/f/d;-><init>()V

    .line 7
    iget-object p2, p0, Lb/z/j$c;->b:[Ljava/lang/String;

    const/4 p3, 0x0

    aget-object p2, p2, p3

    invoke-virtual {p1, p2}, Lb/f/d;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lb/z/j$c;->d:Ljava/util/Set;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lb/z/j$c;->d:Ljava/util/Set;

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/z/j$c;->a:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 2
    iget-object v3, p0, Lb/z/j$c;->a:[I

    aget v3, v3, v2

    .line 3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 4
    iget-object v1, p0, Lb/z/j$c;->d:Ljava/util/Set;

    goto :goto_1

    :cond_0
    if-nez v1, :cond_1

    .line 5
    new-instance v1, Lb/f/d;

    invoke-direct {v1, v0}, Lb/f/d;-><init>(I)V

    .line 6
    :cond_1
    iget-object v3, p0, Lb/z/j$c;->b:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    .line 7
    iget-object p1, p0, Lb/z/j$c;->c:Lb/z/j$b;

    invoke-virtual {p1, v1}, Lb/z/j$b;->a(Ljava/util/Set;)V

    :cond_4
    return-void
.end method

.method public a([Ljava/lang/String;)V
    .locals 11

    .line 8
    iget-object v0, p0, Lb/z/j$c;->b:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    .line 9
    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_5

    aget-object v4, p1, v2

    .line 10
    iget-object v5, p0, Lb/z/j$c;->b:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 11
    iget-object v3, p0, Lb/z/j$c;->d:Ljava/util/Set;

    goto :goto_4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :cond_1
    new-instance v0, Lb/f/d;

    invoke-direct {v0}, Lb/f/d;-><init>()V

    .line 13
    array-length v2, p1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_4

    aget-object v5, p1, v4

    .line 14
    iget-object v6, p0, Lb/z/j$c;->b:[Ljava/lang/String;

    array-length v7, v6

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_3

    aget-object v9, v6, v8

    .line 15
    invoke-virtual {v9, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 16
    invoke-virtual {v0, v9}, Lb/f/d;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 17
    :cond_4
    invoke-virtual {v0}, Lb/f/d;->size()I

    move-result p1

    if-lez p1, :cond_5

    move-object v3, v0

    :cond_5
    :goto_4
    if-eqz v3, :cond_6

    .line 18
    iget-object p1, p0, Lb/z/j$c;->c:Lb/z/j$b;

    invoke-virtual {p1, v3}, Lb/z/j$b;->a(Ljava/util/Set;)V

    :cond_6
    return-void
.end method
