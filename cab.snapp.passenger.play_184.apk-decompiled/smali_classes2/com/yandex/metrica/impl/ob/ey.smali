.class public Lcom/yandex/metrica/impl/ob/ey;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/yandex/metrica/impl/ob/eu;

.field private c:Lcom/yandex/metrica/impl/ob/ev;

.field private d:Lcom/yandex/metrica/impl/ob/ex;

.field private e:Lcom/yandex/metrica/impl/ob/fg;

.field private f:Lcom/yandex/metrica/impl/ob/fh;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/eu;Lcom/yandex/metrica/impl/ob/ev;Lcom/yandex/metrica/impl/ob/ex;Lcom/yandex/metrica/impl/ob/fg;Lcom/yandex/metrica/impl/ob/fh;)V
    .locals 0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ey;->a:Landroid/content/Context;

    .line 159
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/ey;->b:Lcom/yandex/metrica/impl/ob/eu;

    .line 160
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/ey;->c:Lcom/yandex/metrica/impl/ob/ev;

    .line 161
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/ey;->d:Lcom/yandex/metrica/impl/ob/ex;

    .line 162
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/ey;->e:Lcom/yandex/metrica/impl/ob/fg;

    .line 163
    iput-object p6, p0, Lcom/yandex/metrica/impl/ob/ey;->f:Lcom/yandex/metrica/impl/ob/fh;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/yandex/metrica/impl/ob/ez;)V
    .locals 1

    .line 45
    new-instance v0, Lcom/yandex/metrica/impl/ob/ex;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/ex;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/yandex/metrica/impl/ob/ey;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/yandex/metrica/impl/ob/ez;Lcom/yandex/metrica/impl/ob/ex;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/yandex/metrica/impl/ob/ez;Lcom/yandex/metrica/impl/ob/ex;)V
    .locals 7

    .line 140
    new-instance v2, Lcom/yandex/metrica/impl/ob/eu;

    invoke-direct {v2, p1, p4}, Lcom/yandex/metrica/impl/ob/eu;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/ex;)V

    new-instance v3, Lcom/yandex/metrica/impl/ob/ev;

    invoke-direct {v3, p1, p2, p3}, Lcom/yandex/metrica/impl/ob/ev;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/yandex/metrica/impl/ob/ez;)V

    .line 145
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/fg;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/fg;

    move-result-object v5

    new-instance v6, Lcom/yandex/metrica/impl/ob/fh;

    invoke-direct {v6, p1}, Lcom/yandex/metrica/impl/ob/fh;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    .line 140
    invoke-direct/range {v0 .. v6}, Lcom/yandex/metrica/impl/ob/ey;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/eu;Lcom/yandex/metrica/impl/ob/ev;Lcom/yandex/metrica/impl/ob/ex;Lcom/yandex/metrica/impl/ob/fg;Lcom/yandex/metrica/impl/ob/fh;)V

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/ey;)Lcom/yandex/metrica/impl/ob/ex;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/ey;->d:Lcom/yandex/metrica/impl/ob/ex;

    return-object p0
.end method

.method private a(J)V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ey;->c:Lcom/yandex/metrica/impl/ob/ev;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/ev;->a(J)V

    .line 96
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ey;->f:Lcom/yandex/metrica/impl/ob/fh;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/fh;->a(Z)Lcom/yandex/metrica/impl/ob/fh;

    .line 97
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ey;->f:Lcom/yandex/metrica/impl/ob/fh;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/fh;->c(J)Lcom/yandex/metrica/impl/ob/fh;

    return-void
.end method

.method static synthetic b(Lcom/yandex/metrica/impl/ob/fa;)V
    .locals 0

    .line 24
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/ey;->c(Lcom/yandex/metrica/impl/ob/fa;)V

    return-void
.end method

