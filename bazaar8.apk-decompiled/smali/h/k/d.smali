.class public final Lh/k/d;
.super Ljava/lang/Object;
.source "Strings.kt"

# interfaces
.implements Ljava/util/Iterator;
.implements Lh/f/b/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh/k/e;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lh/h/d;",
        ">;",
        "Lh/f/b/a/a;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Lh/h/d;

.field public e:I

.field public final synthetic f:Lh/k/e;


# direct methods
.method public constructor <init>(Lh/k/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lh/k/d;->f:Lh/k/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lh/k/d;->a:I

    .line 3
    invoke-static {p1}, Lh/k/e;->d(Lh/k/e;)I

    move-result v0

    invoke-static {p1}, Lh/k/e;->b(Lh/k/e;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lh/h/g;->a(III)I

    move-result p1

    iput p1, p0, Lh/k/d;->b:I

    .line 4
    iget p1, p0, Lh/k/d;->b:I

    iput p1, p0, Lh/k/d;->c:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    iget v0, p0, Lh/k/d;->c:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 2
    iput v1, p0, Lh/k/d;->a:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lh/k/d;->d:Lh/h/d;

    goto/16 :goto_1

    .line 4
    :cond_0
    iget-object v0, p0, Lh/k/d;->f:Lh/k/e;

    invoke-static {v0}, Lh/k/e;->c(Lh/k/e;)I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-lez v0, :cond_1

    iget v0, p0, Lh/k/d;->e:I

    add-int/2addr v0, v3

    iput v0, p0, Lh/k/d;->e:I

    iget v0, p0, Lh/k/d;->e:I

    iget-object v4, p0, Lh/k/d;->f:Lh/k/e;

    invoke-static {v4}, Lh/k/e;->c(Lh/k/e;)I

    move-result v4

    if-ge v0, v4, :cond_2

    :cond_1
    iget v0, p0, Lh/k/d;->c:I

    iget-object v4, p0, Lh/k/d;->f:Lh/k/e;

    invoke-static {v4}, Lh/k/e;->b(Lh/k/e;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-le v0, v4, :cond_3

    .line 5
    :cond_2
    iget v0, p0, Lh/k/d;->b:I

    new-instance v1, Lh/h/d;

    iget-object v4, p0, Lh/k/d;->f:Lh/k/e;

    invoke-static {v4}, Lh/k/e;->b(Lh/k/e;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Lh/k/n;->c(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-direct {v1, v0, v4}, Lh/h/d;-><init>(II)V

    iput-object v1, p0, Lh/k/d;->d:Lh/h/d;

    .line 6
    iput v2, p0, Lh/k/d;->c:I

    goto :goto_0

    .line 7
    :cond_3
    iget-object v0, p0, Lh/k/d;->f:Lh/k/e;

    invoke-static {v0}, Lh/k/e;->a(Lh/k/e;)Lh/f/a/c;

    move-result-object v0

    iget-object v4, p0, Lh/k/d;->f:Lh/k/e;

    invoke-static {v4}, Lh/k/e;->b(Lh/k/e;)Ljava/lang/CharSequence;

    move-result-object v4

    iget v5, p0, Lh/k/d;->c:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lh/f/a/c;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    if-nez v0, :cond_4

    .line 8
    iget v0, p0, Lh/k/d;->b:I

    new-instance v1, Lh/h/d;

    iget-object v4, p0, Lh/k/d;->f:Lh/k/e;

    invoke-static {v4}, Lh/k/e;->b(Lh/k/e;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Lh/k/n;->c(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-direct {v1, v0, v4}, Lh/h/d;-><init>(II)V

    iput-object v1, p0, Lh/k/d;->d:Lh/h/d;

    .line 9
    iput v2, p0, Lh/k/d;->c:I

    goto :goto_0

    .line 10
    :cond_4
    invoke-virtual {v0}, Lkotlin/Pair;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v0}, Lkotlin/Pair;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 11
    iget v4, p0, Lh/k/d;->b:I

    invoke-static {v4, v2}, Lh/h/g;->d(II)Lh/h/d;

    move-result-object v4

    iput-object v4, p0, Lh/k/d;->d:Lh/h/d;

    add-int/2addr v2, v0

    .line 12
    iput v2, p0, Lh/k/d;->b:I

    .line 13
    iget v2, p0, Lh/k/d;->b:I

    if-nez v0, :cond_5

    const/4 v1, 0x1

    :cond_5
    add-int/2addr v2, v1

    iput v2, p0, Lh/k/d;->c:I

    .line 14
    :goto_0
    iput v3, p0, Lh/k/d;->a:I

    :goto_1
    return-void
.end method

.method public hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, Lh/k/d;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lh/k/d;->a()V

    .line 3
    :cond_0
    iget v0, p0, Lh/k/d;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public next()Lh/h/d;
    .locals 3

    .line 2
    iget v0, p0, Lh/k/d;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lh/k/d;->a()V

    .line 4
    :cond_0
    iget v0, p0, Lh/k/d;->a:I

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lh/k/d;->d:Lh/h/d;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 6
    iput-object v2, p0, Lh/k/d;->d:Lh/h/d;

    .line 7
    iput v1, p0, Lh/k/d;->a:I

    return-object v0

    .line 8
    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.ranges.IntRange"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lh/k/d;->next()Lh/h/d;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
