.class public final Lc/e/a/b/g/f/L;
.super Lc/e/a/b/g/f/nb;

# interfaces
.implements Lc/e/a/b/g/f/Ub;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/b/g/f/L$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/e/a/b/g/f/nb<",
        "Lc/e/a/b/g/f/L;",
        "Lc/e/a/b/g/f/L$a;",
        ">;",
        "Lc/e/a/b/g/f/Ub;"
    }
.end annotation


# static fields
.field public static volatile zztq:Lc/e/a/b/g/f/bc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/a/b/g/f/bc<",
            "Lc/e/a/b/g/f/L;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzvo:Lc/e/a/b/g/f/L;


# instance fields
.field public zzvk:Lc/e/a/b/g/f/ub;

.field public zzvl:Lc/e/a/b/g/f/ub;

.field public zzvm:Lc/e/a/b/g/f/vb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/a/b/g/f/vb<",
            "Lc/e/a/b/g/f/I;",
            ">;"
        }
    .end annotation
.end field

.field public zzvn:Lc/e/a/b/g/f/vb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/a/b/g/f/vb<",
            "Lc/e/a/b/g/f/M;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lc/e/a/b/g/f/L;

    invoke-direct {v0}, Lc/e/a/b/g/f/L;-><init>()V

    sput-object v0, Lc/e/a/b/g/f/L;->zzvo:Lc/e/a/b/g/f/L;

    .line 2
    const-class v0, Lc/e/a/b/g/f/L;

    sget-object v1, Lc/e/a/b/g/f/L;->zzvo:Lc/e/a/b/g/f/L;

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

    iput-object v0, p0, Lc/e/a/b/g/f/L;->zzvk:Lc/e/a/b/g/f/ub;

    .line 3
    invoke-static {}, Lc/e/a/b/g/f/nb;->m()Lc/e/a/b/g/f/ub;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/b/g/f/L;->zzvl:Lc/e/a/b/g/f/ub;

    .line 4
    invoke-static {}, Lc/e/a/b/g/f/nb;->p()Lc/e/a/b/g/f/vb;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/b/g/f/L;->zzvm:Lc/e/a/b/g/f/vb;

    .line 5
    invoke-static {}, Lc/e/a/b/g/f/nb;->p()Lc/e/a/b/g/f/vb;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/b/g/f/L;->zzvn:Lc/e/a/b/g/f/vb;

    return-void
.end method

.method public static synthetic A()Lc/e/a/b/g/f/L;
    .locals 1

    .line 1
    sget-object v0, Lc/e/a/b/g/f/L;->zzvo:Lc/e/a/b/g/f/L;

    return-object v0
.end method

