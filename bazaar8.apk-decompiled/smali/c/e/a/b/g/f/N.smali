.class public final Lc/e/a/b/g/f/N;
.super Lc/e/a/b/g/f/nb;

# interfaces
.implements Lc/e/a/b/g/f/Ub;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/b/g/f/N$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/e/a/b/g/f/nb<",
        "Lc/e/a/b/g/f/N;",
        "Lc/e/a/b/g/f/N$a;",
        ">;",
        "Lc/e/a/b/g/f/Ub;"
    }
.end annotation


# static fields
.field public static volatile zztq:Lc/e/a/b/g/f/bc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/a/b/g/f/bc<",
            "Lc/e/a/b/g/f/N;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzvs:Lc/e/a/b/g/f/N;


# instance fields
.field public zztj:I

.field public zzux:Ljava/lang/String;

.field public zzuy:J

.field public zzva:Ljava/lang/String;

.field public zzvb:F

.field public zzvc:D

.field public zzvr:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lc/e/a/b/g/f/N;

    invoke-direct {v0}, Lc/e/a/b/g/f/N;-><init>()V

    sput-object v0, Lc/e/a/b/g/f/N;->zzvs:Lc/e/a/b/g/f/N;

    .line 2
    const-class v0, Lc/e/a/b/g/f/N;

    sget-object v1, Lc/e/a/b/g/f/N;->zzvs:Lc/e/a/b/g/f/N;

    invoke-static {v0, v1}, Lc/e/a/b/g/f/nb;->a(Ljava/lang/Class;Lc/e/a/b/g/f/nb;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/e/a/b/g/f/nb;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lc/e/a/b/g/f/N;->zzux:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lc/e/a/b/g/f/N;->zzva:Ljava/lang/String;

    return-void
.end method

.method public static D()Lc/e/a/b/g/f/N$a;
    .locals 1

    .line 1
    sget-object v0, Lc/e/a/b/g/f/N;->zzvs:Lc/e/a/b/g/f/N;

    invoke-virtual {v0}, Lc/e/a/b/g/f/nb;->j()Lc/e/a/b/g/f/nb$a;

    move-result-object v0

    check-cast v0, Lc/e/a/b/g/f/N$a;

    return-object v0
.end method

.method public static synthetic E()Lc/e/a/b/g/f/N;
    .locals 1

    .line 1
    sget-object v0, Lc/e/a/b/g/f/N;->zzvs:Lc/e/a/b/g/f/N;

    return-object v0
.end method

.method public static synthetic a(Lc/e/a/b/g/f/N;)V
    .locals 0

    .line 24
    invoke-virtual {p0}, Lc/e/a/b/g/f/N;->u()V

    return-void
.end method

.method public static synthetic a(Lc/e/a/b/g/f/N;D)V
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2}, Lc/e/a/b/g/f/N;->a(D)V

    return-void
.end method

.method public static synthetic a(Lc/e/a/b/g/f/N;J)V
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2}, Lc/e/a/b/g/f/N;->b(J)V

    return-void
.end method

.method public static synthetic a(Lc/e/a/b/g/f/N;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lc/e/a/b/g/f/N;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lc/e/a/b/g/f/N;)V
    .locals 0

    .line 8
    invoke-virtual {p0}, Lc/e/a/b/g/f/N;->x()V

    return-void
.end method

.method public static synthetic b(Lc/e/a/b/g/f/N;J)V
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2}, Lc/e/a/b/g/f/N;->a(J)V

    return-void
.end method

.method public static synthetic b(Lc/e/a/b/g/f/N;Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lc/e/a/b/g/f/N;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lc/e/a/b/g/f/N;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/g/f/N;->A()V

    return-void
.end method

.method public static r()Lc/e/a/b/g/f/bc;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/e/a/b/g/f/bc<",
            "Lc/e/a/b/g/f/N;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lc/e/a/b/g/f/N;->zzvs:Lc/e/a/b/g/f/N;

    .line 2
    sget v1, Lc/e/a/b/g/f/nb$e;->g:I

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2, v2}, Lc/e/a/b/g/f/N;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Lc/e/a/b/g/f/bc;

    return-object v0
.end method


# virtual methods
.method public final A()V
    .locals 2

    .line 1
    iget v0, p0, Lc/e/a/b/g/f/N;->zztj:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lc/e/a/b/g/f/N;->zztj:I

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lc/e/a/b/g/f/N;->zzvc:D

    return-void
.end method

.method public final B()Z
    .locals 2

    .line 1
    iget v0, p0, Lc/e/a/b/g/f/N;->zztj:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final C()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lc/e/a/b/g/f/N;->zzvr:J

    return-wide v0
.end method

