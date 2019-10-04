.class Lat/gadermaier/argon2/algorithm/FillBlock;
.super Ljava/lang/Object;
.source "FillBlock.java"


# direct methods
.method static fillBlock(Lat/gadermaier/argon2/model/Block;Lat/gadermaier/argon2/model/Block;Lat/gadermaier/argon2/model/Block;Z)V
    .locals 22

    move-object/from16 v0, p2

    .line 9
    new-instance v1, Lat/gadermaier/argon2/model/Block;

    invoke-direct {v1}, Lat/gadermaier/argon2/model/Block;-><init>()V

    .line 10
    new-instance v2, Lat/gadermaier/argon2/model/Block;

    invoke-direct {v2}, Lat/gadermaier/argon2/model/Block;-><init>()V

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    .line 12
    invoke-virtual {v1, v3, v4}, Lat/gadermaier/argon2/model/Block;->xor(Lat/gadermaier/argon2/model/Block;Lat/gadermaier/argon2/model/Block;)V

    .line 13
    invoke-virtual {v2, v1}, Lat/gadermaier/argon2/model/Block;->copyBlock(Lat/gadermaier/argon2/model/Block;)V

    const/16 v19, 0x0

    const/4 v15, 0x0

    :goto_0
    const/16 v14, 0x8

    if-ge v15, v14, :cond_0

    mul-int/lit8 v18, v15, 0x10

    move/from16 v3, v18

    add-int/lit8 v4, v18, 0x1

    add-int/lit8 v5, v18, 0x2

    add-int/lit8 v6, v18, 0x3

    add-int/lit8 v7, v18, 0x4

    add-int/lit8 v8, v18, 0x5

    add-int/lit8 v9, v18, 0x6

    add-int/lit8 v10, v18, 0x7

    add-int/lit8 v11, v18, 0x8

    add-int/lit8 v12, v18, 0x9

    add-int/lit8 v13, v18, 0xa

    add-int/lit8 v14, v18, 0xb

    add-int/lit8 v16, v18, 0xc

    move/from16 v20, v15

    move/from16 v15, v16

    add-int/lit8 v16, v18, 0xd

    add-int/lit8 v17, v18, 0xe

    add-int/lit8 v18, v18, 0xf

    move-object/from16 v21, v2

    .line 19
    invoke-static/range {v2 .. v18}, Lat/gadermaier/argon2/algorithm/Functions;->roundFunction(Lat/gadermaier/argon2/model/Block;IIIIIIIIIIIIIIII)V

    add-int/lit8 v15, v20, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v21, v2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v14, :cond_1

    mul-int/lit8 v18, v2, 0x2

    move/from16 v3, v18

    add-int/lit8 v4, v18, 0x1

    add-int/lit8 v5, v18, 0x10

    add-int/lit8 v6, v18, 0x11

    add-int/lit8 v7, v18, 0x20

    add-int/lit8 v8, v18, 0x21

    add-int/lit8 v9, v18, 0x30

    add-int/lit8 v10, v18, 0x31

    add-int/lit8 v11, v18, 0x40

    add-int/lit8 v12, v18, 0x41

    add-int/lit8 v13, v18, 0x50

    add-int/lit8 v15, v18, 0x51

    const/16 v19, 0x8

    move v14, v15

    add-int/lit8 v15, v18, 0x60

    add-int/lit8 v16, v18, 0x61

    add-int/lit8 v17, v18, 0x70

    add-int/lit8 v18, v18, 0x71

    move/from16 v20, v2

    move-object/from16 v2, v21

    .line 33
    invoke-static/range {v2 .. v18}, Lat/gadermaier/argon2/algorithm/Functions;->roundFunction(Lat/gadermaier/argon2/model/Block;IIIIIIIIIIIIIIII)V

    add-int/lit8 v2, v20, 0x1

    const/16 v14, 0x8

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    move-object/from16 v2, v21

    .line 45
    invoke-virtual {v0, v1, v2, v0}, Lat/gadermaier/argon2/model/Block;->xor(Lat/gadermaier/argon2/model/Block;Lat/gadermaier/argon2/model/Block;Lat/gadermaier/argon2/model/Block;)V

    goto :goto_2

    :cond_2
    move-object/from16 v2, v21

    .line 47
    invoke-virtual {v0, v1, v2}, Lat/gadermaier/argon2/model/Block;->xor(Lat/gadermaier/argon2/model/Block;Lat/gadermaier/argon2/model/Block;)V

    :goto_2
    return-void
.end method
