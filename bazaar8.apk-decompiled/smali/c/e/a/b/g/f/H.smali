.class public final Lc/e/a/b/g/f/H;
.super Lc/e/a/b/g/f/nb;

# interfaces
.implements Lc/e/a/b/g/f/Ub;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/b/g/f/H$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/e/a/b/g/f/nb<",
        "Lc/e/a/b/g/f/H;",
        "Lc/e/a/b/g/f/H$a;",
        ">;",
        "Lc/e/a/b/g/f/Ub;"
    }
.end annotation


# static fields
.field public static volatile zztq:Lc/e/a/b/g/f/bc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/a/b/g/f/bc<",
            "Lc/e/a/b/g/f/H;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzut:Lc/e/a/b/g/f/H;


# instance fields
.field public zztj:I

.field public zzup:I

.field public zzuq:Lc/e/a/b/g/f/L;

.field public zzur:Lc/e/a/b/g/f/L;

.field public zzus:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lc/e/a/b/g/f/H;

    invoke-direct {v0}, Lc/e/a/b/g/f/H;-><init>()V

    sput-object v0, Lc/e/a/b/g/f/H;->zzut:Lc/e/a/b/g/f/H;

    .line 2
    const-class v0, Lc/e/a/b/g/f/H;

    sget-object v1, Lc/e/a/b/g/f/H;->zzut:Lc/e/a/b/g/f/H;

    invoke-static {v0, v1}, Lc/e/a/b/g/f/nb;->a(Ljava/lang/Class;Lc/e/a/b/g/f/nb;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/e/a/b/g/f/nb;-><init>()V

    return-void
.end method

.method public static synthetic a(Lc/e/a/b/g/f/H;I)V
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lc/e/a/b/g/f/H;->b(I)V

    return-void
.end method

.method public static synthetic a(Lc/e/a/b/g/f/H;Lc/e/a/b/g/f/L$a;)V
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lc/e/a/b/g/f/H;->a(Lc/e/a/b/g/f/L$a;)V

    return-void
.end method

.method public static synthetic a(Lc/e/a/b/g/f/H;Lc/e/a/b/g/f/L;)V
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lc/e/a/b/g/f/H;->a(Lc/e/a/b/g/f/L;)V

    return-void
.end method

.method public static synthetic a(Lc/e/a/b/g/f/H;Z)V
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lc/e/a/b/g/f/H;->a(Z)V

    return-void
.end method

.method public static q()Lc/e/a/b/g/f/bc;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/e/a/b/g/f/bc<",
            "Lc/e/a/b/g/f/H;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lc/e/a/b/g/f/H;->zzut:Lc/e/a/b/g/f/H;

    .line 2
    sget v1, Lc/e/a/b/g/f/nb$e;->g:I

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2, v2}, Lc/e/a/b/g/f/H;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Lc/e/a/b/g/f/bc;

    return-object v0
.end method

.method public static y()Lc/e/a/b/g/f/H$a;
    .locals 1

    .line 1
    sget-object v0, Lc/e/a/b/g/f/H;->zzut:Lc/e/a/b/g/f/H;

    invoke-virtual {v0}, Lc/e/a/b/g/f/nb;->j()Lc/e/a/b/g/f/nb$a;

    move-result-object v0

    check-cast v0, Lc/e/a/b/g/f/H$a;

    return-object v0
.end method

.method public static synthetic z()Lc/e/a/b/g/f/H;
    .locals 1

    .line 1
    sget-object v0, Lc/e/a/b/g/f/H;->zzut:Lc/e/a/b/g/f/H;

    return-object v0
.end method