.method private static c(Lcom/yandex/metrica/impl/ob/fa;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 133
    invoke-interface {p0}, Lcom/yandex/metrica/impl/ob/fa;->a()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 50
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ey;->e:Lcom/yandex/metrica/impl/ob/fg;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ey;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/fg;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ff;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 51
    iget-object v2, v0, Lcom/yandex/metrica/impl/ob/ff;->b:Lcom/yandex/metrica/impl/ob/fe;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/yandex/metrica/impl/ob/ff;->b:Lcom/yandex/metrica/impl/ob/fe;

    iget-object v2, v2, Lcom/yandex/metrica/impl/ob/fe;->b:Ljava/lang/Long;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/yandex/metrica/impl/ob/ff;->b:Lcom/yandex/metrica/impl/ob/fe;

    iget-object v2, v2, Lcom/yandex/metrica/impl/ob/fe;->a:Ljava/lang/Long;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    .line 56
    iget-object v2, v0, Lcom/yandex/metrica/impl/ob/ff;->b:Lcom/yandex/metrica/impl/ob/fe;

    iget-boolean v2, v2, Lcom/yandex/metrica/impl/ob/fe;->i:Z

    .line 57
    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/ff;->b:Lcom/yandex/metrica/impl/ob/fe;

    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/fe;->b:Ljava/lang/Long;

    .line 58
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/ey;->f:Lcom/yandex/metrica/impl/ob/fh;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/yandex/metrica/impl/ob/fh;->d(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 59
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/ey;->f:Lcom/yandex/metrica/impl/ob/fh;

    invoke-virtual {v4, v1}, Lcom/yandex/metrica/impl/ob/fh;->b(Z)Z

    move-result v4

    .line 60
    iget-object v5, p0, Lcom/yandex/metrica/impl/ob/ey;->c:Lcom/yandex/metrica/impl/ob/ev;

    invoke-virtual {v5}, Lcom/yandex/metrica/impl/ob/ev;->b()Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v2, :cond_4

    .line 63
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/ey;->a(J)V

    return-void

    :cond_1
    if-eq v2, v4, :cond_3

    if-eqz v2, :cond_2

    .line 72
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/ey;->a(J)V

    return-void

    .line 1101
    :cond_2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ey;->c:Lcom/yandex/metrica/impl/ob/ev;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ev;->a()V

    .line 1102
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ey;->f:Lcom/yandex/metrica/impl/ob/fh;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/fh;->a(Z)Lcom/yandex/metrica/impl/ob/fh;

    return-void

    :cond_3
    if-eqz v2, :cond_4

    .line 82
    invoke-virtual {v0, v3}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v1

    if-eqz v1, :cond_4

    .line 84
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/ey;->a(J)V

    :cond_4
    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ob/fa;)V
    .locals 6

    .line 106
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ey;->e:Lcom/yandex/metrica/impl/ob/fg;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ey;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/fg;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ff;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 109
    iget-object v1, v0, Lcom/yandex/metrica/impl/ob/ff;->b:Lcom/yandex/metrica/impl/ob/fe;

    if-eqz v1, :cond_1

    .line 110
    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/ff;->b:Lcom/yandex/metrica/impl/ob/fe;

    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/fe;->a:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 113
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ey;->d:Lcom/yandex/metrica/impl/ob/ex;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ey;->b:Lcom/yandex/metrica/impl/ob/eu;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/eu;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/ex;->a(Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ey;->c:Lcom/yandex/metrica/impl/ob/ev;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    new-instance v0, Lcom/yandex/metrica/impl/ob/ey$1;

    invoke-direct {v0, p0, p1}, Lcom/yandex/metrica/impl/ob/ey$1;-><init>(Lcom/yandex/metrica/impl/ob/ey;Lcom/yandex/metrica/impl/ob/fa;)V

    invoke-virtual {v1, v2, v3, v0}, Lcom/yandex/metrica/impl/ob/ev;->a(JLcom/yandex/metrica/impl/ob/ev$a;)V

    return-void

    .line 123
    :cond_0
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/ey;->c(Lcom/yandex/metrica/impl/ob/fa;)V

    return-void

    .line 127
    :cond_1
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/ey;->c(Lcom/yandex/metrica/impl/ob/fa;)V

    return-void
.end method
