.class public final Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;
.super Lcom/farsitel/bazaar/data/entity/PageItem;
.source "Page.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/farsitel/bazaar/data/entity/PageItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppRow"
.end annotation


# instance fields
.field public final authorName:Ljava/lang/String;

.field public final backgroundColor:Ljava/lang/String;

.field public final detailInfo:Lcom/farsitel/bazaar/data/entity/MiniAppDetailInfo;

.field public final hasIAP:Z

.field public final imageUrl:Ljava/lang/String;

.field public final inlineVersion:Ljava/lang/Integer;

.field public final isAd:Z

.field public final isAutoUpdateEnabled:Z

.field public final isEnabled:Ljava/lang/Boolean;

.field public final isInstalled:Z

.field public final jsonReferrer:Ljava/lang/String;

.field public final minSdk:Ljava/lang/Integer;

.field public final name:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;

.field public final price:I

.field public final priceString:Ljava/lang/String;

.field public final published:Ljava/lang/String;

.field public final rate:Ljava/lang/Float;

.field public final referrer:Ljava/lang/String;

.field public final textColor:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Boolean;ZZZLjava/lang/Integer;Ljava/lang/Integer;Lcom/farsitel/bazaar/data/entity/MiniAppDetailInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p2

    move-object v2, p4

    move-object v3, p5

    const-string v4, "name"

    invoke-static {p2, v4}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "packageName"

    invoke-static {p4, v4}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "authorName"

    invoke-static {p5, v4}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 2
    invoke-direct {p0, v4}, Lcom/farsitel/bazaar/data/entity/PageItem;-><init>(Lh/f/b/f;)V

    move v4, p1

    iput-boolean v4, v0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->hasIAP:Z

    iput-object v1, v0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->name:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->imageUrl:Ljava/lang/String;

    iput-object v2, v0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->packageName:Ljava/lang/String;

    iput-object v3, v0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->authorName:Ljava/lang/String;

    move v1, p6

    iput v1, v0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->price:I

    move-object v1, p7

    iput-object v1, v0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->priceString:Ljava/lang/String;

    move-object v1, p8

    iput-object v1, v0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->published:Ljava/lang/String;

    move-object v1, p9

    iput-object v1, v0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->rate:Ljava/lang/Float;

    move-object v1, p10

    iput-object v1, v0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->isEnabled:Ljava/lang/Boolean;

    move/from16 v1, p11

    iput-boolean v1, v0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->isInstalled:Z

    move/from16 v1, p12

    iput-boolean v1, v0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->isAd:Z

    move/from16 v1, p13

    iput-boolean v1, v0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->isAutoUpdateEnabled:Z

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->inlineVersion:Ljava/lang/Integer;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->minSdk:Ljava/lang/Integer;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->detailInfo:Lcom/farsitel/bazaar/data/entity/MiniAppDetailInfo;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->referrer:Ljava/lang/String;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->jsonReferrer:Ljava/lang/String;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->backgroundColor:Ljava/lang/String;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->textColor:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Boolean;ZZZLjava/lang/Integer;Ljava/lang/Integer;Lcom/farsitel/bazaar/data/entity/MiniAppDetailInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILh/f/b/f;)V
    .locals 24

    move/from16 v0, p21

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v6, v2

    goto :goto_0

    :cond_0
    move-object/from16 v6, p3

    :goto_0
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    const-string v1, ""

    move-object v8, v1

    goto :goto_1

    :cond_1
    move-object/from16 v8, p5

    :goto_1
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2

    move-object v10, v2

    goto :goto_2

    :cond_2
    move-object/from16 v10, p7

    :goto_2
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_3

    move-object v11, v2

    goto :goto_3

    :cond_3
    move-object/from16 v11, p8

    :goto_3
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_4

    move-object v12, v2

    goto :goto_4

    :cond_4
    move-object/from16 v12, p9

    :goto_4
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_5

    move-object v13, v2

    goto :goto_5

    :cond_5
    move-object/from16 v13, p10

    :goto_5
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_6

    move-object/from16 v17, v2

    goto :goto_6

    :cond_6
    move-object/from16 v17, p14

    :goto_6
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_7

    move-object/from16 v18, v2

    goto :goto_7

    :cond_7
    move-object/from16 v18, p15

    :goto_7
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_8

    move-object/from16 v19, v2

    goto :goto_8

    :cond_8
    move-object/from16 v19, p16

    :goto_8
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_9

    move-object/from16 v21, v2

    goto :goto_9

    :cond_9
    move-object/from16 v21, p18

    :goto_9
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_a

    move-object/from16 v22, v2

    goto :goto_a

    :cond_a
    move-object/from16 v22, p19

    :goto_a
    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    move-object/from16 v23, v2

    goto :goto_b

    :cond_b
    move-object/from16 v23, p20

    :goto_b
    move-object/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v7, p4

    move/from16 v9, p6

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    move-object/from16 v20, p17

    .line 1
    invoke-direct/range {v3 .. v23}, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Boolean;ZZZLjava/lang/Integer;Ljava/lang/Integer;Lcom/farsitel/bazaar/data/entity/MiniAppDetailInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Boolean;ZZZLjava/lang/Integer;Ljava/lang/Integer;Lcom/farsitel/bazaar/data/entity/MiniAppDetailInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p21

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->hasIAP:Z

    goto :goto_0

    :cond_0
    move/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->name:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->imageUrl:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->packageName:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->authorName:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget v7, v0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->price:I

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->priceString:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->published:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->rate:Ljava/lang/Float;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->isEnabled:Ljava/lang/Boolean;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-boolean v12, v0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->isInstalled:Z

    goto :goto_a

    :cond_a
    move/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-boolean v13, v0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->isAd:Z

    goto :goto_b

    :cond_b
    move/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-boolean v14, v0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->isAutoUpdateEnabled:Z

    goto :goto_c

    :cond_c
    move/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->inlineVersion:Ljava/lang/Integer;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->minSdk:Ljava/lang/Integer;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    if-eqz v16, :cond_f

    move-object/from16 p15, v15

    iget-object v15, v0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->detailInfo:Lcom/farsitel/bazaar/data/entity/MiniAppDetailInfo;

    goto :goto_f

    :cond_f
    move-object/from16 p15, v15

    move-object/from16 v15, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    if-eqz v16, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->getReferrer()Ljava/lang/String;

    move-result-object v16

    goto :goto_10

    :cond_10
    move-object/from16 v16, p17

    :goto_10
    const/high16 v17, 0x20000

    and-int v17, v1, v17

    if-eqz v17, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->getJsonReferrer()Ljava/lang/String;

    move-result-object v17

    goto :goto_11

    :cond_11
    move-object/from16 v17, p18

    :goto_11
    const/high16 v18, 0x40000

    and-int v18, v1, v18

    if-eqz v18, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->getBackgroundColor()Ljava/lang/String;

    move-result-object v18

    goto :goto_12

    :cond_12
    move-object/from16 v18, p19

    :goto_12
    const/high16 v19, 0x80000

    and-int v1, v1, v19

    if-eqz v1, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->getTextColor()Ljava/lang/String;

    move-result-object v1

    goto :goto_13

    :cond_13
    move-object/from16 v1, p20

    :goto_13
    move/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move/from16 p11, v12

    move/from16 p12, v13

    move/from16 p13, v14

    move-object/from16 p16, v15

    move-object/from16 p17, v16

    move-object/from16 p18, v17

    move-object/from16 p19, v18

    move-object/from16 p20, v1

    invoke-virtual/range {p0 .. p20}, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->copy(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Boolean;ZZZLjava/lang/Integer;Ljava/lang/Integer;Lcom/farsitel/bazaar/data/entity/MiniAppDetailInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->hasIAP:Z

    return v0
.end method

.method public final component10()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->isEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component11()Z
    .locals 1

    iget-boolean v0, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->isInstalled:Z

    return v0
.end method

.method public final component12()Z
    .locals 1

    iget-boolean v0, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->isAd:Z

    return v0
.end method

.method public final component13()Z
    .locals 1

    iget-boolean v0, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->isAutoUpdateEnabled:Z

    return v0
.end method

.method public final component14()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->inlineVersion:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component15()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->minSdk:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component16()Lcom/farsitel/bazaar/data/entity/MiniAppDetailInfo;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->detailInfo:Lcom/farsitel/bazaar/data/entity/MiniAppDetailInfo;

    return-object v0
.end method

.method public final component17()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->getReferrer()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component18()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->getJsonReferrer()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component19()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->getBackgroundColor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component20()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->getTextColor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->authorName:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()I
    .locals 1

    iget v0, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->price:I

    return v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->priceString:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->published:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->rate:Ljava/lang/Float;

    return-object v0
.end method

.method public final copy(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Boolean;ZZZLjava/lang/Integer;Ljava/lang/Integer;Lcom/farsitel/bazaar/data/entity/MiniAppDetailInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;
    .locals 22

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    const-string v0, "name"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    move-object/from16 v1, p4

    invoke-static {v1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authorName"

    move-object/from16 v1, p5

    invoke-static {v1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v21, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-direct/range {v0 .. v20}, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Boolean;ZZZLjava/lang/Integer;Ljava/lang/Integer;Lcom/farsitel/bazaar/data/entity/MiniAppDetailInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v21
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_6

    instance-of v1, p1, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    check-cast p1, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;

    iget-boolean v1, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->hasIAP:Z

    iget-boolean v3, p1, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->hasIAP:Z

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->imageUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->imageUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->packageName:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->authorName:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->authorName:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->price:I

    iget v3, p1, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->price:I

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->priceString:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->priceString:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->published:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->published:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->rate:Ljava/lang/Float;

    iget-object v3, p1, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->rate:Ljava/lang/Float;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->isEnabled:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->isEnabled:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->isInstalled:Z

    iget-boolean v3, p1, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->isInstalled:Z

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->isAd:Z

    iget-boolean v3, p1, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->isAd:Z

    if-ne v1, v3, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->isAutoUpdateEnabled:Z

    iget-boolean v3, p1, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->isAutoUpdateEnabled:Z

    if-ne v1, v3, :cond_4

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->inlineVersion:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->inlineVersion:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->minSdk:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->minSdk:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->detailInfo:Lcom/farsitel/bazaar/data/entity/MiniAppDetailInfo;

    iget-object v3, p1, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->detailInfo:Lcom/farsitel/bazaar/data/entity/MiniAppDetailInfo;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->getReferrer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->getReferrer()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->getJsonReferrer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->getJsonReferrer()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->getBackgroundColor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->getBackgroundColor()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->getTextColor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->getTextColor()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_5

    :cond_5
    return v2

    :cond_6
    :goto_5
    return v0
.end method

.method public final getAuthorName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->authorName:Ljava/lang/String;

    return-object v0
.end method

.method public getBackgroundColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->backgroundColor:Ljava/lang/String;

    return-object v0
.end method

.method public final getDetailInfo()Lcom/farsitel/bazaar/data/entity/MiniAppDetailInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->detailInfo:Lcom/farsitel/bazaar/data/entity/MiniAppDetailInfo;

    return-object v0
.end method

.method public final getHasIAP()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->hasIAP:Z

    return v0
.end method

.method public final getImageUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getInlineVersion()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->inlineVersion:Ljava/lang/Integer;

    return-object v0
.end method

.method public getJsonReferrer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->jsonReferrer:Ljava/lang/String;

    return-object v0
.end method

.method public final getMinSdk()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->minSdk:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrice()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->price:I

    return v0
.end method

.method public final getPriceString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->priceString:Ljava/lang/String;

    return-object v0
.end method

.method public final getPublished()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->published:Ljava/lang/String;

    return-object v0
.end method

.method public final getRate()Ljava/lang/Float;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->rate:Ljava/lang/Float;

    return-object v0
.end method

.method public getReferrer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->referrer:Ljava/lang/String;

    return-object v0
.end method

.method public getTextColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->textColor:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-boolean v0, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->hasIAP:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->name:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->imageUrl:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->authorName:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->price:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->priceString:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->published:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_6
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->rate:Ljava/lang/Float;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Float;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_7
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->isEnabled:Ljava/lang/Boolean;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_8
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->isInstalled:Z

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    :cond_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->isAd:Z

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    :cond_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->isAutoUpdateEnabled:Z

    if-eqz v2, :cond_b

    goto :goto_8

    :cond_b
    move v1, v2

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->inlineVersion:Ljava/lang/Integer;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_9

    :cond_c
    const/4 v1, 0x0

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->minSdk:Ljava/lang/Integer;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_a

    :cond_d
    const/4 v1, 0x0

    :goto_a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->detailInfo:Lcom/farsitel/bazaar/data/entity/MiniAppDetailInfo;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/farsitel/bazaar/data/entity/MiniAppDetailInfo;->hashCode()I

    move-result v1

    goto :goto_b

    :cond_e
    const/4 v1, 0x0

    :goto_b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->getReferrer()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_c

    :cond_f
    const/4 v1, 0x0

    :goto_c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->getJsonReferrer()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_d

    :cond_10
    const/4 v1, 0x0

    :goto_d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->getBackgroundColor()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_e

    :cond_11
    const/4 v1, 0x0

    :goto_e
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->getTextColor()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    :cond_12
    add-int/2addr v0, v3

    return v0
.end method

.method public final isAd()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->isAd:Z

    return v0
.end method

.method public final isAutoUpdateEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->isAutoUpdateEnabled:Z

    return v0
.end method

.method public final isEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->isEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isInstalled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->isInstalled:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppRow(hasIAP="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->hasIAP:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", imageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", authorName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->authorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->price:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", priceString="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->priceString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", published="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->published:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->rate:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->isEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isInstalled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->isInstalled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isAd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->isAd:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isAutoUpdateEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->isAutoUpdateEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", inlineVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->inlineVersion:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", minSdk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->minSdk:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", detailInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->detailInfo:Lcom/farsitel/bazaar/data/entity/MiniAppDetailInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", referrer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->getReferrer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", jsonReferrer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->getJsonReferrer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", backgroundColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->getBackgroundColor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", textColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/PageItem$AppRow;->getTextColor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
