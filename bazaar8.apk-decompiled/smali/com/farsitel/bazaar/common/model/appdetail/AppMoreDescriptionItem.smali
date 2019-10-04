.class public final Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;
.super Ljava/lang/Object;
.source "ViewHolderItem.kt"

# interfaces
.implements Lcom/farsitel/bazaar/common/model/RecyclerData;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem$CREATOR;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem$CREATOR;


# instance fields
.field public final appName:Ljava/lang/String;

.field public final appVersion:Ljava/lang/String;

.field public final appVersionCode:Ljava/lang/Long;

.field public final categoryName:Ljava/lang/String;

.field public final categorySlug:Ljava/lang/String;

.field public final changeLog:Ljava/lang/String;

.field public final contentRating:Ljava/lang/String;

.field public final contentRatingImage:Ljava/lang/String;

.field public final description:Ljava/lang/String;

.field public final haveAdNetwork:Ljava/lang/Boolean;

.field public final iconUrl:Ljava/lang/String;

.field public final installCountRange:Ljava/lang/String;

.field public final lastUpdated:Ljava/lang/String;

.field public final packageDiffs:Ljava/lang/Long;

.field public final packageName:Ljava/lang/String;

.field public final packageSize:Ljava/lang/Long;

.field public final permissionDescriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final permissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final referrer:Ljava/lang/String;

.field public final shamedIconURL:Ljava/lang/String;

.field public final shamedId:Ljava/lang/String;

.field public final shamedURL:Ljava/lang/String;

.field public final verboseSize:Ljava/lang/String;

.field public final verboseSizeLabel:Ljava/lang/String;

