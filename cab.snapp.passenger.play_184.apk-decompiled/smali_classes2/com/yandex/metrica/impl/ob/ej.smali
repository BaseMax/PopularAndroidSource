.class public Lcom/yandex/metrica/impl/ob/ej;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/ej$b;,
        Lcom/yandex/metrica/impl/ob/ej$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/ac;

.field private final b:Lcom/yandex/metrica/impl/ob/ej$a;

.field private final c:Lcom/yandex/metrica/impl/ob/ed;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/ed<",
            "Lcom/yandex/metrica/impl/ob/ef;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/yandex/metrica/impl/ob/ed;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/ed<",
            "Lcom/yandex/metrica/impl/ob/ef;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/yandex/metrica/impl/ob/ee;

.field private f:Lcom/yandex/metrica/impl/ob/ej$b;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/ac;Lcom/yandex/metrica/impl/ob/ej$a;)V
    .locals 2

    .line 46
    new-instance v0, Lcom/yandex/metrica/impl/ob/ec;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/ec;-><init>(Lcom/yandex/metrica/impl/ob/ac;)V

    new-instance v1, Lcom/yandex/metrica/impl/ob/eb;

    invoke-direct {v1, p1}, Lcom/yandex/metrica/impl/ob/eb;-><init>(Lcom/yandex/metrica/impl/ob/ac;)V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/yandex/metrica/impl/ob/ej;-><init>(Lcom/yandex/metrica/impl/ob/ac;Lcom/yandex/metrica/impl/ob/ej$a;Lcom/yandex/metrica/impl/ob/ed;Lcom/yandex/metrica/impl/ob/ed;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/impl/ob/ac;Lcom/yandex/metrica/impl/ob/ej$a;Lcom/yandex/metrica/impl/ob/ed;Lcom/yandex/metrica/impl/ob/ed;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/ac;",
            "Lcom/yandex/metrica/impl/ob/ej$a;",
            "Lcom/yandex/metrica/impl/ob/ed<",
            "Lcom/yandex/metrica/impl/ob/ef;",
            ">;",
            "Lcom/yandex/metrica/impl/ob/ed<",
            "Lcom/yandex/metrica/impl/ob/ef;",
            ">;)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ej;->f:Lcom/yandex/metrica/impl/ob/ej$b;

    .line 56
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ej;->a:Lcom/yandex/metrica/impl/ob/ac;

    .line 57
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/ej;->b:Lcom/yandex/metrica/impl/ob/ej$a;

    .line 59
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/ej;->c:Lcom/yandex/metrica/impl/ob/ed;

    .line 60
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/ej;->d:Lcom/yandex/metrica/impl/ob/ed;

    return-void
.end method

.method private static a(Lcom/yandex/metrica/impl/ob/ee;J)Lcom/yandex/metrica/impl/ob/ek;
    .locals 3

    .line 226
    new-instance v0, Lcom/yandex/metrica/impl/ob/ek;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/ek;-><init>()V

    .line 227
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ee;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/ek;->a(J)Lcom/yandex/metrica/impl/ob/ek;

    move-result-object v0

    .line 228
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ee;->f()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/ek;->b(J)Lcom/yandex/metrica/impl/ob/ek;

    move-result-object v0

    .line 229
    invoke-virtual {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/ee;->c(J)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/ek;->c(J)Lcom/yandex/metrica/impl/ob/ek;

    move-result-object p1

    .line 230
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ee;->a()Lcom/yandex/metrica/impl/ob/en;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yandex/metrica/impl/ob/ek;->a(Lcom/yandex/metrica/impl/ob/en;)Lcom/yandex/metrica/impl/ob/ek;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/yandex/metrica/impl/ob/ee;Lcom/yandex/metrica/impl/i;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 177
    :cond_0
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/i;->v()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/yandex/metrica/impl/ob/ee;->a(J)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 180
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/ej;->b(Lcom/yandex/metrica/impl/ob/ee;Lcom/yandex/metrica/impl/i;)V

    return v0
.end method

.method private b(Lcom/yandex/metrica/impl/ob/ee;Lcom/yandex/metrica/impl/i;)V
    .locals 2

    .line 187
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ee;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ej;->b:Lcom/yandex/metrica/impl/ob/ej$a;

    .line 4420
    sget-object v1, Lcom/yandex/metrica/impl/s$a;->f:Lcom/yandex/metrica/impl/s$a;

    invoke-static {p2, v1}, Lcom/yandex/metrica/impl/i;->a(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/s$a;)Lcom/yandex/metrica/impl/i;

    move-result-object p2

    .line 188
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/ej;->a(Lcom/yandex/metrica/impl/ob/ee;)Lcom/yandex/metrica/impl/ob/ek;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lcom/yandex/metrica/impl/ob/ej$a;->a(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/ob/ek;)V

    const/4 p2, 0x0

    .line 189
    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/ee;->a(Z)V

    .line 193
    :cond_0
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ee;->e()V

    return-void
.end method

.method private f(Lcom/yandex/metrica/impl/i;)V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ej;->f:Lcom/yandex/metrica/impl/ob/ej$b;

    if-nez v0, :cond_2

    .line 156
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ej;->c:Lcom/yandex/metrica/impl/ob/ed;

    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/ed;->a()Lcom/yandex/metrica/impl/ob/ee;

    move-result-object v0

    .line 157
    invoke-direct {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/ej;->a(Lcom/yandex/metrica/impl/ob/ee;Lcom/yandex/metrica/impl/i;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ej;->e:Lcom/yandex/metrica/impl/ob/ee;

    .line 159
    sget-object p1, Lcom/yandex/metrica/impl/ob/ej$b;->c:Lcom/yandex/metrica/impl/ob/ej$b;

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ej;->f:Lcom/yandex/metrica/impl/ob/ej$b;

    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ej;->d:Lcom/yandex/metrica/impl/ob/ed;

    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/ed;->a()Lcom/yandex/metrica/impl/ob/ee;

    move-result-object v0

    .line 162
    invoke-direct {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/ej;->a(Lcom/yandex/metrica/impl/ob/ee;Lcom/yandex/metrica/impl/i;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 163
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ej;->e:Lcom/yandex/metrica/impl/ob/ee;

    .line 164
    sget-object p1, Lcom/yandex/metrica/impl/ob/ej$b;->b:Lcom/yandex/metrica/impl/ob/ej$b;

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ej;->f:Lcom/yandex/metrica/impl/ob/ej$b;

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 166
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ej;->e:Lcom/yandex/metrica/impl/ob/ee;

    .line 167
    sget-object p1, Lcom/yandex/metrica/impl/ob/ej$b;->a:Lcom/yandex/metrica/impl/ob/ej$b;

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ej;->f:Lcom/yandex/metrica/impl/ob/ej$b;

    :cond_2
    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/ee;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ej;->e:Lcom/yandex/metrica/impl/ob/ee;

    return-object v0
.end method

.method a(Lcom/yandex/metrica/impl/ob/ee;)Lcom/yandex/metrica/impl/ob/ek;
    .locals 3

    .line 218
    new-instance v0, Lcom/yandex/metrica/impl/ob/ek;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/ek;-><init>()V

    .line 219
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ee;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/ek;->a(J)Lcom/yandex/metrica/impl/ob/ek;

    move-result-object v0

    .line 220
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ee;->a()Lcom/yandex/metrica/impl/ob/en;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ek;->a(Lcom/yandex/metrica/impl/ob/en;)Lcom/yandex/metrica/impl/ob/ek;

    move-result-object v0

    .line 221
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ee;->f()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/ek;->b(J)Lcom/yandex/metrica/impl/ob/ek;

    move-result-object v0

    .line 222
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ee;->d()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/ek;->c(J)Lcom/yandex/metrica/impl/ob/ek;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/yandex/metrica/impl/i;)V
    .locals 3

    .line 65
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/ej;->f(Lcom/yandex/metrica/impl/i;)V

    .line 66
    sget-object v0, Lcom/yandex/metrica/impl/ob/ej$1;->a:[I

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ej;->f:Lcom/yandex/metrica/impl/ob/ej$b;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/ej$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/ej;->e(Lcom/yandex/metrica/impl/i;)Lcom/yandex/metrica/impl/ob/ee;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ej;->e:Lcom/yandex/metrica/impl/ob/ee;

    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ej;->e:Lcom/yandex/metrica/impl/ob/ee;

    invoke-direct {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/ej;->b(Lcom/yandex/metrica/impl/ob/ee;Lcom/yandex/metrica/impl/i;)V

    .line 76
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/ej;->e(Lcom/yandex/metrica/impl/i;)Lcom/yandex/metrica/impl/ob/ee;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ej;->e:Lcom/yandex/metrica/impl/ob/ee;

    return-void

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ej;->e:Lcom/yandex/metrica/impl/ob/ee;

    invoke-direct {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/ej;->a(Lcom/yandex/metrica/impl/ob/ee;Lcom/yandex/metrica/impl/i;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 69
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ej;->e:Lcom/yandex/metrica/impl/ob/ee;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/i;->v()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/ee;->b(J)V

    return-void

    .line 71
    :cond_3
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/ej;->e(Lcom/yandex/metrica/impl/i;)Lcom/yandex/metrica/impl/ob/ee;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ej;->e:Lcom/yandex/metrica/impl/ob/ee;

    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/i;Z)V
    .locals 0

    .line 123
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/ej;->c(Lcom/yandex/metrica/impl/i;)Lcom/yandex/metrica/impl/ob/ee;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/ee;->a(Z)V

    return-void
.end method

.method public b()Lcom/yandex/metrica/impl/ob/ek;
    .locals 10

    .line 3028
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 129
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ej;->a:Lcom/yandex/metrica/impl/ob/ac;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/ac;->l()Lcom/yandex/metrica/impl/ob/fo;

    move-result-object v4

    sget-object v7, Lcom/yandex/metrica/impl/ob/en;->b:Lcom/yandex/metrica/impl/ob/en;

    move-wide v5, v0

    move-wide v8, v0

    invoke-virtual/range {v4 .. v9}, Lcom/yandex/metrica/impl/ob/fo;->a(JLcom/yandex/metrica/impl/ob/en;J)V

    .line 130
    new-instance v2, Lcom/yandex/metrica/impl/ob/ek;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/ek;-><init>()V

    .line 131
    invoke-virtual {v2, v0, v1}, Lcom/yandex/metrica/impl/ob/ek;->a(J)Lcom/yandex/metrica/impl/ob/ek;

    move-result-object v0

    sget-object v1, Lcom/yandex/metrica/impl/ob/en;->b:Lcom/yandex/metrica/impl/ob/en;

    .line 132
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ek;->a(Lcom/yandex/metrica/impl/ob/en;)Lcom/yandex/metrica/impl/ob/ek;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 133
    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/ek;->b(J)Lcom/yandex/metrica/impl/ob/ek;

    move-result-object v0

    .line 134
    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/ek;->c(J)Lcom/yandex/metrica/impl/ob/ek;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/yandex/metrica/impl/i;)V
    .locals 2

    .line 85
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/ej;->f(Lcom/yandex/metrica/impl/i;)V

    .line 86
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ej;->f:Lcom/yandex/metrica/impl/ob/ej$b;

    sget-object v1, Lcom/yandex/metrica/impl/ob/ej$b;->a:Lcom/yandex/metrica/impl/ob/ej$b;

    if-eq v0, v1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ej;->e:Lcom/yandex/metrica/impl/ob/ee;

    invoke-direct {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/ej;->b(Lcom/yandex/metrica/impl/ob/ee;Lcom/yandex/metrica/impl/i;)V

    .line 89
    :cond_0
    sget-object p1, Lcom/yandex/metrica/impl/ob/ej$b;->a:Lcom/yandex/metrica/impl/ob/ej$b;

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ej;->f:Lcom/yandex/metrica/impl/ob/ej$b;

    return-void
.end method

.method public c(Lcom/yandex/metrica/impl/i;)Lcom/yandex/metrica/impl/ob/ee;
    .locals 6

    .line 93
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/ej;->f(Lcom/yandex/metrica/impl/i;)V

    .line 94
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ej;->f:Lcom/yandex/metrica/impl/ob/ej$b;

    sget-object v1, Lcom/yandex/metrica/impl/ob/ej$b;->a:Lcom/yandex/metrica/impl/ob/ej$b;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ej;->e:Lcom/yandex/metrica/impl/ob/ee;

    invoke-direct {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/ej;->a(Lcom/yandex/metrica/impl/ob/ee;Lcom/yandex/metrica/impl/i;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    sget-object v0, Lcom/yandex/metrica/impl/ob/ej$b;->a:Lcom/yandex/metrica/impl/ob/ej$b;

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ej;->f:Lcom/yandex/metrica/impl/ob/ej$b;

    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ej;->e:Lcom/yandex/metrica/impl/ob/ee;

    .line 100
    :cond_0
    sget-object v0, Lcom/yandex/metrica/impl/ob/ej$1;->a:[I

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ej;->f:Lcom/yandex/metrica/impl/ob/ej$b;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/ej$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    .line 1198
    sget-object v0, Lcom/yandex/metrica/impl/ob/ej$b;->b:Lcom/yandex/metrica/impl/ob/ej$b;

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ej;->f:Lcom/yandex/metrica/impl/ob/ej$b;

    .line 1199
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/i;->v()J

    move-result-wide v0

    .line 1200
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ej;->d:Lcom/yandex/metrica/impl/ob/ed;

    new-instance v3, Lcom/yandex/metrica/impl/ob/ef;

    .line 1202
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/i;->w()J

    move-result-wide v4

    invoke-direct {v3, v0, v1, v4, v5}, Lcom/yandex/metrica/impl/ob/ef;-><init>(JJ)V

    .line 1200
    invoke-interface {v2, v3}, Lcom/yandex/metrica/impl/ob/ed;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/ee;

    move-result-object v2

    .line 1205
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/ej;->a:Lcom/yandex/metrica/impl/ob/ac;

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/ac;->A()Lcom/yandex/metrica/impl/ob/gb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/gb;->d()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1206
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ej;->b:Lcom/yandex/metrica/impl/ob/ej$a;

    .line 1424
    sget-object v1, Lcom/yandex/metrica/impl/s$a;->C:Lcom/yandex/metrica/impl/s$a;

    invoke-static {p1, v1}, Lcom/yandex/metrica/impl/i;->a(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/s$a;)Lcom/yandex/metrica/impl/i;

    move-result-object v1

    .line 1207
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/i;->v()J

    move-result-wide v3

    .line 1206
    invoke-static {v2, v3, v4}, Lcom/yandex/metrica/impl/ob/ej;->a(Lcom/yandex/metrica/impl/ob/ee;J)Lcom/yandex/metrica/impl/ob/ek;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/yandex/metrica/impl/ob/ej$a;->a(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/ob/ek;)V

    goto :goto_0

    .line 1208
    :cond_1
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/i;->e()I

    move-result v3

    sget-object v4, Lcom/yandex/metrica/impl/s$a;->B:Lcom/yandex/metrica/impl/s$a;

    invoke-virtual {v4}, Lcom/yandex/metrica/impl/s$a;->a()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 1209
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/ej;->b:Lcom/yandex/metrica/impl/ob/ej$a;

    invoke-static {v2, v0, v1}, Lcom/yandex/metrica/impl/ob/ej;->a(Lcom/yandex/metrica/impl/ob/ee;J)Lcom/yandex/metrica/impl/ob/ek;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Lcom/yandex/metrica/impl/ob/ej$a;->a(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/ob/ek;)V

    .line 1210
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/ej;->b:Lcom/yandex/metrica/impl/ob/ej$a;

    .line 2424
    sget-object v4, Lcom/yandex/metrica/impl/s$a;->C:Lcom/yandex/metrica/impl/s$a;

    invoke-static {p1, v4}, Lcom/yandex/metrica/impl/i;->a(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/s$a;)Lcom/yandex/metrica/impl/i;

    move-result-object p1

    .line 1210
    invoke-static {v2, v0, v1}, Lcom/yandex/metrica/impl/ob/ej;->a(Lcom/yandex/metrica/impl/ob/ee;J)Lcom/yandex/metrica/impl/ob/ek;

    move-result-object v0

    invoke-interface {v3, p1, v0}, Lcom/yandex/metrica/impl/ob/ej$a;->a(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/ob/ek;)V

    .line 108
    :cond_2
    :goto_0
    iput-object v2, p0, Lcom/yandex/metrica/impl/ob/ej;->e:Lcom/yandex/metrica/impl/ob/ee;

    .line 109
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/ej;->e:Lcom/yandex/metrica/impl/ob/ee;

    return-object p1

    .line 104
    :cond_3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ej;->e:Lcom/yandex/metrica/impl/ob/ee;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/i;->v()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/ee;->b(J)V

    .line 105
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/ej;->e:Lcom/yandex/metrica/impl/ob/ee;

    return-object p1

    .line 102
    :cond_4
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/ej;->e:Lcom/yandex/metrica/impl/ob/ee;

    return-object p1
.end method

.method public d(Lcom/yandex/metrica/impl/i;)Lcom/yandex/metrica/impl/ob/ek;
    .locals 3

    .line 114
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/ej;->c(Lcom/yandex/metrica/impl/i;)Lcom/yandex/metrica/impl/ob/ee;

    move-result-object v0

    .line 115
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/i;->v()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/ej;->a(Lcom/yandex/metrica/impl/ob/ee;J)Lcom/yandex/metrica/impl/ob/ek;

    move-result-object p1

    return-object p1
.end method

.method e(Lcom/yandex/metrica/impl/i;)Lcom/yandex/metrica/impl/ob/ee;
    .locals 6

    .line 141
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/i;->v()J

    move-result-wide v0

    .line 142
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ej;->c:Lcom/yandex/metrica/impl/ob/ed;

    new-instance v3, Lcom/yandex/metrica/impl/ob/ef;

    .line 144
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/i;->w()J

    move-result-wide v4

    invoke-direct {v3, v0, v1, v4, v5}, Lcom/yandex/metrica/impl/ob/ef;-><init>(JJ)V

    .line 142
    invoke-interface {v2, v3}, Lcom/yandex/metrica/impl/ob/ed;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/ee;

    move-result-object v2

    .line 146
    sget-object v3, Lcom/yandex/metrica/impl/ob/ej$b;->c:Lcom/yandex/metrica/impl/ob/ej$b;

    iput-object v3, p0, Lcom/yandex/metrica/impl/ob/ej;->f:Lcom/yandex/metrica/impl/ob/ej$b;

    .line 148
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/ej;->a:Lcom/yandex/metrica/impl/ob/ac;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/yandex/metrica/impl/ob/ac;->a(Z)V

    .line 149
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/ej;->b:Lcom/yandex/metrica/impl/ob/ej$a;

    .line 3424
    sget-object v4, Lcom/yandex/metrica/impl/s$a;->C:Lcom/yandex/metrica/impl/s$a;

    invoke-static {p1, v4}, Lcom/yandex/metrica/impl/i;->a(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/s$a;)Lcom/yandex/metrica/impl/i;

    move-result-object p1

    .line 150
    invoke-static {v2, v0, v1}, Lcom/yandex/metrica/impl/ob/ej;->a(Lcom/yandex/metrica/impl/ob/ee;J)Lcom/yandex/metrica/impl/ob/ek;

    move-result-object v0

    .line 149
    invoke-interface {v3, p1, v0}, Lcom/yandex/metrica/impl/ob/ej$a;->a(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/ob/ek;)V

    return-object v2
.end method