.method public final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 8
    sget-object p2, Lc/e/a/b/g/f/O;->a:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 9
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 10
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 11
    :pswitch_2
    sget-object p1, Lc/e/a/b/g/f/N;->zztq:Lc/e/a/b/g/f/bc;

    if-nez p1, :cond_1

    .line 12
    const-class p2, Lc/e/a/b/g/f/N;

    monitor-enter p2

    .line 13
    :try_start_0
    sget-object p1, Lc/e/a/b/g/f/N;->zztq:Lc/e/a/b/g/f/bc;

    if-nez p1, :cond_0

    .line 14
    new-instance p1, Lc/e/a/b/g/f/nb$b;

    sget-object p3, Lc/e/a/b/g/f/N;->zzvs:Lc/e/a/b/g/f/N;

    invoke-direct {p1, p3}, Lc/e/a/b/g/f/nb$b;-><init>(Lc/e/a/b/g/f/nb;)V

    .line 15
    sput-object p1, Lc/e/a/b/g/f/N;->zztq:Lc/e/a/b/g/f/bc;

    .line 16
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

    .line 17
    :pswitch_3
    sget-object p1, Lc/e/a/b/g/f/N;->zzvs:Lc/e/a/b/g/f/N;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    .line 18
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zztj"

    aput-object v0, p1, p2

    const-string p2, "zzvr"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzux"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzva"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzuy"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzvb"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzvc"

    aput-object p3, p1, p2

    .line 19
    sget-object p2, Lc/e/a/b/g/f/N;->zzvs:Lc/e/a/b/g/f/N;

    const-string p3, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u0002\u0000\u0002\u0008\u0001\u0003\u0008\u0002\u0004\u0002\u0003\u0005\u0001\u0004\u0006\u0000\u0005"

    invoke-static {p2, p3, p1}, Lc/e/a/b/g/f/nb;->a(Lc/e/a/b/g/f/Sb;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 20
    :pswitch_5
    new-instance p1, Lc/e/a/b/g/f/N$a;

    invoke-direct {p1, p2}, Lc/e/a/b/g/f/N$a;-><init>(Lc/e/a/b/g/f/O;)V

    return-object p1

    .line 21
    :pswitch_6
    new-instance p1, Lc/e/a/b/g/f/N;

    invoke-direct {p1}, Lc/e/a/b/g/f/N;-><init>()V

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

.method public final a(D)V
    .locals 1

    .line 6
    iget v0, p0, Lc/e/a/b/g/f/N;->zztj:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lc/e/a/b/g/f/N;->zztj:I

    .line 7
    iput-wide p1, p0, Lc/e/a/b/g/f/N;->zzvc:D

    return-void
.end method

.method public final a(J)V
    .locals 1

    .line 4
    iget v0, p0, Lc/e/a/b/g/f/N;->zztj:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lc/e/a/b/g/f/N;->zztj:I

    .line 5
    iput-wide p1, p0, Lc/e/a/b/g/f/N;->zzuy:J

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget v0, p0, Lc/e/a/b/g/f/N;->zztj:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lc/e/a/b/g/f/N;->zztj:I

    .line 2
    iput-object p1, p0, Lc/e/a/b/g/f/N;->zzux:Ljava/lang/String;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public final b(J)V
    .locals 1

    .line 1
    iget v0, p0, Lc/e/a/b/g/f/N;->zztj:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/e/a/b/g/f/N;->zztj:I

    .line 2
    iput-wide p1, p0, Lc/e/a/b/g/f/N;->zzvr:J

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 3
    iget v0, p0, Lc/e/a/b/g/f/N;->zztj:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lc/e/a/b/g/f/N;->zztj:I

    .line 4
    iput-object p1, p0, Lc/e/a/b/g/f/N;->zzva:Ljava/lang/String;

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/N;->zzux:Ljava/lang/String;

    return-object v0
.end method

.method public final s()Z
    .locals 1

    .line 1
    iget v0, p0, Lc/e/a/b/g/f/N;->zztj:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/N;->zzva:Ljava/lang/String;

    return-object v0
.end method

.method public final u()V
    .locals 1

    .line 1
    iget v0, p0, Lc/e/a/b/g/f/N;->zztj:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lc/e/a/b/g/f/N;->zztj:I

    .line 2
    sget-object v0, Lc/e/a/b/g/f/N;->zzvs:Lc/e/a/b/g/f/N;

    .line 3
    iget-object v0, v0, Lc/e/a/b/g/f/N;->zzva:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lc/e/a/b/g/f/N;->zzva:Ljava/lang/String;

    return-void
.end method

.method public final v()Z
    .locals 1

    .line 1
    iget v0, p0, Lc/e/a/b/g/f/N;->zztj:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final w()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lc/e/a/b/g/f/N;->zzuy:J

    return-wide v0
.end method

.method public final x()V
    .locals 2

    .line 1
    iget v0, p0, Lc/e/a/b/g/f/N;->zztj:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lc/e/a/b/g/f/N;->zztj:I

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lc/e/a/b/g/f/N;->zzuy:J

    return-void
.end method

.method public final y()Z
    .locals 1

    .line 1
    iget v0, p0, Lc/e/a/b/g/f/N;->zztj:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final z()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lc/e/a/b/g/f/N;->zzvc:D

    return-wide v0
.end method