.field public final viewType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem$CREATOR;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem$CREATOR;-><init>(Lh/f/b/f;)V

    sput-object v0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->CREATOR:Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem$CREATOR;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 27

    move-object/from16 v0, p1

    const-string v1, "parcel"

    invoke-static {v0, v1}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 10
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 11
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 12
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2

    instance-of v12, v2, Ljava/lang/Long;

    if-nez v12, :cond_0

    const/4 v2, 0x0

    :cond_0
    move-object v12, v2

    check-cast v12, Ljava/lang/Long;

    .line 13
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2

    instance-of v13, v2, Ljava/lang/Long;

    if-nez v13, :cond_1

    const/4 v2, 0x0

    :cond_1
    move-object v13, v2

    check-cast v13, Ljava/lang/Long;

    .line 14
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2

    instance-of v14, v2, Ljava/lang/Long;

    if-nez v14, :cond_2

    const/4 v2, 0x0

    :cond_2
    move-object v14, v2

    check-cast v14, Ljava/lang/Long;

    .line 15
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 16
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 17
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v17

    .line 18
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v18

    .line 19
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 20
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2

    instance-of v1, v2, Ljava/lang/Boolean;

    if-nez v1, :cond_3

    const/4 v2, 0x0

    :cond_3
    move-object/from16 v20, v2

    check-cast v20, Ljava/lang/Boolean;

    .line 21
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 22
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 23
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 24
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 25
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 26
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v2, p0

    .line 27
    invoke-direct/range {v2 .. v26}, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 28
    :cond_4
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 v0, 0x0

    throw v0

    :cond_5
    const/4 v0, 0x0

    .line 29
    invoke-static {}, Lh/f/b/j;->a()V

    throw v0

    :cond_6
    const/4 v0, 0x0

    .line 30
    invoke-static {}, Lh/f/b/j;->a()V

    throw v0

    :cond_7
    const/4 v0, 0x0

    .line 31
    invoke-static {}, Lh/f/b/j;->a()V

    throw v0

    :cond_8
    const/4 v0, 0x0

    .line 32
    invoke-static {}, Lh/f/b/j;->a()V

    throw v0

    :cond_9
    const/4 v0, 0x0

    .line 33
    invoke-static {}, Lh/f/b/j;->a()V

    throw v0

    :cond_a
    const/4 v0, 0x0

    .line 34
    invoke-static {}, Lh/f/b/j;->a()V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    const-string v8, "packageName"

    invoke-static {p1, v8}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "iconUrl"

    invoke-static {p2, v8}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "appName"

    invoke-static {p3, v8}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "description"

    invoke-static {p4, v8}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "categoryName"

    invoke-static {p5, v8}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "categorySlug"

    invoke-static {p6, v8}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "installCountRange"

    invoke-static {v7, v8}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->packageName:Ljava/lang/String;

    iput-object v2, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->iconUrl:Ljava/lang/String;

    iput-object v3, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->appName:Ljava/lang/String;

    iput-object v4, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->description:Ljava/lang/String;

    iput-object v5, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->categoryName:Ljava/lang/String;

    iput-object v6, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->categorySlug:Ljava/lang/String;

    iput-object v7, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->installCountRange:Ljava/lang/String;

    move-object/from16 v1, p8

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->verboseSize:Ljava/lang/String;

    move-object/from16 v1, p9

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->verboseSizeLabel:Ljava/lang/String;

    move-object/from16 v1, p10

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->packageSize:Ljava/lang/Long;

    move-object/from16 v1, p11

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->packageDiffs:Ljava/lang/Long;

    move-object/from16 v1, p12

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->appVersionCode:Ljava/lang/Long;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->appVersion:Ljava/lang/String;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->lastUpdated:Ljava/lang/String;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->permissions:Ljava/util/List;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->permissionDescriptions:Ljava/util/List;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->changeLog:Ljava/lang/String;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->haveAdNetwork:Ljava/lang/Boolean;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->contentRating:Ljava/lang/String;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->contentRatingImage:Ljava/lang/String;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->shamedId:Ljava/lang/String;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->shamedURL:Ljava/lang/String;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->shamedIconURL:Ljava/lang/String;

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->referrer:Ljava/lang/String;

    .line 2
    sget-object v1, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;->APP_MORE_DESCRIPTION:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iput v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->viewType:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p25

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->iconUrl:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->appName:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->description:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->categoryName:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->categorySlug:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->installCountRange:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->verboseSize:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->verboseSizeLabel:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->packageSize:Ljava/lang/Long;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->packageDiffs:Ljava/lang/Long;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->appVersionCode:Ljava/lang/Long;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-object v14, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->appVersion:Ljava/lang/String;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->lastUpdated:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->permissions:Ljava/util/List;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    if-eqz v16, :cond_f

    move-object/from16 p15, v15

    iget-object v15, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->permissionDescriptions:Ljava/util/List;

    goto :goto_f

    :cond_f
    move-object/from16 p15, v15

    move-object/from16 v15, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    if-eqz v16, :cond_10

    move-object/from16 p16, v15

    iget-object v15, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->changeLog:Ljava/lang/String;

    goto :goto_10

    :cond_10
    move-object/from16 p16, v15

    move-object/from16 v15, p17

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    if-eqz v16, :cond_11

    move-object/from16 p17, v15

    iget-object v15, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->haveAdNetwork:Ljava/lang/Boolean;

    goto :goto_11

    :cond_11
    move-object/from16 p17, v15

    move-object/from16 v15, p18

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    if-eqz v16, :cond_12

    move-object/from16 p18, v15

    iget-object v15, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->contentRating:Ljava/lang/String;

    goto :goto_12

    :cond_12
    move-object/from16 p18, v15

    move-object/from16 v15, p19

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, v1, v16

    if-eqz v16, :cond_13

    move-object/from16 p19, v15

    iget-object v15, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->contentRatingImage:Ljava/lang/String;

    goto :goto_13

    :cond_13
    move-object/from16 p19, v15

    move-object/from16 v15, p20

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, v1, v16

    if-eqz v16, :cond_14

    move-object/from16 p20, v15

    iget-object v15, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->shamedId:Ljava/lang/String;

    goto :goto_14

    :cond_14
    move-object/from16 p20, v15

    move-object/from16 v15, p21

    :goto_14
    const/high16 v16, 0x200000

    and-int v16, v1, v16

    if-eqz v16, :cond_15

    move-object/from16 p21, v15

    iget-object v15, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->shamedURL:Ljava/lang/String;

    goto :goto_15

    :cond_15
    move-object/from16 p21, v15

    move-object/from16 v15, p22

    :goto_15
    const/high16 v16, 0x400000

    and-int v16, v1, v16

    if-eqz v16, :cond_16

    move-object/from16 p22, v15

    iget-object v15, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->shamedIconURL:Ljava/lang/String;

    goto :goto_16

    :cond_16
    move-object/from16 p22, v15

    move-object/from16 v15, p23

    :goto_16
    const/high16 v16, 0x800000

    and-int v1, v1, v16

    if-eqz v1, :cond_17

    iget-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->referrer:Ljava/lang/String;

    goto :goto_17

    :cond_17
    move-object/from16 v1, p24

    :goto_17
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p23, v15

    move-object/from16 p24, v1

    invoke-virtual/range {p0 .. p24}, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->packageSize:Ljava/lang/Long;

    return-object v0
.end method

.method public final component11()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->packageDiffs:Ljava/lang/Long;

    return-object v0
.end method

.method public final component12()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->appVersionCode:Ljava/lang/Long;

    return-object v0
.end method

.method public final component13()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final component14()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->lastUpdated:Ljava/lang/String;

    return-object v0
.end method

.method public final component15()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->permissions:Ljava/util/List;

    return-object v0
