.class final Lcom/codahale/metrics/Striped64$Cell;
.super Ljava/lang/Object;
.source "Striped64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codahale/metrics/Striped64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Cell"
.end annotation


# static fields
.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final valueOffset:J


# instance fields
.field volatile value:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 110
    :try_start_0
    invoke-static {}, Lcom/codahale/metrics/Striped64;->access$000()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/codahale/metrics/Striped64$Cell;->UNSAFE:Lsun/misc/Unsafe;

    .line 111
    const-class v0, Lcom/codahale/metrics/Striped64$Cell;

    .line 112
    sget-object v1, Lcom/codahale/metrics/Striped64$Cell;->UNSAFE:Lsun/misc/Unsafe;

    const-string/jumbo v2, "value"

    .line 113
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Lcom/codahale/metrics/Striped64$Cell;->valueOffset:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 115
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor <init>(J)V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-wide p1, p0, Lcom/codahale/metrics/Striped64$Cell;->value:J

    return-void
.end method


# virtual methods
.method final cas(JJ)Z
    .locals 8

    .line 101
    sget-object v0, Lcom/codahale/metrics/Striped64$Cell;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/codahale/metrics/Striped64$Cell;->valueOffset:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result p1

    return p1
.end method
