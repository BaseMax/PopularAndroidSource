.class public final Lc/c/a/e/i/a$b;
.super Ljava/lang/Object;
.source "PlaceLocalStorageDataSource.kt"

# interfaces
.implements Lh/g/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/e/i/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lh/g/c<",
        "Lc/c/a/e/i/a;",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public b:Z

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/i/a$b;->c:Ljava/lang/String;

    iput-object p2, p0, Lc/c/a/e/i/a$b;->d:Ljava/lang/Object;

    .line 2
    iget-object p1, p0, Lc/c/a/e/i/a$b;->d:Ljava/lang/Object;

    iput-object p1, p0, Lc/c/a/e/i/a$b;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lc/c/a/e/i/a;Lh/i/i;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/e/i/a;",
            "Lh/i/i<",
            "*>;)TT;"
        }
    .end annotation

    const-string v0, "thisRef"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "property"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-boolean p2, p0, Lc/c/a/e/i/a$b;->b:Z

    if-nez p2, :cond_0

    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p0, Lc/c/a/e/i/a$b;->b:Z

    .line 5
    invoke-static {p1}, Lc/c/a/e/i/a;->a(Lc/c/a/e/i/a;)Lc/c/a/e/d/b/I;

    move-result-object p1

    iget-object p2, p0, Lc/c/a/e/i/a$b;->c:Ljava/lang/String;

    iget-object v0, p0, Lc/c/a/e/i/a$b;->d:Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lc/c/a/e/d/b/I;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/e/i/a$b;->a:Ljava/lang/Object;

    .line 6
    :cond_0
    iget-object p1, p0, Lc/c/a/e/i/a$b;->a:Ljava/lang/Object;

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lh/i/i;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lc/c/a/e/i/a;

    invoke-virtual {p0, p1, p2}, Lc/c/a/e/i/a$b;->a(Lc/c/a/e/i/a;Lh/i/i;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Lc/c/a/e/i/a;Lh/i/i;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/e/i/a;",
            "Lh/i/i<",
            "*>;TT;)V"
        }
    .end annotation

    const-string v0, "thisRef"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "property"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-static {p1}, Lc/c/a/e/i/a;->a(Lc/c/a/e/i/a;)Lc/c/a/e/d/b/I;

    move-result-object v1

    iget-object v2, p0, Lc/c/a/e/i/a$b;->c:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v3, p3

    invoke-static/range {v1 .. v6}, Lc/c/a/e/d/b/I;->a(Lc/c/a/e/d/b/I;Ljava/lang/String;Ljava/lang/Object;ZILjava/lang/Object;)V

    .line 8
    iput-object p3, p0, Lc/c/a/e/i/a$b;->a:Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lh/i/i;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lc/c/a/e/i/a;

    invoke-virtual {p0, p1, p2, p3}, Lc/c/a/e/i/a$b;->a(Lc/c/a/e/i/a;Lh/i/i;Ljava/lang/Object;)V

    return-void
.end method
