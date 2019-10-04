.class public final Lc/e/a/b/d/a/a/N;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lc/e/a/b/d/a/a$d;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:Lc/e/a/b/d/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/a/b/d/a/a<",
            "TO;>;"
        }
    .end annotation
.end field

.field public final d:Lc/e/a/b/d/a/a$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/e/a/b/d/a/a;Lc/e/a/b/d/a/a$d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/b/d/a/a<",
            "TO;>;TO;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lc/e/a/b/d/a/a/N;->a:Z

    .line 3
    iput-object p1, p0, Lc/e/a/b/d/a/a/N;->c:Lc/e/a/b/d/a/a;

    .line 4
    iput-object p2, p0, Lc/e/a/b/d/a/a/N;->d:Lc/e/a/b/d/a/a$d;

    const/4 p1, 0x2

    .line 5
    new-array p1, p1, [Ljava/lang/Object;

    iget-object p2, p0, Lc/e/a/b/d/a/a/N;->c:Lc/e/a/b/d/a/a;

    aput-object p2, p1, v0

    iget-object p2, p0, Lc/e/a/b/d/a/a/N;->d:Lc/e/a/b/d/a/a$d;

    const/4 v0, 0x1

    aput-object p2, p1, v0

    invoke-static {p1}, Lc/e/a/b/d/d/q;->a([Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lc/e/a/b/d/a/a/N;->b:I

    return-void
.end method

.method public static a(Lc/e/a/b/d/a/a;Lc/e/a/b/d/a/a$d;)Lc/e/a/b/d/a/a/N;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lc/e/a/b/d/a/a$d;",
            ">(",
            "Lc/e/a/b/d/a/a<",
            "TO;>;TO;)",
            "Lc/e/a/b/d/a/a/N<",
            "TO;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/e/a/b/d/a/a/N;

    invoke-direct {v0, p0, p1}, Lc/e/a/b/d/a/a/N;-><init>(Lc/e/a/b/d/a/a;Lc/e/a/b/d/a/a$d;)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lc/e/a/b/d/a/a/N;->c:Lc/e/a/b/d/a/a;

    invoke-virtual {v0}, Lc/e/a/b/d/a/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lc/e/a/b/d/a/a/N;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lc/e/a/b/d/a/a/N;

    .line 3
    iget-boolean v1, p0, Lc/e/a/b/d/a/a/N;->a:Z

    if-nez v1, :cond_2

    iget-boolean v1, p1, Lc/e/a/b/d/a/a/N;->a:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lc/e/a/b/d/a/a/N;->c:Lc/e/a/b/d/a/a;

    iget-object v3, p1, Lc/e/a/b/d/a/a/N;->c:Lc/e/a/b/d/a/a;

    .line 4
    invoke-static {v1, v3}, Lc/e/a/b/d/d/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/e/a/b/d/a/a/N;->d:Lc/e/a/b/d/a/a$d;

    iget-object p1, p1, Lc/e/a/b/d/a/a/N;->d:Lc/e/a/b/d/a/a$d;

    .line 5
    invoke-static {v1, p1}, Lc/e/a/b/d/d/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lc/e/a/b/d/a/a/N;->b:I

    return v0
.end method