.end method

.method public final component16()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->permissionDescriptions:Ljava/util/List;

    return-object v0
.end method

.method public final component17()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->changeLog:Ljava/lang/String;

    return-object v0
.end method

.method public final component18()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->haveAdNetwork:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component19()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->contentRating:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component20()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->contentRatingImage:Ljava/lang/String;

    return-object v0
.end method

.method public final component21()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->shamedId:Ljava/lang/String;

    return-object v0
.end method

.method public final component22()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->shamedURL:Ljava/lang/String;

    return-object v0
.end method

.method public final component23()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->shamedIconURL:Ljava/lang/String;

    return-object v0
.end method

.method public final component24()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->referrer:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->categoryName:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->categorySlug:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->installCountRange:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->verboseSize:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->verboseSizeLabel:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move-object/from16 v21, p21

    move-object/from16 v22, p22

    move-object/from16 v23, p23

    move-object/from16 v24, p24

    const-string v0, "packageName"

    move-object/from16 v25, v1

    invoke-static {v1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconUrl"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appName"

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    move-object/from16 v1, p4

    invoke-static {v1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "categoryName"

    move-object/from16 v1, p5

    invoke-static {v1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "categorySlug"

    move-object/from16 v1, p6

    invoke-static {v1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "installCountRange"

    move-object/from16 v1, p7

    invoke-static {v1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v26, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-direct/range {v0 .. v24}, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v26
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->iconUrl:Ljava/lang/String;

    iget-object v1, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->iconUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->appName:Ljava/lang/String;

    iget-object v1, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->appName:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->description:Ljava/lang/String;

    iget-object v1, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->description:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->categoryName:Ljava/lang/String;

    iget-object v1, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->categoryName:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->categorySlug:Ljava/lang/String;

    iget-object v1, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->categorySlug:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->installCountRange:Ljava/lang/String;

    iget-object v1, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->installCountRange:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->verboseSize:Ljava/lang/String;

    iget-object v1, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->verboseSize:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->verboseSizeLabel:Ljava/lang/String;

    iget-object v1, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->verboseSizeLabel:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->packageSize:Ljava/lang/Long;

    iget-object v1, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->packageSize:Ljava/lang/Long;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->packageDiffs:Ljava/lang/Long;

    iget-object v1, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->packageDiffs:Ljava/lang/Long;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->appVersionCode:Ljava/lang/Long;

    iget-object v1, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->appVersionCode:Ljava/lang/Long;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->appVersion:Ljava/lang/String;

    iget-object v1, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->appVersion:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->lastUpdated:Ljava/lang/String;

    iget-object v1, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->lastUpdated:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->permissions:Ljava/util/List;

    iget-object v1, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->permissions:Ljava/util/List;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->permissionDescriptions:Ljava/util/List;

    iget-object v1, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->permissionDescriptions:Ljava/util/List;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->changeLog:Ljava/lang/String;

    iget-object v1, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->changeLog:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->haveAdNetwork:Ljava/lang/Boolean;

    iget-object v1, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->haveAdNetwork:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->contentRating:Ljava/lang/String;

    iget-object v1, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->contentRating:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->contentRatingImage:Ljava/lang/String;

    iget-object v1, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->contentRatingImage:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->shamedId:Ljava/lang/String;

    iget-object v1, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->shamedId:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->shamedURL:Ljava/lang/String;

    iget-object v1, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->shamedURL:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->shamedIconURL:Ljava/lang/String;

    iget-object v1, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->shamedIconURL:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->referrer:Ljava/lang/String;

    iget-object p1, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->referrer:Ljava/lang/String;

    invoke-static {v0, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getAppName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppSize(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->packageSize:Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lc/c/a/c/b/f;->a(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public final getAppVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppVersionCode()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->appVersionCode:Ljava/lang/Long;

    return-object v0
.end method

.method public final getCategoryName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->categoryName:Ljava/lang/String;

    return-object v0
.end method

.method public final getCategorySlug()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->categorySlug:Ljava/lang/String;

    return-object v0
.end method

.method public final getChangeLog()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->changeLog:Ljava/lang/String;

    return-object v0
.end method

.method public final getContentRating()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->contentRating:Ljava/lang/String;

    return-object v0
.end method

.method public final getContentRatingImage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->contentRatingImage:Ljava/lang/String;

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getHaveAdNetwork()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->haveAdNetwork:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIconUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getInstallCountRange()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->installCountRange:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastUpdated()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->lastUpdated:Ljava/lang/String;

    return-object v0
.end method

.method public final getPackageDiffs()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->packageDiffs:Ljava/lang/Long;

    return-object v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getPackageSize()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->packageSize:Ljava/lang/Long;

    return-object v0
.end method

.method public final getPermissionDescriptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->permissionDescriptions:Ljava/util/List;

    return-object v0
.end method

.method public final getPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->permissions:Ljava/util/List;

    return-object v0
.end method

.method public final getReferrer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->referrer:Ljava/lang/String;

    return-object v0
.end method

.method public final getShamedIconURL()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->shamedIconURL:Ljava/lang/String;

    return-object v0
.end method

.method public final getShamedId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->shamedId:Ljava/lang/String;

    return-object v0
.end method

.method public final getShamedURL()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->shamedURL:Ljava/lang/String;

    return-object v0
.end method

.method public final getSpannedDescription()Landroid/text/Spanned;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->description:Ljava/lang/String;

    invoke-static {v0}, Lc/c/a/c/b/i;->a(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public final getVerboseSize()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->verboseSize:Ljava/lang/String;

    return-object v0
.end method

.method public final getVerboseSizeLabel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->verboseSizeLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->viewType:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->iconUrl:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->appName:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->description:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->categoryName:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->categorySlug:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->installCountRange:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->verboseSize:Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->verboseSizeLabel:Ljava/lang/String;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_8
    const/4 v2, 0x0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->packageSize:Ljava/lang/Long;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    goto :goto_9

    :cond_9
    const/4 v2, 0x0

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->packageDiffs:Ljava/lang/Long;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    goto :goto_a

    :cond_a
    const/4 v2, 0x0

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->appVersionCode:Ljava/lang/Long;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    goto :goto_b

    :cond_b
    const/4 v2, 0x0

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->appVersion:Ljava/lang/String;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_c

    :cond_c
    const/4 v2, 0x0

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->lastUpdated:Ljava/lang/String;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_d

    :cond_d
    const/4 v2, 0x0

    :goto_d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->permissions:Ljava/util/List;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_e

    :cond_e
    const/4 v2, 0x0

    :goto_e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->permissionDescriptions:Ljava/util/List;

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_f

    :cond_f
    const/4 v2, 0x0

    :goto_f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->changeLog:Ljava/lang/String;

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_10

    :cond_10
    const/4 v2, 0x0

    :goto_10
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->haveAdNetwork:Ljava/lang/Boolean;

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    goto :goto_11

    :cond_11
    const/4 v2, 0x0

    :goto_11
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->contentRating:Ljava/lang/String;

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_12

    :cond_12
    const/4 v2, 0x0

    :goto_12
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->contentRatingImage:Ljava/lang/String;

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_13

    :cond_13
    const/4 v2, 0x0

    :goto_13
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->shamedId:Ljava/lang/String;

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_14

    :cond_14
    const/4 v2, 0x0

    :goto_14
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->shamedURL:Ljava/lang/String;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_15

    :cond_15
    const/4 v2, 0x0

    :goto_15
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->shamedIconURL:Ljava/lang/String;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_16

    :cond_16
    const/4 v2, 0x0

    :goto_16
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->referrer:Ljava/lang/String;

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_17
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppMoreDescriptionItem(packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", iconUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->iconUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", appName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", categoryName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->categoryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", categorySlug="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->categorySlug:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", installCountRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->installCountRange:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", verboseSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->verboseSize:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", verboseSizeLabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->verboseSizeLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", packageSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->packageSize:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", packageDiffs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->packageDiffs:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", appVersionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->appVersionCode:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", appVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->appVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lastUpdated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->lastUpdated:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", permissions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->permissions:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", permissionDescriptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->permissionDescriptions:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", changeLog="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->changeLog:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", haveAdNetwork="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->haveAdNetwork:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", contentRating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->contentRating:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", contentRatingImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->contentRatingImage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", shamedId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->shamedId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", shamedURL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->shamedURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", shamedIconURL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->shamedIconURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", referrer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->referrer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->iconUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->appName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->description:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->categoryName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->categorySlug:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->installCountRange:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->verboseSize:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->verboseSizeLabel:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    iget-object p2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->packageDiffs:Ljava/lang/Long;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 11
    iget-object p2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->packageDiffs:Ljava/lang/Long;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 12
    iget-object p2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->appVersionCode:Ljava/lang/Long;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 13
    iget-object p2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->appVersion:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    iget-object p2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->lastUpdated:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15
    iget-object p2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->permissions:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 16
    iget-object p2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->permissionDescriptions:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 17
    iget-object p2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->changeLog:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 18
    iget-object p2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->haveAdNetwork:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 19
    iget-object p2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->contentRating:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 20
    iget-object p2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->contentRatingImage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 21
    iget-object p2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->shamedId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    iget-object p2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->shamedURL:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 23
    iget-object p2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->shamedIconURL:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    iget-object p2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;->referrer:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
