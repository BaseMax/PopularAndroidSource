.class public final Lc/e/a/b/d/a/a/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Lc/e/a/b/d/a/d$a;
.implements Lc/e/a/b/d/a/d$b;
.implements Lc/e/a/b/d/a/a/V;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/b/d/a/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lc/e/a/b/d/a/a$d;",
        ">",
        "Ljava/lang/Object;",
        "Lc/e/a/b/d/a/d$a;",
        "Lc/e/a/b/d/a/d$b;",
        "Lc/e/a/b/d/a/a/V;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lc/e/a/b/d/a/a/r;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lc/e/a/b/d/a/a$f;

.field public final c:Lc/e/a/b/d/a/a$b;

.field public final d:Lc/e/a/b/d/a/a/N;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/a/b/d/a/a/N<",
            "TO;>;"
        }
    .end annotation
.end field

.field public final e:Lc/e/a/b/d/a/a/m;

.field public final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lc/e/a/b/d/a/a/O;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lc/e/a/b/d/a/a/g<",
            "*>;",
            "Lc/e/a/b/d/a/a/C;",
            ">;"
        }
    .end annotation
.end field

.field public final h:I

.field public final i:Lc/e/a/b/d/a/a/E;

.field public j:Z

.field public final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/e/a/b/d/a/a/c$b;",
            ">;"
        }
    .end annotation
.end field

.field public l:Lcom/google/android/gms/common/ConnectionResult;

.field public final synthetic m:Lc/e/a/b/d/a/a/c;


