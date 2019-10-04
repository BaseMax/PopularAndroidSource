.class public final Lc/e/a/b/h/b/T;
.super Lc/e/a/b/h/b/Sb;

# interfaces
.implements Lc/e/a/b/h/b/rc;


# static fields
.field public static d:I = 0xffff

.field public static e:I = 0x2


# instance fields
.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lc/e/a/b/g/f/aa;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/e/a/b/h/b/Tb;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lc/e/a/b/h/b/Sb;-><init>(Lc/e/a/b/h/b/Tb;)V

    .line 2
    new-instance p1, Lb/f/b;

    invoke-direct {p1}, Lb/f/b;-><init>()V

    iput-object p1, p0, Lc/e/a/b/h/b/T;->f:Ljava/util/Map;

    .line 3
    new-instance p1, Lb/f/b;

    invoke-direct {p1}, Lb/f/b;-><init>()V

    iput-object p1, p0, Lc/e/a/b/h/b/T;->g:Ljava/util/Map;

    .line 4
    new-instance p1, Lb/f/b;

    invoke-direct {p1}, Lb/f/b;-><init>()V

    iput-object p1, p0, Lc/e/a/b/h/b/T;->h:Ljava/util/Map;

    .line 5
    new-instance p1, Lb/f/b;

    invoke-direct {p1}, Lb/f/b;-><init>()V

    iput-object p1, p0, Lc/e/a/b/h/b/T;->i:Ljava/util/Map;

    .line 6
    new-instance p1, Lb/f/b;

    invoke-direct {p1}, Lb/f/b;-><init>()V

    iput-object p1, p0, Lc/e/a/b/h/b/T;->k:Ljava/util/Map;

    .line 7
    new-instance p1, Lb/f/b;

    invoke-direct {p1}, Lb/f/b;-><init>()V

    iput-object p1, p0, Lc/e/a/b/h/b/T;->j:Ljava/util/Map;

    return-void
.end method

