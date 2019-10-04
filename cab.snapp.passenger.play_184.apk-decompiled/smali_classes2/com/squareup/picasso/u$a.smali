.class final Lcom/squareup/picasso/u$a;
.super Ljava/util/concurrent/FutureTask;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/picasso/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "Lcom/squareup/picasso/c;",
        ">;",
        "Ljava/lang/Comparable<",
        "Lcom/squareup/picasso/u$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/squareup/picasso/c;


# direct methods
.method constructor <init>(Lcom/squareup/picasso/c;)V
    .locals 1

    const/4 v0, 0x0

    .line 96
    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 97
    iput-object p1, p0, Lcom/squareup/picasso/u$a;->a:Lcom/squareup/picasso/c;

    return-void
.end method


# virtual methods
.method public final compareTo(Lcom/squareup/picasso/u$a;)I
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/squareup/picasso/u$a;->a:Lcom/squareup/picasso/c;

    .line 1410
    iget-object v0, v0, Lcom/squareup/picasso/c;->s:Lcom/squareup/picasso/Picasso$Priority;

    .line 103
    iget-object v1, p1, Lcom/squareup/picasso/u$a;->a:Lcom/squareup/picasso/c;

    .line 2410
    iget-object v1, v1, Lcom/squareup/picasso/c;->s:Lcom/squareup/picasso/Picasso$Priority;

    if-ne v0, v1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/squareup/picasso/u$a;->a:Lcom/squareup/picasso/c;

    iget v0, v0, Lcom/squareup/picasso/c;->a:I

    iget-object p1, p1, Lcom/squareup/picasso/u$a;->a:Lcom/squareup/picasso/c;

    iget p1, p1, Lcom/squareup/picasso/c;->a:I

    sub-int/2addr v0, p1

    return v0

    :cond_0
    invoke-virtual {v1}, Lcom/squareup/picasso/Picasso$Priority;->ordinal()I

    move-result p1

    invoke-virtual {v0}, Lcom/squareup/picasso/Picasso$Priority;->ordinal()I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 91
    check-cast p1, Lcom/squareup/picasso/u$a;

    invoke-virtual {p0, p1}, Lcom/squareup/picasso/u$a;->compareTo(Lcom/squareup/picasso/u$a;)I

    move-result p1

    return p1
.end method
