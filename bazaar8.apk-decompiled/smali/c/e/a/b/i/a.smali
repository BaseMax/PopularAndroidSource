.class public final Lc/e/a/b/i/a;
.super Ljava/lang/Object;

# interfaces
.implements Lc/e/a/b/d/a/a$d$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/b/i/a$a;
    }
.end annotation


# static fields
.field public static final a:Lc/e/a/b/i/a;


# instance fields
.field public final b:Z

.field public final c:Z

.field public final d:Ljava/lang/String;

.field public final e:Z

.field public final f:Ljava/lang/String;

.field public final g:Z

.field public final h:Ljava/lang/Long;

.field public final i:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lc/e/a/b/i/a$a;

    invoke-direct {v0}, Lc/e/a/b/i/a$a;-><init>()V

    .line 2
    new-instance v0, Lc/e/a/b/i/a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v0

    .line 3
    invoke-direct/range {v1 .. v9}, Lc/e/a/b/i/a;-><init>(ZZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;)V

    .line 4
    sput-object v0, Lc/e/a/b/i/a;->a:Lc/e/a/b/i/a;

    return-void
.end method

.method public constructor <init>(ZZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lc/e/a/b/i/a;->b:Z

    .line 3
    iput-boolean p1, p0, Lc/e/a/b/i/a;->c:Z

    const/4 p2, 0x0

    .line 4
    iput-object p2, p0, Lc/e/a/b/i/a;->d:Ljava/lang/String;

    .line 5
    iput-boolean p1, p0, Lc/e/a/b/i/a;->e:Z

    .line 6
    iput-boolean p1, p0, Lc/e/a/b/i/a;->g:Z

    .line 7
    iput-object p2, p0, Lc/e/a/b/i/a;->f:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lc/e/a/b/i/a;->h:Ljava/lang/Long;

    .line 9
    iput-object p2, p0, Lc/e/a/b/i/a;->i:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/i/a;->h:Ljava/lang/Long;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/i/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/i/a;->i:Ljava/lang/Long;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/i/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/e/a/b/i/a;->e:Z

    return v0
.end method

.method public final f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/e/a/b/i/a;->c:Z

    return v0
.end method

.method public final g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/e/a/b/i/a;->b:Z

    return v0
.end method

.method public final h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/e/a/b/i/a;->g:Z

    return v0
.end method
