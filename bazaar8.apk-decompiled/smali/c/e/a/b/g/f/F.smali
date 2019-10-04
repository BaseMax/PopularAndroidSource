.class public final Lc/e/a/b/g/f/F;
.super Lc/e/a/b/g/f/nb;

# interfaces
.implements Lc/e/a/b/g/f/Ub;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/b/g/f/F$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/e/a/b/g/f/nb<",
        "Lc/e/a/b/g/f/F;",
        "Lc/e/a/b/g/f/F$a;",
        ">;",
        "Lc/e/a/b/g/f/Ub;"
    }
.end annotation


# static fields
.field public static volatile zztq:Lc/e/a/b/g/f/bc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/a/b/g/f/bc<",
            "Lc/e/a/b/g/f/F;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzuo:Lc/e/a/b/g/f/F;


# instance fields
.field public zztj:I

.field public zzum:Ljava/lang/String;

.field public zzun:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lc/e/a/b/g/f/F;

    invoke-direct {v0}, Lc/e/a/b/g/f/F;-><init>()V

    sput-object v0, Lc/e/a/b/g/f/F;->zzuo:Lc/e/a/b/g/f/F;

    .line 2
    const-class v0, Lc/e/a/b/g/f/F;

    sget-object v1, Lc/e/a/b/g/f/F;->zzuo:Lc/e/a/b/g/f/F;

    invoke-static {v0, v1}, Lc/e/a/b/g/f/nb;->a(Ljava/lang/Class;Lc/e/a/b/g/f/nb;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/e/a/b/g/f/nb;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lc/e/a/b/g/f/F;->zzum:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lc/e/a/b/g/f/F;->zzun:Ljava/lang/String;

    return-void
.end method

.method public static s()Lc/e/a/b/g/f/bc;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/e/a/b/g/f/bc<",
            "Lc/e/a/b/g/f/F;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lc/e/a/b/g/f/F;->zzuo:Lc/e/a/b/g/f/F;

    .line 2
    sget v1, Lc/e/a/b/g/f/nb$e;->g:I

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2, v2}, Lc/e/a/b/g/f/F;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Lc/e/a/b/g/f/bc;

    return-object v0
.end method

.method public static synthetic t()Lc/e/a/b/g/f/F;
    .locals 1

    .line 1
    sget-object v0, Lc/e/a/b/g/f/F;->zzuo:Lc/e/a/b/g/f/F;

    return-object v0
.end method


# virtual methods
.method public final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object p2, Lc/e/a/b/g/f/G;->a:[I

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
    sget-object p1, Lc/e/a/b/g/f/F;->zztq:Lc/e/a/b/g/f/bc;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lc/e/a/b/g/f/F;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lc/e/a/b/g/f/F;->zztq:Lc/e/a/b/g/f/bc;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lc/e/a/b/g/f/nb$b;

    sget-object p3, Lc/e/a/b/g/f/F;->zzuo:Lc/e/a/b/g/f/F;

    invoke-direct {p1, p3}, Lc/e/a/b/g/f/nb$b;-><init>(Lc/e/a/b/g/f/nb;)V

    .line 8
    sput-object p1, Lc/e/a/b/g/f/F;->zztq:Lc/e/a/b/g/f/bc;

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
    sget-object p1, Lc/e/a/b/g/f/F;->zzuo:Lc/e/a/b/g/f/F;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    .line 11
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zztj"

    aput-object v0, p1, p2

    const-string p2, "zzum"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzun"

    aput-object p3, p1, p2

    .line 12
    sget-object p2, Lc/e/a/b/g/f/F;->zzuo:Lc/e/a/b/g/f/F;

    const-string p3, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0008\u0000\u0002\u0008\u0001"

    invoke-static {p2, p3, p1}, Lc/e/a/b/g/f/nb;->a(Lc/e/a/b/g/f/Sb;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_5
    new-instance p1, Lc/e/a/b/g/f/F$a;

    invoke-direct {p1, p2}, Lc/e/a/b/g/f/F$a;-><init>(Lc/e/a/b/g/f/G;)V

    return-object p1

    .line 14
    :pswitch_6
    new-instance p1, Lc/e/a/b/g/f/F;

    invoke-direct {p1}, Lc/e/a/b/g/f/F;-><init>()V

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

.method public final q()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/F;->zzum:Ljava/lang/String;

    return-object v0
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/F;->zzun:Ljava/lang/String;

    return-object v0
.end method
