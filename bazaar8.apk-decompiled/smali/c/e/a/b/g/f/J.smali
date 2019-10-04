.class public final Lc/e/a/b/g/f/J;
.super Lc/e/a/b/g/f/nb;

# interfaces
.implements Lc/e/a/b/g/f/Ub;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/b/g/f/J$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/e/a/b/g/f/nb<",
        "Lc/e/a/b/g/f/J;",
        "Lc/e/a/b/g/f/J$a;",
        ">;",
        "Lc/e/a/b/g/f/Ub;"
    }
.end annotation


# static fields
.field public static volatile zztq:Lc/e/a/b/g/f/bc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/a/b/g/f/bc<",
            "Lc/e/a/b/g/f/J;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzuz:Lc/e/a/b/g/f/J;


# instance fields
.field public zztj:I

.field public zzux:Ljava/lang/String;

.field public zzuy:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lc/e/a/b/g/f/J;

    invoke-direct {v0}, Lc/e/a/b/g/f/J;-><init>()V

    sput-object v0, Lc/e/a/b/g/f/J;->zzuz:Lc/e/a/b/g/f/J;

    .line 2
    const-class v0, Lc/e/a/b/g/f/J;

    sget-object v1, Lc/e/a/b/g/f/J;->zzuz:Lc/e/a/b/g/f/J;

    invoke-static {v0, v1}, Lc/e/a/b/g/f/nb;->a(Ljava/lang/Class;Lc/e/a/b/g/f/nb;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/e/a/b/g/f/nb;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lc/e/a/b/g/f/J;->zzux:Ljava/lang/String;

    return-void
.end method

.method public static synthetic q()Lc/e/a/b/g/f/J;
    .locals 1

    .line 1
    sget-object v0, Lc/e/a/b/g/f/J;->zzuz:Lc/e/a/b/g/f/J;

    return-object v0
.end method


# virtual methods
.method public final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object p2, Lc/e/a/b/g/f/O;->a:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 3
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 4
    :pswitch_2
    sget-object p1, Lc/e/a/b/g/f/J;->zztq:Lc/e/a/b/g/f/bc;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lc/e/a/b/g/f/J;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lc/e/a/b/g/f/J;->zztq:Lc/e/a/b/g/f/bc;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lc/e/a/b/g/f/nb$b;

    sget-object p3, Lc/e/a/b/g/f/J;->zzuz:Lc/e/a/b/g/f/J;

    invoke-direct {p1, p3}, Lc/e/a/b/g/f/nb$b;-><init>(Lc/e/a/b/g/f/nb;)V

    .line 8
    sput-object p1, Lc/e/a/b/g/f/J;->zztq:Lc/e/a/b/g/f/bc;

    .line 9
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

    .line 10
    :pswitch_3
    sget-object p1, Lc/e/a/b/g/f/J;->zzuz:Lc/e/a/b/g/f/J;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    .line 11
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zztj"

    aput-object v0, p1, p2

    const-string p2, "zzux"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzuy"

    aput-object p3, p1, p2

    .line 12
    sget-object p2, Lc/e/a/b/g/f/J;->zzuz:Lc/e/a/b/g/f/J;

    const-string p3, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0008\u0000\u0002\u0002\u0001"

    invoke-static {p2, p3, p1}, Lc/e/a/b/g/f/nb;->a(Lc/e/a/b/g/f/Sb;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_5
    new-instance p1, Lc/e/a/b/g/f/J$a;

    invoke-direct {p1, p2}, Lc/e/a/b/g/f/J$a;-><init>(Lc/e/a/b/g/f/O;)V

    return-object p1

    .line 14
    :pswitch_6
    new-instance p1, Lc/e/a/b/g/f/J;

    invoke-direct {p1}, Lc/e/a/b/g/f/J;-><init>()V

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
