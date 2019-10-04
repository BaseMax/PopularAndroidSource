.class public final Lcom/ebay/db/foundations/dcs/DcsDao_Impl;
.super Lcom/ebay/db/foundations/dcs/DcsDao;
.source "DcsDao_Impl.java"


# instance fields
.field private final __dateTypeConverter:Lcom/ebay/db/typeconverters/DateTypeConverter;

.field private final __db:Landroidx/room/RoomDatabase;

.field private final __dcsTypeConverters:Lcom/ebay/db/foundations/dcs/DcsTypeConverters;

.field private final __insertionAdapterOfDcsPropertyEntity:Landroidx/room/EntityInsertionAdapter;

.field private final __preparedStmtOfRemoveAllDeveloperOverrideEntries:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfRemoveAllServiceEntries:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfRemoveAllServiceEntriesOlderThan:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfRemoveDeveloperOverride:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfSetLastServiceUpdateTime:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfUpdateDcsStateFields:Landroidx/room/SharedSQLiteStatement;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/ebay/db/foundations/dcs/DcsDao;-><init>()V

    .line 34
    new-instance v0, Lcom/ebay/db/foundations/dcs/DcsTypeConverters;

    invoke-direct {v0}, Lcom/ebay/db/foundations/dcs/DcsTypeConverters;-><init>()V

    iput-object v0, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__dcsTypeConverters:Lcom/ebay/db/foundations/dcs/DcsTypeConverters;

    .line 36
    new-instance v0, Lcom/ebay/db/typeconverters/DateTypeConverter;

    invoke-direct {v0}, Lcom/ebay/db/typeconverters/DateTypeConverter;-><init>()V

    iput-object v0, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__dateTypeConverter:Lcom/ebay/db/typeconverters/DateTypeConverter;

    .line 51
    iput-object p1, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 52
    new-instance v0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$1;-><init>(Lcom/ebay/db/foundations/dcs/DcsDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__insertionAdapterOfDcsPropertyEntity:Landroidx/room/EntityInsertionAdapter;

    .line 204
    new-instance v0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$2;-><init>(Lcom/ebay/db/foundations/dcs/DcsDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__preparedStmtOfRemoveAllServiceEntries:Landroidx/room/SharedSQLiteStatement;

    .line 211
    new-instance v0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$3;-><init>(Lcom/ebay/db/foundations/dcs/DcsDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__preparedStmtOfRemoveAllServiceEntriesOlderThan:Landroidx/room/SharedSQLiteStatement;

    .line 218
    new-instance v0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$4;

    invoke-direct {v0, p0, p1}, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$4;-><init>(Lcom/ebay/db/foundations/dcs/DcsDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__preparedStmtOfRemoveAllDeveloperOverrideEntries:Landroidx/room/SharedSQLiteStatement;

    .line 225
    new-instance v0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$5;

    invoke-direct {v0, p0, p1}, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$5;-><init>(Lcom/ebay/db/foundations/dcs/DcsDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__preparedStmtOfSetLastServiceUpdateTime:Landroidx/room/SharedSQLiteStatement;

    .line 232
    new-instance v0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$6;

    invoke-direct {v0, p0, p1}, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$6;-><init>(Lcom/ebay/db/foundations/dcs/DcsDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__preparedStmtOfRemoveDeveloperOverride:Landroidx/room/SharedSQLiteStatement;

    .line 239
    new-instance v0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$7;

    invoke-direct {v0, p0, p1}, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$7;-><init>(Lcom/ebay/db/foundations/dcs/DcsDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__preparedStmtOfUpdateDcsStateFields:Landroidx/room/SharedSQLiteStatement;

    return-void
.end method

.method static synthetic access$000(Lcom/ebay/db/foundations/dcs/DcsDao_Impl;)Lcom/ebay/db/foundations/dcs/DcsTypeConverters;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__dcsTypeConverters:Lcom/ebay/db/foundations/dcs/DcsTypeConverters;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ebay/db/foundations/dcs/DcsDao_Impl;)Lcom/ebay/db/typeconverters/DateTypeConverter;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__dateTypeConverter:Lcom/ebay/db/typeconverters/DateTypeConverter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ebay/db/foundations/dcs/DcsDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object p0
.end method


# virtual methods
.method public getAll()Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;",
            ">;>;"
        }
    .end annotation

    const-string v0, "SELECT * FROM dcs_property ORDER BY propertyName, priority ASC"

    const/4 v1, 0x0

    .line 516
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 517
    new-instance v1, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$9;

    iget-object v2, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->getQueryExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$9;-><init>(Lcom/ebay/db/foundations/dcs/DcsDao_Impl;Ljava/util/concurrent/Executor;Landroidx/room/RoomSQLiteQuery;)V

    .line 656
    invoke-virtual {v1}, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$9;->getLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public getAllSynchronous()Ljava/util/List;
    .locals 44
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "SELECT * FROM dcs_property ORDER BY propertyName, priority ASC"

    const/4 v2, 0x0

    .line 662
    invoke-static {v0, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    .line 663
    iget-object v0, v1, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0, v3}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string/jumbo v0, "propertyName"

    .line 665
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v5, "priority"

    .line 666
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v6, "type"

    .line 667
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string/jumbo v7, "textValue"

    .line 668
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v8, "integerValue"

    .line 669
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string/jumbo v9, "realValue"

    .line 670
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string/jumbo v10, "sites"

    .line 671
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v11, "countryCodes"

    .line 672
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v12, "languageCodes"

    .line 673
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string/jumbo v13, "qaModes"

    .line 674
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    const-string v14, "isGbh"

    .line 675
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    const-string/jumbo v15, "rolloutThreshold"

    .line 676
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    const-string v2, "minAndroidSdk"

    .line 677
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v3

    :try_start_1
    const-string v3, "descriptor"

    .line 678
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move/from16 v17, v3

    const-string/jumbo v3, "state_lastUpdate"

    .line 679
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move/from16 v18, v2

    const-string/jumbo v2, "state_ebaySite"

    .line 680
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v15

    const-string/jumbo v15, "state_rolloutThreshold"

    .line 681
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move/from16 v20, v14

    const-string/jumbo v14, "state_devOverridesEnabled"

    .line 682
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    move/from16 v21, v13

    const-string/jumbo v13, "state_country"

    .line 683
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move/from16 v22, v12

    const-string/jumbo v12, "state_language"

    .line 684
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move/from16 v23, v11

    const-string/jumbo v11, "state_isGbh"

    .line 685
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    move/from16 v24, v10

    const-string/jumbo v10, "state_lastServiceUpdate"

    .line 686
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    move/from16 v25, v9

    const-string/jumbo v9, "state_entityTag"

    .line 687
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    move/from16 v26, v8

    .line 688
    new-instance v8, Ljava/util/ArrayList;

    move/from16 v27, v7

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 689
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 692
    new-instance v7, Lcom/ebay/db/foundations/dcs/DcsStateEntity;

    invoke-direct {v7}, Lcom/ebay/db/foundations/dcs/DcsStateEntity;-><init>()V

    .line 694
    invoke-interface {v4, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v28

    move-object/from16 v29, v8

    if-eqz v28, :cond_0

    move/from16 v32, v3

    const/4 v8, 0x0

    goto :goto_1

    .line 697
    :cond_0
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    move/from16 v32, v3

    move-object/from16 v8, v28

    .line 699
    :goto_1
    iget-object v3, v1, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__dateTypeConverter:Lcom/ebay/db/typeconverters/DateTypeConverter;

    invoke-virtual {v3, v8}, Lcom/ebay/db/typeconverters/DateTypeConverter;->toDate(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, v7, Lcom/ebay/db/foundations/dcs/DcsStateEntity;->lastUpdate:Ljava/util/Date;

    .line 701
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 702
    iget-object v8, v1, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__dcsTypeConverters:Lcom/ebay/db/foundations/dcs/DcsTypeConverters;

    invoke-virtual {v8, v3}, Lcom/ebay/db/foundations/dcs/DcsTypeConverters;->stringToDcsSiteCode(Ljava/lang/String;)Lcom/ebay/db/foundations/dcs/DcsSiteCode;

    move-result-object v3

    iput-object v3, v7, Lcom/ebay/db/foundations/dcs/DcsStateEntity;->ebaySite:Lcom/ebay/db/foundations/dcs/DcsSiteCode;

    .line 703
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getFloat(I)F

    move-result v3

    iput v3, v7, Lcom/ebay/db/foundations/dcs/DcsStateEntity;->rolloutThreshold:F

    .line 705
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    .line 706
    :goto_2
    iput-boolean v3, v7, Lcom/ebay/db/foundations/dcs/DcsStateEntity;->devOverridesEnabled:Z

    .line 708
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 709
    iget-object v8, v1, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__dcsTypeConverters:Lcom/ebay/db/foundations/dcs/DcsTypeConverters;

    invoke-virtual {v8, v3}, Lcom/ebay/db/foundations/dcs/DcsTypeConverters;->stringToCountryCode(Ljava/lang/String;)Lcom/ebay/nautilus/base/CountryCode;

    move-result-object v3

    iput-object v3, v7, Lcom/ebay/db/foundations/dcs/DcsStateEntity;->country:Lcom/ebay/nautilus/base/CountryCode;

    .line 711
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 712
    iget-object v8, v1, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__dcsTypeConverters:Lcom/ebay/db/foundations/dcs/DcsTypeConverters;

    invoke-virtual {v8, v3}, Lcom/ebay/db/foundations/dcs/DcsTypeConverters;->stringToLanguageCode(Ljava/lang/String;)Lcom/ebay/nautilus/base/LanguageCode;

    move-result-object v3

    iput-object v3, v7, Lcom/ebay/db/foundations/dcs/DcsStateEntity;->language:Lcom/ebay/nautilus/base/LanguageCode;

    .line 714
    invoke-interface {v4, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v8, 0x0

    goto :goto_3

    .line 717
    :cond_2
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :goto_3
    if-nez v8, :cond_3

    const/4 v8, 0x0

    goto :goto_5

    .line 719
    :cond_3
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    :goto_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    :goto_5
    iput-object v8, v7, Lcom/ebay/db/foundations/dcs/DcsStateEntity;->isGbh:Ljava/lang/Boolean;

    .line 721
    invoke-interface {v4, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v8, 0x0

    goto :goto_6

    .line 724
    :cond_5
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 726
    :goto_6
    iget-object v3, v1, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__dateTypeConverter:Lcom/ebay/db/typeconverters/DateTypeConverter;

    invoke-virtual {v3, v8}, Lcom/ebay/db/typeconverters/DateTypeConverter;->toDate(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, v7, Lcom/ebay/db/foundations/dcs/DcsStateEntity;->lastServiceUpdate:Ljava/util/Date;

    .line 727
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v7, Lcom/ebay/db/foundations/dcs/DcsStateEntity;->entityTag:Ljava/lang/String;

    .line 728
    new-instance v3, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;

    invoke-direct {v3}, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;-><init>()V

    .line 729
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->propertyName:Ljava/lang/String;

    .line 730
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v3, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->priority:I

    .line 732
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move/from16 v34, v0

    .line 733
    iget-object v0, v1, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__dcsTypeConverters:Lcom/ebay/db/foundations/dcs/DcsTypeConverters;

    invoke-virtual {v0, v8}, Lcom/ebay/db/foundations/dcs/DcsTypeConverters;->stringToDcsPropertyType(Ljava/lang/String;)Lcom/ebay/db/foundations/dcs/DcsPropertyType;

    move-result-object v0

    iput-object v0, v3, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->type:Lcom/ebay/db/foundations/dcs/DcsPropertyType;

    move/from16 v0, v27

    .line 734
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->textValue:Ljava/lang/String;

    move/from16 v8, v26

    .line 735
    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_6

    move/from16 v35, v0

    const/4 v0, 0x0

    .line 736
    iput-object v0, v3, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->integerValue:Ljava/lang/Integer;

    :goto_7
    move/from16 v0, v25

    goto :goto_8

    :cond_6
    move/from16 v35, v0

    .line 738
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v3, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->integerValue:Ljava/lang/Integer;

    goto :goto_7

    .line 740
    :goto_8
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v25

    if-eqz v25, :cond_7

    move/from16 v36, v2

    const/4 v2, 0x0

    .line 741
    iput-object v2, v3, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->realValue:Ljava/lang/Double;

    :goto_9
    move/from16 v37, v0

    move/from16 v2, v24

    goto :goto_a

    :cond_7
    move/from16 v36, v2

    .line 743
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v3, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->realValue:Ljava/lang/Double;

    goto :goto_9

    .line 746
    :goto_a
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move/from16 v38, v2

    .line 747
    iget-object v2, v1, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__dcsTypeConverters:Lcom/ebay/db/foundations/dcs/DcsTypeConverters;

    invoke-virtual {v2, v0}, Lcom/ebay/db/foundations/dcs/DcsTypeConverters;->stringToEumSetOfDcsSiteCode(Ljava/lang/String;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, v3, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->sites:Ljava/util/EnumSet;

    move/from16 v0, v23

    .line 749
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move/from16 v39, v0

    .line 750
    iget-object v0, v1, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__dcsTypeConverters:Lcom/ebay/db/foundations/dcs/DcsTypeConverters;

    invoke-virtual {v0, v2}, Lcom/ebay/db/foundations/dcs/DcsTypeConverters;->stringToEumSetOfCountryCode(Ljava/lang/String;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, v3, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->countryCodes:Ljava/util/EnumSet;

    move/from16 v0, v22

    .line 752
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move/from16 v40, v0

    .line 753
    iget-object v0, v1, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__dcsTypeConverters:Lcom/ebay/db/foundations/dcs/DcsTypeConverters;

    invoke-virtual {v0, v2}, Lcom/ebay/db/foundations/dcs/DcsTypeConverters;->stringToEnumSetOfLanguageCode(Ljava/lang/String;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, v3, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->languageCodes:Ljava/util/EnumSet;

    move/from16 v0, v21

    .line 755
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move/from16 v41, v0

    .line 756
    iget-object v0, v1, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__dcsTypeConverters:Lcom/ebay/db/foundations/dcs/DcsTypeConverters;

    invoke-virtual {v0, v2}, Lcom/ebay/db/foundations/dcs/DcsTypeConverters;->stringToEnumSetOfQaMode(Ljava/lang/String;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, v3, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->qaModes:Ljava/util/EnumSet;

    move/from16 v0, v20

    .line 758
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    goto :goto_b

    .line 761
    :cond_8
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_b
    if-nez v2, :cond_9

    const/4 v2, 0x0

    goto :goto_d

    .line 763
    :cond_9
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_a

    const/16 v33, 0x1

    goto :goto_c

    :cond_a
    const/16 v33, 0x0

    :goto_c
    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_d
    iput-object v2, v3, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->isGbh:Ljava/lang/Boolean;

    move/from16 v2, v19

    .line 764
    invoke-interface {v4, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_b

    move/from16 v42, v0

    const/4 v0, 0x0

    .line 765
    iput-object v0, v3, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->rolloutThreshold:Ljava/lang/Float;

    :goto_e
    move/from16 v0, v18

    goto :goto_f

    :cond_b
    move/from16 v42, v0

    .line 767
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, v3, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->rolloutThreshold:Ljava/lang/Float;

    goto :goto_e

    .line 769
    :goto_f
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_c

    const/4 v1, 0x0

    .line 770
    iput-object v1, v3, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->minAndroidSdk:Ljava/lang/Integer;

    :goto_10
    move/from16 v43, v0

    move/from16 v1, v17

    goto :goto_11

    .line 772
    :cond_c
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v3, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->minAndroidSdk:Ljava/lang/Integer;

    goto :goto_10

    .line 774
    :goto_11
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->descriptor:Ljava/lang/String;

    .line 775
    iput-object v7, v3, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->stateEntity:Lcom/ebay/db/foundations/dcs/DcsStateEntity;

    move-object/from16 v0, v29

    .line 776
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v17, v1

    move/from16 v19, v2

    move/from16 v26, v8

    move/from16 v3, v32

    move/from16 v27, v35

    move/from16 v2, v36

    move/from16 v25, v37

    move/from16 v24, v38

    move/from16 v23, v39

    move/from16 v22, v40

    move/from16 v21, v41

    move/from16 v20, v42

    move/from16 v18, v43

    move-object/from16 v1, p0

    move-object v8, v0

    move/from16 v0, v34

    goto/16 :goto_0

    :cond_d
    move-object v0, v8

    .line 780
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 781
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_12

    :catchall_1
    move-exception v0

    move-object/from16 v16, v3

    .line 780
    :goto_12
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 781
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 782
    throw v0
.end method

.method public getByName(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;",
            ">;>;"
        }
    .end annotation

    const-string v0, "SELECT * FROM dcs_property WHERE propertyName = ? ORDER BY priority"

    const/4 v1, 0x1

    .line 788
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    if-nez p1, :cond_0

    .line 791
    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 793
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 795
    :goto_0
    new-instance p1, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$10;

    iget-object v1, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->getQueryExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {p1, p0, v1, v0}, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$10;-><init>(Lcom/ebay/db/foundations/dcs/DcsDao_Impl;Ljava/util/concurrent/Executor;Landroidx/room/RoomSQLiteQuery;)V

    .line 934
    invoke-virtual {p1}, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$10;->getLiveData()Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getByNameSynchronous(Ljava/lang/String;)Ljava/util/List;
    .locals 44
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "SELECT * FROM dcs_property WHERE propertyName = ? ORDER BY priority"

    const/4 v3, 0x1

    .line 940
    invoke-static {v2, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    if-nez v0, :cond_0

    .line 943
    invoke-virtual {v2, v3}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 945
    :cond_0
    invoke-virtual {v2, v3, v0}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 947
    :goto_0
    iget-object v0, v1, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0, v2}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string/jumbo v0, "propertyName"

    .line 949
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v5, "priority"

    .line 950
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v6, "type"

    .line 951
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string/jumbo v7, "textValue"

    .line 952
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v8, "integerValue"

    .line 953
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string/jumbo v9, "realValue"

    .line 954
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string/jumbo v10, "sites"

    .line 955
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v11, "countryCodes"

    .line 956
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v12, "languageCodes"

    .line 957
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string/jumbo v13, "qaModes"

    .line 958
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    const-string v14, "isGbh"

    .line 959
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    const-string/jumbo v15, "rolloutThreshold"

    .line 960
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    const-string v3, "minAndroidSdk"

    .line 961
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v2

    :try_start_1
    const-string v2, "descriptor"

    .line 962
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    const-string/jumbo v2, "state_lastUpdate"

    .line 963
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v3

    const-string/jumbo v3, "state_ebaySite"

    .line 964
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move/from16 v19, v15

    const-string/jumbo v15, "state_rolloutThreshold"

    .line 965
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move/from16 v20, v14

    const-string/jumbo v14, "state_devOverridesEnabled"

    .line 966
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    move/from16 v21, v13

    const-string/jumbo v13, "state_country"

    .line 967
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move/from16 v22, v12

    const-string/jumbo v12, "state_language"

    .line 968
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move/from16 v23, v11

    const-string/jumbo v11, "state_isGbh"

    .line 969
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    move/from16 v24, v10

    const-string/jumbo v10, "state_lastServiceUpdate"

    .line 970
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    move/from16 v25, v9

    const-string/jumbo v9, "state_entityTag"

    .line 971
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    move/from16 v26, v8

    .line 972
    new-instance v8, Ljava/util/ArrayList;

    move/from16 v27, v7

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 973
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 976
    new-instance v7, Lcom/ebay/db/foundations/dcs/DcsStateEntity;

    invoke-direct {v7}, Lcom/ebay/db/foundations/dcs/DcsStateEntity;-><init>()V

    .line 978
    invoke-interface {v4, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v28

    move-object/from16 v29, v8

    if-eqz v28, :cond_1

    move/from16 v32, v2

    const/4 v8, 0x0

    goto :goto_2

    .line 981
    :cond_1
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    move/from16 v32, v2

    move-object/from16 v8, v28

    .line 983
    :goto_2
    iget-object v2, v1, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__dateTypeConverter:Lcom/ebay/db/typeconverters/DateTypeConverter;

    invoke-virtual {v2, v8}, Lcom/ebay/db/typeconverters/DateTypeConverter;->toDate(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, v7, Lcom/ebay/db/foundations/dcs/DcsStateEntity;->lastUpdate:Ljava/util/Date;

    .line 985
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 986
    iget-object v8, v1, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__dcsTypeConverters:Lcom/ebay/db/foundations/dcs/DcsTypeConverters;

    invoke-virtual {v8, v2}, Lcom/ebay/db/foundations/dcs/DcsTypeConverters;->stringToDcsSiteCode(Ljava/lang/String;)Lcom/ebay/db/foundations/dcs/DcsSiteCode;

    move-result-object v2

    iput-object v2, v7, Lcom/ebay/db/foundations/dcs/DcsStateEntity;->ebaySite:Lcom/ebay/db/foundations/dcs/DcsSiteCode;

    .line 987
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getFloat(I)F

    move-result v2

    iput v2, v7, Lcom/ebay/db/foundations/dcs/DcsStateEntity;->rolloutThreshold:F

    .line 989
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_3

    :cond_2
    const/4 v2, 0x0

    .line 990
    :goto_3
    iput-boolean v2, v7, Lcom/ebay/db/foundations/dcs/DcsStateEntity;->devOverridesEnabled:Z

    .line 992
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 993
    iget-object v8, v1, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__dcsTypeConverters:Lcom/ebay/db/foundations/dcs/DcsTypeConverters;

    invoke-virtual {v8, v2}, Lcom/ebay/db/foundations/dcs/DcsTypeConverters;->stringToCountryCode(Ljava/lang/String;)Lcom/ebay/nautilus/base/CountryCode;

    move-result-object v2

    iput-object v2, v7, Lcom/ebay/db/foundations/dcs/DcsStateEntity;->country:Lcom/ebay/nautilus/base/CountryCode;

    .line 995
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 996
    iget-object v8, v1, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__dcsTypeConverters:Lcom/ebay/db/foundations/dcs/DcsTypeConverters;

    invoke-virtual {v8, v2}, Lcom/ebay/db/foundations/dcs/DcsTypeConverters;->stringToLanguageCode(Ljava/lang/String;)Lcom/ebay/nautilus/base/LanguageCode;

    move-result-object v2

    iput-object v2, v7, Lcom/ebay/db/foundations/dcs/DcsStateEntity;->language:Lcom/ebay/nautilus/base/LanguageCode;

    .line 998
    invoke-interface {v4, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v8, 0x0

    goto :goto_4

    .line 1001
    :cond_3
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :goto_4
    if-nez v8, :cond_4

    const/4 v8, 0x0

    goto :goto_6

    .line 1003
    :cond_4
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    :goto_6
    iput-object v8, v7, Lcom/ebay/db/foundations/dcs/DcsStateEntity;->isGbh:Ljava/lang/Boolean;

    .line 1005
    invoke-interface {v4, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v8, 0x0

    goto :goto_7

    .line 1008
    :cond_6
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 1010
    :goto_7
    iget-object v2, v1, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__dateTypeConverter:Lcom/ebay/db/typeconverters/DateTypeConverter;

    invoke-virtual {v2, v8}, Lcom/ebay/db/typeconverters/DateTypeConverter;->toDate(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, v7, Lcom/ebay/db/foundations/dcs/DcsStateEntity;->lastServiceUpdate:Ljava/util/Date;

    .line 1011
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/ebay/db/foundations/dcs/DcsStateEntity;->entityTag:Ljava/lang/String;

    .line 1012
    new-instance v2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;

    invoke-direct {v2}, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;-><init>()V

    .line 1013
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->propertyName:Ljava/lang/String;

    .line 1014
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->priority:I

    .line 1016
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move/from16 v34, v0

    .line 1017
    iget-object v0, v1, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__dcsTypeConverters:Lcom/ebay/db/foundations/dcs/DcsTypeConverters;

    invoke-virtual {v0, v8}, Lcom/ebay/db/foundations/dcs/DcsTypeConverters;->stringToDcsPropertyType(Ljava/lang/String;)Lcom/ebay/db/foundations/dcs/DcsPropertyType;

    move-result-object v0

    iput-object v0, v2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->type:Lcom/ebay/db/foundations/dcs/DcsPropertyType;

    move/from16 v0, v27

    .line 1018
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->textValue:Ljava/lang/String;

    move/from16 v8, v26

    .line 1019
    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_7

    move/from16 v35, v0

    const/4 v0, 0x0

    .line 1020
    iput-object v0, v2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->integerValue:Ljava/lang/Integer;

    :goto_8
    move/from16 v0, v25

    goto :goto_9

    :cond_7
    move/from16 v35, v0

    .line 1022
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->integerValue:Ljava/lang/Integer;

    goto :goto_8

    .line 1024
    :goto_9
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v25

    if-eqz v25, :cond_8

    move/from16 v36, v3

    const/4 v3, 0x0

    .line 1025
    iput-object v3, v2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->realValue:Ljava/lang/Double;

    :goto_a
    move/from16 v37, v0

    move/from16 v3, v24

    goto :goto_b

    :cond_8
    move/from16 v36, v3

    .line 1027
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iput-object v3, v2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->realValue:Ljava/lang/Double;

    goto :goto_a

    .line 1030
    :goto_b
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move/from16 v38, v3

    .line 1031
    iget-object v3, v1, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__dcsTypeConverters:Lcom/ebay/db/foundations/dcs/DcsTypeConverters;

    invoke-virtual {v3, v0}, Lcom/ebay/db/foundations/dcs/DcsTypeConverters;->stringToEumSetOfDcsSiteCode(Ljava/lang/String;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, v2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->sites:Ljava/util/EnumSet;

    move/from16 v0, v23

    .line 1033
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move/from16 v39, v0

    .line 1034
    iget-object v0, v1, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__dcsTypeConverters:Lcom/ebay/db/foundations/dcs/DcsTypeConverters;

    invoke-virtual {v0, v3}, Lcom/ebay/db/foundations/dcs/DcsTypeConverters;->stringToEumSetOfCountryCode(Ljava/lang/String;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, v2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->countryCodes:Ljava/util/EnumSet;

    move/from16 v0, v22

    .line 1036
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move/from16 v40, v0

    .line 1037
    iget-object v0, v1, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__dcsTypeConverters:Lcom/ebay/db/foundations/dcs/DcsTypeConverters;

    invoke-virtual {v0, v3}, Lcom/ebay/db/foundations/dcs/DcsTypeConverters;->stringToEnumSetOfLanguageCode(Ljava/lang/String;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, v2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->languageCodes:Ljava/util/EnumSet;

    move/from16 v0, v21

    .line 1039
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move/from16 v41, v0

    .line 1040
    iget-object v0, v1, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__dcsTypeConverters:Lcom/ebay/db/foundations/dcs/DcsTypeConverters;

    invoke-virtual {v0, v3}, Lcom/ebay/db/foundations/dcs/DcsTypeConverters;->stringToEnumSetOfQaMode(Ljava/lang/String;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, v2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->qaModes:Ljava/util/EnumSet;

    move/from16 v0, v20

    .line 1042
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x0

    goto :goto_c

    .line 1045
    :cond_9
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_c
    if-nez v3, :cond_a

    const/4 v3, 0x0

    goto :goto_e

    .line 1047
    :cond_a
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_b

    const/16 v33, 0x1

    goto :goto_d

    :cond_b
    const/16 v33, 0x0

    :goto_d
    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :goto_e
    iput-object v3, v2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->isGbh:Ljava/lang/Boolean;

    move/from16 v3, v19

    .line 1048
    invoke-interface {v4, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_c

    move/from16 v42, v0

    const/4 v0, 0x0

    .line 1049
    iput-object v0, v2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->rolloutThreshold:Ljava/lang/Float;

    :goto_f
    move/from16 v0, v18

    goto :goto_10

    :cond_c
    move/from16 v42, v0

    .line 1051
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, v2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->rolloutThreshold:Ljava/lang/Float;

    goto :goto_f

    .line 1053
    :goto_10
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_d

    const/4 v1, 0x0

    .line 1054
    iput-object v1, v2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->minAndroidSdk:Ljava/lang/Integer;

    :goto_11
    move/from16 v43, v0

    move/from16 v1, v17

    goto :goto_12

    .line 1056
    :cond_d
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->minAndroidSdk:Ljava/lang/Integer;

    goto :goto_11

    .line 1058
    :goto_12
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->descriptor:Ljava/lang/String;

    .line 1059
    iput-object v7, v2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->stateEntity:Lcom/ebay/db/foundations/dcs/DcsStateEntity;

    move-object/from16 v0, v29

    .line 1060
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v17, v1

    move/from16 v19, v3

    move/from16 v26, v8

    move/from16 v2, v32

    move/from16 v27, v35

    move/from16 v3, v36

    move/from16 v25, v37

    move/from16 v24, v38

    move/from16 v23, v39

    move/from16 v22, v40

    move/from16 v21, v41

    move/from16 v20, v42

    move/from16 v18, v43

    move-object/from16 v1, p0

    move-object v8, v0

    move/from16 v0, v34

    goto/16 :goto_1

    :cond_e
    move-object v0, v8

    .line 1064
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1065
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_13

    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    .line 1064
    :goto_13
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1065
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1066
    throw v0
.end method

.method public getDeveloperOverrideByName(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT * FROM dcs_property WHERE propertyName = ? AND priority = 0 ORDER BY priority LIMIT 1"

    const/4 v1, 0x1

    .line 1072
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    if-nez p1, :cond_0

    .line 1075
    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 1077
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 1079
    :goto_0
    new-instance p1, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$11;

    iget-object v1, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->getQueryExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {p1, p0, v1, v0}, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$11;-><init>(Lcom/ebay/db/foundations/dcs/DcsDao_Impl;Ljava/util/concurrent/Executor;Landroidx/room/RoomSQLiteQuery;)V

    .line 1218
    invoke-virtual {p1}, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$11;->getLiveData()Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getLastServiceUpdateTime()Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT state_lastServiceUpdate FROM dcs_property WHERE priority >= 100 LIMIT 1"

    const/4 v1, 0x0

    .line 452
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 453
    new-instance v1, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$8;

    iget-object v2, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->getQueryExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$8;-><init>(Lcom/ebay/db/foundations/dcs/DcsDao_Impl;Ljava/util/concurrent/Executor;Landroidx/room/RoomSQLiteQuery;)V

    .line 491
    invoke-virtual {v1}, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$8;->getLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public getLastServiceUpdateTimeSynchronous()J
    .locals 5

    const-string v0, "SELECT state_lastServiceUpdate FROM dcs_property WHERE priority >= 100 LIMIT 1"

    const/4 v1, 0x0

    .line 497
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 498
    iget-object v2, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2, v0}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v2

    .line 501
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 502
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    .line 508
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 509
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-wide v3

    :catchall_0
    move-exception v1

    .line 508
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 509
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 510
    throw v1
.end method

.method public insert(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;",
            ">;)V"
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__insertionAdapterOfDcsPropertyEntity:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Iterable;)V

    .line 253
    iget-object p1, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    iget-object p1, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 256
    throw p1
.end method

.method public removeAllDeveloperOverrideEntries()V
    .locals 3

    .line 329
    iget-object v0, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__preparedStmtOfRemoveAllDeveloperOverrideEntries:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 330
    iget-object v1, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 332
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 333
    iget-object v1, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    iget-object v1, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 336
    iget-object v1, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__preparedStmtOfRemoveAllDeveloperOverrideEntries:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception v1

    .line 335
    iget-object v2, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 336
    iget-object v2, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__preparedStmtOfRemoveAllDeveloperOverrideEntries:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 337
    throw v1
.end method

.method public removeAllServiceEntries()V
    .locals 3

    .line 295
    iget-object v0, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__preparedStmtOfRemoveAllServiceEntries:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 296
    iget-object v1, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 298
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 299
    iget-object v1, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    iget-object v1, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 302
    iget-object v1, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__preparedStmtOfRemoveAllServiceEntries:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception v1

    .line 301
    iget-object v2, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 302
    iget-object v2, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__preparedStmtOfRemoveAllServiceEntries:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 303
    throw v1
.end method

.method public removeAllServiceEntriesOlderThan(Ljava/util/Date;)V
    .locals 4

    .line 308
    iget-object v0, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__preparedStmtOfRemoveAllServiceEntriesOlderThan:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 309
    iget-object v1, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    const/4 v1, 0x1

    .line 313
    :try_start_0
    iget-object v2, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__dateTypeConverter:Lcom/ebay/db/typeconverters/DateTypeConverter;

    invoke-virtual {v2, p1}, Lcom/ebay/db/typeconverters/DateTypeConverter;->fromDate(Ljava/util/Date;)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_0

    .line 315
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 317
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 319
    :goto_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 320
    iget-object p1, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    iget-object p1, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 323
    iget-object p1, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__preparedStmtOfRemoveAllServiceEntriesOlderThan:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    .line 322
    iget-object v1, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 323
    iget-object v1, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__preparedStmtOfRemoveAllServiceEntriesOlderThan:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 324
    throw p1
.end method

.method public removeDeveloperOverride(Ljava/lang/String;)V
    .locals 2

    .line 357
    iget-object v0, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__preparedStmtOfRemoveDeveloperOverride:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 358
    iget-object v1, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 362
    :try_start_0
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 364
    :cond_0
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 366
    :goto_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 367
    iget-object p1, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    iget-object p1, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 370
    iget-object p1, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__preparedStmtOfRemoveDeveloperOverride:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    .line 369
    :goto_1
    iget-object v1, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 370
    iget-object v1, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__preparedStmtOfRemoveDeveloperOverride:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 371
    throw p1
.end method

.method public setDeveloperOverride(Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;)V
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 275
    :try_start_0
    invoke-super {p0, p1}, Lcom/ebay/db/foundations/dcs/DcsDao;->setDeveloperOverride(Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;)V

    .line 276
    iget-object p1, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    iget-object p1, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 279
    throw p1
.end method

.method public setLastServiceUpdateTime(J)V
    .locals 2

    .line 342
    iget-object v0, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__preparedStmtOfSetLastServiceUpdateTime:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 343
    iget-object v1, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    const/4 v1, 0x1

    .line 346
    :try_start_0
    invoke-interface {v0, v1, p1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 347
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 348
    iget-object p1, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    iget-object p1, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 351
    iget-object p1, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__preparedStmtOfSetLastServiceUpdateTime:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    .line 350
    iget-object p2, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 351
    iget-object p2, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__preparedStmtOfSetLastServiceUpdateTime:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 352
    throw p1
.end method

.method public updateDcsState(Lcom/ebay/db/foundations/dcs/DcsStateEntity;)V
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 286
    :try_start_0
    invoke-super {p0, p1}, Lcom/ebay/db/foundations/dcs/DcsDao;->updateDcsState(Lcom/ebay/db/foundations/dcs/DcsStateEntity;)V

    .line 287
    iget-object p1, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    iget-object p1, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 290
    throw p1
.end method

.method updateDcsStateFields(Ljava/util/Date;Lcom/ebay/db/foundations/dcs/DcsSiteCode;FZLjava/util/Date;Lcom/ebay/nautilus/base/CountryCode;Lcom/ebay/nautilus/base/LanguageCode;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 4

    .line 378
    iget-object v0, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__preparedStmtOfUpdateDcsStateFields:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 379
    iget-object v1, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    const/4 v1, 0x1

    .line 383
    :try_start_0
    iget-object v2, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__dateTypeConverter:Lcom/ebay/db/typeconverters/DateTypeConverter;

    invoke-virtual {v2, p1}, Lcom/ebay/db/typeconverters/DateTypeConverter;->fromDate(Ljava/util/Date;)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_0

    .line 385
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 387
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    :goto_0
    const/4 p1, 0x2

    .line 391
    iget-object v1, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__dateTypeConverter:Lcom/ebay/db/typeconverters/DateTypeConverter;

    invoke-virtual {v1, p5}, Lcom/ebay/db/typeconverters/DateTypeConverter;->fromDate(Ljava/util/Date;)Ljava/lang/Long;

    move-result-object p5

    if-nez p5, :cond_1

    .line 393
    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 395
    :cond_1
    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    :goto_1
    const/4 p1, 0x3

    .line 399
    iget-object p5, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__dcsTypeConverters:Lcom/ebay/db/foundations/dcs/DcsTypeConverters;

    invoke-virtual {p5, p2}, Lcom/ebay/db/foundations/dcs/DcsTypeConverters;->dcsSiteCodeToString(Lcom/ebay/db/foundations/dcs/DcsSiteCode;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    .line 401
    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 403
    :cond_2
    invoke-interface {v0, p1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_2
    const/4 p1, 0x4

    float-to-double p2, p3

    .line 406
    invoke-interface {v0, p1, p2, p3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindDouble(ID)V

    const/4 p1, 0x5

    int-to-long p2, p4

    .line 410
    invoke-interface {v0, p1, p2, p3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/4 p1, 0x6

    .line 413
    iget-object p2, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__dcsTypeConverters:Lcom/ebay/db/foundations/dcs/DcsTypeConverters;

    invoke-virtual {p2, p6}, Lcom/ebay/db/foundations/dcs/DcsTypeConverters;->countryCodeToString(Lcom/ebay/nautilus/base/CountryCode;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    .line 415
    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_3

    .line 417
    :cond_3
    invoke-interface {v0, p1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_3
    const/4 p1, 0x7

    .line 421
    iget-object p2, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__dcsTypeConverters:Lcom/ebay/db/foundations/dcs/DcsTypeConverters;

    invoke-virtual {p2, p7}, Lcom/ebay/db/foundations/dcs/DcsTypeConverters;->languageCodeToString(Lcom/ebay/nautilus/base/LanguageCode;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_4

    .line 423
    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_4

    .line 425
    :cond_4
    invoke-interface {v0, p1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_4
    const/16 p1, 0x8

    if-nez p8, :cond_5

    const/4 p2, 0x0

    goto :goto_5

    .line 429
    :cond_5
    invoke-virtual {p8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :goto_5
    if-nez p2, :cond_6

    .line 431
    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_6

    .line 433
    :cond_6
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long p2, p2

    invoke-interface {v0, p1, p2, p3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    :goto_6
    const/16 p1, 0x9

    if-nez p9, :cond_7

    .line 437
    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_7

    .line 439
    :cond_7
    invoke-interface {v0, p1, p9}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 441
    :goto_7
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 442
    iget-object p1, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    iget-object p1, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 445
    iget-object p1, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__preparedStmtOfUpdateDcsStateFields:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    .line 444
    iget-object p2, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 445
    iget-object p2, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__preparedStmtOfUpdateDcsStateFields:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 446
    throw p1
.end method

.method public updateServiceEntities(Lcom/ebay/db/foundations/dcs/DcsStateEntity;Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/db/foundations/dcs/DcsStateEntity;",
            "Ljava/lang/Iterable<",
            "Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;",
            ">;)V"
        }
    .end annotation

    .line 262
    iget-object v0, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 264
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/ebay/db/foundations/dcs/DcsDao;->updateServiceEntities(Lcom/ebay/db/foundations/dcs/DcsStateEntity;Ljava/lang/Iterable;)V

    .line 265
    iget-object p1, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    iget-object p1, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 268
    throw p1
.end method
