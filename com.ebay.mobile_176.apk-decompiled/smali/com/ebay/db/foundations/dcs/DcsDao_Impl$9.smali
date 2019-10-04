.class Lcom/ebay/db/foundations/dcs/DcsDao_Impl$9;
.super Landroidx/lifecycle/ComputableLiveData;
.source "DcsDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->getAll()Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/ComputableLiveData<",
        "Ljava/util/List<",
        "Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;",
        ">;>;"
    }
.end annotation


# instance fields
.field private _observer:Landroidx/room/InvalidationTracker$Observer;

.field final synthetic this$0:Lcom/ebay/db/foundations/dcs/DcsDao_Impl;

.field final synthetic val$_statement:Landroidx/room/RoomSQLiteQuery;


# direct methods
.method constructor <init>(Lcom/ebay/db/foundations/dcs/DcsDao_Impl;Ljava/util/concurrent/Executor;Landroidx/room/RoomSQLiteQuery;)V
    .locals 0

    .line 517
    iput-object p1, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$9;->this$0:Lcom/ebay/db/foundations/dcs/DcsDao_Impl;

    iput-object p3, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$9;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-direct {p0, p2}, Landroidx/lifecycle/ComputableLiveData;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic compute()Ljava/lang/Object;
    .locals 1

    .line 517
    invoke-virtual {p0}, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$9;->compute()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected compute()Ljava/util/List;
    .locals 43
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 522
    iget-object v0, v1, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$9;->_observer:Landroidx/room/InvalidationTracker$Observer;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 523
    new-instance v0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$9$1;

    const-string v3, "dcs_property"

    new-array v4, v2, [Ljava/lang/String;

    invoke-direct {v0, v1, v3, v4}, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$9$1;-><init>(Lcom/ebay/db/foundations/dcs/DcsDao_Impl$9;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, v1, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$9;->_observer:Landroidx/room/InvalidationTracker$Observer;

    .line 529
    iget-object v0, v1, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$9;->this$0:Lcom/ebay/db/foundations/dcs/DcsDao_Impl;

    invoke-static {v0}, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->access$200(Lcom/ebay/db/foundations/dcs/DcsDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v0

    iget-object v3, v1, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$9;->_observer:Landroidx/room/InvalidationTracker$Observer;

    invoke-virtual {v0, v3}, Landroidx/room/InvalidationTracker;->addWeakObserver(Landroidx/room/InvalidationTracker$Observer;)V

    .line 531
    :cond_0
    iget-object v0, v1, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$9;->this$0:Lcom/ebay/db/foundations/dcs/DcsDao_Impl;

    invoke-static {v0}, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->access$200(Lcom/ebay/db/foundations/dcs/DcsDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v3, v1, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$9;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0, v3}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v0, "propertyName"

    .line 533
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    const-string v4, "priority"

    .line 534
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v5, "type"

    .line 535
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v6, "textValue"

    .line 536
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "integerValue"

    .line 537
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v8, "realValue"

    .line 538
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string/jumbo v9, "sites"

    .line 539
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v10, "countryCodes"

    .line 540
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v11, "languageCodes"

    .line 541
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v12, "qaModes"

    .line 542
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string v13, "isGbh"

    .line 543
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    const-string v14, "rolloutThreshold"

    .line 544
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    const-string v15, "minAndroidSdk"

    .line 545
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    const-string v2, "descriptor"

    .line 546
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move/from16 v16, v2

    const-string/jumbo v2, "state_lastUpdate"

    .line 547
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v15

    const-string/jumbo v15, "state_ebaySite"

    .line 548
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move/from16 v18, v14

    const-string/jumbo v14, "state_rolloutThreshold"

    .line 549
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    move/from16 v19, v13

    const-string/jumbo v13, "state_devOverridesEnabled"

    .line 550
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move/from16 v20, v12

    const-string/jumbo v12, "state_country"

    .line 551
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move/from16 v21, v11

    const-string/jumbo v11, "state_language"

    .line 552
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    move/from16 v22, v10

    const-string/jumbo v10, "state_isGbh"

    .line 553
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    move/from16 v23, v9

    const-string/jumbo v9, "state_lastServiceUpdate"

    .line 554
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    move/from16 v24, v8

    const-string/jumbo v8, "state_entityTag"

    .line 555
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    move/from16 v25, v7

    .line 556
    new-instance v7, Ljava/util/ArrayList;

    move/from16 v26, v6

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 557
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 560
    new-instance v6, Lcom/ebay/db/foundations/dcs/DcsStateEntity;

    invoke-direct {v6}, Lcom/ebay/db/foundations/dcs/DcsStateEntity;-><init>()V

    .line 562
    invoke-interface {v3, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v27

    move-object/from16 v28, v7

    if-eqz v27, :cond_1

    move/from16 v31, v2

    const/4 v7, 0x0

    goto :goto_1

    .line 565
    :cond_1
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move/from16 v31, v2

    move-object/from16 v7, v27

    .line 567
    :goto_1
    iget-object v2, v1, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$9;->this$0:Lcom/ebay/db/foundations/dcs/DcsDao_Impl;

    invoke-static {v2}, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->access$100(Lcom/ebay/db/foundations/dcs/DcsDao_Impl;)Lcom/ebay/db/typeconverters/DateTypeConverter;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/ebay/db/typeconverters/DateTypeConverter;->toDate(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, v6, Lcom/ebay/db/foundations/dcs/DcsStateEntity;->lastUpdate:Ljava/util/Date;

    .line 569
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 570
    iget-object v7, v1, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$9;->this$0:Lcom/ebay/db/foundations/dcs/DcsDao_Impl;

    invoke-static {v7}, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->access$000(Lcom/ebay/db/foundations/dcs/DcsDao_Impl;)Lcom/ebay/db/foundations/dcs/DcsTypeConverters;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/ebay/db/foundations/dcs/DcsTypeConverters;->stringToDcsSiteCode(Ljava/lang/String;)Lcom/ebay/db/foundations/dcs/DcsSiteCode;

    move-result-object v2

    iput-object v2, v6, Lcom/ebay/db/foundations/dcs/DcsStateEntity;->ebaySite:Lcom/ebay/db/foundations/dcs/DcsSiteCode;

    .line 571
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getFloat(I)F

    move-result v2

    iput v2, v6, Lcom/ebay/db/foundations/dcs/DcsStateEntity;->rolloutThreshold:F

    .line 573
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 574
    :goto_2
    iput-boolean v2, v6, Lcom/ebay/db/foundations/dcs/DcsStateEntity;->devOverridesEnabled:Z

    .line 576
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 577
    iget-object v7, v1, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$9;->this$0:Lcom/ebay/db/foundations/dcs/DcsDao_Impl;

    invoke-static {v7}, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->access$000(Lcom/ebay/db/foundations/dcs/DcsDao_Impl;)Lcom/ebay/db/foundations/dcs/DcsTypeConverters;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/ebay/db/foundations/dcs/DcsTypeConverters;->stringToCountryCode(Ljava/lang/String;)Lcom/ebay/nautilus/base/CountryCode;

    move-result-object v2

    iput-object v2, v6, Lcom/ebay/db/foundations/dcs/DcsStateEntity;->country:Lcom/ebay/nautilus/base/CountryCode;

    .line 579
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 580
    iget-object v7, v1, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$9;->this$0:Lcom/ebay/db/foundations/dcs/DcsDao_Impl;

    invoke-static {v7}, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->access$000(Lcom/ebay/db/foundations/dcs/DcsDao_Impl;)Lcom/ebay/db/foundations/dcs/DcsTypeConverters;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/ebay/db/foundations/dcs/DcsTypeConverters;->stringToLanguageCode(Ljava/lang/String;)Lcom/ebay/nautilus/base/LanguageCode;

    move-result-object v2

    iput-object v2, v6, Lcom/ebay/db/foundations/dcs/DcsStateEntity;->language:Lcom/ebay/nautilus/base/LanguageCode;

    .line 582
    invoke-interface {v3, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v7, 0x0

    goto :goto_3

    .line 585
    :cond_3
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :goto_3
    if-nez v7, :cond_4

    const/4 v7, 0x0

    goto :goto_5

    .line 587
    :cond_4
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    :goto_5
    iput-object v7, v6, Lcom/ebay/db/foundations/dcs/DcsStateEntity;->isGbh:Ljava/lang/Boolean;

    .line 589
    invoke-interface {v3, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v7, 0x0

    goto :goto_6

    .line 592
    :cond_6
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 594
    :goto_6
    iget-object v2, v1, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$9;->this$0:Lcom/ebay/db/foundations/dcs/DcsDao_Impl;

    invoke-static {v2}, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->access$100(Lcom/ebay/db/foundations/dcs/DcsDao_Impl;)Lcom/ebay/db/typeconverters/DateTypeConverter;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/ebay/db/typeconverters/DateTypeConverter;->toDate(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, v6, Lcom/ebay/db/foundations/dcs/DcsStateEntity;->lastServiceUpdate:Ljava/util/Date;

    .line 595
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/ebay/db/foundations/dcs/DcsStateEntity;->entityTag:Ljava/lang/String;

    .line 596
    new-instance v2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;

    invoke-direct {v2}, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;-><init>()V

    .line 597
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->propertyName:Ljava/lang/String;

    .line 598
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->priority:I

    .line 600
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move/from16 v33, v0

    .line 601
    iget-object v0, v1, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$9;->this$0:Lcom/ebay/db/foundations/dcs/DcsDao_Impl;

    invoke-static {v0}, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->access$000(Lcom/ebay/db/foundations/dcs/DcsDao_Impl;)Lcom/ebay/db/foundations/dcs/DcsTypeConverters;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/ebay/db/foundations/dcs/DcsTypeConverters;->stringToDcsPropertyType(Ljava/lang/String;)Lcom/ebay/db/foundations/dcs/DcsPropertyType;

    move-result-object v0

    iput-object v0, v2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->type:Lcom/ebay/db/foundations/dcs/DcsPropertyType;

    move/from16 v0, v26

    .line 602
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->textValue:Ljava/lang/String;

    move/from16 v7, v25

    .line 603
    invoke-interface {v3, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v25

    if-eqz v25, :cond_7

    move/from16 v34, v0

    const/4 v0, 0x0

    .line 604
    iput-object v0, v2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->integerValue:Ljava/lang/Integer;

    :goto_7
    move/from16 v0, v24

    goto :goto_8

    :cond_7
    move/from16 v34, v0

    .line 606
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->integerValue:Ljava/lang/Integer;

    goto :goto_7

    .line 608
    :goto_8
    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v24

    if-eqz v24, :cond_8

    move/from16 v35, v4

    const/4 v4, 0x0

    .line 609
    iput-object v4, v2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->realValue:Ljava/lang/Double;

    :goto_9
    move/from16 v36, v0

    move/from16 v4, v23

    goto :goto_a

    :cond_8
    move/from16 v35, v4

    .line 611
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->realValue:Ljava/lang/Double;

    goto :goto_9

    .line 614
    :goto_a
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move/from16 v37, v4

    .line 615
    iget-object v4, v1, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$9;->this$0:Lcom/ebay/db/foundations/dcs/DcsDao_Impl;

    invoke-static {v4}, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->access$000(Lcom/ebay/db/foundations/dcs/DcsDao_Impl;)Lcom/ebay/db/foundations/dcs/DcsTypeConverters;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/ebay/db/foundations/dcs/DcsTypeConverters;->stringToEumSetOfDcsSiteCode(Ljava/lang/String;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, v2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->sites:Ljava/util/EnumSet;

    move/from16 v0, v22

    .line 617
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move/from16 v38, v0

    .line 618
    iget-object v0, v1, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$9;->this$0:Lcom/ebay/db/foundations/dcs/DcsDao_Impl;

    invoke-static {v0}, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->access$000(Lcom/ebay/db/foundations/dcs/DcsDao_Impl;)Lcom/ebay/db/foundations/dcs/DcsTypeConverters;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/ebay/db/foundations/dcs/DcsTypeConverters;->stringToEumSetOfCountryCode(Ljava/lang/String;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, v2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->countryCodes:Ljava/util/EnumSet;

    move/from16 v0, v21

    .line 620
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move/from16 v39, v0

    .line 621
    iget-object v0, v1, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$9;->this$0:Lcom/ebay/db/foundations/dcs/DcsDao_Impl;

    invoke-static {v0}, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->access$000(Lcom/ebay/db/foundations/dcs/DcsDao_Impl;)Lcom/ebay/db/foundations/dcs/DcsTypeConverters;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/ebay/db/foundations/dcs/DcsTypeConverters;->stringToEnumSetOfLanguageCode(Ljava/lang/String;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, v2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->languageCodes:Ljava/util/EnumSet;

    move/from16 v0, v20

    .line 623
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move/from16 v40, v0

    .line 624
    iget-object v0, v1, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$9;->this$0:Lcom/ebay/db/foundations/dcs/DcsDao_Impl;

    invoke-static {v0}, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->access$000(Lcom/ebay/db/foundations/dcs/DcsDao_Impl;)Lcom/ebay/db/foundations/dcs/DcsTypeConverters;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/ebay/db/foundations/dcs/DcsTypeConverters;->stringToEnumSetOfQaMode(Ljava/lang/String;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, v2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->qaModes:Ljava/util/EnumSet;

    move/from16 v0, v19

    .line 626
    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v4, 0x0

    goto :goto_b

    .line 629
    :cond_9
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_b
    if-nez v4, :cond_a

    const/4 v4, 0x0

    goto :goto_d

    .line 631
    :cond_a
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_b

    const/16 v32, 0x1

    goto :goto_c

    :cond_b
    const/16 v32, 0x0

    :goto_c
    invoke-static/range {v32 .. v32}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    :goto_d
    iput-object v4, v2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->isGbh:Ljava/lang/Boolean;

    move/from16 v4, v18

    .line 632
    invoke-interface {v3, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_c

    move/from16 v41, v0

    const/4 v0, 0x0

    .line 633
    iput-object v0, v2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->rolloutThreshold:Ljava/lang/Float;

    :goto_e
    move/from16 v0, v17

    goto :goto_f

    :cond_c
    move/from16 v41, v0

    .line 635
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, v2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->rolloutThreshold:Ljava/lang/Float;

    goto :goto_e

    .line 637
    :goto_f
    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_d

    const/4 v1, 0x0

    .line 638
    iput-object v1, v2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->minAndroidSdk:Ljava/lang/Integer;

    :goto_10
    move/from16 v42, v0

    move/from16 v1, v16

    goto :goto_11

    .line 640
    :cond_d
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->minAndroidSdk:Ljava/lang/Integer;

    goto :goto_10

    .line 642
    :goto_11
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->descriptor:Ljava/lang/String;

    .line 643
    iput-object v6, v2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->stateEntity:Lcom/ebay/db/foundations/dcs/DcsStateEntity;

    move-object/from16 v0, v28

    .line 644
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v16, v1

    move/from16 v18, v4

    move/from16 v25, v7

    move/from16 v2, v31

    move/from16 v26, v34

    move/from16 v4, v35

    move/from16 v24, v36

    move/from16 v23, v37

    move/from16 v22, v38

    move/from16 v21, v39

    move/from16 v20, v40

    move/from16 v19, v41

    move/from16 v17, v42

    move-object/from16 v1, p0

    move-object v7, v0

    move/from16 v0, v33

    goto/16 :goto_0

    :cond_e
    move-object v0, v7

    .line 648
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 649
    throw v0
.end method

.method protected finalize()V
    .locals 1

    .line 654
    iget-object v0, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$9;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-void
.end method
