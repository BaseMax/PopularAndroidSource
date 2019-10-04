.class public final Lc/c/a/d$l;
.super Ljava/lang/Object;
.source "MainNavDirections.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "l"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lh/f/b/f;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lc/c/a/d$l;-><init>()V

    return-void
.end method

.method public static synthetic a(Lc/c/a/d$l;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Lb/w/p;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lc/c/a/d$l;->c(Ljava/lang/String;ILjava/lang/String;)Lb/w/p;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lc/c/a/d$l;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lb/w/p;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 10
    :cond_0
    invoke-virtual {p0, p1, p2}, Lc/c/a/d$l;->a(Ljava/lang/String;Ljava/lang/String;)Lb/w/p;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lc/c/a/d$l;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lb/w/p;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lc/c/a/d$l;->a(Ljava/lang/String;Ljava/lang/String;Z)Lb/w/p;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lc/c/a/d$l;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lb/w/p;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const-string p1, "home"

    :cond_0
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_1

    const/4 p2, 0x1

    .line 6
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lc/c/a/d$l;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lb/w/p;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lc/c/a/d$l;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lb/w/p;
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    .line 1
    :cond_1
    invoke-virtual {p0, p1, p2}, Lc/c/a/d$l;->b(Ljava/lang/String;Ljava/lang/String;)Lb/w/p;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lb/w/p;
    .locals 2

    .line 8
    new-instance v0, Lb/w/a;

    const v1, 0x7f0a004c

    invoke-direct {v0, v1}, Lb/w/a;-><init>(I)V

    return-object v0
.end method

.method public final a(I)Lb/w/p;
    .locals 1

    .line 9
    new-instance v0, Lc/c/a/d$c;

    invoke-direct {v0, p1}, Lc/c/a/d$c;-><init>(I)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;)Lb/w/p;
    .locals 1

    const-string v0, "episodeId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referrer"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v0, Lc/c/a/d$d;

    invoke-direct {v0, p1, p2, p3}, Lc/c/a/d$d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lb/w/p;
    .locals 1

    const-string v0, "description"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v0, Lc/c/a/d$f;

    invoke-direct {v0, p1, p2}, Lc/c/a/d$f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lb/w/p;
    .locals 1

    const-string v0, "castId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "titleName"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referrer"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lc/c/a/d$b;

    invoke-direct {v0, p1, p2, p3}, Lc/c/a/d$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Z)Lb/w/p;
    .locals 1

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referrer"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lc/c/a/d$a;

    invoke-direct {v0, p1, p2, p3}, Lc/c/a/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lb/w/p;
    .locals 1

    const-string v0, "slug"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolbarName"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referrer"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lc/c/a/d$e;

    invoke-direct {v0, p1, p2, p3, p4}, Lc/c/a/d$e;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final b()Lb/w/p;
    .locals 2

    .line 5
    new-instance v0, Lb/w/a;

    const v1, 0x7f0a004f

    invoke-direct {v0, v1}, Lb/w/a;-><init>(I)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;ILjava/lang/String;)Lb/w/p;
    .locals 1

    const-string v0, "seasonId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referrer"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lc/c/a/d$i;

    invoke-direct {v0, p1, p2, p3}, Lc/c/a/d$i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Lb/w/p;
    .locals 1

    .line 2
    new-instance v0, Lc/c/a/d$h;

    invoke-direct {v0, p1, p2}, Lc/c/a/d$h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lb/w/p;
    .locals 1

    .line 3
    new-instance v0, Lc/c/a/d$g;

    invoke-direct {v0, p1, p2, p3}, Lc/c/a/d$g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final c()Lb/w/p;
    .locals 2

    .line 3
    new-instance v0, Lb/w/a;

    const v1, 0x7f0a0053

    invoke-direct {v0, v1}, Lb/w/a;-><init>(I)V

    return-object v0
.end method

.method public final c(Ljava/lang/String;ILjava/lang/String;)Lb/w/p;
    .locals 1

    const-string v0, "seriesId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referrer"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lc/c/a/d$j;

    invoke-direct {v0, p1, p2, p3}, Lc/c/a/d$j;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)Lb/w/p;
    .locals 1

    const-string v0, "videoId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referrer"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lc/c/a/d$k;

    invoke-direct {v0, p1, p2}, Lc/c/a/d$k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final d()Lb/w/p;
    .locals 2

    .line 1
    new-instance v0, Lb/w/a;

    const v1, 0x7f0a0055

    invoke-direct {v0, v1}, Lb/w/a;-><init>(I)V

    return-object v0
.end method

.method public final e()Lb/w/p;
    .locals 2

    .line 1
    new-instance v0, Lb/w/a;

    const v1, 0x7f0a0056

    invoke-direct {v0, v1}, Lb/w/a;-><init>(I)V

    return-object v0
.end method

.method public final f()Lb/w/p;
    .locals 2

    .line 1
    new-instance v0, Lb/w/a;

    const v1, 0x7f0a0057

    invoke-direct {v0, v1}, Lb/w/a;-><init>(I)V

    return-object v0
.end method

.method public final g()Lb/w/p;
    .locals 2

    .line 1
    new-instance v0, Lb/w/a;

    const v1, 0x7f0a0058

    invoke-direct {v0, v1}, Lb/w/a;-><init>(I)V

    return-object v0
.end method

.method public final h()Lb/w/p;
    .locals 2

    .line 1
    new-instance v0, Lb/w/a;

    const v1, 0x7f0a0049

    invoke-direct {v0, v1}, Lb/w/a;-><init>(I)V

    return-object v0
.end method

.method public final i()Lb/w/p;
    .locals 2

    .line 1
    new-instance v0, Lb/w/a;

    const v1, 0x7f0a005a

    invoke-direct {v0, v1}, Lb/w/a;-><init>(I)V

    return-object v0
.end method

.method public final j()Lb/w/p;
    .locals 2

    .line 1
    new-instance v0, Lb/w/a;

    const v1, 0x7f0a005b

    invoke-direct {v0, v1}, Lb/w/a;-><init>(I)V

    return-object v0
.end method

.method public final k()Lb/w/p;
    .locals 2

    .line 1
    new-instance v0, Lb/w/a;

    const v1, 0x7f0a0060

    invoke-direct {v0, v1}, Lb/w/a;-><init>(I)V

    return-object v0
.end method

.method public final l()Lb/w/p;
    .locals 2

    .line 1
    new-instance v0, Lb/w/a;

    const v1, 0x7f0a0061

    invoke-direct {v0, v1}, Lb/w/a;-><init>(I)V

    return-object v0
.end method

.method public final m()Lb/w/p;
    .locals 2

    .line 1
    new-instance v0, Lb/w/a;

    const v1, 0x7f0a0063

    invoke-direct {v0, v1}, Lb/w/a;-><init>(I)V

    return-object v0
.end method

.method public final n()Lb/w/p;
    .locals 2

    .line 1
    new-instance v0, Lb/w/a;

    const v1, 0x7f0a0064

    invoke-direct {v0, v1}, Lb/w/a;-><init>(I)V

    return-object v0
.end method
