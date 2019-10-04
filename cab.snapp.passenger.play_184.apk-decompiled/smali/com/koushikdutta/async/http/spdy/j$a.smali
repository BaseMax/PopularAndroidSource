.class final Lcom/koushikdutta/async/http/spdy/j$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/spdy/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "DATA"

    aput-object v2, v0, v1

    const/4 v2, 0x1

    const-string v3, "HEADERS"

    aput-object v3, v0, v2

    const-string v3, "PRIORITY"

    const/4 v4, 0x2

    aput-object v3, v0, v4

    const/4 v5, 0x3

    const-string v6, "RST_STREAM"

    aput-object v6, v0, v5

    const/4 v6, 0x4

    const-string v7, "SETTINGS"

    aput-object v7, v0, v6

    const/4 v7, 0x5

    const-string v8, "PUSH_PROMISE"

    aput-object v8, v0, v7

    const/4 v7, 0x6

    const-string v8, "PING"

    aput-object v8, v0, v7

    const/4 v7, 0x7

    const-string v8, "GOAWAY"

    aput-object v8, v0, v7

    const/16 v7, 0x8

    const-string v8, "WINDOW_UPDATE"

    aput-object v8, v0, v7

    const/16 v8, 0x9

    const-string v9, "CONTINUATION"

    aput-object v9, v0, v8

    .line 709
    sput-object v0, Lcom/koushikdutta/async/http/spdy/j$a;->a:[Ljava/lang/String;

    const/16 v0, 0x40

    new-array v0, v0, [Ljava/lang/String;

    .line 726
    sput-object v0, Lcom/koushikdutta/async/http/spdy/j$a;->b:[Ljava/lang/String;

    const/16 v0, 0x100

    new-array v0, v0, [Ljava/lang/String;

    .line 727
    sput-object v0, Lcom/koushikdutta/async/http/spdy/j$a;->c:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 730
    :goto_0
    sget-object v8, Lcom/koushikdutta/async/http/spdy/j$a;->c:[Ljava/lang/String;

    array-length v9, v8

    const/16 v10, 0x20

    if-ge v0, v9, :cond_0

    .line 731
    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v11, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v1

    const-string v12, "%8s"

    invoke-static {v9, v12, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/16 v11, 0x30

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 734
    :cond_0
    sget-object v0, Lcom/koushikdutta/async/http/spdy/j$a;->b:[Ljava/lang/String;

    const-string v8, ""

    aput-object v8, v0, v1

    const-string v8, "END_STREAM"

    .line 735
    aput-object v8, v0, v2

    const-string v2, "END_SEGMENT"

    .line 736
    aput-object v2, v0, v4

    const-string v2, "END_STREAM|END_SEGMENT"

    .line 737
    aput-object v2, v0, v5

    new-array v2, v5, [I

    .line 738
    fill-array-data v2, :array_0

    const-string v4, "PADDED"

    .line 741
    aput-object v4, v0, v7

    const/4 v0, 0x0

    :goto_1
    const-string v4, "|PADDED"

    if-ge v0, v5, :cond_1

    .line 742
    aget v8, v2, v0

    .line 743
    sget-object v9, Lcom/koushikdutta/async/http/spdy/j$a;->b:[Ljava/lang/String;

    or-int/lit8 v11, v8, 0x8

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/koushikdutta/async/http/spdy/j$a;->b:[Ljava/lang/String;

    aget-object v8, v13, v8

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v11

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 746
    :cond_1
    sget-object v0, Lcom/koushikdutta/async/http/spdy/j$a;->b:[Ljava/lang/String;

    const-string v8, "END_HEADERS"

    aput-object v8, v0, v6

    .line 747
    aput-object v3, v0, v10

    const/16 v3, 0x24

    const-string v6, "END_HEADERS|PRIORITY"

    .line 748
    aput-object v6, v0, v3

    new-array v0, v5, [I

    .line 749
    fill-array-data v0, :array_1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v5, :cond_3

    .line 752
    aget v6, v0, v3

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v5, :cond_2

    .line 753
    aget v9, v2, v8

    .line 754
    sget-object v10, Lcom/koushikdutta/async/http/spdy/j$a;->b:[Ljava/lang/String;

    or-int v11, v9, v6

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/koushikdutta/async/http/spdy/j$a;->b:[Ljava/lang/String;

    aget-object v13, v13, v9

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v13, 0x7c

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v14, Lcom/koushikdutta/async/http/spdy/j$a;->b:[Ljava/lang/String;

    aget-object v14, v14, v6

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 755
    sget-object v10, Lcom/koushikdutta/async/http/spdy/j$a;->b:[Ljava/lang/String;

    or-int/2addr v11, v7

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lcom/koushikdutta/async/http/spdy/j$a;->b:[Ljava/lang/String;

    aget-object v9, v14, v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/koushikdutta/async/http/spdy/j$a;->b:[Ljava/lang/String;

    aget-object v9, v9, v6

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v10, v11

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 760
    :cond_3
    :goto_4
    sget-object v0, Lcom/koushikdutta/async/http/spdy/j$a;->b:[Ljava/lang/String;

    array-length v2, v0

    if-ge v1, v2, :cond_5

    .line 761
    aget-object v2, v0, v1

    if-nez v2, :cond_4

    sget-object v2, Lcom/koushikdutta/async/http/spdy/j$a;->c:[Ljava/lang/String;

    aget-object v2, v2, v1

    aput-object v2, v0, v1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data

    :array_1
    .array-data 4
        0x4
        0x20
        0x24
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 670
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(ZIIBB)Ljava/lang/String;
    .locals 9

    .line 673
    sget-object v0, Lcom/koushikdutta/async/http/spdy/j$a;->a:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge p3, v1, :cond_0

    aget-object v0, v0, p3

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v1, v2

    const-string v4, "0x%02x"

    invoke-static {v0, v4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x5

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x4

    if-nez p4, :cond_1

    const-string p3, ""

    goto :goto_2

    :cond_1
    if-eq p3, v5, :cond_7

    if-eq p3, v4, :cond_7

    if-eq p3, v6, :cond_5

    const/4 v7, 0x6

    if-eq p3, v7, :cond_5

    const/4 v7, 0x7

    if-eq p3, v7, :cond_7

    const/16 v7, 0x8

    if-eq p3, v7, :cond_7

    .line 1696
    sget-object v7, Lcom/koushikdutta/async/http/spdy/j$a;->b:[Ljava/lang/String;

    array-length v8, v7

    if-ge p4, v8, :cond_2

    aget-object v7, v7, p4

    goto :goto_1

    :cond_2
    sget-object v7, Lcom/koushikdutta/async/http/spdy/j$a;->c:[Ljava/lang/String;

    aget-object v7, v7, p4

    :goto_1
    if-ne p3, v1, :cond_3

    and-int/lit8 v8, p4, 0x4

    if-eqz v8, :cond_3

    const-string p3, "HEADERS"

    const-string p4, "PUSH_PROMISE"

    .line 1699
    invoke-virtual {v7, p3, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    goto :goto_2

    :cond_3
    if-nez p3, :cond_4

    and-int/lit8 p3, p4, 0x20

    if-eqz p3, :cond_4

    const-string p3, "PRIORITY"

    const-string p4, "COMPRESSED"

    .line 1701
    invoke-virtual {v7, p3, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    goto :goto_2

    :cond_4
    move-object p3, v7

    goto :goto_2

    :cond_5
    if-ne p4, v3, :cond_6

    const-string p3, "ACK"

    goto :goto_2

    .line 1689
    :cond_6
    sget-object p3, Lcom/koushikdutta/async/http/spdy/j$a;->c:[Ljava/lang/String;

    aget-object p3, p3, p4

    goto :goto_2

    .line 1694
    :cond_7
    sget-object p3, Lcom/koushikdutta/async/http/spdy/j$a;->c:[Ljava/lang/String;

    aget-object p3, p3, p4

    .line 675
    :goto_2
    sget-object p4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    if-eqz p0, :cond_8

    const-string p0, "<<"

    goto :goto_3

    :cond_8
    const-string p0, ">>"

    :goto_3
    aput-object p0, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v5

    aput-object v0, v1, v4

    aput-object p3, v1, v6

    const-string p0, "%s 0x%08x %5d %-13s %s"

    invoke-static {p4, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