.method public static a([BLc/e/a/b/g/f/cb;)Lc/e/a/b/g/f/L;
    .locals 1

    .line 5
    sget-object v0, Lc/e/a/b/g/f/L;->zzvo:Lc/e/a/b/g/f/L;

    invoke-static {v0, p0, p1}, Lc/e/a/b/g/f/nb;->a(Lc/e/a/b/g/f/nb;[BLc/e/a/b/g/f/cb;)Lc/e/a/b/g/f/nb;

    move-result-object p0

    check-cast p0, Lc/e/a/b/g/f/L;

    return-object p0
.end method

.method public static synthetic a(Lc/e/a/b/g/f/L;Ljava/lang/Iterable;)V
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lc/e/a/b/g/f/L;->a(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static synthetic b(Lc/e/a/b/g/f/L;Ljava/lang/Iterable;)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lc/e/a/b/g/f/L;->b(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static synthetic c(Lc/e/a/b/g/f/L;Ljava/lang/Iterable;)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lc/e/a/b/g/f/L;->c(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static synthetic d(Lc/e/a/b/g/f/L;Ljava/lang/Iterable;)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lc/e/a/b/g/f/L;->d(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static y()Lc/e/a/b/g/f/L$a;
    .locals 1

    .line 1
    sget-object v0, Lc/e/a/b/g/f/L;->zzvo:Lc/e/a/b/g/f/L;

    invoke-virtual {v0}, Lc/e/a/b/g/f/nb;->j()Lc/e/a/b/g/f/nb$a;

    move-result-object v0

    check-cast v0, Lc/e/a/b/g/f/L$a;

    return-object v0
.end method

.method public static z()Lc/e/a/b/g/f/L;
    .locals 1

    .line 1
    sget-object v0, Lc/e/a/b/g/f/L;->zzvo:Lc/e/a/b/g/f/L;

    return-object v0
.end method


# virtual methods
.method public final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 6
    sget-object p2, Lc/e/a/b/g/f/O;->a:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 7
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 8
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 9
    :pswitch_2
    sget-object p1, Lc/e/a/b/g/f/L;->zztq:Lc/e/a/b/g/f/bc;

    if-nez p1, :cond_1

    .line 10
    const-class p2, Lc/e/a/b/g/f/L;

    monitor-enter p2

    .line 11
    :try_start_0
    sget-object p1, Lc/e/a/b/g/f/L;->zztq:Lc/e/a/b/g/f/bc;

    if-nez p1, :cond_0

    .line 12
    new-instance p1, Lc/e/a/b/g/f/nb$b;

    sget-object p3, Lc/e/a/b/g/f/L;->zzvo:Lc/e/a/b/g/f/L;

    invoke-direct {p1, p3}, Lc/e/a/b/g/f/nb$b;-><init>(Lc/e/a/b/g/f/nb;)V

    .line 13
    sput-object p1, Lc/e/a/b/g/f/L;->zztq:Lc/e/a/b/g/f/bc;

    .line 14
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

    .line 15
    :pswitch_3
    sget-object p1, Lc/e/a/b/g/f/L;->zzvo:Lc/e/a/b/g/f/L;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    .line 16
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzvk"

    aput-object v0, p1, p2

    const-string p2, "zzvl"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzvm"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-class p3, Lc/e/a/b/g/f/I;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzvn"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-class p3, Lc/e/a/b/g/f/M;

    aput-object p3, p1, p2

    .line 17
    sget-object p2, Lc/e/a/b/g/f/L;->zzvo:Lc/e/a/b/g/f/L;

    const-string p3, "\u0001\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0004\u0000\u0001\u0015\u0002\u0015\u0003\u001b\u0004\u001b"

    invoke-static {p2, p3, p1}, Lc/e/a/b/g/f/nb;->a(Lc/e/a/b/g/f/Sb;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 18
    :pswitch_5
    new-instance p1, Lc/e/a/b/g/f/L$a;

    invoke-direct {p1, p2}, Lc/e/a/b/g/f/L$a;-><init>(Lc/e/a/b/g/f/O;)V

    return-object p1

    .line 19
    :pswitch_6
    new-instance p1, Lc/e/a/b/g/f/L;

    invoke-direct {p1}, Lc/e/a/b/g/f/L;-><init>()V

    return-object p1

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

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/L;->zzvk:Lc/e/a/b/g/f/ub;

    invoke-interface {v0}, Lc/e/a/b/g/f/vb;->s()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/e/a/b/g/f/L;->zzvk:Lc/e/a/b/g/f/ub;

    .line 3
    invoke-static {v0}, Lc/e/a/b/g/f/nb;->a(Lc/e/a/b/g/f/ub;)Lc/e/a/b/g/f/ub;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/b/g/f/L;->zzvk:Lc/e/a/b/g/f/ub;

    .line 4
    :cond_0
    iget-object v0, p0, Lc/e/a/b/g/f/L;->zzvk:Lc/e/a/b/g/f/ub;

    invoke-static {p1, v0}, Lc/e/a/b/g/f/Ca;->a(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public final b(Ljava/lang/Iterable;)V
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

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/L;->zzvl:Lc/e/a/b/g/f/ub;

    invoke-interface {v0}, Lc/e/a/b/g/f/vb;->s()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/e/a/b/g/f/L;->zzvl:Lc/e/a/b/g/f/ub;

    .line 3
    invoke-static {v0}, Lc/e/a/b/g/f/nb;->a(Lc/e/a/b/g/f/ub;)Lc/e/a/b/g/f/ub;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/b/g/f/L;->zzvl:Lc/e/a/b/g/f/ub;

    .line 4
    :cond_0
    iget-object v0, p0, Lc/e/a/b/g/f/L;->zzvl:Lc/e/a/b/g/f/ub;

    invoke-static {p1, v0}, Lc/e/a/b/g/f/Ca;->a(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public final c(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lc/e/a/b/g/f/I;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/L;->zzvm:Lc/e/a/b/g/f/vb;

    invoke-interface {v0}, Lc/e/a/b/g/f/vb;->s()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/e/a/b/g/f/L;->zzvm:Lc/e/a/b/g/f/vb;

    .line 3
    invoke-static {v0}, Lc/e/a/b/g/f/nb;->a(Lc/e/a/b/g/f/vb;)Lc/e/a/b/g/f/vb;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/b/g/f/L;->zzvm:Lc/e/a/b/g/f/vb;

    .line 4
    :cond_0
    iget-object v0, p0, Lc/e/a/b/g/f/L;->zzvm:Lc/e/a/b/g/f/vb;

    invoke-static {p1, v0}, Lc/e/a/b/g/f/Ca;->a(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public final d(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lc/e/a/b/g/f/M;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/L;->zzvn:Lc/e/a/b/g/f/vb;

    invoke-interface {v0}, Lc/e/a/b/g/f/vb;->s()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/e/a/b/g/f/L;->zzvn:Lc/e/a/b/g/f/vb;

    .line 3
    invoke-static {v0}, Lc/e/a/b/g/f/nb;->a(Lc/e/a/b/g/f/vb;)Lc/e/a/b/g/f/vb;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/b/g/f/L;->zzvn:Lc/e/a/b/g/f/vb;

    .line 4
    :cond_0
    iget-object v0, p0, Lc/e/a/b/g/f/L;->zzvn:Lc/e/a/b/g/f/vb;

    invoke-static {p1, v0}, Lc/e/a/b/g/f/Ca;->a(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public final q()Ljava/util/List;
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
    iget-object v0, p0, Lc/e/a/b/g/f/L;->zzvk:Lc/e/a/b/g/f/ub;

    return-object v0
.end method

.method public final r()I
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/L;->zzvk:Lc/e/a/b/g/f/ub;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

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
    iget-object v0, p0, Lc/e/a/b/g/f/L;->zzvl:Lc/e/a/b/g/f/ub;

    return-object v0
.end method

.method public final t()I
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/L;->zzvl:Lc/e/a/b/g/f/ub;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final u()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lc/e/a/b/g/f/I;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/L;->zzvm:Lc/e/a/b/g/f/vb;

    return-object v0
.end method

.method public final v()I
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/L;->zzvm:Lc/e/a/b/g/f/vb;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final w()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lc/e/a/b/g/f/M;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/L;->zzvn:Lc/e/a/b/g/f/vb;

    return-object v0
.end method

.method public final x()I
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/L;->zzvn:Lc/e/a/b/g/f/vb;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
