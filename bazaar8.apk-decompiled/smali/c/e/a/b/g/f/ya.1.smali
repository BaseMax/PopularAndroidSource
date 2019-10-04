.class public final Lc/e/a/b/g/f/ya;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroid/net/Uri;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Z

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public final i:Lc/e/a/b/g/f/Ba;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/a/b/g/f/Ba<",
            "Landroid/content/Context;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 10

    const/4 v1, 0x0

    const-string v3, ""

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v2, p1

    .line 1
    invoke-direct/range {v0 .. v9}, Lc/e/a/b/g/f/ya;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZZZLc/e/a/b/g/f/Ba;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZZZLc/e/a/b/g/f/Ba;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZ",
            "Lc/e/a/b/g/f/Ba<",
            "Landroid/content/Context;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lc/e/a/b/g/f/ya;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lc/e/a/b/g/f/ya;->b:Landroid/net/Uri;

    .line 5
    iput-object p3, p0, Lc/e/a/b/g/f/ya;->c:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lc/e/a/b/g/f/ya;->d:Ljava/lang/String;

    const/4 p2, 0x0

    .line 7
    iput-boolean p2, p0, Lc/e/a/b/g/f/ya;->e:Z

    .line 8
    iput-boolean p2, p0, Lc/e/a/b/g/f/ya;->f:Z

    .line 9
    iput-boolean p2, p0, Lc/e/a/b/g/f/ya;->g:Z

    .line 10
    iput-boolean p2, p0, Lc/e/a/b/g/f/ya;->h:Z

    .line 11
    iput-object p1, p0, Lc/e/a/b/g/f/ya;->i:Lc/e/a/b/g/f/Ba;

    return-void
.end method

.method public static synthetic a(Lc/e/a/b/g/f/ya;)Landroid/net/Uri;
    .locals 0

    .line 6
    iget-object p0, p0, Lc/e/a/b/g/f/ya;->b:Landroid/net/Uri;

    return-object p0
.end method

.method public static synthetic b(Lc/e/a/b/g/f/ya;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/e/a/b/g/f/ya;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic c(Lc/e/a/b/g/f/ya;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/e/a/b/g/f/ya;->c:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;D)Lc/e/a/b/g/f/sa;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D)",
            "Lc/e/a/b/g/f/sa<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 4
    invoke-static {p0, p1, p2, p3}, Lc/e/a/b/g/f/sa;->b(Lc/e/a/b/g/f/ya;Ljava/lang/String;D)Lc/e/a/b/g/f/sa;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;I)Lc/e/a/b/g/f/sa;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lc/e/a/b/g/f/sa<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 3
    invoke-static {p0, p1, p2}, Lc/e/a/b/g/f/sa;->b(Lc/e/a/b/g/f/ya;Ljava/lang/String;I)Lc/e/a/b/g/f/sa;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;J)Lc/e/a/b/g/f/sa;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lc/e/a/b/g/f/sa<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3}, Lc/e/a/b/g/f/sa;->b(Lc/e/a/b/g/f/ya;Ljava/lang/String;J)Lc/e/a/b/g/f/sa;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lc/e/a/b/g/f/sa;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lc/e/a/b/g/f/sa<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5
    invoke-static {p0, p1, p2}, Lc/e/a/b/g/f/sa;->b(Lc/e/a/b/g/f/ya;Ljava/lang/String;Ljava/lang/String;)Lc/e/a/b/g/f/sa;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Z)Lc/e/a/b/g/f/sa;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lc/e/a/b/g/f/sa<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-static {p0, p1, p2}, Lc/e/a/b/g/f/sa;->b(Lc/e/a/b/g/f/ya;Ljava/lang/String;Z)Lc/e/a/b/g/f/sa;

    move-result-object p1

    return-object p1
.end method