# direct methods
.method public constructor <init>(Lc/e/a/b/d/a/a/c;Lc/e/a/b/d/a/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/b/d/a/c<",
            "TO;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/e/a/b/d/a/a/c$a;->m:Lc/e/a/b/d/a/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lc/e/a/b/d/a/a/c$a;->a:Ljava/util/Queue;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lc/e/a/b/d/a/a/c$a;->f:Ljava/util/Set;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc/e/a/b/d/a/a/c$a;->g:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/e/a/b/d/a/a/c$a;->k:Ljava/util/List;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lc/e/a/b/d/a/a/c$a;->l:Lcom/google/android/gms/common/ConnectionResult;

    .line 7
    invoke-static {p1}, Lc/e/a/b/d/a/a/c;->a(Lc/e/a/b/d/a/a/c;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {p2, v1, p0}, Lc/e/a/b/d/a/c;->a(Landroid/os/Looper;Lc/e/a/b/d/a/a/c$a;)Lc/e/a/b/d/a/a$f;

    move-result-object v1

    iput-object v1, p0, Lc/e/a/b/d/a/a/c$a;->b:Lc/e/a/b/d/a/a$f;

    .line 8
    iget-object v1, p0, Lc/e/a/b/d/a/a/c$a;->b:Lc/e/a/b/d/a/a$f;

    instance-of v2, v1, Lc/e/a/b/d/d/s;

    if-eqz v2, :cond_0

    .line 9
    check-cast v1, Lc/e/a/b/d/d/s;

    invoke-virtual {v1}, Lc/e/a/b/d/d/s;->z()Lc/e/a/b/d/a/a$h;

    move-result-object v1

    iput-object v1, p0, Lc/e/a/b/d/a/a/c$a;->c:Lc/e/a/b/d/a/a$b;

    goto :goto_0

    .line 10
    :cond_0
    iput-object v1, p0, Lc/e/a/b/d/a/a/c$a;->c:Lc/e/a/b/d/a/a$b;

    .line 11
    :goto_0
    invoke-virtual {p2}, Lc/e/a/b/d/a/c;->c()Lc/e/a/b/d/a/a/N;

    move-result-object v1

    iput-object v1, p0, Lc/e/a/b/d/a/a/c$a;->d:Lc/e/a/b/d/a/a/N;

    .line 12
    new-instance v1, Lc/e/a/b/d/a/a/m;

    invoke-direct {v1}, Lc/e/a/b/d/a/a/m;-><init>()V

    iput-object v1, p0, Lc/e/a/b/d/a/a/c$a;->e:Lc/e/a/b/d/a/a/m;

    .line 13
    invoke-virtual {p2}, Lc/e/a/b/d/a/c;->b()I

    move-result v1

    iput v1, p0, Lc/e/a/b/d/a/a/c$a;->h:I

    .line 14
    iget-object v1, p0, Lc/e/a/b/d/a/a/c$a;->b:Lc/e/a/b/d/a/a$f;

    invoke-interface {v1}, Lc/e/a/b/d/a/a$f;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 15
    invoke-static {p1}, Lc/e/a/b/d/a/a/c;->b(Lc/e/a/b/d/a/a/c;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lc/e/a/b/d/a/a/c;->a(Lc/e/a/b/d/a/a/c;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lc/e/a/b/d/a/c;->a(Landroid/content/Context;Landroid/os/Handler;)Lc/e/a/b/d/a/a/E;

    move-result-object p1

    iput-object p1, p0, Lc/e/a/b/d/a/a/c$a;->i:Lc/e/a/b/d/a/a/E;

    return-void

    .line 16
    :cond_1
    iput-object v0, p0, Lc/e/a/b/d/a/a/c$a;->i:Lc/e/a/b/d/a/a/E;

    return-void
.end method

.method public static synthetic a(Lc/e/a/b/d/a/a/c$a;)V
    .locals 0

    .line 69
    invoke-virtual {p0}, Lc/e/a/b/d/a/a/c$a;->h()V

    return-void
.end method

.method public static synthetic a(Lc/e/a/b/d/a/a/c$a;Lc/e/a/b/d/a/a/c$b;)V
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lc/e/a/b/d/a/a/c$a;->a(Lc/e/a/b/d/a/a/c$b;)V

    return-void
.end method

.method public static synthetic a(Lc/e/a/b/d/a/a/c$a;Z)Z
    .locals 0

    const/4 p1, 0x0

    .line 67
    invoke-virtual {p0, p1}, Lc/e/a/b/d/a/a/c$a;->a(Z)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lc/e/a/b/d/a/a/c$a;)V
    .locals 0

    .line 44
    invoke-virtual {p0}, Lc/e/a/b/d/a/a/c$a;->i()V

    return-void
.end method

.method public static synthetic b(Lc/e/a/b/d/a/a/c$a;Lc/e/a/b/d/a/a/c$b;)V
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lc/e/a/b/d/a/a/c$a;->b(Lc/e/a/b/d/a/a/c$b;)V

    return-void
.end method

.method public static synthetic c(Lc/e/a/b/d/a/a/c$a;)Lc/e/a/b/d/a/a$f;
    .locals 0

    .line 12
    iget-object p0, p0, Lc/e/a/b/d/a/a/c$a;->b:Lc/e/a/b/d/a/a$f;

    return-object p0
.end method


# virtual methods
.method public final a([Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/Feature;
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 52
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_3

    .line 53
    :cond_0
    iget-object v1, p0, Lc/e/a/b/d/a/a/c$a;->b:Lc/e/a/b/d/a/a$f;

    .line 54
    invoke-interface {v1}, Lc/e/a/b/d/a/a$f;->f()[Lcom/google/android/gms/common/Feature;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 55
    new-array v1, v2, [Lcom/google/android/gms/common/Feature;

    .line 56
    :cond_1
    new-instance v3, Lb/f/b;

    array-length v4, v1

    invoke-direct {v3, v4}, Lb/f/b;-><init>(I)V

    .line 57
    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v1, v5

    .line 58
    invoke-virtual {v6}, Lcom/google/android/gms/common/Feature;->x()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/google/android/gms/common/Feature;->y()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 59
    :cond_2
    array-length v1, p1

    :goto_1
    if-ge v2, v1, :cond_5

    aget-object v4, p1, v2

    .line 60
    invoke-virtual {v4}, Lcom/google/android/gms/common/Feature;->x()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 61
    invoke-virtual {v4}, Lcom/google/android/gms/common/Feature;->x()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4}, Lcom/google/android/gms/common/Feature;->y()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-gez v9, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-object v4

    :cond_5
    :goto_3
    return-object v0
.end method

.method public final a()V
    .locals 4

    .line 41
    iget-object v0, p0, Lc/e/a/b/d/a/a/c$a;->m:Lc/e/a/b/d/a/a/c;

    invoke-static {v0}, Lc/e/a/b/d/a/a/c;->a(Lc/e/a/b/d/a/a/c;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lc/e/a/b/d/d/r;->a(Landroid/os/Handler;)V

    .line 42
    iget-object v0, p0, Lc/e/a/b/d/a/a/c$a;->b:Lc/e/a/b/d/a/a$f;

    invoke-interface {v0}, Lc/e/a/b/d/a/a$f;->isConnected()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lc/e/a/b/d/a/a/c$a;->b:Lc/e/a/b/d/a/a$f;

    invoke-interface {v0}, Lc/e/a/b/d/a/a$f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    iget-object v0, p0, Lc/e/a/b/d/a/a/c$a;->m:Lc/e/a/b/d/a/a/c;

    invoke-static {v0}, Lc/e/a/b/d/a/a/c;->e(Lc/e/a/b/d/a/a/c;)Lc/e/a/b/d/d/k;

    move-result-object v0

    iget-object v1, p0, Lc/e/a/b/d/a/a/c$a;->m:Lc/e/a/b/d/a/a/c;

    invoke-static {v1}, Lc/e/a/b/d/a/a/c;->b(Lc/e/a/b/d/a/a/c;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lc/e/a/b/d/a/a/c$a;->b:Lc/e/a/b/d/a/a$f;

    invoke-virtual {v0, v1, v2}, Lc/e/a/b/d/d/k;->a(Landroid/content/Context;Lc/e/a/b/d/a/a$f;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    .line 45
    invoke-virtual {p0, v1}, Lc/e/a/b/d/a/a/c$a;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void

    .line 46
    :cond_1
    new-instance v0, Lc/e/a/b/d/a/a/c$c;

    iget-object v1, p0, Lc/e/a/b/d/a/a/c$a;->m:Lc/e/a/b/d/a/a/c;

    iget-object v2, p0, Lc/e/a/b/d/a/a/c$a;->b:Lc/e/a/b/d/a/a$f;

    iget-object v3, p0, Lc/e/a/b/d/a/a/c$a;->d:Lc/e/a/b/d/a/a/N;

    invoke-direct {v0, v1, v2, v3}, Lc/e/a/b/d/a/a/c$c;-><init>(Lc/e/a/b/d/a/a/c;Lc/e/a/b/d/a/a$f;Lc/e/a/b/d/a/a/N;)V

    .line 47
    iget-object v1, p0, Lc/e/a/b/d/a/a/c$a;->b:Lc/e/a/b/d/a/a$f;

    invoke-interface {v1}, Lc/e/a/b/d/a/a$f;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 48
    iget-object v1, p0, Lc/e/a/b/d/a/a/c$a;->i:Lc/e/a/b/d/a/a/E;

    invoke-virtual {v1, v0}, Lc/e/a/b/d/a/a/E;->a(Lc/e/a/b/d/a/a/H;)V

    .line 49
    :cond_2
    iget-object v1, p0, Lc/e/a/b/d/a/a/c$a;->b:Lc/e/a/b/d/a/a$f;

    invoke-interface {v1, v0}, Lc/e/a/b/d/a/a$f;->a(Lc/e/a/b/d/d/d$c;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final a(Lc/e/a/b/d/a/a/O;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lc/e/a/b/d/a/a/c$a;->m:Lc/e/a/b/d/a/a/c;

    invoke-static {v0}, Lc/e/a/b/d/a/a/c;->a(Lc/e/a/b/d/a/a/c;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lc/e/a/b/d/d/r;->a(Landroid/os/Handler;)V

    .line 51
    iget-object v0, p0, Lc/e/a/b/d/a/a/c$a;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lc/e/a/b/d/a/a/c$b;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lc/e/a/b/d/a/a/c$a;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 63
    :cond_0
    iget-boolean p1, p0, Lc/e/a/b/d/a/a/c$a;->j:Z

    if-nez p1, :cond_2

    .line 64
    iget-object p1, p0, Lc/e/a/b/d/a/a/c$a;->b:Lc/e/a/b/d/a/a$f;

    invoke-interface {p1}, Lc/e/a/b/d/a/a$f;->isConnected()Z

    move-result p1

    if-nez p1, :cond_1

    .line 65
    invoke-virtual {p0}, Lc/e/a/b/d/a/a/c$a;->a()V

    return-void

    .line 66
    :cond_1
    invoke-virtual {p0}, Lc/e/a/b/d/a/a/c$a;->j()V

    :cond_2
    return-void
.end method

.method public final a(Lc/e/a/b/d/a/a/r;)V
    .locals 1

    .line 22
    iget-object v0, p0, Lc/e/a/b/d/a/a/c$a;->m:Lc/e/a/b/d/a/a/c;

    invoke-static {v0}, Lc/e/a/b/d/a/a/c;->a(Lc/e/a/b/d/a/a/c;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lc/e/a/b/d/d/r;->a(Landroid/os/Handler;)V

    .line 23
    iget-object v0, p0, Lc/e/a/b/d/a/a/c$a;->b:Lc/e/a/b/d/a/a$f;

    invoke-interface {v0}, Lc/e/a/b/d/a/a$f;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24
    invoke-virtual {p0, p1}, Lc/e/a/b/d/a/a/c$a;->b(Lc/e/a/b/d/a/a/r;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {p0}, Lc/e/a/b/d/a/a/c$a;->p()V

    return-void

    .line 26
    :cond_0
    iget-object v0, p0, Lc/e/a/b/d/a/a/c$a;->a:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void

    .line 27
    :cond_1
    iget-object v0, p0, Lc/e/a/b/d/a/a/c$a;->a:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object p1, p0, Lc/e/a/b/d/a/a/c$a;->l:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz p1, :cond_2

    .line 29
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->A()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 30
    iget-object p1, p0, Lc/e/a/b/d/a/a/c$a;->l:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {p0, p1}, Lc/e/a/b/d/a/a/c$a;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void

    .line 31
    :cond_2
    invoke-virtual {p0}, Lc/e/a/b/d/a/a/c$a;->a()V

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lc/e/a/b/d/a/a/c$a;->m:Lc/e/a/b/d/a/a/c;

    invoke-static {v0}, Lc/e/a/b/d/a/a/c;->a(Lc/e/a/b/d/a/a/c;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lc/e/a/b/d/d/r;->a(Landroid/os/Handler;)V

    .line 2
    iget-object v0, p0, Lc/e/a/b/d/a/a/c$a;->i:Lc/e/a/b/d/a/a/E;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lc/e/a/b/d/a/a/E;->A()V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lc/e/a/b/d/a/a/c$a;->m()V

    .line 5
    iget-object v0, p0, Lc/e/a/b/d/a/a/c$a;->m:Lc/e/a/b/d/a/a/c;

    invoke-static {v0}, Lc/e/a/b/d/a/a/c;->e(Lc/e/a/b/d/a/a/c;)Lc/e/a/b/d/d/k;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/d/d/k;->a()V

    .line 6
    invoke-virtual {p0, p1}, Lc/e/a/b/d/a/a/c$a;->d(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->x()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 8
    invoke-static {}, Lc/e/a/b/d/a/a/c;->c()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/e/a/b/d/a/a/c$a;->a(Lcom/google/android/gms/common/api/Status;)V

    return-void

    .line 9
    :cond_1
    iget-object v0, p0, Lc/e/a/b/d/a/a/c$a;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iput-object p1, p0, Lc/e/a/b/d/a/a/c$a;->l:Lcom/google/android/gms/common/ConnectionResult;

    return-void

    .line 11
    :cond_2
    invoke-virtual {p0, p1}, Lc/e/a/b/d/a/a/c$a;->c(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 12
    :cond_3
    iget-object v0, p0, Lc/e/a/b/d/a/a/c$a;->m:Lc/e/a/b/d/a/a/c;

    iget v1, p0, Lc/e/a/b/d/a/a/c$a;->h:I

    invoke-virtual {v0, p1, v1}, Lc/e/a/b/d/a/a/c;->b(Lcom/google/android/gms/common/ConnectionResult;I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->x()I

    move-result p1

    const/16 v0, 0x12

    if-ne p1, v0, :cond_4

    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lc/e/a/b/d/a/a/c$a;->j:Z

    .line 15
    :cond_4
    iget-boolean p1, p0, Lc/e/a/b/d/a/a/c$a;->j:Z

    if-eqz p1, :cond_5

    .line 16
    iget-object p1, p0, Lc/e/a/b/d/a/a/c$a;->m:Lc/e/a/b/d/a/a/c;

    invoke-static {p1}, Lc/e/a/b/d/a/a/c;->a(Lc/e/a/b/d/a/a/c;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lc/e/a/b/d/a/a/c$a;->m:Lc/e/a/b/d/a/a/c;

    .line 17
    invoke-static {v0}, Lc/e/a/b/d/a/a/c;->a(Lc/e/a/b/d/a/a/c;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    iget-object v2, p0, Lc/e/a/b/d/a/a/c$a;->d:Lc/e/a/b/d/a/a/N;

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lc/e/a/b/d/a/a/c$a;->m:Lc/e/a/b/d/a/a/c;

    invoke-static {v1}, Lc/e/a/b/d/a/a/c;->c(Lc/e/a/b/d/a/a/c;)J

    move-result-wide v1

    .line 18
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 19
    :cond_5
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x11

    iget-object v1, p0, Lc/e/a/b/d/a/a/c$a;->d:Lc/e/a/b/d/a/a/N;

    .line 20
    invoke-virtual {v1}, Lc/e/a/b/d/a/a/N;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x26

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "API: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not available on this device."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 21
    invoke-virtual {p0, p1}, Lc/e/a/b/d/a/a/c$a;->a(Lcom/google/android/gms/common/api/Status;)V

    :cond_6
    return-void
.end method

.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    .line 32
    iget-object v0, p0, Lc/e/a/b/d/a/a/c$a;->m:Lc/e/a/b/d/a/a/c;

    invoke-static {v0}, Lc/e/a/b/d/a/a/c;->a(Lc/e/a/b/d/a/a/c;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lc/e/a/b/d/d/r;->a(Landroid/os/Handler;)V

    .line 33
    iget-object v0, p0, Lc/e/a/b/d/a/a/c$a;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/a/b/d/a/a/r;

    .line 34
    invoke-virtual {v1, p1}, Lc/e/a/b/d/a/a/r;->a(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    .line 35
    :cond_0
    iget-object p1, p0, Lc/e/a/b/d/a/a/c$a;->a:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method public final a(Z)Z
    .locals 2

    .line 36
    iget-object v0, p0, Lc/e/a/b/d/a/a/c$a;->m:Lc/e/a/b/d/a/a/c;

    invoke-static {v0}, Lc/e/a/b/d/a/a/c;->a(Lc/e/a/b/d/a/a/c;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lc/e/a/b/d/d/r;->a(Landroid/os/Handler;)V

    .line 37
    iget-object v0, p0, Lc/e/a/b/d/a/a/c$a;->b:Lc/e/a/b/d/a/a$f;

    invoke-interface {v0}, Lc/e/a/b/d/a/a$f;->isConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc/e/a/b/d/a/a/c$a;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 38
    iget-object v0, p0, Lc/e/a/b/d/a/a/c$a;->e:Lc/e/a/b/d/a/a/m;

    invoke-virtual {v0}, Lc/e/a/b/d/a/a/m;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 39
    invoke-virtual {p0}, Lc/e/a/b/d/a/a/c$a;->p()V

    :cond_0
    return v1

    .line 40
    :cond_1
    iget-object p1, p0, Lc/e/a/b/d/a/a/c$a;->b:Lc/e/a/b/d/a/a$f;

    invoke-interface {p1}, Lc/e/a/b/d/a/a$f;->a()V

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public final b()I
    .locals 1

    .line 29
    iget v0, p0, Lc/e/a/b/d/a/a/c$a;->h:I

    return v0
.end method

.method public final b(Lc/e/a/b/d/a/a/c$b;)V
    .locals 5

    .line 30
    iget-object v0, p0, Lc/e/a/b/d/a/a/c$a;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31
    iget-object v0, p0, Lc/e/a/b/d/a/a/c$a;->m:Lc/e/a/b/d/a/a/c;

    invoke-static {v0}, Lc/e/a/b/d/a/a/c;->a(Lc/e/a/b/d/a/a/c;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 32
    iget-object v0, p0, Lc/e/a/b/d/a/a/c$a;->m:Lc/e/a/b/d/a/a/c;

    invoke-static {v0}, Lc/e/a/b/d/a/a/c;->a(Lc/e/a/b/d/a/a/c;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 33
    invoke-static {p1}, Lc/e/a/b/d/a/a/c$b;->b(Lc/e/a/b/d/a/a/c$b;)Lcom/google/android/gms/common/Feature;

    move-result-object p1

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lc/e/a/b/d/a/a/c$a;->a:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 35
    iget-object v1, p0, Lc/e/a/b/d/a/a/c$a;->a:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/e/a/b/d/a/a/r;

    .line 36
    instance-of v3, v2, Lc/e/a/b/d/a/a/D;

    if-eqz v3, :cond_0

    .line 37
    move-object v3, v2

    check-cast v3, Lc/e/a/b/d/a/a/D;

    invoke-virtual {v3, p0}, Lc/e/a/b/d/a/a/D;->b(Lc/e/a/b/d/a/a/c$a;)[Lcom/google/android/gms/common/Feature;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 38
    invoke-static {v3, p1}, Lc/e/a/b/d/g/b;->a([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 39
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lc/e/a/b/d/a/a/r;

    .line 41
    iget-object v4, p0, Lc/e/a/b/d/a/a/c$a;->a:Ljava/util/Queue;

    invoke-interface {v4, v3}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 42
    new-instance v4, Lcom/google/android/gms/common/api/UnsupportedApiCallException;

    invoke-direct {v4, p1}, Lcom/google/android/gms/common/api/UnsupportedApiCallException;-><init>(Lcom/google/android/gms/common/Feature;)V

    invoke-virtual {v3, v4}, Lc/e/a/b/d/a/a/r;->a(Ljava/lang/RuntimeException;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final b(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/d/a/a/c$a;->m:Lc/e/a/b/d/a/a/c;

    invoke-static {v0}, Lc/e/a/b/d/a/a/c;->a(Lc/e/a/b/d/a/a/c;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lc/e/a/b/d/d/r;->a(Landroid/os/Handler;)V

    .line 2
    iget-object v0, p0, Lc/e/a/b/d/a/a/c$a;->b:Lc/e/a/b/d/a/a$f;

    invoke-interface {v0}, Lc/e/a/b/d/a/a$f;->a()V

    .line 3
    invoke-virtual {p0, p1}, Lc/e/a/b/d/a/a/c$a;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public final b(Lc/e/a/b/d/a/a/r;)Z
    .locals 5

    .line 4
    instance-of v0, p1, Lc/e/a/b/d/a/a/D;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Lc/e/a/b/d/a/a/c$a;->c(Lc/e/a/b/d/a/a/r;)V

    return v1

    .line 6
    :cond_0
    move-object v0, p1

    check-cast v0, Lc/e/a/b/d/a/a/D;

    .line 7
    invoke-virtual {v0, p0}, Lc/e/a/b/d/a/a/D;->b(Lc/e/a/b/d/a/a/c$a;)[Lcom/google/android/gms/common/Feature;

    move-result-object v2

    invoke-virtual {p0, v2}, Lc/e/a/b/d/a/a/c$a;->a([Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/Feature;

    move-result-object v2

    if-nez v2, :cond_1

    .line 8
    invoke-virtual {p0, p1}, Lc/e/a/b/d/a/a/c$a;->c(Lc/e/a/b/d/a/a/r;)V

    return v1

    .line 9
    :cond_1
    invoke-virtual {v0, p0}, Lc/e/a/b/d/a/a/D;->c(Lc/e/a/b/d/a/a/c$a;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 10
    new-instance p1, Lc/e/a/b/d/a/a/c$b;

    iget-object v0, p0, Lc/e/a/b/d/a/a/c$a;->d:Lc/e/a/b/d/a/a/N;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v2, v1}, Lc/e/a/b/d/a/a/c$b;-><init>(Lc/e/a/b/d/a/a/N;Lcom/google/android/gms/common/Feature;Lc/e/a/b/d/a/a/s;)V

    .line 11
    iget-object v0, p0, Lc/e/a/b/d/a/a/c$a;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/16 v2, 0xf

    if-ltz v0, :cond_2

    .line 12
    iget-object p1, p0, Lc/e/a/b/d/a/a/c$a;->k:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/e/a/b/d/a/a/c$b;

    .line 13
    iget-object v0, p0, Lc/e/a/b/d/a/a/c$a;->m:Lc/e/a/b/d/a/a/c;

    invoke-static {v0}, Lc/e/a/b/d/a/a/c;->a(Lc/e/a/b/d/a/a/c;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 14
    iget-object v0, p0, Lc/e/a/b/d/a/a/c$a;->m:Lc/e/a/b/d/a/a/c;

    invoke-static {v0}, Lc/e/a/b/d/a/a/c;->a(Lc/e/a/b/d/a/a/c;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lc/e/a/b/d/a/a/c$a;->m:Lc/e/a/b/d/a/a/c;

    .line 15
    invoke-static {v1}, Lc/e/a/b/d/a/a/c;->a(Lc/e/a/b/d/a/a/c;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v1, p0, Lc/e/a/b/d/a/a/c$a;->m:Lc/e/a/b/d/a/a/c;

    invoke-static {v1}, Lc/e/a/b/d/a/a/c;->c(Lc/e/a/b/d/a/a/c;)J

    move-result-wide v1

    .line 16
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 17
    :cond_2
    iget-object v0, p0, Lc/e/a/b/d/a/a/c$a;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object v0, p0, Lc/e/a/b/d/a/a/c$a;->m:Lc/e/a/b/d/a/a/c;

    invoke-static {v0}, Lc/e/a/b/d/a/a/c;->a(Lc/e/a/b/d/a/a/c;)Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Lc/e/a/b/d/a/a/c$a;->m:Lc/e/a/b/d/a/a/c;

    .line 19
    invoke-static {v3}, Lc/e/a/b/d/a/a/c;->a(Lc/e/a/b/d/a/a/c;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v3, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lc/e/a/b/d/a/a/c$a;->m:Lc/e/a/b/d/a/a/c;

    invoke-static {v3}, Lc/e/a/b/d/a/a/c;->c(Lc/e/a/b/d/a/a/c;)J

    move-result-wide v3

    .line 20
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 21
    iget-object v0, p0, Lc/e/a/b/d/a/a/c$a;->m:Lc/e/a/b/d/a/a/c;

    invoke-static {v0}, Lc/e/a/b/d/a/a/c;->a(Lc/e/a/b/d/a/a/c;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lc/e/a/b/d/a/a/c$a;->m:Lc/e/a/b/d/a/a/c;

    .line 22
    invoke-static {v2}, Lc/e/a/b/d/a/a/c;->a(Lc/e/a/b/d/a/a/c;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v2, p0, Lc/e/a/b/d/a/a/c$a;->m:Lc/e/a/b/d/a/a/c;

    .line 23
    invoke-static {v2}, Lc/e/a/b/d/a/a/c;->d(Lc/e/a/b/d/a/a/c;)J

    move-result-wide v2

    .line 24
    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 25
    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v0, 0x2

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    .line 26
    invoke-virtual {p0, p1}, Lc/e/a/b/d/a/a/c$a;->c(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 27
    iget-object v0, p0, Lc/e/a/b/d/a/a/c$a;->m:Lc/e/a/b/d/a/a/c;

    iget v1, p0, Lc/e/a/b/d/a/a/c$a;->h:I

    invoke-virtual {v0, p1, v1}, Lc/e/a/b/d/a/a/c;->b(Lcom/google/android/gms/common/ConnectionResult;I)Z

    goto :goto_0

    .line 28
    :cond_3
    new-instance p1, Lcom/google/android/gms/common/api/UnsupportedApiCallException;

    invoke-direct {p1, v2}, Lcom/google/android/gms/common/api/UnsupportedApiCallException;-><init>(Lcom/google/android/gms/common/Feature;)V

    invoke-virtual {v0, p1}, Lc/e/a/b/d/a/a/r;->a(Ljava/lang/RuntimeException;)V

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final c(Lc/e/a/b/d/a/a/r;)V
    .locals 2

    .line 7
    iget-object v0, p0, Lc/e/a/b/d/a/a/c$a;->e:Lc/e/a/b/d/a/a/m;

    invoke-virtual {p0}, Lc/e/a/b/d/a/a/c$a;->d()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lc/e/a/b/d/a/a/r;->a(Lc/e/a/b/d/a/a/m;Z)V

    .line 8
    :try_start_0
    invoke-virtual {p1, p0}, Lc/e/a/b/d/a/a/r;->a(Lc/e/a/b/d/a/a/c$a;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 p1, 0x1

    .line 9
    invoke-virtual {p0, p1}, Lc/e/a/b/d/a/a/c$a;->f(I)V

    .line 10
    iget-object p1, p0, Lc/e/a/b/d/a/a/c$a;->b:Lc/e/a/b/d/a/a$f;

    invoke-interface {p1}, Lc/e/a/b/d/a/a$f;->a()V

    return-void
.end method

.method public final c()Z
    .locals 1

    .line 11
    iget-object v0, p0, Lc/e/a/b/d/a/a/c$a;->b:Lc/e/a/b/d/a/a$f;

    invoke-interface {v0}, Lc/e/a/b/d/a/a$f;->isConnected()Z

    move-result v0

    return v0
.end method

.method public final c(Lcom/google/android/gms/common/ConnectionResult;)Z
    .locals 3

    .line 1
    invoke-static {}, Lc/e/a/b/d/a/a/c;->b()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lc/e/a/b/d/a/a/c$a;->m:Lc/e/a/b/d/a/a/c;

    invoke-static {v1}, Lc/e/a/b/d/a/a/c;->f(Lc/e/a/b/d/a/a/c;)Lc/e/a/b/d/a/a/o;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc/e/a/b/d/a/a/c$a;->m:Lc/e/a/b/d/a/a/c;

    invoke-static {v1}, Lc/e/a/b/d/a/a/c;->g(Lc/e/a/b/d/a/a/c;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lc/e/a/b/d/a/a/c$a;->d:Lc/e/a/b/d/a/a/N;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lc/e/a/b/d/a/a/c$a;->m:Lc/e/a/b/d/a/a/c;

    invoke-static {v1}, Lc/e/a/b/d/a/a/c;->f(Lc/e/a/b/d/a/a/c;)Lc/e/a/b/d/a/a/o;

    move-result-object v1

    iget v2, p0, Lc/e/a/b/d/a/a/c$a;->h:I

    invoke-virtual {v1, p1, v2}, Lc/e/a/b/d/a/a/P;->b(Lcom/google/android/gms/common/ConnectionResult;I)V

    const/4 p1, 0x1

    .line 4
    monitor-exit v0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 5
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final d(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object v0, p0, Lc/e/a/b/d/a/a/c$a;->m:Lc/e/a/b/d/a/a/c;

    invoke-static {v0}, Lc/e/a/b/d/a/a/c;->a(Lc/e/a/b/d/a/a/c;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lc/e/a/b/d/a/a/c$a;->h()V

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lc/e/a/b/d/a/a/c$a;->m:Lc/e/a/b/d/a/a/c;

    invoke-static {p1}, Lc/e/a/b/d/a/a/c;->a(Lc/e/a/b/d/a/a/c;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lc/e/a/b/d/a/a/t;

    invoke-direct {v0, p0}, Lc/e/a/b/d/a/a/t;-><init>(Lc/e/a/b/d/a/a/c$a;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final d(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 4

    .line 4
    iget-object v0, p0, Lc/e/a/b/d/a/a/c$a;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/a/b/d/a/a/O;

    const/4 v2, 0x0

    .line 5
    sget-object v3, Lcom/google/android/gms/common/ConnectionResult;->a:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {p1, v3}, Lc/e/a/b/d/d/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    iget-object v2, p0, Lc/e/a/b/d/a/a/c$a;->b:Lc/e/a/b/d/a/a$f;

    invoke-interface {v2}, Lc/e/a/b/d/a/a$f;->c()Ljava/lang/String;

    move-result-object v2

    .line 7
    :cond_0
    iget-object v3, p0, Lc/e/a/b/d/a/a/c$a;->d:Lc/e/a/b/d/a/a/N;

    invoke-virtual {v1, v3, p1, v2}, Lc/e/a/b/d/a/a/O;->a(Lc/e/a/b/d/a/a/N;Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lc/e/a/b/d/a/a/c$a;->f:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public final d()Z
    .locals 1

    .line 9
    iget-object v0, p0, Lc/e/a/b/d/a/a/c$a;->b:Lc/e/a/b/d/a/a$f;

    invoke-interface {v0}, Lc/e/a/b/d/a/a$f;->g()Z

    move-result v0

    return v0
.end method

.method public final e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/d/a/a/c$a;->m:Lc/e/a/b/d/a/a/c;

    invoke-static {v0}, Lc/e/a/b/d/a/a/c;->a(Lc/e/a/b/d/a/a/c;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lc/e/a/b/d/d/r;->a(Landroid/os/Handler;)V

    .line 2
    iget-boolean v0, p0, Lc/e/a/b/d/a/a/c$a;->j:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lc/e/a/b/d/a/a/c$a;->a()V

    :cond_0
    return-void
.end method

.method public final f()Lc/e/a/b/d/a/a$f;
    .locals 1

    .line 4
    iget-object v0, p0, Lc/e/a/b/d/a/a/c$a;->b:Lc/e/a/b/d/a/a$f;

    return-object v0
.end method

.method public final f(I)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object v0, p0, Lc/e/a/b/d/a/a/c$a;->m:Lc/e/a/b/d/a/a/c;

    invoke-static {v0}, Lc/e/a/b/d/a/a/c;->a(Lc/e/a/b/d/a/a/c;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lc/e/a/b/d/a/a/c$a;->i()V

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lc/e/a/b/d/a/a/c$a;->m:Lc/e/a/b/d/a/a/c;

    invoke-static {p1}, Lc/e/a/b/d/a/a/c;->a(Lc/e/a/b/d/a/a/c;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lc/e/a/b/d/a/a/u;

    invoke-direct {v0, p0}, Lc/e/a/b/d/a/a/u;-><init>(Lc/e/a/b/d/a/a/c$a;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final g()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/e/a/b/d/a/a/c$a;->m:Lc/e/a/b/d/a/a/c;

    invoke-static {v0}, Lc/e/a/b/d/a/a/c;->a(Lc/e/a/b/d/a/a/c;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lc/e/a/b/d/d/r;->a(Landroid/os/Handler;)V

    .line 2
    iget-boolean v0, p0, Lc/e/a/b/d/a/a/c$a;->j:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lc/e/a/b/d/a/a/c$a;->o()V

    .line 4
    iget-object v0, p0, Lc/e/a/b/d/a/a/c$a;->m:Lc/e/a/b/d/a/a/c;

    invoke-static {v0}, Lc/e/a/b/d/a/a/c;->h(Lc/e/a/b/d/a/a/c;)Lc/e/a/b/d/c;

    move-result-object v0

    iget-object v1, p0, Lc/e/a/b/d/a/a/c$a;->m:Lc/e/a/b/d/a/a/c;

    invoke-static {v1}, Lc/e/a/b/d/a/a/c;->b(Lc/e/a/b/d/a/a/c;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/e/a/b/d/c;->b(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x12

    const/16 v2, 0x8

    if-ne v0, v1, :cond_0

    .line 5
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "Connection timed out while waiting for Google Play services update to complete."

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "API failed to connect while resuming due to an unknown error."

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 7
    :goto_0
    invoke-virtual {p0, v0}, Lc/e/a/b/d/a/a/c$a;->a(Lcom/google/android/gms/common/api/Status;)V

    .line 8
    iget-object v0, p0, Lc/e/a/b/d/a/a/c$a;->b:Lc/e/a/b/d/a/a$f;

    invoke-interface {v0}, Lc/e/a/b/d/a/a$f;->a()V

    :cond_1
    return-void
.end method

.method public final h()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/d/a/a/c$a;->m()V

    .line 2
    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->a:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {p0, v0}, Lc/e/a/b/d/a/a/c$a;->d(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 3
    invoke-virtual {p0}, Lc/e/a/b/d/a/a/c$a;->o()V

    .line 4
    iget-object v0, p0, Lc/e/a/b/d/a/a/c$a;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 5
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/a/b/d/a/a/C;

    .line 7
    iget-object v2, v1, Lc/e/a/b/d/a/a/C;->a:Lc/e/a/b/d/a/a/h;

    invoke-virtual {v2}, Lc/e/a/b/d/a/a/h;->b()[Lcom/google/android/gms/common/Feature;

    move-result-object v2

    invoke-virtual {p0, v2}, Lc/e/a/b/d/a/a/c$a;->a([Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/Feature;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 9
    :cond_0
    :try_start_0
    iget-object v1, v1, Lc/e/a/b/d/a/a/C;->a:Lc/e/a/b/d/a/a/h;

    iget-object v2, p0, Lc/e/a/b/d/a/a/c$a;->c:Lc/e/a/b/d/a/a$b;

    new-instance v3, Lc/e/a/b/j/h;

    invoke-direct {v3}, Lc/e/a/b/j/h;-><init>()V

    invoke-virtual {v1, v2, v3}, Lc/e/a/b/d/a/a/h;->a(Lc/e/a/b/d/a/a$b;Lc/e/a/b/j/h;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 10
    :catch_0
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catch_1
    const/4 v0, 0x1

    .line 11
    invoke-virtual {p0, v0}, Lc/e/a/b/d/a/a/c$a;->f(I)V

    .line 12
    iget-object v0, p0, Lc/e/a/b/d/a/a/c$a;->b:Lc/e/a/b/d/a/a$f;

    invoke-interface {v0}, Lc/e/a/b/d/a/a$f;->a()V

    .line 13
    :cond_1
    invoke-virtual {p0}, Lc/e/a/b/d/a/a/c$a;->j()V

    .line 14
    invoke-virtual {p0}, Lc/e/a/b/d/a/a/c$a;->p()V

    return-void
.end method

.method public final i()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/d/a/a/c$a;->m()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lc/e/a/b/d/a/a/c$a;->j:Z

    .line 3
    iget-object v0, p0, Lc/e/a/b/d/a/a/c$a;->e:Lc/e/a/b/d/a/a/m;

    invoke-virtual {v0}, Lc/e/a/b/d/a/a/m;->c()V

    .line 4
    iget-object v0, p0, Lc/e/a/b/d/a/a/c$a;->m:Lc/e/a/b/d/a/a/c;

    invoke-static {v0}, Lc/e/a/b/d/a/a/c;->a(Lc/e/a/b/d/a/a/c;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lc/e/a/b/d/a/a/c$a;->m:Lc/e/a/b/d/a/a/c;

    .line 5
    invoke-static {v1}, Lc/e/a/b/d/a/a/c;->a(Lc/e/a/b/d/a/a/c;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lc/e/a/b/d/a/a/c$a;->d:Lc/e/a/b/d/a/a/N;

    const/16 v3, 0x9

    invoke-static {v1, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lc/e/a/b/d/a/a/c$a;->m:Lc/e/a/b/d/a/a/c;

    invoke-static {v2}, Lc/e/a/b/d/a/a/c;->c(Lc/e/a/b/d/a/a/c;)J

    move-result-wide v2

    .line 6
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 7
    iget-object v0, p0, Lc/e/a/b/d/a/a/c$a;->m:Lc/e/a/b/d/a/a/c;

    invoke-static {v0}, Lc/e/a/b/d/a/a/c;->a(Lc/e/a/b/d/a/a/c;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lc/e/a/b/d/a/a/c$a;->m:Lc/e/a/b/d/a/a/c;

    .line 8
    invoke-static {v1}, Lc/e/a/b/d/a/a/c;->a(Lc/e/a/b/d/a/a/c;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lc/e/a/b/d/a/a/c$a;->d:Lc/e/a/b/d/a/a/N;

    const/16 v3, 0xb

    invoke-static {v1, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lc/e/a/b/d/a/a/c$a;->m:Lc/e/a/b/d/a/a/c;

    invoke-static {v2}, Lc/e/a/b/d/a/a/c;->d(Lc/e/a/b/d/a/a/c;)J

    move-result-wide v2

    .line 9
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 10
    iget-object v0, p0, Lc/e/a/b/d/a/a/c$a;->m:Lc/e/a/b/d/a/a/c;

    invoke-static {v0}, Lc/e/a/b/d/a/a/c;->e(Lc/e/a/b/d/a/a/c;)Lc/e/a/b/d/d/k;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/d/d/k;->a()V

    return-void
.end method

.method public final j()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lc/e/a/b/d/a/a/c$a;->a:Ljava/util/Queue;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lc/e/a/b/d/a/a/r;

    .line 2
    iget-object v4, p0, Lc/e/a/b/d/a/a/c$a;->b:Lc/e/a/b/d/a/a$f;

    invoke-interface {v4}, Lc/e/a/b/d/a/a$f;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3
    invoke-virtual {p0, v3}, Lc/e/a/b/d/a/a/c$a;->b(Lc/e/a/b/d/a/a/r;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4
    iget-object v4, p0, Lc/e/a/b/d/a/a/c$a;->a:Ljava/util/Queue;

    invoke-interface {v4, v3}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final k()V
    .locals 6

    .line 1
    iget-object v0, p0, Lc/e/a/b/d/a/a/c$a;->m:Lc/e/a/b/d/a/a/c;

    invoke-static {v0}, Lc/e/a/b/d/a/a/c;->a(Lc/e/a/b/d/a/a/c;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lc/e/a/b/d/d/r;->a(Landroid/os/Handler;)V

    .line 2
    sget-object v0, Lc/e/a/b/d/a/a/c;->a:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lc/e/a/b/d/a/a/c$a;->a(Lcom/google/android/gms/common/api/Status;)V

    .line 3
    iget-object v0, p0, Lc/e/a/b/d/a/a/c$a;->e:Lc/e/a/b/d/a/a/m;

    invoke-virtual {v0}, Lc/e/a/b/d/a/a/m;->b()V

    .line 4
    iget-object v0, p0, Lc/e/a/b/d/a/a/c$a;->g:Ljava/util/Map;

    .line 5
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lc/e/a/b/d/a/a/c$a;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lc/e/a/b/d/a/a/g;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/e/a/b/d/a/a/g;

    .line 6
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 7
    new-instance v4, Lc/e/a/b/d/a/a/M;

    new-instance v5, Lc/e/a/b/j/h;

    invoke-direct {v5}, Lc/e/a/b/j/h;-><init>()V

    invoke-direct {v4, v3, v5}, Lc/e/a/b/d/a/a/M;-><init>(Lc/e/a/b/d/a/a/g;Lc/e/a/b/j/h;)V

    invoke-virtual {p0, v4}, Lc/e/a/b/d/a/a/c$a;->a(Lc/e/a/b/d/a/a/r;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-virtual {p0, v0}, Lc/e/a/b/d/a/a/c$a;->d(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 9
    iget-object v0, p0, Lc/e/a/b/d/a/a/c$a;->b:Lc/e/a/b/d/a/a$f;

    invoke-interface {v0}, Lc/e/a/b/d/a/a$f;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lc/e/a/b/d/a/a/c$a;->b:Lc/e/a/b/d/a/a$f;

    new-instance v1, Lc/e/a/b/d/a/a/v;

    invoke-direct {v1, p0}, Lc/e/a/b/d/a/a/v;-><init>(Lc/e/a/b/d/a/a/c$a;)V

    invoke-interface {v0, v1}, Lc/e/a/b/d/a/a$f;->a(Lc/e/a/b/d/d/d$e;)V

    :cond_1
    return-void
.end method

.method public final l()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lc/e/a/b/d/a/a/g<",
            "*>;",
            "Lc/e/a/b/d/a/a/C;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/e/a/b/d/a/a/c$a;->g:Ljava/util/Map;

    return-object v0
.end method

.method public final m()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/d/a/a/c$a;->m:Lc/e/a/b/d/a/a/c;

    invoke-static {v0}, Lc/e/a/b/d/a/a/c;->a(Lc/e/a/b/d/a/a/c;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lc/e/a/b/d/d/r;->a(Landroid/os/Handler;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lc/e/a/b/d/a/a/c$a;->l:Lcom/google/android/gms/common/ConnectionResult;

    return-void
.end method

.method public final n()Lcom/google/android/gms/common/ConnectionResult;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/d/a/a/c$a;->m:Lc/e/a/b/d/a/a/c;

    invoke-static {v0}, Lc/e/a/b/d/a/a/c;->a(Lc/e/a/b/d/a/a/c;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lc/e/a/b/d/d/r;->a(Landroid/os/Handler;)V

    .line 2
    iget-object v0, p0, Lc/e/a/b/d/a/a/c$a;->l:Lcom/google/android/gms/common/ConnectionResult;

    return-object v0
.end method

.method public final o()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lc/e/a/b/d/a/a/c$a;->j:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/e/a/b/d/a/a/c$a;->m:Lc/e/a/b/d/a/a/c;

    invoke-static {v0}, Lc/e/a/b/d/a/a/c;->a(Lc/e/a/b/d/a/a/c;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    iget-object v2, p0, Lc/e/a/b/d/a/a/c$a;->d:Lc/e/a/b/d/a/a/N;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lc/e/a/b/d/a/a/c$a;->m:Lc/e/a/b/d/a/a/c;

    invoke-static {v0}, Lc/e/a/b/d/a/a/c;->a(Lc/e/a/b/d/a/a/c;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    iget-object v2, p0, Lc/e/a/b/d/a/a/c$a;->d:Lc/e/a/b/d/a/a/N;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lc/e/a/b/d/a/a/c$a;->j:Z

    :cond_0
    return-void
.end method

.method public final p()V
    .locals 4

    .line 1
    iget-object v0, p0, Lc/e/a/b/d/a/a/c$a;->m:Lc/e/a/b/d/a/a/c;

    invoke-static {v0}, Lc/e/a/b/d/a/a/c;->a(Lc/e/a/b/d/a/a/c;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lc/e/a/b/d/a/a/c$a;->d:Lc/e/a/b/d/a/a/N;

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lc/e/a/b/d/a/a/c$a;->m:Lc/e/a/b/d/a/a/c;

    invoke-static {v0}, Lc/e/a/b/d/a/a/c;->a(Lc/e/a/b/d/a/a/c;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lc/e/a/b/d/a/a/c$a;->m:Lc/e/a/b/d/a/a/c;

    .line 3
    invoke-static {v1}, Lc/e/a/b/d/a/a/c;->a(Lc/e/a/b/d/a/a/c;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lc/e/a/b/d/a/a/c$a;->d:Lc/e/a/b/d/a/a/N;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lc/e/a/b/d/a/a/c$a;->m:Lc/e/a/b/d/a/a/c;

    invoke-static {v2}, Lc/e/a/b/d/a/a/c;->i(Lc/e/a/b/d/a/a/c;)J

    move-result-wide v2

    .line 4
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final q()Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lc/e/a/b/d/a/a/c$a;->a(Z)Z

    move-result v0

    return v0
.end method