.method public static a(Lc/e/a/b/g/f/aa;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/b/g/f/aa;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 21
    new-instance v0, Lb/f/b;

    invoke-direct {v0}, Lb/f/b;-><init>()V

    if-eqz p0, :cond_1

    .line 22
    iget-object p0, p0, Lc/e/a/b/g/f/aa;->f:[Lc/e/a/b/g/f/F;

    if-eqz p0, :cond_1

    .line 23
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    if-eqz v3, :cond_0

    .line 24
    invoke-virtual {v3}, Lc/e/a/b/g/f/F;->q()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lc/e/a/b/g/f/F;->r()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;[B)Lc/e/a/b/g/f/aa;
    .locals 4

    if-nez p2, :cond_0

    .line 91
    new-instance p1, Lc/e/a/b/g/f/aa;

    invoke-direct {p1}, Lc/e/a/b/g/f/aa;-><init>()V

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 92
    array-length v1, p2

    invoke-static {p2, v0, v1}, Lc/e/a/b/g/f/Pc;->a([BII)Lc/e/a/b/g/f/Pc;

    move-result-object p2

    .line 93
    new-instance v0, Lc/e/a/b/g/f/aa;

    invoke-direct {v0}, Lc/e/a/b/g/f/aa;-><init>()V

    .line 94
    :try_start_0
    invoke-virtual {v0, p2}, Lc/e/a/b/g/f/aa;->a(Lc/e/a/b/g/f/Pc;)Lc/e/a/b/g/f/Wc;

    .line 95
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object p2

    .line 96
    invoke-virtual {p2}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object p2

    const-string v1, "Parsed config. version, gmp_app_id"

    iget-object v2, v0, Lc/e/a/b/g/f/aa;->c:Ljava/lang/Long;

    iget-object v3, v0, Lc/e/a/b/g/f/aa;->d:Ljava/lang/String;

    .line 97
    invoke-virtual {p2, v1, v2, v3}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p2

    .line 98
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object v0

    .line 100
    invoke-static {p1}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Unable to merge remote config. appId"

    invoke-virtual {v0, v1, p1, p2}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 101
    new-instance p1, Lc/e/a/b/g/f/aa;

    invoke-direct {p1}, Lc/e/a/b/g/f/aa;-><init>()V

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->l()V

    .line 18
    invoke-virtual {p0, p1}, Lc/e/a/b/h/b/T;->a(Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lc/e/a/b/h/b/T;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 20
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/h/b/Sb;->s()V

    .line 2
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->l()V

    .line 3
    invoke-static {p1}, Lc/e/a/b/d/d/r;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lc/e/a/b/h/b/T;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lc/e/a/b/h/b/Rb;->p()Lc/e/a/b/h/b/sc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/e/a/b/h/b/sc;->d(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lc/e/a/b/h/b/T;->f:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lc/e/a/b/h/b/T;->g:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lc/e/a/b/h/b/T;->h:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lc/e/a/b/h/b/T;->i:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lc/e/a/b/h/b/T;->k:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v0, p0, Lc/e/a/b/h/b/T;->j:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 12
    :cond_0
    invoke-virtual {p0, p1, v0}, Lc/e/a/b/h/b/T;->a(Ljava/lang/String;[B)Lc/e/a/b/g/f/aa;

    move-result-object v0

    .line 13
    iget-object v2, p0, Lc/e/a/b/h/b/T;->f:Ljava/util/Map;

    invoke-static {v0}, Lc/e/a/b/h/b/T;->a(Lc/e/a/b/g/f/aa;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-virtual {p0, p1, v0}, Lc/e/a/b/h/b/T;->a(Ljava/lang/String;Lc/e/a/b/g/f/aa;)V

    .line 15
    iget-object v2, p0, Lc/e/a/b/h/b/T;->i:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v0, p0, Lc/e/a/b/h/b/T;->k:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;Lc/e/a/b/g/f/aa;)V
    .locals 9

    .line 25
    new-instance v0, Lb/f/b;

    invoke-direct {v0}, Lb/f/b;-><init>()V

    .line 26
    new-instance v1, Lb/f/b;

    invoke-direct {v1}, Lb/f/b;-><init>()V

    .line 27
    new-instance v2, Lb/f/b;

    invoke-direct {v2}, Lb/f/b;-><init>()V

    if-eqz p2, :cond_5

    .line 28
    iget-object p2, p2, Lc/e/a/b/g/f/aa;->g:[Lc/e/a/b/g/f/Z;

    if-eqz p2, :cond_5

    .line 29
    array-length v3, p2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_5

    aget-object v5, p2, v4

    .line 30
    iget-object v6, v5, Lc/e/a/b/g/f/Z;->d:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 31
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v5

    invoke-virtual {v5}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object v5

    const-string v6, "EventConfig contained null event name"

    invoke-virtual {v5, v6}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 32
    :cond_0
    iget-object v6, v5, Lc/e/a/b/g/f/Z;->d:Ljava/lang/String;

    invoke-static {v6}, Lc/e/a/b/h/b/ya;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 33
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 34
    iput-object v6, v5, Lc/e/a/b/g/f/Z;->d:Ljava/lang/String;

    .line 35
    :cond_1
    iget-object v6, v5, Lc/e/a/b/g/f/Z;->d:Ljava/lang/String;

    iget-object v7, v5, Lc/e/a/b/g/f/Z;->e:Ljava/lang/Boolean;

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v6, v5, Lc/e/a/b/g/f/Z;->d:Ljava/lang/String;

    iget-object v7, v5, Lc/e/a/b/g/f/Z;->f:Ljava/lang/Boolean;

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v6, v5, Lc/e/a/b/g/f/Z;->g:Ljava/lang/Integer;

    if-eqz v6, :cond_4

    .line 38
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget v7, Lc/e/a/b/h/b/T;->e:I

    if-lt v6, v7, :cond_3

    iget-object v6, v5, Lc/e/a/b/g/f/Z;->g:Ljava/lang/Integer;

    .line 39
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget v7, Lc/e/a/b/h/b/T;->d:I

    if-le v6, v7, :cond_2

    goto :goto_1

    .line 40
    :cond_2
    iget-object v6, v5, Lc/e/a/b/g/f/Z;->d:Ljava/lang/String;

    iget-object v5, v5, Lc/e/a/b/g/f/Z;->g:Ljava/lang/Integer;

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 41
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v6

    .line 42
    invoke-virtual {v6}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object v6

    iget-object v7, v5, Lc/e/a/b/g/f/Z;->d:Ljava/lang/String;

    iget-object v5, v5, Lc/e/a/b/g/f/Z;->g:Ljava/lang/Integer;

    const-string v8, "Invalid sampling rate. Event name, sample rate"

    .line 43
    invoke-virtual {v6, v8, v7, v5}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 44
    :cond_5
    iget-object p2, p0, Lc/e/a/b/h/b/T;->g:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object p2, p0, Lc/e/a/b/h/b/T;->h:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object p2, p0, Lc/e/a/b/h/b/T;->j:Ljava/util/Map;

    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/lang/String;[BLjava/lang/String;)Z
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 47
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Sb;->s()V

    .line 48
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/ua;->l()V

    .line 49
    invoke-static/range {p1 .. p1}, Lc/e/a/b/d/d/r;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    invoke-virtual/range {p0 .. p2}, Lc/e/a/b/h/b/T;->a(Ljava/lang/String;[B)Lc/e/a/b/g/f/aa;

    move-result-object v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    return v3

    .line 51
    :cond_0
    invoke-virtual {v1, v2, v0}, Lc/e/a/b/h/b/T;->a(Ljava/lang/String;Lc/e/a/b/g/f/aa;)V

    .line 52
    iget-object v4, v1, Lc/e/a/b/h/b/T;->i:Ljava/util/Map;

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v4, v1, Lc/e/a/b/h/b/T;->k:Ljava/util/Map;

    move-object/from16 v5, p3

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v4, v1, Lc/e/a/b/h/b/T;->f:Ljava/util/Map;

    invoke-static {v0}, Lc/e/a/b/h/b/T;->a(Lc/e/a/b/g/f/aa;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Rb;->o()Lc/e/a/b/h/b/lc;

    move-result-object v4

    iget-object v5, v0, Lc/e/a/b/g/f/aa;->h:[Lc/e/a/b/g/f/S;

    .line 56
    invoke-static {v5}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    array-length v6, v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_7

    aget-object v8, v5, v7

    .line 58
    iget-object v9, v8, Lc/e/a/b/g/f/S;->f:[Lc/e/a/b/g/f/T;

    array-length v10, v9

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_4

    aget-object v12, v9, v11

    .line 59
    iget-object v13, v12, Lc/e/a/b/g/f/T;->e:Ljava/lang/String;

    invoke-static {v13}, Lc/e/a/b/h/b/ya;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_1

    .line 60
    iput-object v13, v12, Lc/e/a/b/g/f/T;->e:Ljava/lang/String;

    .line 61
    :cond_1
    iget-object v12, v12, Lc/e/a/b/g/f/T;->f:[Lc/e/a/b/g/f/U;

    array-length v13, v12

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v13, :cond_3

    aget-object v15, v12, v14

    .line 62
    iget-object v3, v15, Lc/e/a/b/g/f/U;->g:Ljava/lang/String;

    invoke-static {v3}, Lc/e/a/b/h/b/za;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 63
    iput-object v3, v15, Lc/e/a/b/g/f/U;->g:Ljava/lang/String;

    :cond_2
    add-int/lit8 v14, v14, 0x1

    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x0

    goto :goto_1

    .line 64
    :cond_4
    iget-object v3, v8, Lc/e/a/b/g/f/S;->e:[Lc/e/a/b/g/f/X;

    array-length v8, v3

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v8, :cond_6

    aget-object v10, v3, v9

    .line 65
    iget-object v11, v10, Lc/e/a/b/g/f/X;->e:Ljava/lang/String;

    .line 66
    invoke-static {v11}, Lc/e/a/b/h/b/Aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 67
    iput-object v11, v10, Lc/e/a/b/g/f/X;->e:Ljava/lang/String;

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v7, v7, 0x1

    const/4 v3, 0x0

    goto :goto_0

    .line 68
    :cond_7
    invoke-virtual {v4}, Lc/e/a/b/h/b/Rb;->p()Lc/e/a/b/h/b/sc;

    move-result-object v3

    invoke-virtual {v3, v2, v5}, Lc/e/a/b/h/b/sc;->a(Ljava/lang/String;[Lc/e/a/b/g/f/S;)V

    const/4 v3, 0x0

    .line 69
    :try_start_0
    iput-object v3, v0, Lc/e/a/b/g/f/aa;->h:[Lc/e/a/b/g/f/S;

    .line 70
    invoke-virtual {v0}, Lc/e/a/b/g/f/Wc;->b()I

    move-result v3

    new-array v3, v3, [B

    .line 71
    array-length v4, v3

    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Lc/e/a/b/g/f/Qc;->a([BII)Lc/e/a/b/g/f/Qc;

    move-result-object v4

    .line 72
    invoke-virtual {v0, v4}, Lc/e/a/b/g/f/aa;->a(Lc/e/a/b/g/f/Qc;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 73
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v3

    .line 74
    invoke-virtual {v3}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object v3

    .line 75
    invoke-static/range {p1 .. p1}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Unable to serialize reduced-size config. Storing full config instead. appId"

    .line 76
    invoke-virtual {v3, v5, v4, v0}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v3, p2

    .line 77
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Rb;->p()Lc/e/a/b/h/b/sc;

    move-result-object v4

    .line 78
    invoke-static/range {p1 .. p1}, Lc/e/a/b/d/d/r;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    invoke-virtual {v4}, Lc/e/a/b/h/b/ua;->l()V

    .line 80
    invoke-virtual {v4}, Lc/e/a/b/h/b/Sb;->s()V

    .line 81
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "remote_config"

    .line 82
    invoke-virtual {v0, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const/4 v3, 0x1

    .line 83
    :try_start_1
    invoke-virtual {v4}, Lc/e/a/b/h/b/sc;->x()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "apps"

    const-string v7, "app_id = ?"

    .line 84
    new-array v8, v3, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    invoke-virtual {v5, v6, v0, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v5, v0

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-nez v0, :cond_8

    .line 85
    invoke-virtual {v4}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v0

    const-string v5, "Failed to update remote config (got 0). appId"

    .line 87
    invoke-static/range {p1 .. p1}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    .line 88
    invoke-virtual {v4}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v4

    .line 89
    invoke-virtual {v4}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v4

    .line 90
    invoke-static/range {p1 .. p1}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v5, "Error storing remote config. appId"

    invoke-virtual {v4, v5, v2, v0}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    :goto_5
    return v3
.end method

.method public final b(Ljava/lang/String;)Lc/e/a/b/g/f/aa;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/h/b/Sb;->s()V

    .line 2
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->l()V

    .line 3
    invoke-static {p1}, Lc/e/a/b/d/d/r;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    invoke-virtual {p0, p1}, Lc/e/a/b/h/b/T;->a(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lc/e/a/b/h/b/T;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/e/a/b/g/f/aa;

    return-object p1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 6
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->l()V

    .line 7
    invoke-virtual {p0, p1}, Lc/e/a/b/h/b/T;->a(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0, p1}, Lc/e/a/b/h/b/T;->h(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p2}, Lc/e/a/b/h/b/cc;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Lc/e/a/b/h/b/T;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lc/e/a/b/h/b/cc;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 10
    :cond_1
    iget-object v0, p0, Lc/e/a/b/h/b/T;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 11
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_2

    return v0

    .line 12
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_3
    return v0
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->l()V

    .line 2
    iget-object v0, p0, Lc/e/a/b/h/b/T;->k:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 3
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->l()V

    .line 4
    invoke-virtual {p0, p1}, Lc/e/a/b/h/b/T;->a(Ljava/lang/String;)V

    const-string v0, "ecommerce_purchase"

    .line 5
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 6
    :cond_0
    iget-object v0, p0, Lc/e/a/b/h/b/T;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 7
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_1

    return v0

    .line 8
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_2
    return v0
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 3
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->l()V

    .line 4
    invoke-virtual {p0, p1}, Lc/e/a/b/h/b/T;->a(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lc/e/a/b/h/b/T;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 6
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    return v0

    .line 7
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->l()V

    .line 2
    iget-object v0, p0, Lc/e/a/b/h/b/T;->k:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->l()V

    .line 2
    iget-object v0, p0, Lc/e/a/b/h/b/T;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final f(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->l()V

    .line 2
    invoke-virtual {p0, p1}, Lc/e/a/b/h/b/T;->b(Ljava/lang/String;)Lc/e/a/b/g/f/aa;

    move-result-object p1

    iget-object p1, p1, Lc/e/a/b/g/f/aa;->j:Ljava/lang/Boolean;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final g(Ljava/lang/String;)J
    .locals 3

    const-string v0, "measurement.account.time_zone_offset_minutes"

    .line 1
    invoke-virtual {p0, p1, v0}, Lc/e/a/b/h/b/T;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object v1

    .line 6
    invoke-static {p1}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Unable to parse timezone offset. appId"

    invoke-virtual {v1, v2, p1, v0}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final h(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "measurement.upload.blacklist_internal"

    .line 1
    invoke-virtual {p0, p1, v0}, Lc/e/a/b/h/b/T;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final i(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "measurement.upload.blacklist_public"

    .line 1
    invoke-virtual {p0, p1, v0}, Lc/e/a/b/h/b/T;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final u()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
