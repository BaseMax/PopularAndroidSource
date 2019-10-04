.class public final Lh/a/d$d;
.super Lh/a/d;
.source "AbstractList.kt"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lh/a/d<",
        "TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field public b:I

.field public final c:Lh/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a/d<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final d:I


# direct methods
.method public constructor <init>(Lh/a/d;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/a/d<",
            "+TE;>;II)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lh/a/d;-><init>()V

    iput-object p1, p0, Lh/a/d$d;->c:Lh/a/d;

    iput p2, p0, Lh/a/d$d;->d:I

    .line 2
    sget-object p1, Lh/a/d;->a:Lh/a/d$a;

    iget p2, p0, Lh/a/d$d;->d:I

    iget-object v0, p0, Lh/a/d$d;->c:Lh/a/d;

    invoke-virtual {v0}, Lh/a/a;->size()I

    move-result v0

    invoke-virtual {p1, p2, p3, v0}, Lh/a/d$a;->a(III)V

    .line 3
    iget p1, p0, Lh/a/d$d;->d:I

    sub-int/2addr p3, p1

    iput p3, p0, Lh/a/d$d;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lh/a/d$d;->b:I

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    sget-object v0, Lh/a/d;->a:Lh/a/d$a;

    iget v1, p0, Lh/a/d$d;->b:I

    invoke-virtual {v0, p1, v1}, Lh/a/d$a;->a(II)V

    .line 2
    iget-object v0, p0, Lh/a/d$d;->c:Lh/a/d;

    iget v1, p0, Lh/a/d$d;->d:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lh/a/d;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