# virtual methods
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
    sget-object p1, Lc/e/a/b/g/f/H;->zztq:Lc/e/a/b/g/f/bc;

    if-nez p1, :cond_1

    .line 12
    const-class p2, Lc/e/a/b/g/f/H;

    monitor-enter p2

    .line 13
    :try_start_0
    sget-object p1, Lc/e/a/b/g/f/H;->zztq:Lc/e/a/b/g/f/bc;

    if-nez p1, :cond_0

    .line 14
    new-instance p1, Lc/e/a/b/g/f/nb$b;

    sget-object p3, Lc/e/a/b/g/f/H;->zzut:Lc/e/a/b/g/f/H;

    invoke-direct {p1, p3}, Lc/e/a/b/g/f/nb$b;-><init>(Lc/e/a/b/g/f/nb;)V

    .line 15
    sput-object p1, Lc/e/a/b/g/f/H;->zztq:Lc/e/a/b/g/f/bc;

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
    sget-object p1, Lc/e/a/b/g/f/H;->zzut:Lc/e/a/b/g/f/H;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    .line 18
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zztj"

    aput-object v0, p1, p2

    const-string p2, "zzup"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzuq"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzur"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzus"

    aput-object p3, p1, p2

    .line 19
    sget-object p2, Lc/e/a/b/g/f/H;->zzut:Lc/e/a/b/g/f/H;

    const-string p3, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0004\u0000\u0002\t\u0001\u0003\t\u0002\u0004\u0007\u0003"

    invoke-static {p2, p3, p1}, Lc/e/a/b/g/f/nb;->a(Lc/e/a/b/g/f/Sb;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 20
    :pswitch_5
    new-instance p1, Lc/e/a/b/g/f/H$a;

    invoke-direct {p1, p2}, Lc/e/a/b/g/f/H$a;-><init>(Lc/e/a/b/g/f/O;)V

    return-object p1

    .line 21
    :pswitch_6
    new-instance p1, Lc/e/a/b/g/f/H;

    invoke-direct {p1}, Lc/e/a/b/g/f/H;-><init>()V

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

.method public final a(Lc/e/a/b/g/f/L$a;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lc/e/a/b/g/f/nb$a;->o()Lc/e/a/b/g/f/Sb;

    move-result-object p1

    check-cast p1, Lc/e/a/b/g/f/L;

    iput-object p1, p0, Lc/e/a/b/g/f/H;->zzuq:Lc/e/a/b/g/f/L;

    .line 2
    iget p1, p0, Lc/e/a/b/g/f/H;->zztj:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lc/e/a/b/g/f/H;->zztj:I

    return-void
.end method

.method public final a(Lc/e/a/b/g/f/L;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 3
    iput-object p1, p0, Lc/e/a/b/g/f/H;->zzur:Lc/e/a/b/g/f/L;

    .line 4
    iget p1, p0, Lc/e/a/b/g/f/H;->zztj:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lc/e/a/b/g/f/H;->zztj:I

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public final a(Z)V
    .locals 1

    .line 6
    iget v0, p0, Lc/e/a/b/g/f/H;->zztj:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lc/e/a/b/g/f/H;->zztj:I

    .line 7
    iput-boolean p1, p0, Lc/e/a/b/g/f/H;->zzus:Z

    return-void
.end method

.method public final b(I)V
    .locals 1

    .line 1
    iget v0, p0, Lc/e/a/b/g/f/H;->zztj:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/e/a/b/g/f/H;->zztj:I

    .line 2
    iput p1, p0, Lc/e/a/b/g/f/H;->zzup:I

    return-void
.end method

.method public final r()Z
    .locals 2

    .line 1
    iget v0, p0, Lc/e/a/b/g/f/H;->zztj:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final s()I
    .locals 1

    .line 1
    iget v0, p0, Lc/e/a/b/g/f/H;->zzup:I

    return v0
.end method

.method public final t()Lc/e/a/b/g/f/L;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/H;->zzuq:Lc/e/a/b/g/f/L;

    if-nez v0, :cond_0

    invoke-static {}, Lc/e/a/b/g/f/L;->z()Lc/e/a/b/g/f/L;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final u()Z
    .locals 1

    .line 1
    iget v0, p0, Lc/e/a/b/g/f/H;->zztj:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final v()Lc/e/a/b/g/f/L;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/H;->zzur:Lc/e/a/b/g/f/L;

    if-nez v0, :cond_0

    invoke-static {}, Lc/e/a/b/g/f/L;->z()Lc/e/a/b/g/f/L;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final w()Z
    .locals 1

    .line 1
    iget v0, p0, Lc/e/a/b/g/f/H;->zztj:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final x()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/e/a/b/g/f/H;->zzus:Z

    return v0
.end method
