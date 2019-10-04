.class public final Lb/i/i/e;
.super Ljava/lang/Object;
.source "TextDirectionHeuristicsCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/i/i/e$f;,
        Lb/i/i/e$a;,
        Lb/i/i/e$b;,
        Lb/i/i/e$c;,
        Lb/i/i/e$e;,
        Lb/i/i/e$d;
    }
.end annotation


# static fields
.field public static final a:Lb/i/i/d;

.field public static final b:Lb/i/i/d;

.field public static final c:Lb/i/i/d;

.field public static final d:Lb/i/i/d;

.field public static final e:Lb/i/i/d;

.field public static final f:Lb/i/i/d;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lb/i/i/e$e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lb/i/i/e$e;-><init>(Lb/i/i/e$c;Z)V

    sput-object v0, Lb/i/i/e;->a:Lb/i/i/d;

    .line 2
    new-instance v0, Lb/i/i/e$e;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lb/i/i/e$e;-><init>(Lb/i/i/e$c;Z)V

    sput-object v0, Lb/i/i/e;->b:Lb/i/i/d;

    .line 3
    new-instance v0, Lb/i/i/e$e;

    sget-object v1, Lb/i/i/e$b;->a:Lb/i/i/e$b;

    invoke-direct {v0, v1, v2}, Lb/i/i/e$e;-><init>(Lb/i/i/e$c;Z)V

    sput-object v0, Lb/i/i/e;->c:Lb/i/i/d;

    .line 4
    new-instance v0, Lb/i/i/e$e;

    sget-object v1, Lb/i/i/e$b;->a:Lb/i/i/e$b;

    invoke-direct {v0, v1, v3}, Lb/i/i/e$e;-><init>(Lb/i/i/e$c;Z)V

    sput-object v0, Lb/i/i/e;->d:Lb/i/i/d;

    .line 5
    new-instance v0, Lb/i/i/e$e;

    sget-object v1, Lb/i/i/e$a;->a:Lb/i/i/e$a;

    invoke-direct {v0, v1, v2}, Lb/i/i/e$e;-><init>(Lb/i/i/e$c;Z)V

    sput-object v0, Lb/i/i/e;->e:Lb/i/i/d;

    .line 6
    sget-object v0, Lb/i/i/e$f;->b:Lb/i/i/e$f;

    sput-object v0, Lb/i/i/e;->f:Lb/i/i/d;

    return-void
.end method

.method public static a(I)I
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method public static b(I)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    return v1

    :cond_0
    :pswitch_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :pswitch_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
