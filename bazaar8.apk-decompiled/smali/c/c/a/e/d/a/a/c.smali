.class public final Lc/c/a/e/d/a/a/c;
.super Ljava/lang/Object;
.source "TokenLocalDataSource.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/e/d/a/a/c$a;
    }
.end annotation


# static fields
.field public static final a:Lc/c/a/e/d/a/a/c$a;


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public final d:Lc/c/a/e/d/b/I;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/c/a/e/d/a/a/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/c/a/e/d/a/a/c$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lc/c/a/e/d/a/a/c;->a:Lc/c/a/e/d/a/a/c$a;

    return-void
.end method

.method public constructor <init>(Lc/c/a/e/d/b/I;)V
    .locals 2

    const-string v0, "sharedDataSource"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/a/a/c;->d:Lc/c/a/e/d/b/I;

    .line 2
    iget-object p1, p0, Lc/c/a/e/d/a/a/c;->d:Lc/c/a/e/d/b/I;

    const-string v0, ""

    const-string v1, "refreshToken"

    invoke-virtual {p1, v1, v0}, Lc/c/a/e/d/b/I;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lc/c/a/e/d/a/a/c;->b:Ljava/lang/String;

    .line 3
    iget-object p1, p0, Lc/c/a/e/d/a/a/c;->d:Lc/c/a/e/d/b/I;

    const-string v1, "accessToken"

    invoke-virtual {p1, v1, v0}, Lc/c/a/e/d/b/I;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lc/c/a/e/d/a/a/c;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const-string v0, ""

    .line 3
    invoke-virtual {p0, v0}, Lc/c/a/e/d/a/a/c;->b(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, v0}, Lc/c/a/e/d/a/a/c;->a(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lc/c/a/e/d/a/a/c;->d:Lc/c/a/e/d/b/I;

    invoke-virtual {v0}, Lc/c/a/e/d/b/I;->a()V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 7

    const-string v0, "token"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lc/c/a/e/d/a/a/c;->c:Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lc/c/a/e/d/a/a/c;->d:Lc/c/a/e/d/b/I;

    const-string v2, "accessToken"

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lc/c/a/e/d/b/I;->a(Lc/c/a/e/d/b/I;Ljava/lang/String;Ljava/lang/Object;ZILjava/lang/Object;)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lc/c/a/e/d/a/a/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 7

    const-string v0, "token"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lc/c/a/e/d/a/a/c;->b:Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lc/c/a/e/d/a/a/c;->d:Lc/c/a/e/d/b/I;

    const-string v2, "refreshToken"

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lc/c/a/e/d/b/I;->a(Lc/c/a/e/d/b/I;Ljava/lang/String;Ljava/lang/Object;ZILjava/lang/Object;)V

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/a/a/c;->b:Ljava/lang/String;

    return-object v0
.end method
