.class public final Li/a/c/C;
.super Ljava/lang/Object;
.source "ThreadContext.kt"


# instance fields
.field public a:[Ljava/lang/Object;

.field public b:I

.field public final c:Lh/c/e;


# direct methods
.method public constructor <init>(Lh/c/e;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li/a/c/C;->c:Lh/c/e;

    .line 2
    new-array p1, p2, [Ljava/lang/Object;

    iput-object p1, p0, Li/a/c/C;->a:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Lh/c/e;
    .locals 1

    .line 1
    iget-object v0, p0, Li/a/c/C;->c:Lh/c/e;

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 3

    .line 2
    iget-object v0, p0, Li/a/c/C;->a:[Ljava/lang/Object;

    iget v1, p0, Li/a/c/C;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Li/a/c/C;->b:I

    aput-object p1, v0, v1

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Li/a/c/C;->b:I

    return-void
.end method

.method public final c()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Li/a/c/C;->a:[Ljava/lang/Object;

    iget v1, p0, Li/a/c/C;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Li/a/c/C;->b:I

    aget-object v0, v0, v1

    return-object v0
.end method
