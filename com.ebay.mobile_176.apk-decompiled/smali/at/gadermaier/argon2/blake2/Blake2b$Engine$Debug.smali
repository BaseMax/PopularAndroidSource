.class public Lat/gadermaier/argon2/blake2/Blake2b$Engine$Debug;
.super Ljava/lang/Object;
.source "Blake2b.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/gadermaier/argon2/blake2/Blake2b$Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Debug"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 850
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dumpArray(Ljava/lang/String;[J)V
    .locals 7

    .line 860
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "-- %s -- :\n{\n"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    const/4 p0, 0x0

    .line 861
    :goto_0
    array-length v0, p1

    if-ge p0, v0, :cond_0

    .line 862
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "    [%2d] : %016X\n"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    aget-wide v5, p1, p0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-virtual {v0, v1, v3}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 864
    :cond_0
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo p1, "}\n"

    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return-void
.end method

.method public static dumpBuffer(Ljava/io/PrintStream;Ljava/lang/String;[B)V
    .locals 2

    .line 867
    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Lat/gadermaier/argon2/blake2/Blake2b$Engine$Debug;->dumpBuffer(Ljava/io/PrintStream;Ljava/lang/String;[BII)V

    return-void
.end method

.method public static dumpBuffer(Ljava/io/PrintStream;Ljava/lang/String;[BII)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string v2, "-- %s -- :\n"

    .line 877
    new-array v3, v0, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-virtual {p0, v2, v3}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    :cond_0
    const-string/jumbo v2, "{\n    "

    .line 878
    new-array v3, v0, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-virtual {p0, v2, v3}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    const/4 p1, 0x0

    :cond_1
    :goto_0
    if-ge p1, p4, :cond_3

    const-string v2, "%02X"

    .line 880
    new-array v3, v0, [Ljava/lang/Object;

    add-int v4, p1, p3

    aget-byte v4, p2, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p0, v2, v3}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    add-int/lit8 p1, p1, 0x1

    if-ge p1, p4, :cond_1

    .line 882
    rem-int/lit8 v2, p1, 0x8

    if-nez v2, :cond_2

    const-string v2, "\n    "

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/16 v2, 0x20

    .line 883
    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->print(C)V

    goto :goto_0

    :cond_3
    const-string p1, "\n}\n"

    .line 886
    new-array p2, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return-void
.end method

.method public static dumpBuffer(Ljava/io/PrintStream;[B)V
    .locals 3

    .line 870
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v1, p1, v2, v0}, Lat/gadermaier/argon2/blake2/Blake2b$Engine$Debug;->dumpBuffer(Ljava/io/PrintStream;Ljava/lang/String;[BII)V

    return-void
.end method

.method public static dumpBuffer(Ljava/io/PrintStream;[BII)V
    .locals 1

    const/4 v0, 0x0

    .line 873
    invoke-static {p0, v0, p1, p2, p3}, Lat/gadermaier/argon2/blake2/Blake2b$Engine$Debug;->dumpBuffer(Ljava/io/PrintStream;Ljava/lang/String;[BII)V

    return-void
.end method

.method public static dumpState(Lat/gadermaier/argon2/blake2/Blake2b$Engine;Ljava/lang/String;)V
    .locals 5

    .line 852
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "-- MARK == @ %s @ ===========\n"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    const-string/jumbo p1, "register t"

    .line 853
    invoke-static {p0}, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->access$200(Lat/gadermaier/argon2/blake2/Blake2b$Engine;)[J

    move-result-object v0

    invoke-static {p1, v0}, Lat/gadermaier/argon2/blake2/Blake2b$Engine$Debug;->dumpArray(Ljava/lang/String;[J)V

    const-string/jumbo p1, "register h"

    .line 854
    invoke-static {p0}, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->access$300(Lat/gadermaier/argon2/blake2/Blake2b$Engine;)[J

    move-result-object v0

    invoke-static {p1, v0}, Lat/gadermaier/argon2/blake2/Blake2b$Engine$Debug;->dumpArray(Ljava/lang/String;[J)V

    const-string/jumbo p1, "register f"

    .line 855
    invoke-static {p0}, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->access$400(Lat/gadermaier/argon2/blake2/Blake2b$Engine;)[J

    move-result-object v0

    invoke-static {p1, v0}, Lat/gadermaier/argon2/blake2/Blake2b$Engine$Debug;->dumpArray(Ljava/lang/String;[J)V

    const-string/jumbo p1, "register offset"

    .line 856
    new-array v0, v2, [J

    invoke-static {p0}, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->access$500(Lat/gadermaier/argon2/blake2/Blake2b$Engine;)I

    move-result p0

    int-to-long v1, p0

    aput-wide v1, v0, v4

    invoke-static {p1, v0}, Lat/gadermaier/argon2/blake2/Blake2b$Engine$Debug;->dumpArray(Ljava/lang/String;[J)V

    .line 857
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p1, "-- END MARK =================\n"

    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return-void
.end method
