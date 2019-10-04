.class public final Lc/e/a/b/g/f/I;
.super Lc/e/a/b/g/f/nb;

# interfaces
.implements Lc/e/a/b/g/f/Ub;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/b/g/f/I$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/e/a/b/g/f/nb<",
        "Lc/e/a/b/g/f/I;",
        "Lc/e/a/b/g/f/I$a;",
        ">;",
        "Lc/e/a/b/g/f/Ub;"
    }
.end annotation


# static fields
.field public static volatile zztq:Lc/e/a/b/g/f/bc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/a/b/g/f/bc<",
            "Lc/e/a/b/g/f/I;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzuw:Lc/e/a/b/g/f/I;


# instance fields
.field public zztj:I

.field public zzuu:I

.field public zzuv:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lc/e/a/b/g/f/I;

    invoke-direct {v0}, Lc/e/a/b/g/f/I;-><init>()V

    sput-object v0, Lc/e/a/b/g/f/I;->zzuw:Lc/e/a/b/g/f/I;

    .line 2
    const-class v0, Lc/e/a/b/g/f/I;

    sget-object v1, Lc/e/a/b/g/f/I;->zzuw:Lc/e/a/b/g/f/I;

    invoke-static {v0, v1}, Lc/e/a/b/g/f/nb;->a(Ljava/lang/Class;Lc/e/a/b/g/f/nb;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/e/a/b/g/f/nb;-><init>()V

    return-void
.end method

.method public static synthetic a(Lc/e/a/b/g/f/I;I)V
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lc/e/a/b/g/f/I;->b(I)V

    return-void
.end method

.method public static synthetic a(Lc/e/a/b/g/f/I;J)V
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lc/e/a/b/g/f/I;->a(J)V

    return-void
.end method

.method public static u()Lc/e/a/b/g/f/I$a;
    .locals 1

    .line 1
    sget-object v0, Lc/e/a/b/g/f/I;->zzuw:Lc/e/a/b/g/f/I;

    invoke-virtual {v0}, Lc/e/a/b/g/f/nb;->j()Lc/e/a/b/g/f/nb$a;

    move-result-object v0

    check-cast v0, Lc/e/a/b/g/f/I$a;

    return-object v0
.end method

.method public static synthetic v()Lc/e/a/b/g/f/I;
    .locals 1

    .line 1
    sget-object v0, Lc/e/a/b/g/f/I;->zzuw:Lc/e/a/b/g/f/I;

    return-object v0
.end method


# virtual methods
.method public final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 3
    sget-object p2, Lc/e/a/b/g/f/O;->a:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 5
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 6
    :pswitch_2
    sget-object p1, Lc/e/a/b/g/f/I;->zztq:Lc/e/a/b/g/f/bc;

    if-nez p1, :cond_1

    .line 7
    const-class p2, Lc/e/a/b/g/f/I;

    monitor-enter p2

    .line 8
    :try_start_0
    sget-object p1, Lc/e/a/b/g/f/I;->zztq:Lc/e/a/b/g/f/bc;

    if-nez p1, :cond_0

    .line 9
    new-instance p1, Lc/e/a/b/g/f/nb$b;

    sget-object p3, Lc/e/a/b/g/f/I;->zzuw:Lc/e/a/b/g/f/I;

    invoke-direct {p1, p3}, Lc/e/a/b/g/f/nb$b;-><init>(Lc/e/a/b/g/f/nb;)V

    .line 10
    sput-object p1, Lc/e/a/b/g/f/I;->zztq:Lc/e/a/b/g/f/bc;

    .line 11
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

    .line 12
    :pswitch_3
    sget-object p1, Lc/e/a/b/g/f/I;->zzuw:Lc/e/a/b/g/f/I;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    .line 13
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zztj"

    aput-object v0, p1, p2

    const-string p2, "zzuu"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzuv"

    aput-object p3, p1, p2

    .line 14
    sget-object p2, Lc/e/a/b/g/f/I;->zzuw:Lc/e/a/b/g/f/I;

    const-string p3, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0004\u0000\u0002\u0002\u0001"

    invoke-static {p2, p3, p1}, Lc/e/a/b/g/f/nb;->a(Lc/e/a/b/g/f/Sb;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 15
    :pswitch_5
    new-instance p1, Lc/e/a/b/g/f/I$a;

    invoke-direct {p1, p2}, Lc/e/a/b/g/f/I$a;-><init>(Lc/e/a/b/g/f/O;)V

    return-object p1

    .line 16
    :pswitch_6
    new-instance p1, Lc/e/a/b/g/f/I;

    invoke-direct {p1}, Lc/e/a/b/g/f/I;-><init>()V

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
    iget v0, p0, Lc/e/a/b/g/f/I;->zztj:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lc/e/a/b/g/f/I;->zztj:I

    .line 2
    iput-wide p1, p0, Lc/e/a/b/g/f/I;->zzuv:J

    return-void
.end method

.method public final b(I)V
    .locals 1

    .line 1
    iget v0, p0, Lc/e/a/b/g/f/I;->zztj:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/e/a/b/g/f/I;->zztj:I

    .line 2
    iput p1, p0, Lc/e/a/b/g/f/I;->zzuu:I

    return-void
.end method

.method public final q()I
    .locals 1

    .line 1
    iget v0, p0, Lc/e/a/b/g/f/I;->zzuu:I

    return v0
.end method

.method public final r()Z
    .locals 2

    .line 1
    iget v0, p0, Lc/e/a/b/g/f/I;->zztj:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final s()Z
    .locals 1

    .line 1
    iget v0, p0, Lc/e/a/b/g/f/I;->zztj:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final t()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lc/e/a/b/g/f/I;->zzuv:J

    return-wide v0
.end method
