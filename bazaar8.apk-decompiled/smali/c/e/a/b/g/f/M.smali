.class public final Lc/e/a/b/g/f/M;
.super Lc/e/a/b/g/f/nb;

# interfaces
.implements Lc/e/a/b/g/f/Ub;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/b/g/f/M$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/e/a/b/g/f/nb<",
        "Lc/e/a/b/g/f/M;",
        "Lc/e/a/b/g/f/M$a;",
        ">;",
        "Lc/e/a/b/g/f/Ub;"
    }
.end annotation


# static fields
.field public static volatile zztq:Lc/e/a/b/g/f/bc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/a/b/g/f/bc<",
            "Lc/e/a/b/g/f/M;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzvq:Lc/e/a/b/g/f/M;


# instance fields
.field public zztj:I

.field public zzuu:I

.field public zzvp:Lc/e/a/b/g/f/ub;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lc/e/a/b/g/f/M;

    invoke-direct {v0}, Lc/e/a/b/g/f/M;-><init>()V

    sput-object v0, Lc/e/a/b/g/f/M;->zzvq:Lc/e/a/b/g/f/M;

    .line 2
    const-class v0, Lc/e/a/b/g/f/M;

    sget-object v1, Lc/e/a/b/g/f/M;->zzvq:Lc/e/a/b/g/f/M;

    invoke-static {v0, v1}, Lc/e/a/b/g/f/nb;->a(Ljava/lang/Class;Lc/e/a/b/g/f/nb;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/e/a/b/g/f/nb;-><init>()V

    .line 2
    invoke-static {}, Lc/e/a/b/g/f/nb;->m()Lc/e/a/b/g/f/ub;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/b/g/f/M;->zzvp:Lc/e/a/b/g/f/ub;

    return-void
.end method

.method public static synthetic a(Lc/e/a/b/g/f/M;)V
    .locals 0

    .line 22
    invoke-virtual {p0}, Lc/e/a/b/g/f/M;->v()V

    return-void
.end method

.method public static synthetic a(Lc/e/a/b/g/f/M;I)V
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lc/e/a/b/g/f/M;->b(I)V

    return-void
.end method

.method public static synthetic a(Lc/e/a/b/g/f/M;J)V
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lc/e/a/b/g/f/M;->a(J)V

    return-void
.end method

.method public static synthetic a(Lc/e/a/b/g/f/M;Ljava/lang/Iterable;)V
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lc/e/a/b/g/f/M;->a(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static w()Lc/e/a/b/g/f/M$a;
    .locals 1

    .line 1
    sget-object v0, Lc/e/a/b/g/f/M;->zzvq:Lc/e/a/b/g/f/M;

    invoke-virtual {v0}, Lc/e/a/b/g/f/nb;->j()Lc/e/a/b/g/f/nb$a;

    move-result-object v0

    check-cast v0, Lc/e/a/b/g/f/M$a;

    return-object v0
.end method

.method public static synthetic x()Lc/e/a/b/g/f/M;
    .locals 1

    .line 1
    sget-object v0, Lc/e/a/b/g/f/M;->zzvq:Lc/e/a/b/g/f/M;

    return-object v0
.end method


# virtual methods
.method public final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 5
    sget-object p2, Lc/e/a/b/g/f/O;->a:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 6
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 7
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 8
    :pswitch_2
    sget-object p1, Lc/e/a/b/g/f/M;->zztq:Lc/e/a/b/g/f/bc;

    if-nez p1, :cond_1

    .line 9
    const-class p2, Lc/e/a/b/g/f/M;

    monitor-enter p2

    .line 10
    :try_start_0
    sget-object p1, Lc/e/a/b/g/f/M;->zztq:Lc/e/a/b/g/f/bc;

    if-nez p1, :cond_0

    .line 11
    new-instance p1, Lc/e/a/b/g/f/nb$b;

    sget-object p3, Lc/e/a/b/g/f/M;->zzvq:Lc/e/a/b/g/f/M;

    invoke-direct {p1, p3}, Lc/e/a/b/g/f/nb$b;-><init>(Lc/e/a/b/g/f/nb;)V

    .line 12
    sput-object p1, Lc/e/a/b/g/f/M;->zztq:Lc/e/a/b/g/f/bc;

    .line 13
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 14
    :pswitch_3
    sget-object p1, Lc/e/a/b/g/f/M;->zzvq:Lc/e/a/b/g/f/M;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    .line 15
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zztj"

    aput-object v0, p1, p2

    const-string p2, "zzuu"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzvp"

    aput-object p3, p1, p2

    .line 16
    sget-object p2, Lc/e/a/b/g/f/M;->zzvq:Lc/e/a/b/g/f/M;

    const-string p3, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u0004\u0000\u0002\u0014"

    invoke-static {p2, p3, p1}, Lc/e/a/b/g/f/nb;->a(Lc/e/a/b/g/f/Sb;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 17
    :pswitch_5
    new-instance p1, Lc/e/a/b/g/f/M$a;

    invoke-direct {p1, p2}, Lc/e/a/b/g/f/M$a;-><init>(Lc/e/a/b/g/f/O;)V

    return-object p1

    .line 18
    :pswitch_6
    new-instance p1, Lc/e/a/b/g/f/M;

    invoke-direct {p1}, Lc/e/a/b/g/f/M;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(J)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/g/f/M;->u()V

    .line 2
    iget-object v0, p0, Lc/e/a/b/g/f/M;->zzvp:Lc/e/a/b/g/f/ub;

    invoke-interface {v0, p1, p2}, Lc/e/a/b/g/f/ub;->h(J)V

    return-void
.end method

.method public final a(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lc/e/a/b/g/f/M;->u()V

    .line 4
    iget-object v0, p0, Lc/e/a/b/g/f/M;->zzvp:Lc/e/a/b/g/f/ub;

    invoke-static {p1, v0}, Lc/e/a/b/g/f/Ca;->a(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public final b(I)V
    .locals 1

    .line 1
    iget v0, p0, Lc/e/a/b/g/f/M;->zztj:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/e/a/b/g/f/M;->zztj:I

    .line 2
    iput p1, p0, Lc/e/a/b/g/f/M;->zzuu:I

    return-void
.end method

.method public final c(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/M;->zzvp:Lc/e/a/b/g/f/ub;

    invoke-interface {v0, p1}, Lc/e/a/b/g/f/ub;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final q()I
    .locals 1

    .line 1
    iget v0, p0, Lc/e/a/b/g/f/M;->zzuu:I

    return v0
.end method

.method public final r()Z
    .locals 2

    .line 1
    iget v0, p0, Lc/e/a/b/g/f/M;->zztj:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final s()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/M;->zzvp:Lc/e/a/b/g/f/ub;

    return-object v0
.end method

.method public final t()I
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/M;->zzvp:Lc/e/a/b/g/f/ub;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final u()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/M;->zzvp:Lc/e/a/b/g/f/ub;

    invoke-interface {v0}, Lc/e/a/b/g/f/vb;->s()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/e/a/b/g/f/M;->zzvp:Lc/e/a/b/g/f/ub;

    .line 3
    invoke-static {v0}, Lc/e/a/b/g/f/nb;->a(Lc/e/a/b/g/f/ub;)Lc/e/a/b/g/f/ub;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/b/g/f/M;->zzvp:Lc/e/a/b/g/f/ub;

    :cond_0
    return-void
.end method

.method public final v()V
    .locals 1

    .line 1
    invoke-static {}, Lc/e/a/b/g/f/nb;->m()Lc/e/a/b/g/f/ub;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/b/g/f/M;->zzvp:Lc/e/a/b/g/f/ub;

    return-void
.end method
