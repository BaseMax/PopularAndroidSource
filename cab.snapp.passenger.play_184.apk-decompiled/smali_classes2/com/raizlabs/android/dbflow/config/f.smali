.class public final Lcom/raizlabs/android/dbflow/config/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;I)C
    .locals 1

    .line 94
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 97
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 17

    .line 31
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 43
    :goto_0
    invoke-static {v0, v3}, Lcom/raizlabs/android/dbflow/config/f;->a(Ljava/lang/String;I)C

    move-result v5

    .line 44
    invoke-static {v1, v4}, Lcom/raizlabs/android/dbflow/config/f;->a(Ljava/lang/String;I)C

    move-result v6

    move v7, v3

    const/4 v3, 0x0

    .line 47
    :goto_1
    invoke-static {v5}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v8

    const/16 v9, 0x30

    if-nez v8, :cond_e

    if-ne v5, v9, :cond_0

    goto/16 :goto_8

    :cond_0
    move v8, v4

    const/4 v4, 0x0

    .line 58
    :goto_2
    invoke-static {v6}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v10

    if-nez v10, :cond_c

    if-ne v6, v9, :cond_1

    goto/16 :goto_6

    .line 70
    :cond_1
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    const/4 v10, -0x1

    if-eqz v9, :cond_8

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 71
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 1111
    :goto_3
    invoke-static {v9, v13}, Lcom/raizlabs/android/dbflow/config/f;->a(Ljava/lang/String;I)C

    move-result v2

    .line 1112
    invoke-static {v12, v14}, Lcom/raizlabs/android/dbflow/config/f;->a(Ljava/lang/String;I)C

    move-result v11

    .line 1114
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v16

    if-nez v16, :cond_2

    invoke-static {v11}, Ljava/lang/Character;->isDigit(C)Z

    move-result v16

    if-nez v16, :cond_2

    goto :goto_4

    .line 1116
    :cond_2
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v16

    if-nez v16, :cond_3

    const/4 v15, -0x1

    goto :goto_4

    .line 1118
    :cond_3
    invoke-static {v11}, Ljava/lang/Character;->isDigit(C)Z

    move-result v16

    if-nez v16, :cond_4

    const/4 v15, 0x1

    goto :goto_4

    :cond_4
    if-ge v2, v11, :cond_5

    if-nez v15, :cond_7

    const/4 v15, -0x1

    goto :goto_5

    :cond_5
    if-le v2, v11, :cond_6

    if-nez v15, :cond_7

    const/4 v15, 0x1

    goto :goto_5

    :cond_6
    if-nez v2, :cond_7

    if-nez v11, :cond_7

    :goto_4
    if-eqz v15, :cond_8

    return v15

    :cond_7
    :goto_5
    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_8
    if-nez v5, :cond_9

    if-nez v6, :cond_9

    sub-int/2addr v3, v4

    return v3

    :cond_9
    if-ge v5, v6, :cond_a

    return v10

    :cond_a
    if-le v5, v6, :cond_b

    const/4 v2, 0x1

    return v2

    :cond_b
    add-int/lit8 v3, v7, 0x1

    add-int/lit8 v4, v8, 0x1

    goto/16 :goto_0

    :cond_c
    :goto_6
    if-ne v6, v9, :cond_d

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_d
    const/4 v4, 0x0

    :goto_7
    add-int/lit8 v8, v8, 0x1

    .line 66
    invoke-static {v1, v8}, Lcom/raizlabs/android/dbflow/config/f;->a(Ljava/lang/String;I)C

    move-result v6

    goto :goto_2

    :cond_e
    :goto_8
    if-ne v5, v9, :cond_f

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_f
    const/4 v3, 0x0

    :goto_9
    add-int/lit8 v7, v7, 0x1

    .line 55
    invoke-static {v0, v7}, Lcom/raizlabs/android/dbflow/config/f;->a(Ljava/lang/String;I)C

    move-result v5

    goto/16 :goto_1
.end method
